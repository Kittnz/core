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
