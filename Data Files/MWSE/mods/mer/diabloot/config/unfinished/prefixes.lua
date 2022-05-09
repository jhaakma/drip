local prefixes = {
    {
        prefix = "Acrobat's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.acrobatics,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Amber",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistShock,
                min = 10,
                max = 10,
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
                min = 10,
                max = 10,
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
                min = 10,
                max = 10,
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
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Arching",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.shockDamage,
                min = 10,
                max = 20,
            },
        },
    },
    {
        prefix = "Astral",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.chameleon,
                min = 10,
                max = 10,
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
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Azure",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistFrost,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Bahamut's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyMagicka,
                min = 20,
                max = 20,
            },
        },
    },
    {
        prefix = "Berserker",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyAttribute,
                attribute = tes3.attribute.strength,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Beryl",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.resistPoison,
                min = 20,
                max = 20,
            },
        },
    },
    {
        prefix = "Blazing",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.fireDamage,
                min = 5,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = false,
            [tes3.objectType.clothing] = false,
        }
    },
    {
        prefix = "Blessed",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 20,
                max = 20,
            },
        },
    },
    {
        prefix = "Blighting",
        castType = tes3.enchantmentType.constant,
        blighting = true,
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        }
    },
    {
        prefix = "Boreal",
        castType = tes3.enchantmentType.onStrike,
        effects = {
            {
                id = tes3.effect.frostDamage,
                min = 10,
                max = 10,
            },
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
            [tes3.objectType.armor] = false,
            [tes3.objectType.clothing] = false,
        }
    },

    {
        prefix = "Boywer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifySkill,
                skill = tes3.skill.marksman,
                min = 20,
                max = 20,
            },
        },
    },
    {
        prefix = "Brutal",
        description = "+10 to Max Damage",
        modifications = {
            chopMax = 10,
            slashMax = 10,
            thrustMax = 10,
        },
        validObjectTypes = {
            [tes3.objectType.weapon] = true,
        }
    },
    {
        prefix = "Burgundy",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Burning",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Buzzing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Captain's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Caretaker's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Celestial",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Charged",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Chilling",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Chromatic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Cobalt",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Commander's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Communal",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Compact",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Condensing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Consecrated",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Coral",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Corrosive",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Crimson",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Cruel",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Cunning",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Cursing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Deadly",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Dense",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Devious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Divine",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Dragon's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Drake's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Echoing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Elysian",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Emerald",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Entrapping",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Expert's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Faithful",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Fanatic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Felicitous",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Feral",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Ferocious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Fine",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Firey",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Flaming",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Fletcher",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Fool's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Fortified",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Fortuitous",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Foul",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Freezing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Fungal",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Furious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Garnet",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Gaea's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Glacial",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Glimmering",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Glorious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Glowing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Godly",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Gold",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Golemlord's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Grandmaster's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Graverobber's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Great Wyrm's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Grinding",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Guardian's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Gymnast's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Hallowed",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Harpoonist's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Hawk-Branded",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Hawkeye",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Hexing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Hibernal",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Hierophant's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Holy",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Howling",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Iron",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Jade",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Jagged",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Jeweler's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Keeper's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Kenshi's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "King's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Knight's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Lancer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Lapis",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Lion-Branded",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Lizard's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Lord's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Lunar",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
     {
        prefix = "Magekiller's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Maiden's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Marshall's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Massive",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Master's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
     {
        prefix = "Mechanist's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Mentalist's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Merciless",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Meteoric",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Mnemonic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Mojo",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Monk's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Nature's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Necromancer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Noxious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Ocher",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Pestilent",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Platinum",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Powered",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Preserver's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Priest's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Prismatic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Psychic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Pure",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Raging",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Rainbow",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Resonant",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Rose-Branded",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Ruby",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Rugged",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Russet",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Sacred",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Saintly",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Sapphire",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Savage",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Scintillating",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Screaming",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
     {
        prefix = "Sensei's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Septic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Serpent's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Shadow",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Shaman's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Sharp",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Shimmering",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Shivering",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Shocking",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Shogukusha's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Silver",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Slayer",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Smoking",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Smoldering",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Snake's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Snowy",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Soldier's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Sounding",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Sparking",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Spearmaiden's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Spiritual",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Static",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Steel",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Strange",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Strong",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Sturdy",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Summoner's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Tangerine",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Terrene",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Thin",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Tireless",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Toxic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Trainer's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Trickster's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Triumphant",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Unearthly",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Valkyrie's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Venomous",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Veteran's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Vicious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Victorious",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Vigorous",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Viridian",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Visionary",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Vodoun",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Volcanic",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Vulpine",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Wailing",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Warder's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Warrior's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Weird",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Witch-hunter's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
    {
        prefix = "Wyrm's",
        castType = tes3.enchantmentType.constant,
        effects = {
            {
                id = tes3.effect.fortifyHealth,
                min = 10,
                max = 10,
            },
        },
    },
}
return prefixes
