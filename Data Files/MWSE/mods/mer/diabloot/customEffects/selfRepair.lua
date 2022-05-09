local common = require("mer.diabloot.common")
local logger = common.createLogger("SelfRepair")
local function getRepairAmount(selfRepairRate, maxCondition)
    return maxCondition * (selfRepairRate/100)
end

local function repairItem(reference, itemId, selfRepairRate)
    ---@param stack tes3itemStack
    for _, stack in pairs(reference.object.inventory) do
        if stack.object.id == itemId then
            if stack.variables then
                logger:trace("found variables for %s", stack.object.name)
                local maxCondition = stack.object.maxCondition
                logger:trace("maxCondition: %s", maxCondition)
                ---@param itemData tes3itemData
                for _, itemData in ipairs(stack.variables) do
                    --set lastupdated
                    local now = tes3.getSimulationTimestamp()
                    itemData.data.lastSelfRepaired = itemData.data.lastSelfRepaired or now
                    local timeSinceLastRepaired = now - itemData.data.lastSelfRepaired
                    logger:trace("timeSinceLastRepaired: %s", timeSinceLastRepaired)
                    if timeSinceLastRepaired > 0.3 then
                        if itemData.condition and maxCondition then
                            logger:trace("Current condition: %s", itemData.condition)
                            local repairAmount = getRepairAmount(selfRepairRate, maxCondition) * timeSinceLastRepaired
                            logger:trace("Repair amount: %s", repairAmount)
                            local newCondition = itemData.condition + repairAmount
                            logger:trace("New condition: %s", newCondition)
                            newCondition = math.min(newCondition, maxCondition)
                            itemData.condition = newCondition
                        end
                        itemData.data.lastSelfRepaired = now
                    end
                end
            end
        end
    end
end

local function findSelfRepairingItems(ref)
    if not ref.object.inventory then return end
    if not ref.mobile then return end

    local generatedLoot = common.config.persistent.generatedLoot
    for id, data in pairs(generatedLoot) do
        if data.modifiers then
            for _, modifier in ipairs(data.modifiers) do
                if modifier.selfRepairRate then
                    local selfRepairRate = modifier.selfRepairRate
                    if ref.object.inventory:contains(id) then
                        logger:trace("%s has self-repair item %s, repairing",
                            ref.object.id, id)
                        repairItem(ref, id, selfRepairRate)
                    end
                end
            end
        end
    end
end

event.register("loaded", function()
    timer.start{
        duration = 0.2,
        iterations = -1,
        type = timer.simulate,
        callback = function(e)
            logger:trace("Repairing self-repair items")
            ---@param ref tes3reference
            for ref in tes3.player.cell:iterateReferences() do
                findSelfRepairingItems(ref)
            end
            findSelfRepairingItems(tes3.player)
        end
    }
end)
