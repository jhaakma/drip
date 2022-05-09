---@meta

---@class diablootLootData
---@field modifiers table<diablootModifierData>
---@field baseObject tes3weapon|tes3armor|tes3clothing
---@field ownerReference tes3reference The ref holding this item. Required for adding itemData to the new object


---@class diablootLoot
---@field modifiers table<diablootModifier>
---@field baseObject tes3weapon|tes3armor|tes3clothing #The object that this loot is cloned from
---@field object tes3weapon|tes3armor|tes3clothing #The cloned object that this loot is constructed from.
---@field enchantment tes3enchantment #Quick access to the enchantment attached to the loot object
---@field ownerReference tes3reference The ref holding this item. Required for adding itemData to the new object
Loot = {}

---@param lootData diablootLootData
---@return diablootLoot
function Loot:new(lootData) end

---@param modifier diablootModifier
function Loot:addModifier(modifier) end

function Loot:createLootObject() end

function Loot:createLootName() end