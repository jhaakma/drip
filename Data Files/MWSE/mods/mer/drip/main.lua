
--Register effects first so the tes3.effect exists
require("mer.drip.customEffects.selfRepair")
--require("mer.drip.customEffects.infectious")

require("mer.drip.mcm")
require("mer.drip.controllers.lootPlacement")
require("mer.drip.controllers.tooltips")

--Register modifiers and items
local interop = require("mer.drip")
local modifiers = require("mer.drip.config.modifiers")
for _, modifierData in ipairs(modifiers) do
    interop.registerModifier(modifierData)
end
local weapons = require("mer.drip.config.weapons")
for _, weapon in ipairs(weapons) do
    interop.registerWeapon(weapon)
end
local armor = require("mer.drip.config.armor")
for _, armor in ipairs(armor) do
    interop.registerArmor(armor)
end
local clothing = require("mer.drip.config.clothing")
for _, clothing in ipairs(clothing) do
    interop.registerClothing(clothing)
end
