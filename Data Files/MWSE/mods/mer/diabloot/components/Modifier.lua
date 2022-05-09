local common = require("mer.diabloot.common")
local logger = common.createLogger("Modifier")

local Modifier = {}

local uniqueModifiers = {
    selfRepairRate = {
        icon = "Icons/diabloot/selfRepair.dds",
        description = function(modifier)
            return string.format("Repair %s%% per Hour", modifier.selfRepairRate)
        end
    },
    infectious = {
        icon = "Icons/diabloot/infectious.dds",
        description = function(modifier)
            return string.format("%s on Strike", modifier.infectious)
        end
    },
    modifications = {
        icon = "Icons/diabloot/modifier.dds"
    },
    multipliers = {
        icon = "Icons/diabloot/multiplier.dds"
    }
}


function Modifier:new(data)
    if data == nil then return end
    local modifier = setmetatable(data, self)
    self.__index = self

    return modifier
end

---@param object tes3weapon | tes3clothing | tes3armor
function Modifier:validForObject(object)
    logger:trace("Checking if modifier is valid for object %s", object.id)

    logger:trace("self.prefix: %s", self.prefix)
    logger:trace("self.suffix: %s", self.suffix)
    logger:trace("self.castType: %s", self.castType)

    --Onstrike only for Weapons
    local objIsWeapon = object.objectType == tes3.objectType.weapon
    --Thrown weapons/ammo can't have Constant Effect
    local invalidTypes = {
        [tes3.weaponType.arrow] = true,
        [tes3.weaponType.bolt] = true,
        [tes3.weaponType.marksmanThrown] = true
    }
    local isThrownWeapon = objIsWeapon and invalidTypes[object.type]
    logger:trace("isThrownWeapon: %s", isThrownWeapon)

    if self.castType then
        local enchantIsConstant = self.castType == tes3.enchantmentType.constant
        logger:trace("enchantIsConstant: %s", enchantIsConstant)
        if enchantIsConstant and isThrownWeapon then
            return false
        end

        logger:trace("objIsWeapon: %s", objIsWeapon)
        local enchentIsOnStrike = self.castType == tes3.enchantmentType.onStrike
        logger:trace("enchantIsOnStrike: %s", enchentIsOnStrike)
        if enchentIsOnStrike and not objIsWeapon then
            return false
        end
    end
    --Self repair items require a condition value
    if self.selfRepairRate then
        --Thrown weapons have a condition even though it doesn't do anything
        if isThrownWeapon then
            return false
        end
        if object.maxCondition == nil then
            return false
        end
    end
    --Custom settings for objectTypes
    if self.validObjectTypes then
        if not self.validObjectTypes[object.objectType] then
            return false
        end
    end
    --Weight class
    if self.weightClass and object.weightClass then
        if self.weightClass ~= object.weightClass then
            return false
        end
    end
    return true
end

function Modifier:getIcon()
    for field, data in pairs(uniqueModifiers) do
        if self[field] then
            return data.icon
        end
    end
    return "Icons/diabloot/modifier.dds"
end

function Modifier:getDescription()
    if self.description then return self.description end
    for field, data in pairs(uniqueModifiers) do
        if self[field] and data.description then
            return data.description(self)
        end
    end
end

return Modifier