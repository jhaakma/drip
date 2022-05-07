local common = require("mer.diabloot.common")
local logger = common.createLogger("LootPlacement")
local Loot = require("mer.diabloot.components.Loot")

local function rollToEnchant()
    local chance = common.config.mcm.enchantChance
    local roll = math.random(100)
    if roll <= chance then
        return true
    end
end

local function getRandomModifier(object, list)
    local attempts = 0
    local MAX_ATTEMPTS = 50
    local modifier
    while attempts < MAX_ATTEMPTS do
        modifier = table.choice(list)
        if not modifier.validObjectTypes then return modifier end
        if modifier.validObjectTypes[object.objectType] then
            return modifier
        end
    end
    logger:debug("Failed to find a modifier for this objectType")
end

---@param e referenceActivatedEventData
local function onRefActivated(e)
    --If a reference has an inventory (such as an NPC or container)
    -- search for objects that can be Lootified
    local container = e.reference.object
    local inventory = container.inventory
    if inventory then
        logger:debug("Diablootifying %s", container.name)
        local objectIds = common.getAllLootObjectIds()
        ---@param stack tes3itemStack
        for _, stack in pairs(inventory) do
            --Check if it's a lootifiable object
            if objectIds[stack.object.id:lower()] then
                local prefix = rollToEnchant() and getRandomModifier(stack.object, common.config.prefixes)
                local suffix = rollToEnchant() and getRandomModifier(stack.object, common.config.suffixes)
                if prefix or suffix then
                    logger:debug("Converting %s to loot", stack.object.name)
                    local loot = Loot:new{
                        baseObject = stack.object.id,
                        modifiers = {prefix,suffix},
                    }
                    if loot then
                        logger:debug("Converted to %s", loot.object.name)
                        logger:debug("Replacing existing object with enchanted version")
                        --Remove the object from the inventory
                        --inventory:removeItem{ item = stack.object}
                        --Add loot to inventory, copy itemData from existing
                        inventory:addItem{ id = loot.object.id}
                        logger:debug("Done")
                    else
                        logger:debug("Failed to convert %s to loot", stack.object.name)
                    end
                end
            end
        end
    end
end
event.register("referenceActivated", onRefActivated)