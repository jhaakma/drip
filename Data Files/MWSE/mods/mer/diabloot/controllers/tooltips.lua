local common = require("mer.diabloot.common")
local logger = common.createLogger("tooltipsController")
local UI = require("mer.diabloot.common.ui")
local Modifier = require("mer.diabloot.components.Modifier")



---@param e uiObjectTooltipEventData
local function applyTooltips(e)
    local id = e.object and e.object.id:lower()
    local data = common.config.persistent.generatedLoot[id]
    if data and data.modifiers then
        for _, modifierData in ipairs(data.modifiers) do
            local modifier = Modifier:new(modifierData)
            local description = modifier:getDescription()
            local icon = modifier:getIcon()
            if description then
                UI.createEffectBlock{
                    tooltip = e.tooltip,
                    text = description,
                    icon = icon
                }
            end
        end
    end
end

event.register("uiObjectTooltip", applyTooltips)