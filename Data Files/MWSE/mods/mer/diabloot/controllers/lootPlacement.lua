local common = require("mer.diabloot.common")
local logger = common.createLogger("LootPlacement")
local Loot = require("mer.diabloot.components.Loot")
local Modifier = require("mer.diabloot.components.Modifier")

local function rollToEnchant()
    local chance = common.config.mcm.enchantChance
    local roll = math.random(100)
    if roll <= chance then
        return true
    end
end

local function getRandomModifier(object, list)
    local attempts = 0
    local MAX_ATTEMPTS = 5
    local modifier
    while attempts < MAX_ATTEMPTS do
        modifier = Modifier:new(table.choice(list))
        if modifier and modifier:validForObject(object) then
            return modifier
        end
        attempts = attempts + 1
    end
    logger:error("Failed to find a modifier for %s", object.name)
end


local function addToRef(reference)
    --If a reference has an inventory (such as an NPC or container)
    -- search for objects that can be Lootified
    local container = reference.object
    local inventory = container.inventory
    reference.data.diablootified = true
    logger:debug("\n\nDiablootifying %s", container.name)
    local objectIds = common.getAllLootObjectIds()
    ---@param stack tes3itemStack
    for _, stack in pairs(inventory) do
        --Check if it's a lootifiable object
        if objectIds[stack.object.id:lower()] then
            logger:debug("Object: %s", stack.object.name)
            local modifierConfig
            if stack.object.objectType == tes3.objectType.weapon then
                modifierConfig = common.config.modifiers.weapons
            elseif stack.object.objectType == tes3.objectType.ammunition then
                modifierConfig = common.config.modifiers.weapons
            elseif stack.object.objectType == tes3.objectType.armor then
                modifierConfig = common.config.modifiers.equipment
            elseif stack.object.objectType == tes3.objectType.clothing then
                modifierConfig = common.config.modifiers.equipment
            end

            logger:debug("Getting prefix")
            local prefix = rollToEnchant() and getRandomModifier(stack.object, modifierConfig.prefixes)
            logger:debug("Getting suffix")
            local suffix-- = rollToEnchant() and getRandomModifier(stack.object, modifierConfig.suffixes)
            local modifiers = {}
            if prefix then
                logger:debug("Adding '%s' to modifiers list", prefix.prefix)
                table.insert(modifiers, prefix)
            end
            if suffix then
                logger:debug("Adding '%s' to modifiers list", suffix.suffix)
                table.insert(modifiers, suffix)
            end
            if #modifiers > 0 then
                logger:debug("Converting %s to loot", stack.object.name)
                --Get owner reference, either the npc, the owner of the container, or no
                local ownerReference = reference
                if reference.baseObject.objectType == tes3.objectType.container then
                    if reference.object.ownerReference then
                        ownerReference = reference.object.ownerReference
                    end
                end
                local loot = Loot:new{
                    ownerReference = ownerReference,
                    baseObject = stack.object.id,
                    modifiers = modifiers,
                }
                if loot then
                    logger:debug("Converted to %s", loot.object.name)
                    logger:debug("Replacing existing object with enchanted version")
                    loot:replaceVanillaObject(reference, stack)
                else
                    logger:error("Failed to convert %s to loot", stack.object.name)
                end
            end
        end
    end
end

local validTypes = {
    [tes3.objectType.npc] = true,
    [tes3.objectType.container] = true,
}
---@param e cellChangedEventData
local function onCellChanged(e)
    for ref in e.cell:iterateReferences() do
        if validTypes[ref.baseObject.objectType] then
            if ref.object.inventory then
                if not ref.object.organic then
                    if not ref.data.diablootified then
                        addToRef(ref)
                    end
                end
            end
        end
    end
end
event.register("cellChanged", onCellChanged)