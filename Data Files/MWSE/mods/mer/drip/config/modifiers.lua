local modifiers = {

    --Custom effects

    --Weapon multipliers
    {
        prefix = "Quality",
        description = "+5 Max Damage",
        modifications = {
            chopMax = 5,
            slashMax = 5,
            thrustMax = 5,
        },
        icon = "Icons/diabloot/multiplier.dds",
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        }
    },

    --Sharp weapons only
    {
        prefix = "Sharp",
        description = "+10 Max Damage",
        modifications = {
            chopMax = 10,
            slashMax = 10,
            thrustMax = 10,
        },
        icon = "Icons/diabloot/multiplier.dds",
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
        validWeaponTypes = {
            [tes3.weaponType.shortBladeOneHand] = true,
            [tes3.weaponType.longBladeOneHand] = true,
            [tes3.weaponType.longBladeTwoClose] = true,
            [tes3.weaponType.axeOneHand] = true,
            [tes3.weaponType.axeTwoHand] = true,
            [tes3.weaponType.marksmanThrown] = true,
        }
    },
    {
        --blunt weapons only
        prefix = "Cruel",
        description = "+10 Max Damage",
        modifications = {
            chopMax = 10,
            slashMax = 10,
            thrustMax = 10,
        },
        icon = "Icons/diabloot/multiplier.dds",
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.bluntOneHand] = true,
            [tes3.weaponType.bluntTwoClose] = true,
            [tes3.weaponType.bluntTwoWide] = true,
        }
    },

    {
        prefix = "Ferocious",
        description = "1.25x Damage",
        multipliers = {
            chopMin = 1.25,
            slashMin = 1.25,
            thrustMin = 1.25,
            chopMax = 1.25,
            slashMax = 1.25,
            thrustMax = 1.25,
        },
        icon = "Icons/diabloot/multiplier.dds",
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    {
        prefix = "Brutal",
        description = "1.5x Damage",
        multipliers = {
            chopMin = 1.5,
            slashMin = 1.5,
            thrustMin = 1.5,
            chopMax = 1.5,
            slashMax = 1.5,
            thrustMax = 1.5,
        },
        icon = "Icons/diabloot/multiplier.dds",
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    {
        prefix = "Vicious",
        description = "1.75x Damage",
        multipliers = {
            chopMin = 1.75,
            slashMin = 1.75,
            thrustMin = 1.75,
            chopMax = 1.75,
            slashMax = 1.75,
            thrustMax = 1.75,
        },
        icon = "Icons/diabloot/multiplier.dds",
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    {
        prefix = "Deadly",
        description = "2x Damage",
        multipliers = {
            chopMin = 2,
            slashMin = 2,
            thrustMin = 2,
            chopMax = 2,
            slashMax = 2,
            thrustMax = 2,
        },
        icon = "Icons/diabloot/multiplier.dds",
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },


    --Weight multipliers\
    {
        prefix = "Condensed",
        castType = tes3.enchantmentType.constant,
        description = "0.75x Weight",
        multipliers = {
            weight = 0.75,
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.weapon] = true,
        },
        icon = "Icons/diabloot/multiplier.dds"
    },

    {
        prefix = "Compact",
        castType = tes3.enchantmentType.constant,
        description = "0.5x Weight",
        multipliers = {
            weight = 0.5,
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.weapon] = true,
        },
        icon = "Icons/diabloot/multiplier.dds"
    },

    --Armor Multipliers
    {
        prefix = "Fortified",
        description = "1.5x Armor Rating",
        multipliers = {
            armorRating = 1.5
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        icon = "Icons/diabloot/multiplier.dds"
    },
    {
        prefix = "Glorious",
        description = "2x Armor Rating",
        multipliers = {
            armorRating = 2,
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        icon = "Icons/diabloot/multiplier.dds"
    },

    --Vanilla effects

    -- waterBreathing
    --weak
    {
        prefix = "Mudcrab's",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 50,
        effects = {
            {
                id = tes3.effect.waterBreathing,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    --strong
    {
        prefix = "Argonian's",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 200,
        effects = {
            {
                id = tes3.effect.waterBreathing,
                rangeType = tes3.effectRange.self,
                duration = 60,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- swiftSwim
    --weak
    {
        suffix = "the Fish",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.swiftSwim,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    --strong
    {
        suffix = "the Dreugh",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.swiftSwim,
                rangeType = tes3.effectRange.self,
                duration = 60,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- waterWalking
    --weak
    {
        suffix = "Buoyancy",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.waterWalking,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    --strong
    {
        suffix = "the Waves",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.waterWalking,
                rangeType = tes3.effectRange.self,
                duration = 60,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- shield
    --weak
    {
        suffix = "Protection",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.shield,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    --strong
    {
        prefix = "Guardian's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.shield,
                rangeType = tes3.effectRange.self,
                min = 20,
                max = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- fireShield
    {
        suffix = "Flameguard",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fireShield,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- lightningShield
    {
        suffix = "Stormguard",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.lightningShield,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- frostShield
    {
        suffix = "Frostguard",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.frostShield,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- burden
    {
        suffix = "Heavystep",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.burden,
                rangeType = tes3.effectRange.touch,
                min = 20,
                max = 20,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- feather
    --weak
    {
        suffix = "Lightstep",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.feather,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    --strong
    {
        prefix = "Ulm Juicedaw's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.feather,
                rangeType = tes3.effectRange.self,
                min = 25,
                max = 25,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- jump
    --weak
    {
        suffix = "the Frog",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.jump,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 15,
                duration = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    --strong
    {
        suffix = "the Toad",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.jump,
                rangeType = tes3.effectRange.self,
                min = 25,
                max = 25,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- levitate
    --weak
    {
        suffix = "Floating",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.levitate,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    --strong
    {
        suffix = "Soaring",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.levitate,
                rangeType = tes3.effectRange.self,
                min = 25,
                max = 25,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- slowFall
    --weak
    {
        suffix = "Slowfall",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.slowFall,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    -- lock
    --weak
    {
        suffix = "Jamming",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.lock,
                rangeType = tes3.effectRange.touch,
                min = 1,
                max = 1,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- open
    --weak
    {
        prefix = "Burgler's",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.open,
                rangeType = tes3.effectRange.touch,
                min = 10,
                max = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    --strong
    {
        prefix = "Locksmith's",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.open,
                rangeType = tes3.effectRange.touch,
                min = 25,
                max = 50,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- fireDamage
    --weak
    {
        prefix = "Firey",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.fireDamage,
                rangeType = tes3.effectRange.touch,
                min = 3,
                max = 7,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    --strong
    {
        prefix = "Blazing",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.fireDamage,
                rangeType = tes3.effectRange.touch,
                min = 5,
                max = 10,
                duration = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- shockDamage
    --weak
    {
        prefix = "Arching",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.shockDamage,
                rangeType = tes3.effectRange.touch,
                min = 3,
                max = 7,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    --strong
    {
        prefix = "Electric",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.shockDamage,
                rangeType = tes3.effectRange.touch,
                min = 5,
                max = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- frostDamage
    --weak
    {
        prefix = "Chilling",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.shockDamage,
                rangeType = tes3.effectRange.touch,
                min = 3,
                max = 7,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    --strong
    {
        prefix = "Freezing",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.shockDamage,
                rangeType = tes3.effectRange.touch,
                min = 5,
                max = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },


    -- poison
    --weak
    {
        prefix = "Viper's",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.poison,
                rangeType = tes3.effectRange.touch,
                min = 2,
                max = 5,
                duration = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    --strong
    {
        prefix = "Foul",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.poison,
                rangeType = tes3.effectRange.touch,
                min = 5,
                max = 10,
                duration = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- disintegrateWeapon/disintegrateArmor
    {
        prefix = "Corrosive",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.disintegrateWeapon,
                rangeType = tes3.effectRange.touch,
                min = 5,
                max = 10,
            },
            {
                id = tes3.effect.disintegrateArmor,
                rangeType = tes3.effectRange.touch,
                min = 5,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- invisibility
    {
        suffix = "Shrouding",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.invisibility,
                rangeType = tes3.effectRange.self,
                duration = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    {
        suffix = "Shadows",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.invisibility,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- chameleon
    {
        suffix = "the Chameleon",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.chameleon,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 10,
                duration = 15,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    {
        prefix = "Astral",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.chameleon,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- light
    {
        prefix = "Glowing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.light,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- sanctuary
    --weak
    {
        prefix = "Elusive",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.sanctuary,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    --strong
    {
        prefix = "Watcher's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.sanctuary,
                rangeType = tes3.effectRange.self,
                min = 20,
                max = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- nightEye
    {
        suffix = "the Cat",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.nightEye,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- charm
    {
        suffix = "Smiles",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.charm,
                rangeType = tes3.effectRange.touch,
                min = 10,
                max = 15,
                duration = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- paralyze
    --weak
    {
        prefix = "Stunning",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.paralyze,
                rangeType = tes3.effectRange.touch,
                duration = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    --strong
    {
        prefix = "Paralyzing",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.paralyze,
                rangeType = tes3.effectRange.touch,
                duration = 15,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- silence
    --weak
    {
        suffix = "Tongue-Tying",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.silence,
                rangeType = tes3.effectRange.touch,
                duration = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    --strong
    {
        suffix = "Silence",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.silence,
                rangeType = tes3.effectRange.touch,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- blind
    {
        suffix = "Blinding",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.blind,
                rangeType = tes3.effectRange.touch,
                duration = 5,
                min = 1,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    {
        suffix = "Eye-Gouging",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.blind,
                rangeType = tes3.effectRange.touch,
                duration = 10,
                min = 1,
                max = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- sound
    {
        suffix = "Echoes",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.sound,
                rangeType = tes3.effectRange.touch,
                duration = 5,
                min = 1,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },
    -- soultrap
    {
        suffix = "Soul-Stealing",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.soultrap,
                rangeType = tes3.effectRange.touch,
                duration = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- telekinesis
    {
        suffix = "Far-Reaching",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.telekinesis,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- detectAnimal/detectEnchantment/detectKey
    {
        suffix = "the Seeker",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.detectAnimal,
                rangeType = tes3.effectRange.self,
                min = 40,
                max = 40,
            },
            {
                id = tes3.effect.detectEnchantment,
                rangeType = tes3.effectRange.self,
                min = 20,
                max = 20,
            },
            {
                id = tes3.effect.detectKey,
                rangeType = tes3.effectRange.self,
                min = 20,
                max = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },


    -- spellAbsorption
    {
        suffix = "Absorbing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.spellAbsorption,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- reflect
    {
        suffix = "Mirrors",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.reflect,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- cureCommonDisease
    {
        suffix = "Curing",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.cureCommonDisease,
                rangeType = tes3.effectRange.self,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- cureBlightDisease
    {
        prefix = "Rilm's",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {

            {
                id = tes3.effect.cureBlightDisease,
                rangeType = tes3.effectRange.self,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- curePoison
    {
        prefix = "Balyna's",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.curePoison,
                rangeType = tes3.effectRange.self,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- cureParalyzation
    {
        suffix = "Free Action",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.cureParalyzation,
                rangeType = tes3.effectRange.self,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- restoreAttribute
    {
        suffix = "Restoration",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 100,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.restoreAttribute,
                attribute = tes3.attribute.strength,
                rangeType = tes3.effectRange.self,
                min = 1,
                max = 1,
                duration = 10
            },
            {
                id = tes3.effect.restoreAttribute,
                attribute = tes3.attribute.speed,
                rangeType = tes3.effectRange.self,
                min = 1,
                max = 1,
                duration = 10
            },
            {
                id = tes3.effect.restoreAttribute,
                attribute = tes3.attribute.endurance,
                rangeType = tes3.effectRange.self,
                min = 1,
                max = 1,
                duration = 10
            },
            {
                id = tes3.effect.restoreAttribute,
                attribute = tes3.attribute.agility,
                rangeType = tes3.effectRange.self,
                min = 1,
                max = 1,
                duration = 10
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- restoreHealth
    {
        suffix = "Healing",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.restoreHealth,
                rangeType = tes3.effectRange.self,
                duration = 5,
                min = 2,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- restoreMagicka
    {
        suffix = "Meditation",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.restoreMagicka,
                rangeType = tes3.effectRange.self,
                duration = 5,
                min = 1,
                max = 2,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- restoreFatigue
    {
        suffix = "Stamina",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.restoreFatigue,
                rangeType = tes3.effectRange.self,
                duration = 5,
                min = 2,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- fortifyAttribute
    {
        suffix = "the Bear",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        suffix = "the Owl",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.intelligence,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        suffix = "Faith",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.willpower,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        suffix = "Precision",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.agility,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        suffix = "the Hare",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.speed,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Ogrim's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.endurance,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Captain's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.personality,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "King's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.personality,
                min = 3,
                max = 3,
            },
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.endurance,
                min = 3,
                max = 3,
            },
        },
    },


    {
        prefix = "Fool's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.luck,
                rangeType = tes3.effectRange.self,
                min = 3,
                max = 3,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Celestial",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.luck,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- fortifySkill

    {
        prefix = "Defender's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.block,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validArmorSlots = {
            [tes3.armorSlot.shield] = true
        }
    },

    {
        prefix = "Blacksmith's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.armorer,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
    },

    {
        prefix = "Soldier's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.mediumArmor,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validWeightClasses = {
            [tes3.armorWeightClass.medium] = true
        }
    },

    {
        prefix = "Knight's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.heavyArmor,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validWeightClasses = {
            [tes3.armorWeightClass.heavy] = true
        }
    },

    {
        prefix = "Barbarian's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.bluntWeapon,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.bluntOneHand] = true,
            [tes3.weaponType.bluntTwoClose] = true,
            [tes3.weaponType.bluntTwoWide] = true,
        }
    },

    {
        prefix = "Fencer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.longBlade,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.longBladeOneHand] = true
        }
    },
    {
        prefix = "Knight's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.longBlade,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.longBladeTwoClose] = true
        }
    },

    {
        prefix = "Berserker's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.axe,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.axeOneHand] = true,
            [tes3.weaponType.axeTwoHand] = true
        }
    },

    {
        prefix = "Lancer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.spear,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.spearTwoWide] = true,
        }
    },

    {
        suffix = "the Sprinter",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.athletics,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Enchanter's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.enchant,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Sorcerer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.destruction,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Warlock's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.alteration,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Mesmer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.illusion,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Summoner's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.conjuration,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        suffix = "the Shaman",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.mysticism,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Angel's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.restoration,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Archangel's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.restoration,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        suffix = "the Alchemist",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.alchemy,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        suffix = "the Monk",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.unarmored,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Feral",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.unarmored,
                min = 3,
                max = 3,
            },
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.handToHand,
                min = 3,
                max = 3,
            },
        },
    },

    {
        suffix = "the Thief",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.security,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefiox = "Devious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.sneak,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Gymnast's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.acrobatics,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
    },

    {
        suffix = "the Scout",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.lightArmor,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validWeightClasses = {
            [tes3.armorWeightClass.light] = true,
        }
    },

    {
        suffix = "the Assassin",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.shortBlade,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.shortBladeOneHand] = true,
        },
    },

    {
        suffix = "the Bowyer",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.marksman,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.marksmanBow] = true,
        },
    },

    {
        suffix = "the Merchant",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.mercantile,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Cunning",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.mercantile,
                rangeType = tes3.effectRange.self,
                min = 3,
                max = 3,
            },
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.security,
                rangeType = tes3.effectRange.self,
                min = 3,
                max = 3,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        suffix = "Silver Tongue",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.speechcraft,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Boxer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.handToHand,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
        validArmorSlots = {
            [tes3.armorSlot.leftBracer] = true,
            [tes3.armorSlot.rightBracer] = true,
            [tes3.armorSlot.leftGauntlet] = true,
            [tes3.armorSlot.rightGauntlet] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.leftGlove] = true,
            [tes3.clothingSlot.rightGlove] = true,
        },
    },

    -- fortifyMaximumMagicka
    {
        prefix = "Drake's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyMaximumMagicka,
                rangeType = tes3.effectRange.self,
                min = 2,
                max = 2,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    {
        prefix = "Dragon's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyMaximumMagicka,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },


    -- absorbAttribute


    -- absorbHealth
    {
        suffix = "the Vampire",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.absorbHealth,
                rangeType = tes3.effectRange.touch,
                min = 2,
                max = 5,
                duration = 1,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- absorbMagicka
    {
        prefix = "Magekiller's",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.absorbMagicka,
                rangeType = tes3.effectRange.touch,
                min = 2,
                max = 5,
                duration = 1,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- absorbFatigue
    {
        prefix = "Taxing",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.absorbFatigue,
                rangeType = tes3.effectRange.touch,
                min = 5,
                max = 10,
                duration = 1,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- resistFire
    {
        prefix = "Burgundy",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFire,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Crimson",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFire,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- resistFrost
    {
        prefix = "Cobalt",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFrost,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Azure",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFrost,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- resistShock
    {
        prefix = "Coral",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistShock,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Amber",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistShock,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    --Resist Elements

    {
        prefix = "Chromatic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFire,
                rangeType = tes3.effectRange.self,
                min = 3,
                max = 3,
            },
            {
                id = tes3.effect.resistFrost,
                rangeType = tes3.effectRange.self,
                min = 3,
                max = 3,
            },
            {
                id = tes3.effect.resistShock,
                rangeType = tes3.effectRange.self,
                min = 3,
                max = 3,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Chromatic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFire,
                rangeType = tes3.effectRange.self,
                min = 7,
                max = 7,
            },
            {
                id = tes3.effect.resistFrost,
                rangeType = tes3.effectRange.self,
                min = 7,
                max = 7,
            },
            {
                id = tes3.effect.resistShock,
                rangeType = tes3.effectRange.self,
                min = 7,
                max = 7,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- resistMagicka
    {
        prefix = "Magickguard",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistMagicka,
                rangeType = tes3.effectRange.self,
                min = 3,
                max = 3,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },
    {
        prefix = "Lord's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistMagicka,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- resistCommonDisease/resistBlightDisease/resistPoison
    {
        prefix = "Medic's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistCommonDisease,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
            {
                id = tes3.effect.resistBlightDisease,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
            {
                id = tes3.effect.resistPoison,
                rangeType = tes3.effectRange.self,
                min = 5,
                max = 5,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        },
    },

    -- resistNormalWeapons
    {
        prefix = "Ghostly",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistNormalWeapons,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
    },


    -- resistParalysis
    {
        suffix = "Freedom",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistParalysis,
                rangeType = tes3.effectRange.self,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
    },

    -- turnUndead
    {
        prefix = "Blessed",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.turnUndead,
                rangeType = tes3.effectRange.onTouch,
                duration = 5,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    {
        prefix = "Holy",
        castType = tes3.enchantmentType.onStrike,
        chargeCost = 20,
        maxCharge = 200,
        effects = {
            {
                id = tes3.effect.turnUndead,
                rangeType = tes3.effectRange.onTouch,
                duration = 5,
                min = 20,
                max = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.ammunition] = true
        },
    },

    -- summonScamp
    {
        suffix = "Summon Scamp",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 10,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.summonScamp,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonClannfear
    {
        suffix = "Summon Clannfear",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.summonClannfear,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- summonDaedroth
    {
        suffix = "Summon Daedroth",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 100,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.summonDaedroth,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonDremora
    {
        suffix = "Summon Dremora",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 500,
        maxCharge = 1000,
        effects = {
            {
                id = tes3.effect.summonDremora,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonAncestralGhost
    {
        suffix = "Summon Ancestral Ghost",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.summonAncestralGhost,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonSkeletalMinion
    {
        suffix = "Summon Skeletal Minion",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.summonSkeletalMinion,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonBonewalker
    {
        suffix = "Summon Bonewalker",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 250,
        maxCharge = 1000,
        effects = {
            {
                id = tes3.effect.summonBonewalker,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonGreaterBonewalker
    {
        suffix = "Summon Greater Bonewalker",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 250,
        maxCharge = 1000,
        effects = {
            {
                id = tes3.effect.summonGreaterBonewalker,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonBonelord
    {
        suffix = "Summon Bonelord",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 250,
        maxCharge = 1000,
        effects = {
            {
                id = tes3.effect.summonBonelord,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- summonWingedTwilight
    {
        suffix = "Summon Winged Twilight",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 500,
        maxCharge = 1000,
        effects = {
            {
                id = tes3.effect.summonWingedTwilight,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonHunger
    {
        suffix = "Summon Hunger",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 250,
        maxCharge = 1000,
        effects = {
            {
                id = tes3.effect.summonHunger,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonGoldenSaint
    {
        suffix = "Summon Golden Saint",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 1000,
        maxCharge = 2000,
        effects = {
            {
                id = tes3.effect.summonGoldenSaint,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonFlameAtronach
    {
        suffix = "Flamecalling",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 50,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.summonFlameAtronach,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- summonFrostAtronach
    {
        suffix = "Frostcalling",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 100,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.summonFrostAtronach,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- summonStormAtronach
    {
        suffix = "Stormcalling",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 100,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.summonStormAtronach,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },
    -- summonCenturionSphere
    {
        suffix = "Summon Centurion Sphere",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 100,
        maxCharge = 500,
        effects = {
            {
                id = tes3.effect.summonCenturionSphere,
                rangeType = tes3.effectRange.self,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- commandCreature
    {
        suffix = "Taming",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.commandCreature,
                rangeType = tes3.effectRange.onTouch,
                min = 1,
                max = 10,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },

    -- commandHumanoid
    {
        suffix = "Command",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.commandHumanoid,
                rangeType = tes3.effectRange.onTouch,
                min = 1,
                max = 10,
                duration = 20,
            },
        },
        validObjectTypes = {
            [tes3.objectType.clothing] = true,
        },
        validClothingSlots = {
            [tes3.clothingSlot.ring] = true,
            [tes3.clothingSlot.amulet] = true,
        }
    },


    -- boundDagger
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundDagger,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.shortBladeOneHand] = true,
        },
    },

    -- boundLongsword
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundLongsword,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.longBladeOneHand] = true,
        },
    },


    -- boundMace
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundMace,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.bluntOneHand] = true,
        },
    },


    -- boundBattleAxe
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundBattleAxe,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.axeTwoHand] = true,
        },
    },


    -- boundSpear
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundSpear,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.spearTwoWide] = true,
        },
    },


    -- boundLongbow
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundLongbow,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        },
        validWeaponTypes = {
            [tes3.weaponType.marksmanBow] = true,
        },
    },


    -- boundCuirass
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundCuirass,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validArmorSlots = {
            [tes3.armorSlot.cuirass] = true,
        },
        validWeightClasses = {
            [tes3.armorWeightClass.heavy] = true,
        },
    },

    -- boundHelm
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundHelm,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validArmorSlots = {
            [tes3.armorSlot.helmet] = true,
        },
        validWeightClasses = {
            [tes3.armorWeightClass.heavy] = true,
        },
    },

    -- boundBoots
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundBoots,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validArmorSlots = {
            [tes3.armorSlot.boots] = true,
        },
        validWeightClasses = {
            [tes3.armorWeightClass.heavy] = true,
        },
    },

    -- boundShield
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundShield,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validArmorSlots = {
            [tes3.armorSlot.shield] = true,
        },
        validWeightClasses = {
            [tes3.armorWeightClass.heavy] = true,
        },
    },

    -- boundGloves
    {
        prefix = "Devil",
        castType = tes3.enchantmentType.onUse,
        chargeCost = 20,
        maxCharge = 100,
        effects = {
            {
                id = tes3.effect.boundGloves,
                rangeType = tes3.effectRange.self,
                duration = 30,
            },
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
        validArmorSlots = {
            [tes3.armorSlot.leftGauntlet] = true,
            [tes3.armorSlot.rightGauntlet] = true,
        },
        validWeightClasses = {
            [tes3.armorWeightClass.heavy] = true,
        },
    },

    {
        prefix = "Howling",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.demoralizeCreature,
                rangeType = tes3.effectRange.touch,
                min = 10,
                max = 10,
            },
            {
                id = tes3.effect.demoralizeHumanoid,
                rangeType = tes3.effectRange.touch,
                min = 10,
                max = 10,
            },
        },
    }
}


return modifiers