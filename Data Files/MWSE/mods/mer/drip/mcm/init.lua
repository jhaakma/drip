local common = require("mer.drip.common")
local mcmConfig = mwse.loadConfig(common.config.configPath, common.config.mcmDefault)

local LINKS_LIST = {
    -- {
    --     text = "Release history",
    --     url = "https://github.com/jhaakma/crafting-framework/releases"
    -- },
    -- {
    --     text = "Wiki",
    --     url = "https://github.com/jhaakma/crafting-framework/wiki"
    -- },
    -- {
    --     text = "Nexus",
    --     url = "https://www.nexusmods.com/morrowind/mods/51009"
    -- },
    {
        text = "Buy me a coffee",
        url = "https://ko-fi.com/merlord"
    },
}
local CREDITS_LIST = {
    {
        text = "Made by Merlord",
        url = "https://www.nexusmods.com/users/3040468?tab=user+files",
    },
}

local SIDE_BAR_DEFAULT = common.config.modDescription

local function addSideBar(component)
    local versionText = string.format("Crafting Framework")
    component.sidebar:createCategory(versionText)
    component.sidebar:createInfo{ text = SIDE_BAR_DEFAULT}

    local linksCategory = component.sidebar:createCategory("Links")
    for _, link in ipairs(LINKS_LIST) do
        linksCategory:createHyperLink{ text = link.text, url = link.url }
    end
    local creditsCategory = component.sidebar:createCategory("Credits")
    for _, credit in ipairs(CREDITS_LIST) do
        creditsCategory:createHyperLink{ text = credit.text, url = credit.url }
    end
end

local function registerMCM()
    local template = mwse.mcm.createTemplate{ name = common.config.modName }
    template.onClose = function()
        common.config.save(mcmConfig)
    end
    template:register()

    local page = template:createSideBarPage{ label = "Settings"}
    addSideBar(page)

    page:createYesNoButton{
        label = "Enable Mod",
        description = "Turn this mod on or off",
        variable = mwse.mcm.createTableVariable{ id = "enabled", table = mcmConfig }
    }

    page:createSlider{
        label = "First Modifier Chance",
        description = "Determines the % chance to give a valid object a Modifier",
        min = 0,
        max = 100,
        step = 1,
        jump = 10,
        variable = mwse.mcm.createTableVariable{ id = "modifierChance", table = mcmConfig }
    }

    page:createSlider{
        label = "Second Modifier Chance",
        description = "Determines the % chance to give a valid object a second Modifier. The actual chance may be slightly lower as some modifiers fail due to the name being too long.",
        min = 0,
        max = 100,
        step = 1,
        jump = 10,
        variable = mwse.mcm.createTableVariable{ id = "secondaryModifierChance", table = mcmConfig }
    }

    page:createDropdown{
        label = "Log Level",
        description = "Set the logging level for mwse.log. Keep on INFO unless you are debugging.",
        options = {
            { label = "TRACE", value = "TRACE"},
            { label = "DEBUG", value = "DEBUG"},
            { label = "INFO", value = "INFO"},
            { label = "ERROR", value = "ERROR"},
            { label = "NONE", value = "NONE"},
        },
        variable =  mwse.mcm.createTableVariable{ id = "logLevel", table = mcmConfig },
        callback = function(self)
            common.updateLoggers(self.variable.value)
        end
    }
end
event.register("modConfigReady", registerMCM)