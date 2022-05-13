local common = require("mer.drip.common")
local config = common.config
local logger = common.createLogger("Loot")

---@type dripLoot
local Loot = {}

---@param lootData dripLootData
function Loot:new(lootData)
    logger:trace("Creating new loot for %s", lootData.baseObject.name)
    local loot = setmetatable(lootData, self)
    self.__index = self
    --Create the tes3object
    loot.object = tes3.getObject(loot.baseObject):createCopy{}
    if not loot.object then return nil end
    loot.object.modified = true
    --Remove any modifiers that don't share the same cast type as the first one
    local targetCastType = loot.modifiers[1].castType or tes3.enchantmentType.constant
    local modifiers = {}
    for i, modifier in ipairs(loot.modifiers) do
        logger:trace("modifier: %s", modifier.prefix or modifier.suffix)
        if (not loot.modifiers[i].castType) or loot.modifiers[i].castType == targetCastType then
            table.insert(modifiers, modifier)
        end
    end
    loot.modifiers = modifiers
    loot:applyModifications()
    loot:applyMultipliers()
    loot.object.enchantment = Loot:makeComplexEnchantment(loot.modifiers)
    local name = loot:getLootName()
    if #name > 31 then
        logger:error("Name '%s' excedes 31 characters, cancelling Loot creation", name)
        return nil
    end
    loot.object.name = name

    logger:trace("Created new loot: %s", loot.object.name)
    return loot
end


function Loot:applyModifications()
    for _, modifier in ipairs(self.modifiers) do
        if modifier.modifications then
            for field, modification in pairs(modifier.modifications) do
                if self.object[field] and type(self.object[field] == "number") then
                    local current = self.object[field]
                    local cap = current * 5
                    self.object[field] = math.clamp(self.object[field] + modification, 1, cap)
                end
            end
        end
    end
end

function Loot:applyMultipliers()
    for _, modifier in ipairs(self.modifiers) do
        if modifier.multipliers then
            for field, multiplier in pairs(modifier.multipliers) do
                if self.object[field] and type(self.object[field] == "number") then
                    self.object[field] = math.ceil(self.object[field] * multiplier)
                end
            end
        end
    end
end

function Loot:removeMaterialPrefix(name)
    local split = string.split(name, " ")
    local prefix = split[1]:lower()
    if config.materials[prefix] then
        return string.sub(name, string.len(prefix) + 2)
    else
        return name
    end
end

function Loot:getLootName()
    logger:trace("Getting loot name")
    local baseName = tes3.getObject(self.baseObject).name
    local name
    local function appendPrefixSuffix()
        name = baseName
        for _, modifier in ipairs(self.modifiers) do
            if modifier.prefix then
                logger:trace("Appending prefix '%s'", modifier.prefix)
                name = string.format("%s %s", modifier.prefix, name)
                logger:trace("Prefixed Name: %s", name)
            end
            if modifier.suffix then
                logger:trace("Appending suffix '%s'", modifier.suffix)
                name = string.format("%s of %s%s",
                    name,
                    modifier.the and "the " or "",
                    modifier.suffix)
                logger:trace("Suffixed Name: %s", name)
            end
        end
    end
    appendPrefixSuffix()
    local attempts = 0

    while attempts < 10 and #name > 31 do
        logger:trace("'%s' too long, attempting to remove material prefix", name)
        baseName = self:removeMaterialPrefix(baseName)
        appendPrefixSuffix()
        attempts = attempts + 1
    end

    logger:trace("Loot name: %s", name)
    return name
end


---@param modifiers DripModifier[]
function Loot:buildEnchantmentEffects(modifiers)
    local effects = {}
    for _, modifier in ipairs(modifiers) do
        if modifier.effects then
            for _, effect in ipairs(modifier.effects) do
                table.insert(effects, effect)
            end
        end
    end
    assert(#effects <= 8, "Too many effects combined!")
    return effects
end

function Loot:getEnchantmentValues(modifiers)
    local values = {
        chargeCost = 10,
        maxCharge = 100,
        castType = tes3.enchantmentType.onUse,
        effects = self:buildEnchantmentEffects(modifiers)
    }
    for _, modifier in ipairs(modifiers) do
        if modifier.chargeCost then
            values.chargeCost = values.chargeCost + modifier.chargeCost
        end
        if modifier.maxCharge then
            values.maxCharge = values.maxCharge + modifier.maxCharge
        end
        if modifier.castType then
            values.castType = modifier.castType or values.castType
        end
    end
    if #modifiers > 1 then
        values.chargeCost = values.chargeCost / #modifiers
        values.maxCharge = values.maxCharge / #modifiers
    end
    return values
end


function Loot:makeComplexEnchantment(modifiers)
    local enchantmentValues = self:getEnchantmentValues(modifiers)
    if #enchantmentValues.effects == 0 then return end
    logger:debug("castType: %s", enchantmentValues.castType)
    local enchantment = tes3.createObject{
        objectType = tes3.objectType.enchantment,
        castType = enchantmentValues.castType or tes3.enchantmentType.constant,
        effects = enchantmentValues.effects or {},
        maxCharge = enchantmentValues.maxCharge or 100,
        chargeCost = enchantmentValues.chargeCost or 10,
    }
    enchantment.modified = true
    return enchantment
end

---@param ownerReference tes3reference
---@param stack tes3itemStack
function Loot:replaceLootInInventory(ownerReference, stack)
    local count = stack.count
    logger:trace("stack.count: %s", stack.count)
    --Add loot to inventory
    tes3.addItem{
        reference = ownerReference,
        item = self.object,
        count = count,
        playSound = false,
    }

    if ownerReference.mobile and ownerReference.object:hasItemEquipped(stack.object) then
        logger:debug("Unequipping %s and equipping %s", stack.object.name, self.object.name)
        ownerReference.mobile:unequip{ item = stack.object}
        ownerReference.mobile:equip{ item = self.object }
    end

    --Remove the object from the inventory
    if stack.count > 0 then
        tes3.removeItem{
            reference = ownerReference,
            item = stack.object,
            count = stack.count,
            playSound = false,
        }
    else
        --use "addItem" to remove if count is negative
        tes3.addItem{
            reference = ownerReference,
            item = stack.object,
            count = stack.count,
            playSound = false,
        }
    end
    --register on player data
    config.persistent.generatedLoot[self.object.id:lower()] = {
        modifiers = self.modifiers,
    }
end


return Loot