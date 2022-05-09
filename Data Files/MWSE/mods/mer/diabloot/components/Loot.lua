local common = require("mer.diabloot.common")
local config = common.config
local logger = common.createLogger("Loot")

---@type diablootLoot
local Loot = {}

---@param lootData diablootLootData
function Loot:new(lootData)
    logger:debug("Creating new loot for %s", lootData.baseObject.name)
    local loot = setmetatable(lootData, self)
    self.__index = self

    if lootData.ownerReference.baseObject.objectType ~= tes3.objectType.npc then
        lootData.ownerReference = tes3.player
    end
    --Create the tes3object
    loot.object = tes3.getObject(loot.baseObject):createCopy{}
    if not loot.object then return nil end
    loot.object.modified = true
    --Remove any modifiers that don't share the same cast type as the first one
    local targetCastType = loot.modifiers[1].castType or tes3.enchantmentType.constant
    local modifiers = {}
    for i, modifier in ipairs(loot.modifiers) do
        logger:debug("modifier: %s", modifier.prefix or modifier.suffix)
        if (not loot.modifiers[i].castType) or loot.modifiers[i].castType == targetCastType then
            table.insert(modifiers, modifier)
        end
    end
    loot.modifiers = modifiers
    loot:applyModifications()
    loot:applyMultipliers()
    loot.object.enchantment = Loot:makeComplexEnchantment(loot.modifiers)
    loot:scaleEnchantmentStrength()
    local name = loot:getLootName()
    if #name > 31 then
        logger:error("Name '%s' excedes 31 characters, cancelling Loot creation", name)
        return nil
    end
    loot.object.name = name

    logger:debug("Created new loot: %s", loot.object.name)
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
    logger:debug("Getting loot name")
    local baseName = tes3.getObject(self.baseObject).name
    local name
    local function appendPrefixSuffix()
        name = baseName
        for _, modifier in ipairs(self.modifiers) do
            if modifier.prefix then
                logger:debug("Appending prefix '%s'", modifier.prefix)
                name = string.format("%s %s", modifier.prefix, name)
                logger:debug("Prefixed Name: %s", name)
            end
            if modifier.suffix then
                logger:debug("Appending suffix '%s'", modifier.suffix)
                name = string.format("%s of %s%s",
                    name,
                    modifier.the and "the " or "",
                    modifier.suffix)
                logger:debug("Suffixed Name: %s", name)
            end
        end
    end
    appendPrefixSuffix()
    local attempts = 0

    while attempts < 10 and #name > 31 do
        logger:debug("'%s' too long, attempting to remove material prefix", name)
        baseName = self:removeMaterialPrefix(baseName)
        appendPrefixSuffix()
        attempts = attempts + 1
    end

    logger:debug("Loot name: %s", name)
    return name
end

function Loot:scaleEnchantmentStrength()
    if not self.ownerReference then return end
    if not self.object.enchantment then return end
    local level = self.ownerReference.object.level
    --Get a multiplier from 0-1.0 scaled to the level of either the owning ref or the player
    local levelMultiplier = math.remap(level, config.scaling.levelMin, config.scaling.levelMax, config.scaling.modifierMin, config.scaling.modifierMax)
    levelMultiplier = math.clamp(levelMultiplier, config.scaling.modifierMin, config.scaling.modifierMax)

    local enchantment = self.object.enchantment
    for _, effect in ipairs(enchantment.effects) do
        --Add default values
        for field, value in pairs(config.scaling.baseValues) do
            if effect[field] then
                effect[field] = value * levelMultiplier
            end
        end

        effect.min = effect.min * levelMultiplier
        effect.max = effect.max * levelMultiplier
    end
end

function Loot:buildEnchantmentEffects(modifiers)
    local effects = {}
    local castType
    for _, modifier in ipairs(modifiers) do
        if modifier.castType then
            castType = modifier.castType
        end
        if castType and modifier.effects then
            for _, effect in ipairs(modifier.effects) do
                local ranges = {
                    [tes3.enchantmentType.constant] = tes3.effectRange.self,
                    [tes3.enchantmentType.onUse] = tes3.effectRange.self,
                    [tes3.enchantmentType.onStrike] = tes3.effectRange.touch,
                }
                logger:debug("modifier.range: %s", modifier.range)
                logger:debug("defaultRange: %s", ranges[castType])
                local range = modifier.rangeType or ranges[castType]

                --Add defaults, they will either be overwritten or adjusted by scaling
                table.copymissing(effect, {
                    rangeType = range,
                    maxCharge = 10,
                    chargeCost = 1,
                    min = 20,
                    max = 20,
                })
                logger:debug("effect.range: %s", effect.range)
                table.insert(effects, effect)
            end
        end
    end
    assert(#effects <= 8, "Too many effects combined!")
    return effects, castType
end


function Loot:makeComplexEnchantment(modifiers)
    local effects, castType = self:buildEnchantmentEffects(modifiers)
    logger:debug("castType: %s", castType)
    local enchantment = tes3.createObject{
        objectType = tes3.objectType.enchantment,
        castType = castType or tes3.enchantmentType.constant,
        effects = effects or {},
        maxCharge = 10,
        chargeCost = 10,
        range = 1,
    }
    enchantment.modified = true
    return enchantment
end

function Loot:replaceVanillaObject(ownerReference, stack)
    local variableCount = 0
    if stack.Count then
        variableCount = #stack.variables
        for _, itemData in ipairs(stack.variables) do
            tes3.addItem{
                reference = ownerReference,
                item = self.object,
                itemData = itemData,
                playSound = false,
            }
        end
    end
    local count = stack.count - variableCount
    logger:debug("stack.count: %s", stack.count)
    logger:debug("variableCount: %s", variableCount)
    logger:debug("count: %s", count)


    --Add loot to inventory
    tes3.addItem{
        reference = ownerReference,
        item = self.object,
        count = count,
        playSound = false,
    }

    --Remove the object from the inventory
    if stack.count > 0 then
        tes3.removeItem{
            reference = ownerReference,
            item = stack.object,
            count = stack.count,
            playSound = false,
        }
    else
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