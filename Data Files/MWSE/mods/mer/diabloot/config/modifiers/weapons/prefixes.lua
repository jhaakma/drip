local defaults = {
    onStrikeMin = 10,
    onStrikeMax = 20,
    onStrikeStrongMin = 10,
    onStrikeStrongMax = 20,
    disintegrate = 20,
}
return {
    {
        prefix = "Arching",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.shockDamage,
                range = tes3.effectRange.touch,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
        },
    },

    {
        prefix = "Blighting",
        infectious = "Blight",
    },
    {
        prefix = "Brutal",
        description = "+5 Max Damage",
        modifications = {
            chopMax = 5,
            slashMax = 5,
            thrustMax = 5,
        },
    },

    {
        prefix = "Burning",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.fireDamage,
                range = tes3.effectRange.touch,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
        },
    },
    {
        prefix = "Charged",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.shockDamage,
                min = defaults.onStrikeStrongMin,
                max = defaults.onStrikeStrongMax,
            },
        },
    },
    {
        prefix = "Chilling",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.frostDamage,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
        },
    },

    {
        prefix = "Consecrated",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.turnUndead,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
        },
    },

    {
        prefix = "Corrosive",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.disintegrateArmor,
                min = defaults.disintegrate,
                max = defaults.disintegrate,
            },
        },
    },

    {
        prefix = "Cruel",
        description = "1.5x Damage",
        multipliers = {
            chopMin = 1.5,
            slashMin = 1.5,
            thrustMin = 1.5,
            chopMax = 1.5,
            slashMax = 1.5,
            thrustMax = 1.5,
        }
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
        }
    },
    {
        prefix = "Divine",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.turnUndead,
                min = defaults.onStrikeStrongMin,
                max = defaults.onStrikeStrongMax,
            },
        },
    },

    {
        prefix = "Echoing",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.sound,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
        },
    },
    {
        prefix = "Electric",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.shockDamage,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
        },
    },

    {
        prefix = "Ferocious",
        description = "2.5x Damage",
        multipliers = {
            chopMin = 2.5,
            slashMin = 2.5,
            thrustMin = 2.5,
            chopMax = 2.5,
            slashMax = 2.5,
            thrustMax = 2.5,
        }
    },
    {
        prefix = "Fine",
        description = "1.25X Damage",
        multipliers = {
            chopMin = 1.25,
            slashMin = 1.25,
            thrustMin = 1.25,
            chopMax = 1.25,
            slashMax = 1.25,
            thrustMax = 1.25,
        },
    },
    {
        prefix = "Flaming",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.fireDamage,
                range = tes3.effectRange.touch,
                min = defaults.onStrikeStrongMin,
                max = defaults.onStrikeStrongMax,
            },
        },
    },

    {
        prefix = "Foul",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.poison,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
        },
    },
    {
        prefix = "Freezing",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.frostDamage,
                min = defaults.onStrikeStrongMin,
                max = defaults.onStrikeStrongMax,
            },
        },
    },

    {
        prefix = "Hallowed",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.turnUndead,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
            {
                id = tes3.effect.soultrap,
            }
        },
    },

    {
        prefix = "Howling",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.demoralizeCreature,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
            {
                id = tes3.effect.demoralizeHumanoid,
                min = defaults.onStrikeMin,
                max = defaults.onStrikeMax,
            },
        },
    },

}