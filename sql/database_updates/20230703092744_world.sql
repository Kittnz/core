UPDATE `spell_template` SET `description` = 'Permanently increase the intellect by 8 and spell power by 6 of an item worn on the chest, legs, hands or feet.  Only usable on items level 60 and above.' WHERE `entry` = 57115;
UPDATE `spell_template` SET `name` = 'Intellect +8, Spell Power +6' WHERE `entry` = 57136;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57127;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57142;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57148;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57036;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57034;
UPDATE `spell_template` SET `equippedItemSubClassMask` = 30 WHERE `entry` = 57032;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57127;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57142;
UPDATE `spell_template` SET `equippedItemInventoryTypeMask` = 256 WHERE `entry` = 57148;
UPDATE `spell_template` SET `name` = 'Enchant Chest - Mighty Mana' WHERE `entry` = 57119;

-- Rainy weather for Gilneas:

REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES (5179, 60, 0, 0, 60, 0, 0, 60, 0, 0, 60, 0, 0);

-- Create books for new mage's teleports and portals.

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES 

(92001, 9, 0, 'Tome of Teleportaion: Theramore', 'A weathered tome, imbued with the arcane knowledge, grants mages the ability to swiftly journey to the city''s shores.', 1103, 3, 64, 1, 400000, 100000, 0, 31360, 589, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49360, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL), 
(92002, 9, 0, 'Tome of Portals: Theramore', 'An enchanted compendium that empowers mages to create portals leading to the city of Theramore, fostering swift transportation for allies and friends.', 1103, 3, 64, 1, 400000, 100000, 0, 31360, 589, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49365, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL), 
(92003, 9, 0, 'Tome of Teleportaion: Stonard', 'A weathered tome, imbued with the arcane knowledge, grants mages the ability to swiftly journey to the outpost of Stonard.', 1103, 3, 64, 1, 400000, 100000, 0, 31360, 434, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49357, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL), 
(92004, 9, 0, 'Tome of Portals: Stonard', 'Unleashing the arcane essence contained within, this tome enables mages to conjure portals that transport them and their companions to the stronghold of Stonard, deep within the Swamp of Sorrow.', 1103, 3, 64, 1, 400000, 100000, 0, 31360, 434, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49363, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

UPDATE `item_template` SET `bonding` = 1 WHERE `entry` IN (92001, 92002, 92003, 92004);

-- New recipies added to skill line ability.

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36457, 333, 57142, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36458, 333, 57144, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36459, 333, 57146, 0, 0, 1, 0, 0, 210, 205, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36460, 333, 57148, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36461, 333, 57119, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36462, 333, 57117, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36463, 164, 57113, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36464, 164, 57121, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36465, 171, 57111, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36466, 165, 57125, 0, 0, 1, 0, 0, 320, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36467, 197, 57123, 0, 0, 1, 0, 0, 320, 310, 0);

-- NPC ID 61550 should have a random respawn timer between 12 and 24 hours.

UPDATE `creature` SET `spawntimesecsmin` = 43200, `spawntimesecsmax` = 86400 WHERE `id` = 61550;

-- quest 40872, 40873, 40874, 40875, 40883, 40884, change short description to the following: 

-- "Gather 50 Bright Dream Shards for Evandil Nightwind at Nordanaar in Hyjal."

UPDATE `quest_template` SET `Objectives` = 'Gather 50 Bright Dream Shards for Evandil Nightwind at Nordanaar in Hyjal.' WHERE `entry` IN (40872, 40873, 40874, 40875, 40883, 40884);

-- Item Powerful Smelling Salts (entry 8546) set requirement to First Aid 250 instead of 200

UPDATE `item_template` SET `required_skill_rank` = 250 WHERE `entry` = 8546;