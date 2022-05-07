local config = {}
local cache
config.materials = require("mer.diabloot.config.materials")
config.prefixes = require("mer.diabloot.config.prefixes")
config.suffixes = require("mer.diabloot.config.suffixes")
config.weapons = require("mer.diabloot.config.weapons")
config.armor = require("mer.diabloot.config.armor")
config.clothing = require("mer.diabloot.config.clothing")

--Static Configs
config.modName = "Diabloot"
config.modDescription = [[
Diabloot adds Diablo 2 style loot to Morrowind. Unique weapons, armor, clothing and accesories are dynamically generated, with hundreds of possible modifiers and over a million possible combinations.
]]
config.configPath = "diabloot"

--MCM Configs (Stored in Json, cached in memory)
config.mcmDefault = {
    logLevel = "INFO",
    enabled = true,
    enchantChance = 1,--percent
}
config.save = function(newConfig)
    cache = newConfig
    mwse.saveConfig(config.configPath, cache)
end
config.mcm = setmetatable({}, {
    __index = function(_, key)
        cache = cache or mwse.loadConfig(config.configPath, config.mcmDefault)
        return cache[key]
    end,
    __newindex = function(_, key, value)
        cache = cache or mwse.loadConfig(config.configPath, config.mcmDefault)
        cache[key] = value
        mwse.saveConfig(config.configPath, cache)
    end
})

--Persistent Configs (Stored on tes3.player.data, save specific)
config.persistentDefault = {
    generatedLoot = {}
}
config.persistent = setmetatable({}, {
    __index = function(_, key)
        if not tes3.player then return end
        tes3.player.data[config.configPath] = tes3.player.data[config.configPath] or config.persistentDefault
        return tes3.player.data[config.configPath][key]
    end,
    __newindex = function(_, key, value)
        if not tes3.player then return end
        tes3.player.data[config.configPath] = tes3.player.data[config.configPath] or config.persistentDefault
        tes3.player.data[config.configPath][key] = value
    end
})

return config