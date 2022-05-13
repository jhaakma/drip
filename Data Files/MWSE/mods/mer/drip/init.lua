local common = require("mer.drip.common")
local logger = common.createLogger("Interop")
local Modifier = require("mer.drip.components.Modifier")
local config = common.config

local drip = {}

function drip.registerModifier(modifierData)
    logger:debug("registering modifier %s", modifierData.prefix or modifierData.suffix)
    local modifier = Modifier:new(modifierData)
    if not modifier then
        logger:error("Invalid modifier data")
        return
    end
    if modifier.prefix then
        logger:debug("Registering as prefix %s", modifier.prefix)
        table.insert(config.modifiers.prefixes, modifier)
    elseif modifier.suffix then
        logger:debug("Registering as suffix %s", modifier.suffix)
        table.insert(config.modifiers.suffixes, modifier)
    end
end

function drip.registerWeapon(weaponId)
    logger:debug("registering weapon id %s", weaponId)
    config.weapons[weaponId:lower()] = true
end

function drip.registerArmor(armorId)
    logger:debug("registering armor id %s", armorId)
    config.armor[armorId:lower()] = true
end

function drip.registerClothing(clothingId)
    logger:debug("registering clothing id %s", clothingId)
    config.clothing[clothingId:lower()] = true
end

return drip
