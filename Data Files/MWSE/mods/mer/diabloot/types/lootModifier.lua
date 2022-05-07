---@meta

---@alias diablo2ItemRarity
---| '"common"' # Common items.
---| '"uncommon"' # Uncommon items.
---| '"rare"' # Rare items.
---| '"veryRare"' # Very rare items.

---@alias tes3WeaponType
---| 'tes3.weaponType.shortBladeOneHand'
---| 'tes3.weaponType.longBladeOneHand'
---| 'tes3.weaponType.longBladeTwoClose'
---| 'tes3.weaponType.bluntOneHand'
---| 'tes3.weaponType.bluntTwoClose'
---| 'tes3.weaponType.bluntTwoWide'
---| 'tes3.weaponType.spearTwoWide'
---| 'tes3.weaponType.axeOneHand'
---| 'tes3.weaponType.axeTwoHand'
---| 'tes3.weaponType.marksmanBow'
---| 'tes3.weaponType.marksmanCrossbow'
---| 'tes3.weaponType.marksmanThrown'
---| 'tes3.weaponType.arrow'
---| 'tes3.weaponType.bolt'


---@class diablootModifierData
---@field prefix string The prefix appended to the loot name. A modifier should have at least a prefix or a suffix.
---@field suffix string The suffix appended to the loot name. A modifier should have at least a prefix or a suffix.
---@field description string A description of the modifer.
---@field effects table The effects to be enchanted onto the loot.

---@class diablootModifier
---@field prefix string The prefix appended to the loot name. A modifier should have at least a prefix or a suffix.
---@field suffix string The suffix appended to the loot name. A modifier should have at least a prefix or a suffix.
---@field description string A description of the modifer.
---@field effects table The effects to be enchanted onto the loot.
