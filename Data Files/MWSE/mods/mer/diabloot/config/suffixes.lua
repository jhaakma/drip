local suffixes = {
    {
        suffix = "Absorption",
        description = "Damage reduced by 3",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Acceleration",
        description = "40% Faster run/walk",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Accuracy",
        description = "+6-9 to Dexterity",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Ages",
        description = "Indestructible",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Alacrity",
        description = "20% Attack Rate increase",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Amelioration",
        description = "Poison length reduced by 50%",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Amicae",
        description = "Damage reduced by 8-15",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Anima",
        description = "Damage Reduced by 8-15",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Anthrax",
        description = "Adds 100 Poison Damage for 6 seconds",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Apprentice",
        description = "10% Faster Cast Rate",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Atlas",
        description = "+21-30 to Strength",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Balance",
        description = "10% Faster Hit Recovery",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Bashing",
        description = "- 25-40 to Monster Defense per hit",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Bat",
        description = "3-5% Mana stolen per hit",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Bear",
        description = "Knockback",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Blight",
        description = "Add 50 Poison damage for 3 seconds (Rings/Amulets) \n Add 7 Poison damage for 3 seconds (Weapons/Circlets)",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Blocking",
        description = "+15% Faster Block Rate",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Brilliance",
        description = "+7-10 to Energy",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Burning",
        description = "Adds 5-9 minimum and 10-20 maximum Fire Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Butchery",
        description = "+21-40 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Carnage",
        description = "+11-14 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Centaur",
        description = "+ (0.75 per character level) to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Chance",
        description = "5-15% better chance of getting magic item",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Colossus",
        description = "+41-60 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Craftsmanship",
        description = "+1 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Defiance",
        description = "Poison length reduced by 75%",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Deflecting",
        description = "+30% Faster Block Rate",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Dexterity",
        description = "+1-2 to Dexterity",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Ease",
        description = "Requirements -20%",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Elephant",
        description = "+ (0.5 per character level) to Life and + (0.25 per character level) to Mana",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Energy",
        description = "+1-3 to Energy",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Enlightenment",
        description = "+21-30 to Energy",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Equilibrium",
        description = "17% Faster Hit Recovery",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Evisceration",
        description = "+41-63 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Excellence",
        description = "+5-8 to minimum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Fast-Repair",
        description = "Repairs Durability",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Fire",
        description = "Adds 1-4 minimum and 6-11 maximum to Fire Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Flame",
        description = "Adds 1 minimum and 2-6 maximum to Fire Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Fortune",
        description = "16-25% better chance of getting magic item",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Fox",
        description = "+6-10 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Frost",
        description = "Adds 1 minimum and 1-2 maximum Cold Damage for 2 seconds",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Gargantuan",
        description = "+41-60 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Giant",
        description = "+10-15 to Strength",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Glacier",
        description = "Adds 2-4 minimum and 4-15 maximum Cold Damage for 4 seconds",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Gore",
        description = "+8-10 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Greed",
        description = "25-40% extra gold from monsters",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Guarding",
        description = "Magic damage reduced by 3",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Haste",
        description = "20% Faster run/walk",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Health",
        description = "Damage reduced by 1",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Icicles",
        description = "Adds 1 minimum and 3-4 maximum Cold Damage for 3 seconds",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Incineration",
        description = "Adds 10-15 minimum and 21-75 maximum Fire Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Jackal",
        description = "+1-5 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Lamprey",
        description = "7-9% Life Stolen per hit",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Leech",
        description = "3-5% Life stolen per hit",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Life",
        description = "Damage reduced by 4-7",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Light",
        description = "+1 to Light Radius, +15 to Armor Level",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Lightning",
        description = "Adds 1 minimum and 9-16 maximum Lightning Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Locusts",
        description = "5-7% Life stolen per hit",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Luck",
        description = "26-35% Better Chance of Getting Magic Items",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Magus",
        description = "20% Faster Cast Rate",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Maiming",
        description = "+3-4 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Mammoth",
        description = "+31-40 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Measure",
        description = "+3-4 to minimum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Memory",
        description = "+ (0.5 per character level) to Mana",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Might",
        description = "+3-5 to Strength",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Mind",
        description = "+4-6 to Energy",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Negation",
        description = "Magic damage reduced by 4-6",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Nirvana",
        description = "+21-30 to Dexterity",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Ox",
        description = "+6-9 to Strength",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Pacing",
        description = "10% Faster run/walk",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Perfection",
        description = "+16-20 to Dexterity",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Performance",
        description = "+9-14 to minimum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Pestilence",
        description = "Adds 50 Poison Damage for 5 seconds",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Piercing",
        description = "Ignores Target's defenses",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Precision",
        description = "+10-15 to Dexterity",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Propagation",
        description = "Replenishes quantity",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Protection",
        description = "Damage reduced by 2",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Puncturing",
        description = "- 10-20 to monster Defense per hit",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Quality",
        description = "+2 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Quickness",
        description = "40% Attack Rate increase",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Radiance",
        description = "+3 to Light Radius, +30 to Armor Level",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Razors",
        description = "Attacker takes Damage of 7-9",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Readiness",
        description = "10% Attack Rate increase",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Regeneration",
        description = "Replenish Life +3-5",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Regrowth",
        description = "Replenish Life +6-10",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Remedy",
        description = "Poison length reduced by 25%",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Replenishing",
        description = "Replenishes Quantity",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Revivification",
        description = "Replenish Life +11-15",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Self-Repair",
        description = "Repairs Durability",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Sentinel",
        description = "Magic damage reduced by 2",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Shock",
        description = "Adds 1 minimum and 6-8 maximum Lightning Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Skill",
        description = "+3-5 to Dexterity",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Slaughter",
        description = "+15-20 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Slaying",
        description = "+5-7 to maximum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Sorcery",
        description = "+11-15 to Energy",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Speed",
        description = "30% Faster run/walk",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Spikes",
        description = "Attacker takes 4-6 Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Squid",
        description = "+61-80 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Stability",
        description = "24% Faster Hit Recovery",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Storms",
        description = "Adds 1-6 minimum and 40-120 maximum Lightning Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Strength",
        description = "+1-2 to Strength",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Sun",
        description = "+5 to Light Radius, +5% bonus to Armor Level",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Swiftness",
        description = "30% Attack Rate increase",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Swords",
        description = "Attacker takes Damage of 10-20",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Thawing",
        description = "Half freeze duration",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Thorns",
        description = "Attacker takes 1-3 Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Thunder",
        description = "Adds 1 minimum and 17-40 maximum Lightning Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Tiger",
        description = "+21-30 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Titan",
        description = "+16-20 to Strength",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Transcendence",
        description = "+15-20 to minimum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Transportation",
        description = "30% faster Run/Walk +80-90% heal Stamina",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Traveling",
        description = "30% Faster run/walk, Heal Stamina +80-90%",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Vampire",
        description = "7-9% Mana stolen per hit",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Venom",
        description = "Adds 21Poison Damage for 4 seconds",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Vileness",
        description = "Prevents monster heal",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Warding",
        description = "Magic damage reduced by 1",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Warmth",
        description = "Half Freeze Duration",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Wealth",
        description = "41-80% extra gold from monsters",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Whale",
        description = "+81-100 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Winter",
        description = "Adds 5-9 minimum and 16-50 maximum Cold Damage for 5 seconds",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Wizardry",
        description = "+16-20 to Energy",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Wolf",
        description = "+11-20 to Life",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "Worth",
        description = "+1-2 to minimum Damage",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
    {
        suffix = "the Wraith",
        description = "6-7% Mana Stolen per hit",
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                range = tes3.effectRange.self,
                min = 10,
                max = 10,
            }
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = true,
            [tes3.objectType.clothing] = true,
        }
    },
}
return suffixes