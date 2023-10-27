-- AQ20 Class Set Buffs
-- Hunter
update item_template set max_count = 1, item_level = 74, dmg_min1 = 94, dmg_max1 = 174, stat_value1 = 14, stat_value2 = 6, spellid_1 = 7597 where entry = 21401; -- Scythe of the Unseen Path
update item_template set stat_value1 = 17, stat_value2 = 12, stat_value3 = 0, spellid_1 = 15464 where entry = 21402; -- Signet of the Unseen Path
-- Cloak of the Unseen Path is unchanged.

-- Warrior
update item_template set item_level = 74, dmg_min1 = 94, dmg_max1 = 174 where entry = 21392; -- Scythe of Unyielding Strength
-- The other two items are unchanged.

-- Priest
update item_template set max_count = 1, item_level = 74, spellid_2 = 26225, spellid_1 = 21363 where entry = 21410; -- Gavel of Infinite Wisdom
update item_template set stat_value1 = 9, stat_value2 = 8, spellid_2 = 9316, spelltrigger_2 = 1 where entry = 21411; -- Ring of Infinite Wisdom
update item_template set stat_value1 = 11, stat_value2 = 8, stat_value3 = 10, spellid_2 = 9314, spelltrigger_2 = 1, spellid_1 = 21363 where entry = 21412; -- Shroud of Infinite Wisdom

-- Mage
update item_template set max_count = 1, item_level = 74, spellid_2 = 23732 where entry = 21413; -- Blade of Vaulted Secrets
update item_template set stat_value1 = 10, stat_value2 = 13, stat_value3 = 0, spellid_1 = 15714 where entry = 21415; -- Drape of Vaulted Secrets
-- The other item is unchanged.

-- Painful Paladin
update item_template set stat_value2 = 9, stat_value2 = 7, spellid_1 = 15464, spellid_2 = 9344, spelltrigger_2 = 1 where entry = 21396; -- Ring of Eternal Justice
update item_template set stat_value2 = 9, spellid_1 = 13679, spellid_2 = 9343, spelltrigger_2 = 1 where entry = 21397; -- Cape of Eternal Justice
update item_template set max_count = 1, item_level = 74, dmg_min1 = 73, dmg_max1 = 137, spellid_2 = 9346, stat_value1 = 7, stat_value2 = 14 where entry = 21395; -- Blade of Eternal Justice

-- Rogue
update item_template set max_count = 1, item_level = 74, dmg_min1 = 69, dmg_max1 = 130 where entry = 21404; -- Dagger of Veiled Shadows
update item_template set stat_value1 = 17, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 21405; -- Band of Veiled Shadows
-- The other item is unchanged.

-- Warlock
update item_template set max_count = 1, item_level = 74, spellid_1 = 23929, stat_value1 = 13 where entry = 21416; -- Blade of Vaulted Secrets
-- The other two items are unchanged.

-- Druid
update item_template set stat_value2 = 13, stat_value3 = 13, stat_type3 = 3, stat_value4 = 0, stat_value5 = 0, spellid_1 = 13679 where entry = 21408; -- Band of Unending Life
update item_template set stat_type1 = 4, stat_type3 = 3, stat_value3 = 8, stat_value4 = 0, stat_value5 = 0, spellid_1 = 7597, spellid_2 = 9329, spelltrigger_2 = 1 where entry = 21409; -- Cloak of Unending Life
update item_template set max_count = 1, item_level = 74, dmg_min1 = 100, dmg_max1 = 188, armor = 50, stat_value1 = 9, spellid_1 = 13669, spellid_2 = 18056, spellid_3 = 45439, spelltrigger_3 = 1 where entry = 21407; -- Mace of Unending Life

-- Shaman
update item_template set stat_value1 = 11, stat_value2 = 10, stat_type1 = 5, stat_type2 = 7, stat_value3 = 0, stat_value4 = 0, spellid_1 = 14799 where entry = 21399; -- Ring of the Gathering Storm
update item_template set stat_value1 = 10, stat_value2 = 9, stat_value3 = 0, spellid_1 = 14799, spellid_2 = 23727, spelltrigger_2 = 1 where entry = 21400; -- Cloak of the Gathering Storm
update item_template set max_count = 1, item_level = 74, stat_value2 = 9, stat_value3 = 0, spellid_1 = 18384, spellid_2 = 23730, spelltrigger_2 = 1 where entry = 21398; -- Hammer of the Gathering Storm

-- Steel Plate Blacksmithing Set Adjustments
update item_template set stat_value1 = 15, stat_value2 = 10, armor = 510, item_level = 50, spellid_1 = 13669, spellid_2 = 7518, spelltrigger_2 = 1 where entry = 83415; -- Steel Plate Barbute
update item_template set stat_value1 = 12, spellid_1 = 0 where entry = 83414; -- Steel Plate Pauldrons
update item_template set spellid_1 = 7515, item_level = 50 where entry = 83412; -- Steel Plate Legguards
update item_template set stat_value1 = 10, stat_value2 = 9, armor = 334, item_level = 48 where entry = 83410; -- Steel Plate Boots
update item_template set stat_value1 = 12, stat_value2 = 7, spellid_1 = 7514, spelltrigger_1 = 1, item_level = 49 where entry = 83411; -- Steel Plate Gauntlets
update item_template set stat_value2 = 14, stat_value1 = 10, spellid_1 = 7518, item_level = 50 where entry = 83413; -- Steel Plate Armor

-- Hateforge Armor Set Rework
update item_template set stat_type2 = 7, bonding = 2, stat_value1 = 13, spellid_3 = 0, spellid_2 = 56525, spelltrigger_2 = 0, spellcooldown_1 = 600000, description = 'Strike with fury and ferocity.' where entry = 60577; -- Hateforge Grips
update item_template set stat_type2 = 7, bonding = 2, stat_value1 = 15, stat_value2 = 10, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 60576; -- Hateforge Belt
update item_template set stat_type2 = 7, bonding = 2, stat_value3 = 0, stat_value1 = 13, stat_value2 = 13, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 60578; -- Hateforge Boots
update item_template set stat_type2 = 7, bonding = 2, stat_value1 = 18, spellid_1 = 8815 where entry = 60574; -- Hateforge Cuirass
update item_template set stat_type2 = 7, bonding = 2, stat_value1 = 19, stat_value2 = 19, spellid_2 = 13679, spelltrigger_2 = 1, spellid_1 = 45530, spelltrigger_1 = 1 where entry = 60573; -- Hateforge Helmet
update item_template set stat_type2 = 7, bonding = 2, stat_value1 = 22, stat_value2 = 13, spellid_2 = 13679, spelltrigger_2 = 1, spellid_1 = 15464 where entry = 60575; -- Hateforge Leggings

-- Mage Tier Set Changes
-- Tier 1
update item_template set stat_value2 = 25, stat_value3 = 8, spellid_1 = 18049 where entry = 16795; -- Arcanist Crown
update item_template set stat_value1 = 16, stat_value2 = 13, stat_type2 = 7, stat_value3 = 0, spellid_1 = 18384, spellid_2 = 9346 where entry = 16797; -- Arcanist Mantle
update item_template set stat_value1 = 21, stat_value2 = 16, stat_type2 = 7, stat_value3 = 0, spellid_1 = 23727, spellid_2 = 22747, spelltrigger_2 = 1 where entry = 16798; -- Arcanist Robes
update item_template set stat_value2 = 10, stat_type2 = 7, stat_value3 = 5, spellid_1 = 9345, spellid_2 = 0 where entry = 16799; -- Arcanist Bindings
update item_template set stat_value1 = 17, stat_value3 = 12, spellid_1 = 14254, spellid_2 = 0 where entry = 16801; -- Arcanist Gloves
update item_template set stat_value1 = 18, spellid_1 = 23727, spellid_2 = 9343, spelltrigger_2 = 1 where entry = 16802; -- Arcanist Belt
update item_template set stat_value2 = 16, stat_value3 = 9, spellid_2 = 9343 where entry = 16800; -- Arcanist Boots
-- Tier 2
update item_template set stat_value1 = 15, stat_value2 = 10, spellid_1 = 23727, spellid_2 = 14047 where entry = 16917; -- Netherwind Mantle
update item_template set stat_value2 = 11, stat_type2 = 7, stat_value3 = 0, spellid_1 = 14248, spellid_2 = 0 where entry = 16918; -- Netherwind Bindings
update item_template set stat_value2 = 16, stat_type2 = 7, stat_value3 = 0, spellid_2 = 15714 where entry = 16913; -- Netherwind Gloves
update item_template set stat_value2 = 8, stat_value1 = 18, stat_value3 = 5, spellid_1 = 23727, spellid_2 = 14047, spelltrigger_2 = 1 where entry = 16818; -- Netherwind Belt
update item_template set stat_value2 = 11, spellid_1 = 18384 where entry = 16914; -- Netherwind Crown

-- Dungeon Tier Set 2/ Tier 0.5 Updates
-- Warrior
update item_template set armor = 299, disenchant_id = 64, max_durability = 55, item_level = 60, quality = 4, stat_value2 = 10, stat_value3 = 10 where entry = 21996; -- Bracers of Heroism
update item_template set armor = 385, disenchant_id = 64, max_durability = 55, item_level = 60, quality = 4, spellid_2 = 15464, spelltrigger_2 = 1, stat_value3 = 12 where entry = 21994; -- Belt of Heroism
update item_template set armor = 513, disenchant_id = 64, max_durability = 100, item_level = 60, quality = 4, spellid_1 = 15464, spelltrigger_1 = 1, stat_value3 = 13, stat_value2 = 13 where entry = 22001; -- Spaulders of Heroism
update item_template set armor = 598, disenchant_id = 64, max_durability = 120, item_level = 60, quality = 4, stat_value2 = 16, spellid_2 = 7597, spelltrigger_2 = 1 where entry = 22000; -- Legplates of Heroism
update item_template set armor = 427, disenchant_id = 64, item_level = 60, stat_value2 = 14, stat_value1 = 20 where entry = 21998; -- Gauntlets of Heroism

-- Paladin
update item_template set armor = 299, disenchant_id = 64, max_durability = 55, item_level = 60, quality = 4, stat_value4 = 9, stat_type4 = 3 where entry = 22088; -- Soulforge Bracers
update item_template set armor = 385, disenchant_id = 64, max_durability = 55, item_level = 60, quality = 4, spellid_1 = 7597, spellid_2 = 9344, stat_value2 = 11, stat_value3 = 12 where entry = 22086; -- Soulforge Belt
update item_template set armor = 513, disenchant_id = 64, max_durability = 100, item_level = 60, quality = 4, spellid_1 = 15464, spellid_2 = 9417, stat_value3 = 12, stat_value4 = 11, stat_type4 = 3 where entry = 22093; -- Soulforge Spaulders
update item_template set armor = 598, disenchant_id = 64, max_durability = 120, item_level = 60, quality = 4, spellid_1 = 7597, spellid_2 = 9344, spelltrigger_2 = 1 where entry = 22092; -- Soulforge Legplates
update item_template set armor = 427, disenchant_id = 64, item_level = 60, stat_value2 = 11, stat_value1 = 11, stat_value3 = 11, spellid_1 = 9345 where entry = 22090; -- Soulforge Gauntlets

-- Priest
update item_template set disenchant_id = 64, max_durability = 35, item_level = 60, quality = 4, stat_value1 = 9, stat_value2 = 9, stat_value3 = 9, spellid_1 = 9342 where entry = 22079; -- Virtuous Bracers
update item_template set disenchant_id = 64, max_durability = 35, item_level = 60, quality = 4, spellid_1 = 23727, spellid_2 = 9343, spelltrigger_2 = 1 where entry = 22078; -- Virtuous Belt
update item_template set disenchant_id = 64, max_durability = 60, item_level = 60, quality = 4, spellid_1 = 9345, spellid_2 = 21363, spelltrigger_2 = 1 where entry = 22082; -- Virtuous Mantle
update item_template set disenchant_id = 64, max_durability = 75, item_level = 60, quality = 4, spellid_1 = 23727, spellid_2 = 24595, spellid_3 = 21626, spelltrigger_3 = 1, stat_value1 = 15, stat_value2 = 16, stat_value3 = 15 where entry = 22085; -- Virtuous Skirt

update item_template set disenchant_id = 64, armor = 58, item_level = 60, spellid_2 = 23727, spelltrigger_2 = 1 where entry = 22081; -- Virtuous Gloves
update item_template set spellid_1 = 9346 where entry = 22080; -- Virtuous Crown
update item_template set stat_value1 = 16, stat_value3 = 17, spellid_1 = 24595, spellid_3 = 18384, spelltrigger_3 = 1 where entry = 22083; -- Virtuous Robe

-- Mage
update item_template set disenchant_id = 64, max_durability = 35, item_level = 60, quality = 4, stat_value3 = 10, spellid_1 = 9343 where entry = 22063; -- Sorcerer's Bindings
update item_template set disenchant_id = 64, max_durability = 35, item_level = 60, quality = 4, spellid_1 = 23727, spellid_2 = 9345, spelltrigger_2 = 1 where entry = 22062; -- Sorcerer's Belt
update item_template set disenchant_id = 64, max_durability = 60, item_level = 60, quality = 4, spellid_1 = 14799 where entry = 22068; -- Sorcerer's Mantle
update item_template set disenchant_id = 64, max_durability = 75, item_level = 60, quality = 4, spellid_1 = 18384, spellid_2 = 24595 where entry = 22067; -- Sorcerer's Leggings

update item_template set disenchant_id = 64, armor = 58, item_level = 60, spellid_1 = 9343 where entry = 22066; -- Sorcerer's Gloves
update item_template set stat_value1 = 17, stat_value2 = 11, spellid_1 = 18049 where entry = 22065; -- Sorcerer's Crown
update item_template set stat_value1 = 18, stat_value3 = 17, spellid_1 = 14127, spellid_2 = 23727 where entry = 22069; -- Sorcerer's Robes

-- Warlock
update item_template set disenchant_id = 64, max_durability = 35, item_level = 60, quality = 4, spellid_1 = 9342 where entry = 22071; -- Deathmist Bracers
update item_template set disenchant_id = 64, max_durability = 35, item_level = 60, quality = 4, spellid_1 = 18384, spellid_2 = 9417, spelltrigger_2 = 1 where entry = 22070; -- Deathmist Belt
update item_template set disenchant_id = 64, max_durability = 60, item_level = 60, quality = 4, spellid_1 = 14254, spellid_2 = 0, spelltrigger_2 = 1 where entry = 22073; -- Deathmist Mantle
update item_template set disenchant_id = 64, max_durability = 75, item_level = 60, quality = 4, stat_value1 = 20, stat_value2 = 20, spellid_1 = 23727, spellid_2 = 24595, spelltrigger_2 = 1 where entry = 22072; -- Deathmist Leggings

update item_template set disenchant_id = 64, armor = 58, item_level = 60, stat_value2 = 16, spellid_1 = 9343 where entry = 22077; -- Deathmist Wraps
update item_template set stat_value1 = 17, stat_value2 = 19, stat_value1 = 19, spellid_1 = 18049 where entry = 22074; -- Deathmist Mask
update item_template set stat_value1 = 18, stat_value2 = 23, spellid_1 = 15715 where entry = 22075; -- Deathmist Robes

-- Hunter 
update item_template set disenchant_id = 64, max_durability = 50, item_level = 60, quality = 4, armor = 169, stat_value1 = 18, stat_value2 = 8, stat_value3 = 7 where entry = 22011; -- Beastmaster's Bindings
update item_template set disenchant_id = 64, max_durability = 50, item_level = 60, quality = 4, armor = 218, spellid_1 = 15464, spelltrigger_1 = 1, stat_value1 = 17 where entry = 22010; -- Beastmaster's Belt
update item_template set disenchant_id = 64, max_durability = 85, item_level = 60, quality = 4, armor = 290, spellid_1 = 7597, spelltrigger_1 = 1 where entry = 22016; -- Beastmaster's Mantle
update item_template set disenchant_id = 64, max_durability = 105, item_level = 60, quality = 4, armor = 339, stat_value2 = 16, stat_value3 = 12, spellid_2 = 7597, spelltrigger_2 = 1 where entry = 22017; -- Beastmaster's Pants

update item_template set disenchant_id = 64, armor = 242, item_level = 60, spellid_2 = 15464, spelltrigger_2 = 1 where entry = 22015; -- Beastmaster's Gloves

-- Shaman
update item_template set disenchant_id = 64, max_durability = 50, item_level = 60, quality = 4, armor = 169, stat_value2 = 10, stat_type2 = 7, stat_value3 = 0, spellid_1 = 9342, spellid_2 = 21618, spelltrigger_2 = 1 where entry = 22095; -- Bindings of The Five Thunders
update item_template set disenchant_id = 64, max_durability = 50, item_level = 60, quality = 4, armor = 218, stat_value2 = 12, stat_type2 = 7, stat_value3 = 0, spellid_1 = 23727, spellid_2 = 9344, spelltrigger_2 = 1, spellid_3 = 21363, spelltrigger_3 = 1 where entry = 22098; -- Cord of The Five Thunders
update item_template set disenchant_id = 64, max_durability = 85, item_level = 60, quality = 4, armor = 290, stat_value2 = 13, stat_type2 = 7, stat_value1 = 13, stat_value3 = 0, stat_value4 = 0, spellid_1 = 9346, spellid_2 = 21618, spelltrigger_2 = 1, spellid_3 = 0, spelltrigger_3 = 1 where entry = 22101; -- Pauldrons of The Five Thunders
update item_template set disenchant_id = 64, max_durability = 105, item_level = 60, quality = 4, armor = 339, stat_value2 = 16, stat_type2 = 7, stat_value1 = 18, stat_type1 = 5, stat_value3 = 0, stat_value4 = 0, spellid_1 = 23727, spellid_2 = 24595, spelltrigger_2 = 1, spellid_3 = 21363, spelltrigger_3 = 1 where entry = 22100; -- Kilt of The Five Thunders

update item_template set disenchant_id = 64, armor = 242, item_level = 60, stat_value2 = 12, stat_type2 = 7, stat_value1 = 14, stat_type1 = 5, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 9343, spelltrigger_2 = 1, spellid_3 = 21618, spelltrigger_3 = 1 where entry = 22099; -- Gauntlets of The Five Thunders
update item_template set stat_value2 = 13, stat_type2 = 7, stat_value1 = 13, stat_type1 = 5, stat_value3 = 0, stat_value4 = 0, spellid_1 = 23727, spellid_2 = 9344, spelltrigger_2 = 1, spellid_3 = 21618, spelltrigger_3 = 1 where entry = 22096; -- Boots of The Five Thunders
update item_template set stat_value2 = 18, stat_type2 = 7, stat_value1 = 16, stat_type1 = 5, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 24595, spelltrigger_2 = 1, spellid_3 = 21363, spelltrigger_3 = 1 where entry = 22097; -- Coif of The Five Thunders
update item_template set stat_value2 = 18, stat_type2 = 7, stat_value1 = 15, stat_type1 = 5, stat_value3 = 0, stat_value4 = 0, spellid_1 = 18384, spellid_2 = 18049, spelltrigger_2 = 1, spellid_3 = 21618, spelltrigger_3 = 1 where entry = 22102; -- Vest of The Five Thunders

-- Rogue
update item_template set armor = 81, disenchant_id = 64, max_durability = 40, item_level = 60, quality = 4, stat_value2 = 10, stat_value3 = 10 where entry = 22004; -- Darkmantle Bracers	
update item_template set armor = 97, disenchant_id = 64, max_durability = 40, item_level = 60, quality = 4, stat_value2 = 16, stat_value3 = 15 where entry = 22002; -- Darkmantle Belt
update item_template set armor = 129, disenchant_id = 64, max_durability = 70, item_level = 60, quality = 4, spellid_1 = 15464, spelltrigger_1 = 1, stat_value2 = 12 where entry = 22008; -- Darkmantle Spaulders
update item_template set armor = 150, disenchant_id = 64, max_durability = 90, item_level = 60, quality = 4, stat_value2 = 17, stat_value3 = 16, spellid_1 = 7597, spelltrigger_1 = 1 where entry = 22007; -- Darkmantle Pants
update item_template set armor = 107, disenchant_id = 64, item_level = 60, stat_value2 = 13, stat_value3 = 13 where entry = 22006; -- Darkmantle Gloves	

-- Druid
update item_template set armor = 81, disenchant_id = 64, max_durability = 40, item_level = 60, quality = 4, stat_type1 = 5, stat_type2 = 6, stat_type3 = 7, stat_value1 = 12, stat_value2 = 7, stat_value3 = 8, stat_value4 = 0, stat_value5 = 0, name = 'Moonheart Bracers', spellid_1 = 9343 where entry = 22108; -- Feralheart Bracers	
update item_template set armor = 97, disenchant_id = 64, max_durability = 40, item_level = 60, quality = 4, stat_type1 = 5, stat_type2 = 6, stat_type3 = 7, stat_value1 = 14, stat_value2 = 11, stat_value3 = 12, stat_value4 = 0, stat_value5 = 0, name = 'Moonheart Belt', spellid_1 = 23727, spellid_2 = 9342, spelltrigger_2 = 1 where entry = 22106; -- Feralheart Belt
update item_template set armor = 129, disenchant_id = 64, max_durability = 70, item_level = 60, quality = 4, stat_type1 = 5, stat_type2 = 6, stat_type3 = 7, stat_value1 = 15, stat_value2 = 12, stat_value3 = 12, stat_value4 = 0, stat_value5 = 0, name = 'Moonheart Spaulders', spellid_1 = 9346, spellid_2 = 0 where entry = 22112; -- Feralheart Spaulders
update item_template set armor = 150, disenchant_id = 64, max_durability = 90, item_level = 60, quality = 4, stat_type1 = 5, stat_type2 = 6, stat_type3 = 7, stat_value1 = 18, stat_value2 = 14, stat_value3 = 15, stat_value4 = 0, stat_value5 = 0, name = 'Moonheart Kilt', spellid_1 = 23727, spellid_2 = 24595, spelltrigger_2 = 1 where entry = 22111; -- Feralheart Kilt
update item_template set armor = 107, disenchant_id = 64, item_level = 60, stat_type1 = 5, stat_type2 = 6, stat_type3 = 7, stat_value1 = 15, stat_value2 = 11, stat_value3 = 12, stat_value4 = 0, stat_value5 = 0, name = 'Moonheart Gloves', spellid_1 = 23727, spellid_2 = 9417, spelltrigger_2 = 1 where entry = 22110; -- Feralheart Gloves
update item_template set stat_type1 = 5, stat_type2 = 6, stat_type3 = 7, stat_value1 = 12, stat_value2 = 12, stat_value3 = 12, stat_value4 = 0, stat_value5 = 0, name = 'Moonheart Boots', spellid_1 = 18384, spellid_2 = 9343, spelltrigger_2 = 1 where entry = 22107; -- Feralheart Boots
update item_template set stat_type1 = 5, stat_type2 = 6, stat_type3 = 7, stat_value1 = 17, stat_value2 = 14, stat_value3 = 15, stat_value4 = 0, stat_value5 = 0, name = 'Moonheart Cowl', spellid_1 = 18384, spellid_2 = 24595, spelltrigger_2 = 1 where entry = 22109; -- Feralheart Cowl
update item_template set stat_type1 = 5, stat_type2 = 6, stat_type3 = 7, stat_value1 = 20, stat_value2 = 10, stat_value3 = 16, stat_value4 = 0, stat_value5 = 0, name = 'Moonheart Vest', spellid_1 = 18384, spellid_2 = 24595, spelltrigger_2 = 1 where entry = 22113; -- Feralheart Vest


-- Misc
update item_template set spellid_2 = 5896 where entry = 19351; -- Maladath, Runed Blade of the Black Flight
update item_template set stat_value2 = 5, stat_value1 = 5 where entry = 61385; -- Magnetic Band
update item_template set stat_value1 = 23, stat_value2 = 28, spellid_1 = 7597 where entry = 60008; -- Towerforge Breastplate
update item_template set stat_value1 = 15, spellid_1 = 15464 where entry = 60009; -- Towerforge Pauldrons
update item_template set spellid_1 = 15464, spellid_2 = 13679 where entry = 60007; -- Towerforge Crown
update item_template set stat_value1 = 12, stat_value2 = 6, spellid_1 = 17890 where entry = 11782; -- Boreal Mantle
update item_template set subclass = 1 where entry = 61061; -- Regenerating Robe	

-- shady rest: ilvl 42 to 47
update item_template set item_level = 47, armor = 1648, block = 26, nature_res = 0, stat_value1 = 7, stat_type1 = 7 where entry = 60950; -- Wattapo's Bulwark
update item_template set item_level = 47, armor = 1648, block = 26, nature_res = 0, stat_value1 = 7, stat_type1 = 7 where entry = 60819; -- Dustwallow Defender
update item_template set item_level = 47, stat_value1 = 0, spellid_1 = 23727, spelltrigger_1 = 1, dmg_min1 = 56, dmg_max1 = 104 where entry = 60952; -- Stonemaul Seer Club
update item_template set item_level = 47, stat_value1 = 6, spellid_1 = 9415, spelltrigger_1 = 1, dmg_min1 = 32, dmg_max1 = 60 where entry = 60820; -- Ornate Dagger of Jalvan
update item_template set item_level = 47, stat_value1 = 20, stat_value2 = 14, dmg_min1 = 90, dmg_max1 = 167 where entry = 60951; -- Krog's Pike
update item_template set item_level = 47, stat_value1 = 20, spellid_1 = 7597, spelltrigger_1 = 1, dmg_min1 = 84, dmg_max1 = 156 where entry = 60818; -- Garran's Pike
update item_template set item_level = 47, stat_value1 = 8, dmg_min1 = 49, dmg_max1 = 90 where entry = 60953; -- Brackenwall Longbow
update item_template set item_level = 47, stat_value1 = 8, dmg_min1 = 57, dmg_max1 = 106 where entry = 60821; -- Theramore Arbalest

-- buff gilneas city quest rewards
update item_template set stat_value2 = 15, stat_value4 = 10 where entry = 61355; -- Dark Footpad Belt
update item_template set stat_value2 = 7, stat_value3 = 7, stat_value1 = 6, spellid_1 = 45421 where entry = 61353; -- Blackthorn Gauntlets
update item_template set stat_value1 = 11 where entry = 61498; -- Signet of Gilneas
update item_template set stat_value2 = 9, stat_value3 = 9 where entry = 61499; -- Ravenshire Gloves
update item_template set stat_value2 = 8, stat_value1 = 18 where entry = 61661; -- Varimathras' Cunning
update item_template set spellid_2 = 13679, spelltrigger_2 = 1 where entry = 61662; -- Stillward Amulet
update item_template set stat_value2 = 0, stat_value1 = 21, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 61660; -- Garalon's Might

-- hyjal quest reward adjustments
update item_template set stat_value2 = 15, stat_value1 = 25 where entry = 61646; -- Gladeforge Breastplate
update item_template set nature_res = 10, shadow_res = 10 where entry = 61705; -- Dreamwind Sigil
update item_template set spellid_1 = 8815, dmg_min1 = 81, dmg_max1 = 151 where entry = 61411; -- Moonseeker Staff
update item_template set nature_res = 5 where entry = 61703; -- Talisman of the Dreamshaper
update item_template set stat_value1 = 6, stat_value2 = 6, spellid_2 = 7694 where entry = 61710; -- Defender of Nordrassil
update item_template set spellid_1 = 14799 where entry = 61645; -- Clutch of Renewal
update item_template set spellid_1 = 14254, spellid_3 = 0 where entry = 61708; -- Dreamwind Spaulders
update item_template set nature_res = 0, stat_value1 = 15 where entry = 61709; -- Windtalker Cape
update item_template set stat_value1 = 16, stat_type2 = 3, stat_value2 = 10, stat_value3 = 0, stat_value4 = 0 where entry = 61647; -- Cuffs of Nordanaar
update item_template set nature_res = 5, stat_value1 = 9, dmg_min1 = 76, dmg_max1 = 142 where entry = 61717; -- Groveslicer Glaive


