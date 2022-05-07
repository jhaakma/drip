local common = require("mer.diabloot.common")
local logger = common.createLogger("Loot")

---@type diablootLoot
local Loot = {}

---@param lootData diablootLootData
function Loot:new(lootData)
    mwse.log("Loot:new lootData.baseObject: %s", lootData.baseObject)
    local loot = setmetatable(lootData, self)
    self.__index = self
    mwse.log("Loot:new self.baseObject: %s", loot.baseObject)

    --Create the tes3object
    mwse.log(loot.baseObject)
    loot.object = tes3.getObject(loot.baseObject):createCopy{}
    if not loot.object then return nil end
    loot.object.modified = true

    loot.object.enchantment = Loot:makeComplexEnchantment(loot.modifiers)
    loot.enchantment = loot.object.enchantment
    local name = loot:getLootName()
    if #name > 31 then
        logger:debug("Name '%s' excedes 31 characters, cancelling Loot creation", name)
        return nil
    end
    loot.object.name = name

    logger:debug("Created new loot: %s", loot.object.name)
    return loot
end

function Loot:removeMaterialPrefix(name)
    local split = string.split(name, " ")
    local prefix = split[1]:lower()
    if common.config.materials[prefix] then
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
        for _, modifier in ipairs(self.modifiers) do
            if modifier.prefix then
                name = string.format("%s %s", modifier.prefix, baseName)
            end
            if modifier.suffix then
                name = string.format("%s of %s", name, modifier.suffix)
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

function Loot:makeComplexEnchantment(modifiers)
    local effects = self:buildEnchantmentEffects(modifiers)
    if #effects == 0 then return nil end
    return tes3.createObject({
        objectType = tes3.objectType.enchantment,
        castType = tes3.enchantmentType.constant,
        effects = effects,
    })
end

return Loot