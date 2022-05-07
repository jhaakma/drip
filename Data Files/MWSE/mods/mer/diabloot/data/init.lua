local cache
local Data = {}

--Static Configs
Data.static = {
    modName = "Diabloot",
    modDescription = [[
Diabloot adds Diablo 2 style loot to Morrowind. Unique weapons, armor, clothing and accesories are dynamically generated, with hundreds of possible modifiers and over a million possible combinations.
    ]],
}

Data.configPath = "diabloot"

--MCM Configs (Stored in Json, cached in memory)
Data.mcmDefault = {
    logLevel = "INFO",
    enabled = true
}
Data.save = function(newConfig)
    cache = newConfig
    mwse.saveConfig(Data.configPath, cache)
end
Data.mcm = setmetatable({}, {
    __index = function(_, key)
        cache = cache or mwse.loadConfig(Data.configPath, Data.mcmDefault)
        return cache[key]
    end,
    __newindex = function(_, key, value)
        cache = cache or mwse.loadConfig(Data.configPath, Data.mcmDefault)
        cache[key] = value
        mwse.saveConfig(Data.configPath, cache)
    end
})

--Persistent Configs (Stored on tes3.player.data, save specific)
Data.persistentDefault = {
    generatedLoot = {}
}
Data.persistent = setmetatable({}, {
    __index = function(_, key)
        if not tes3.player then return end
        tes3.player.data[Data.configPath] = tes3.player.data[Data.configPath] or Data.persistentDefault
        return tes3.player.data[Data.configPath][key]
    end,
    __newindex = function(_, key, value)
        if not tes3.player then return end
        tes3.player.data[Data.configPath] = tes3.player.data[Data.configPath] or Data.persistentDefault
        tes3.player.data[Data.configPath][key] = value
    end
})

return Data