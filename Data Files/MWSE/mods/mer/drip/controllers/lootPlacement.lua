local common = require("mer.drip.common")
local logger = common.createLogger("LootPlacement")
local Loot = require("mer.drip.components.Loot")
local Modifier = require("mer.drip.components.Modifier")

local function rollToEnchant()
    local chance = common.config.mcm.enchantChance
    local roll = math.random(100)
    if roll <= chance then
        return true
    end
end

local function getRandomModifier(object, list)
    local attempts = 0
    local MAX_ATTEMPTS = 100
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


local function rollForModifiers(object)
    logger:debug("Object: %s", object.name)
    local modifierConfig = common.config.modifiers

    logger:debug("Getting prefix")
    local prefix = rollToEnchant() and getRandomModifier(object, modifierConfig.prefixes)
    logger:debug("Getting suffix")
    local suffix = rollToEnchant() and getRandomModifier(object, modifierConfig.suffixes)
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
        return modifiers
    end
end


local function addToRef(reference)
    --If a reference has an inventory (such as an NPC or container)
    -- search for objects that can be Lootified
    local container = reference.object
    local inventory = container.inventory
    reference.data.dripified = true
    logger:debug("\n\nDripifying %s", container.name)
    local objectIds = common.getAllLootObjectIds()
    ---@param stack tes3itemStack
    for _, stack in pairs(inventory) do
        --Check if it's a lootifiable object
        if objectIds[stack.object.id:lower()] then
            local modifiers = rollForModifiers(stack.object)
            if modifiers then
                logger:debug("Converting %s to loot", stack.object.name)
                local loot = Loot:new{
                    baseObject = stack.object.id,
                    modifiers = modifiers,
                }
                if loot then
                    logger:debug("Converted to %s", loot.object.name)
                    logger:debug("Replacing existing object with enchanted version")
                    loot:replaceLootInInventory(reference, stack)
                else
                    logger:error("Failed to convert %s to loot", stack.object.name)
                end
            end
        end
    end
end


--[[
    Add loot to NPCs
]]
local validTypes = {
    [tes3.objectType.npc] = true,
}
---@param e cellChangedEventData
local function onCellChanged(e)
    for ref in e.cell:iterateReferences() do
        if validTypes[ref.baseObject.objectType] then
            if ref.object.inventory then
                if not ref.object.organic then
                    if not ref.data.dripified then
                        addToRef(ref)
                    end
                end
            end
        end
    end
end
event.register("cellChanged", onCellChanged)

--[[
    Add loot to leveled items
]]
---@param e leveledItemPickedEventData
local function onLeveledItemPicked(e)
    if not e.pick then return end
    local objectIds = common.getAllLootObjectIds()
    if objectIds[e.pick.id:lower()] then
        local object = e.pick
        local modifiers = rollForModifiers(object)
        if modifiers then
            logger:debug("Converting leveled item %s to loot", object.name)
            local loot = Loot:new{
                baseObject = object.id,
                modifiers = modifiers,
            }
            if loot then
                logger:debug("Converted to %s", loot.object.name)
                logger:debug("Replacing existing object with enchanted version")
                e.pick = loot.object
            end
        end
    end
end
event.register("leveledItemPicked", onLeveledItemPicked)