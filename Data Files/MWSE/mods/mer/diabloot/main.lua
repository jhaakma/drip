require("mer.diabloot.mcm")
require("mer.diabloot.controllers.lootPlacement")

local LootService = require("mer.diabloot.services.LootService")

---@param e keyDownEventData
local function onKeyPressed(e)
    local lootType
    if e.keyCode == tes3.scanCode.o then
        mwse.log("loot type: weapons")
        lootType = "weapons"
    elseif e.keyCode == tes3.scanCode.p then
        mwse.log("loot type: armor")
        lootType = "armor"
    end
    if not lootType then return end

    if tes3.player then
        local loot
        local attempts = 0
        while attempts < 10 and not loot do
            loot = LootService:generateLoot(lootType)
            attempts = attempts + 1
        end
        if loot then
            tes3.addItem{
                reference = tes3.player,
                item = loot.object,
            }
            tes3.messageBox("Added %s to your inventory.", loot.object.name)
        end
    end
end
event.register(tes3.event.keyDown, onKeyPressed)

