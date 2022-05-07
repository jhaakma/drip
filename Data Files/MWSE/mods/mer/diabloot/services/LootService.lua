local common = require("mer.diabloot.common")
local logger = common.createLogger("LootService")
local Loot = require("mer.diabloot.components.Loot")

local LootService = {}

function LootService:generateLootData(lootType)
    local prefix = table.choice(common.config.prefixes)
    local suffix = table.choice(common.config.suffixes)
    local baseObject = table.choice(table.keys(common.config[lootType]))
    logger:debug("Using baseObject: %s", baseObject)
    ---@type diablootLootData
    local lootData = {
        baseObject = baseObject,
        modifiers = {
            prefix,
            suffix
        }
    }
    logger:debug("generateLootData lootData.baseObject: %s", lootData.baseObject)
    return lootData
end

function LootService:generateLoot(lootType)
    logger:debug("Generating Loot")
    local lootData = self:generateLootData(lootType)
    logger:debug("generateLoot lootData.baseObject: %s", lootData.baseObject)
    local lootObject = Loot:new(lootData)
    return lootObject
end

return LootService