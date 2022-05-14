--(Unimplemented)

local uniques = {
    {
        name = "Bone Dagger",
        description = "",
        mesh = "Meshes\\AATL\\w\\W_BoneDagger.nif",
    },

    {
        name = "Staff of Azura",
        description = "",
        mesh = "Meshes\\AATL\\w\\W_AzurahsStaff.nif",
    },

    {
        name = "Herald",
        description = "",
        mesh = "Meshes\\AATL\\w\\w_blade_redoran.nif",
    },

    {
        name = "Blade of Woe",
        description = "",
        mesh = "Meshes\\AATL\\w\\W_Blade_Woe.nif",
        chargeCost = 100,
        maxCharge = 2000,
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.absorbHealth,
                rangeType = tes3.effectRange.touch,
                min = 20,
                max = 50,
            }
        }
    },
    {
        name = "Chillrend",
        description = "",
        mesh = "Meshes\\AATL\\w\\W_Chillrend.nif",
        chargeCost = 100,
        maxCharge = 2000,
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.frostDamage,
                rangeType = tes3.effectRange.touch,
                min = 10,
                max = 20,
                duration = 10
            }
        }
    },

    {
        name = "Dawnbreaker",
        description = "",
        mesh = "Meshes\\AATL\\w\\W_Dawnbreaker.nif",
    },


}