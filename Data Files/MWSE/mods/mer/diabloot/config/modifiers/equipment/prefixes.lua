local defaults = {
    health = 50,
    healthStrong = 100,
    magicka = 50,
    magickaStrong = 100,
    fatigue = 50,
    fatigueStrong = 100,
    attribute = 20,
    attributeStrong = 40,
    skill = 20,
    skillStrong = 40,
    resist = 50,
    resistStrong = 100,
    armor = 1.5,
    armorStrong = 2.0,
    weight = 0.5,
}

return {
    {
        prefix = "Acrobat's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.acrobatics,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "Alchemist's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.alchemy,
                min = defaults.skillStrong,
                max = defaults.skillStrong,
            },
        },
    },
    {
        prefix = "Amber",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistShock,
                min = defaults.resistStrong,
                max = defaults.resistStrong,
            },
        },
    },
    {
        prefix = "Angel's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.restoration,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "Archangel's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.restoration,
                min = defaults.skillStrong,
                max = defaults.skillStrong,
            },
        },
    },
    {
        prefix = "Archer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.marksman,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "Athlete's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.athletics,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "Azure",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFrost,
                min = defaults.resist,
                max = defaults.resist,
            },
        },
    },
    {
        prefix = "Barbarian's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.axe,
                min = math.ceil(defaults.skill / 3),
                max = math.ceil(defaults.skill / 3),
            },
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.bluntWeapon,
                min = math.ceil(defaults.skill / 3),
                max = math.ceil(defaults.skill / 3),
            },
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.athletics,
                min = math.ceil(defaults.skill / 3),
                max = math.ceil(defaults.skill / 3),
            },
        },
    },
    {
        prefix = "Beryl",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistPoison,
                min = defaults.resist,
                max = defaults.resist,
            },
        },
    },
    {
        prefix = "Blessed",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = defaults.health,
                max = defaults.health,
            },
        },
    },
    {
        prefix = "Boywer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.marksman,
                min = defaults.skillStrong,
                max = defaults.skillStrong,
            },
        },
    },
    {
        prefix = "Burgundy",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFire,
                min = defaults.resist,
                max = defaults.resist,
            },
        },
    },
    {
        prefix = "Captain's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.speechcraft,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "Celestial",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.luck,
                min = defaults.attributeStrong,
                max = defaults.attributeStrong,
            },
        },
    },
    {
        prefix = "Chromatic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFire,
                min = math.ceil(defaults.resist/2),
                max = math.ceil(defaults.resist/2),
            },
            {
                id = tes3.effect.resistFrost,
                min = math.ceil(defaults.resist/2),
                max = math.ceil(defaults.resist/2),
            },
            {
                id = tes3.effect.resistShock,
                min = math.ceil(defaults.resist/2),
                max = math.ceil(defaults.resist/2),
            },
        },
    },
    {
        prefix = "Cobalt",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFrost,
                min = defaults.resist,
                max = defaults.resist,
            },
        },
    },
    {
        prefix = "Commander's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.speechcraft,
                min = defaults.skillStrong,
                max = defaults.skillStrong,
            },
        },
    },
    {
        prefix = "Compact",
        castType = tes3.enchantmentType.constant,
        description = defaults.weight .. "x Weight",
        multipliers = {
            weight = defaults.weight,
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
            [tes3.objectType.weapon] = true,
        }
    },
    {
        prefix = "Coral",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistShock,
                min = defaults.resist,
                max = defaults.resist,
            },
        },
    },
    {
        prefix = "Crimson",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFire,
                min = defaults.resistStrong,
                max = defaults.resistStrong,
            },
        },
    },
    {
        prefix = "Cunning",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.mercantile,
                min = math.ceil(defaults.skill /2),
                max = math.ceil(defaults.skill /2),
            },
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.security,
                min = math.ceil(defaults.skill /2),
                max = math.ceil(defaults.skill /2),
            },
        },
    },
    {
        prefix = "Devious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.sneak,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "Dragon's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyMagicka,
                min = defaults.magickaStrong,
                max = defaults.magickaStrong,
            },
        },
    },
    {
        prefix = "Drake's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyMagicka,
                min = defaults.magicka,
                max = defaults.magicka,
            },
        },
    },
    {
        prefix = "Fencer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.longBlade,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "Feral",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.unarmored,
                min = math.ceil(defaults.skill / 2),
                max = math.ceil(defaults.skill / 2),
            },
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.handToHand,
                min = math.ceil(defaults.skill / 2),
                max = math.ceil(defaults.skill / 2),
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
                min = defaults.attribute,
                max = defaults.attribute,
            },
        },
    },
    {
        prefix = "Fortified",
        description = defaults.armor .. "x Armor Rating",
        multipliers = {
            armorRating = defaults.armor
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
    },
    {
        prefix = "Glimmering",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.light,
                min = 20,
                max = 20,
            },
        },
    },
    {
        prefix = "Glorious",
        description = defaults.armor .. "x Armor Rating",
        multipliers = {
            armorRating = defaults.armorStrong
        },
        validObjectTypes = {
            [tes3.objectType.armor] = true,
        },
    },
    {
        prefix = "Glowing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.light,
                min = 30,
                max = 30,
            },
        },
    },
    {
        prefix = "Gymnast's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.acrobatics,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "Harpoonist's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.spear,
                min = defaults.skill,
                max = defaults.skill,
            },
        },
    },
    {
        prefix = "King's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.personality,
                min = math.ceil(defaults.attribute / 2),
                max = math.ceil(defaults.attribute / 2),
            },
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.endurance,
                min = math.ceil(defaults.attribute / 2),
                max = math.ceil(defaults.attribute / 2),
            },
        },
    },
    {
        prefix = "Knight's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.heavyArmor,
                min = defaults.attribute,
                max = defaults.attribute,
            },
        },
        weightClass = tes3.armorWeightClass.heavy,
    },
}