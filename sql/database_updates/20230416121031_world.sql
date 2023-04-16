-- Set scale of npc Snarlclaw (entry 61405) to 2.4.
update creature_template set scale = 2.4 where entry = 61405;
-- Set the scale of the following NPCS to 1 (They are tiny and like scale 0 or something)
update creature_template set scale = 1 where entry in (61367,61359,61358,61356,61363,61364,61365,61366,61388,61389,61390,61391);
-- The following npcs have the error 'incorrect syntax' entry 61363, 61364.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20283, 0, 0, 0, 0),
(20284, 0, 0, 0, 0),
(20263, 0, 0, 0, 0),
(20264, 0, 0, 0, 0);

-- Buff Kara10 Recipe Crafted Items
update item_template set stat_value3 = 12, spellid_1 = 8815, spellid_2 = 14799, spellid_3 = 21436, spelltrigger_3 = 1 where entry = 61187; -- Intricate Gyroscope Goggles
-- Items (4 Epics, 6 Rares per Boss)
-- ------------------------------------------------- By Dragunovi.
-- Brood Queen Araxxna
-- Epics
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Vial of Potent Venoms', '', 4, 0, 1, 4, 21531, 1, 60, 0, -1, -1, 267412, 66853, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Rares
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Leggings of Shrouding Winds', '', 4, 4, 6, 3, 25315, 1, 60, 0, -1, -1, 111151, 27787, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 100, 176, 0, 0, 68, 0, 49, 0, 0, 0, 0, 0, 0, 5, 14, 7, 21, 14248, 1, 0, 0, -1, 0, -1, 13390, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Bracers of Brambled Vines', '', 4, 2, 8, 3, 16905, 1, 60, 0, -1, -1, 76215, 19053, 9, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 35, 82, 0, 0, 68, 0, 49, 0, 0, 0, 0, 0, 0, 5, 8, 7, 8, 6, 8, 9315, 1, 0, 0, 0, 0, -1, 0, 0, 0);

-- Lord Blackwald II
-- Epics
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Sabatons of the Endless March', '', 4, 4, 6, 4, 66382, 1, 60, 0, -1, -1, 102415, 25603, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 75, 515, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 4, 20, 7, 20, 48034, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Shadowbringer', '', 2, 8, 1, 4, 60754, 1, 60, 0, -1, -1, 400000, 100000, 17, 1, 0, 0, 1, 1, 0, 170, 258, 3300, 0, 0, 120, 0, 0, 0, 68, 0, 65, 0, 0, 0, 0, 0, 0, 18656, 2, 0, 2, 12000, 0, -1, 26693, 2, 0, 1, 30000, 0, -1, 0, 0, 0);
-- Rares

-- Clawlord Howlfang
-- Epics
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Beasthunter\'s Blunderbuss', 'The initials G.G. are etched on the stock.', 2, 3, 1, 4, 20729, 0, 60, 0, -1, -1, 265120, 66280, 26, 0, 0, 0, 1, 1, 0, 72, 138, 2800, 0, 0, 90, 0, 0, 0, 66, 100, 65, 0, 0, 0, 0, 0, 0, 3, 5, 18109, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Pelt of the Great Howler', '', 4, 1, 7, 4, 23103, 1, 60, 0, -1, -1, 115250, 28812, 16, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 4, 22, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0);
-- Rares
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Reedwoven Tunic', '', 4, 2, 8, 3, 11892, 1, 60, 0, -1, -1, 75162, 18790, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 100, 177, 0, 0, 68, 0, 49, 0, 0, 0, 0, 0, 0, 5, 10, 7, 10, 6, 12, 18040, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- Grizikil
-- Epics
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Azora\'s Mind', '', 4, 0, 1, 4, 14433, 1, 60, 0, -1, -1, 255614, 63903, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 5, 14, 14799, 1, 0, 0, -1, 0, -1, 13679, 1, 0, 0, 0, 0, 0, 0, 0, 0);
-- Rares
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Red Hat of Destruction', '', 4, 1, 7, 3, 15923, 1, 60, 0, -1, -1, 95152, 23788, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 50, 78, 0, 0, 68, 0, 49, 0, 0, 0, 0, 0, 0, 5, 14, 7, 13, 9346, 1, 0, 0, -1, 0, -1, 18382, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- Moroes Part 1
-- Epics
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Aetherforged Gauntlets', '', 4, 4, 6, 4, 25317, 1, 60, 0, -1, -1, 72415, 18103, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 55, 468, 0, 0, 66, 0, 65, 0, 0, 0, 0, 0, 0, 5, 13, 7, 18, 13387, 1, 0, 0, -1, 0, -1, 14254, 1, 0, 0, -1, 0, -1, 0, 0, 0);
-- Rares
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Reedmesh Belt', '', 4, 2, 8, 3, 29929, 1, 60, 0, -1, -1, 71405, 17851, 6, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 35, 100, 0, 0, 68, 0, 49, 0, 0, 0, 0, 0, 0, 5, 9, 7, 9, 6, 11, 18031, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Tuning Fork of Charged Lightning', '', 2, 15, 1, 3, 66383, 1, 60, 0, -1, -1, 294397, 73599, 21, 3, 0, 0, 1, 1, 0, 50, 98, 1800, 0, 0, 65, 0, 0, 0, 68, 0, 49, 0, 0, 0, 0, 0, 0, 9359, 1, 0, 0, -1, 0, -1, 13679, 1, 0, 0, 0, 0, 0, 0, 0, 0);
-- Moroes Part 2
-- Epics (Only)
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Leggings of the Misty Marsh', '', 4, 2, 8, 4, 7950, 1, 60, 0, -1, -1, 246361, 61590, 7, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 90, 178, 0, 0, 71, 0, 65, 0, 0, 10, 0, 0, 0, 5, 14, 7, 14, 6, 22, 18039, 1, 0, 0, -1, 0, -1, 13679, 1, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (0, 'Cloudplate Wristguards', '', 4, 4, 6, 4, 27406, 1, 60, 0, -1, -1, 97414, 24353, 9, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 55, 356, 0, 0, 72, 0, 65, 0, 0, 0, 0, 0, 0, 5, 12, 7, 17, 9342, 1, 0, 0, -1, 0, -1, 7517, 1, 0, 0, -1, 0, -1, 0, 0, 0);
