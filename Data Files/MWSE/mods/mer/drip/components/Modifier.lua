local common = require("mer.drip.common")
local logger = common.createLogger("Modifier")

---@class DripModifier
local Modifier = {}

function Modifier:validate(modifierData)
    local dripModifierFields = {
        prefix =  "string",
        suffix =  "string",
        castType =  "number",
        rangeType =  "number",
        chargeCost =  "number",
        maxCharge =  "number",
        effects =  "table",
        validObjectTypes =  "table",
        validWeaponTypes =  "table",
        validWeightClasses =  "table",
        validArmorSlots =  "table",
        validClothingSlots =  "table",
    }

    for k, v in pairs(dripModifierFields) do
        if modifierData[k] then
            if not type(modifierData[k]) == v then
                return false, string.format("Modifier field '" .. k .. "' must be of type " .. v)
            end
        end
    end
    if not (modifierData.prefix or modifierData.suffix) then
        return false, "Modifier must have either a prefix or a suffix"
    end
    return true
end

---@param data DripModifierData
function Modifier:new(data)
    local isValid, errorMsg = self:validate(data)
    if not isValid then
        logger:error("Invalid modifier data: %s", errorMsg)
        return nil
    end
    if data == nil then return end
    local modifier = setmetatable(data, self)
    self.__index = self

    return modifier
end

---@param object tes3weapon | tes3clothing | tes3armor
function Modifier:validForObject(object)
    logger:debug("Checking if modifier is valid for object %s", object.id)

    logger:debug("self.prefix: %s", self.prefix)
    logger:debug("self.suffix: %s", self.suffix)
    logger:debug("self.castType: %s", self.castType)

    --Check invalid cast type and object type combinations
    if self.castType then
        local objIsWeapon = object.objectType == tes3.objectType.weapon
        --Thrown weapons/ammo can't have Constant Effect
        local ammoTypes = {
            [tes3.weaponType.arrow] = true,
            [tes3.weaponType.bolt] = true,
            [tes3.weaponType.marksmanThrown] = true
        }
        local isThrownWeapon = objIsWeapon and ammoTypes[object.type]
        local enchantIsConstant = self.castType == tes3.enchantmentType.constant
        if enchantIsConstant and isThrownWeapon then
            logger:debug("Modifier is a constant effect, but object is a thrown weapon")
            return false
        end
        local enchentIsOnStrike = self.castType == tes3.enchantmentType.onStrike
        if enchentIsOnStrike and not objIsWeapon then
            logger:debug("Modifier is an onStrike effect, but object is not a weapon")
            return false
        end
    end

    --Modifier specific filters

    --Object type
    if self.validObjectTypes then
        logger:debug("has validObjectTypes")
        if not self.validObjectTypes[object.objectType] then
            logger:debug("%s objectType not invalid", object.name)
            return false
        end
    end
    ---Weapon Type
    if self.validWeaponTypes and object.objectType == tes3.objectType.weapon then
        logger:debug("has validWeaponTypes")
        if not self.validWeaponTypes[object.type] then
            logger:debug("%s weaponType not invalid", object.name)
            return false
        end
    end
    --Weight class
    if self.validWeightClasses and object.objectType == tes3.objectType.armor then
        logger:debug("has validWeightClasses")
        if not self.validWeightClasses[object.weightClass] then
            logger:debug("%s objectWeightclass is invalid", object.name)
            return false
        end
    end
    --Armor Slots
    if self.validArmorSlots and object.objectType == tes3.objectType.armor then
        logger:debug("has validArmorSlots")
        if not self.validArmorSlots[object.slot] then
            logger:debug("%s armorSlot not invalid", object.name)
            return false
        end
    end
    --Clothing Slots
    if self.validClothingSlots and object.objectType == tes3.objectType.clothing then
        logger:debug("has validClothingSlots")
        if not self.validClothingSlots[object.slot] then
            logger:debug("%s clothingSlot not invalid", object.name)
            return false
        end
    end
    return true
end


return Modifier