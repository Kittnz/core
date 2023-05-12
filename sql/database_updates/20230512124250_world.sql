-- Fix custom area triggers:

DELETE FROM `areatrigger_template` WHERE `id` >= 5000;

REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES 
(109, 35, -1.11312, 32.4854, -21.1963, 3, 0, 0, 0, 0),
(5000, 0, -1168.4, -1811.69, 52.8856, 3, 0, 0, 0, 0),
(5001, 800, -1168.4, -1811.69, 52.8856, 3, 0, 0, 0, 0),
(5002, 0, -8674.59, 633.4, 97, 3, 0, 0, 0, 0),
(5003, 0, -9362.37, 537.774, 48.6679, 3, 0, 0, 0, 0),
(5004, 1, 1689.78, -1272.15, 161.678, 3, 0, 0, 0, 0),
(5005, 802, 585.620, 96.658, 275.854, 3, 0, 0, 0, 0),
(5006, 1, -8766.95, -4169.93, -210.059, 3, 0, 0, 0, 0),
(5007, 269, -2020.5, 6590, -154, 3, 0, 0, 0, 0),
(5008, 0, -11068.3, -1811.69, 53, 3, 0, 0, 0, 0),
(5009, 0, -8173, -3114.57, 201.218, 3, 0, 0, 0, 0),
(5010, 1, 1689.78, -1272.15, 161.678, 3, 0, 0, 0, 0),
(5011, 800, -11068.3, -1814.06, 53.9778, 3, 0, 0, 0, 0),
(5012, 802, 585, 97, 276, 3, 0, 0, 0, 0),
(5013, 808, -8172.85, -3114.18, 200.625, 3, 0, 0, 0, 0),
(5014, 0, -1096.81, 2234.77, 182.86, 3, 0, 0, 0, 0),
(5015, 815, -1091.20, 2232.21, 182.86, 3, 0, 0, 0, 0),
(5016, 807, 2767.40, 2959.00, 30.109, 3, 0, 0, 0, 0),
(5017, 1, 4833.13, -1756.65, 1158.04, 3, 0, 0, 0, 0);

DELETE FROM `areatrigger_teleport` WHERE `id` >= 5000;

REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(107, 'Stormwind Vault - Entrance', 'You must be at least level 58 to enter.', 58, 0, 35, -0.91, 40.57, -24.23, 0),
(1629, 'Black Morass - Exit', '', 0, 0, 1, -8756.8, -4191.3, -209.4, 5.5),
(1632, 'Black Morass - Entrance', 'You must be at least level 58 to enter.', 58, 0, 269, -2002.5, 6575.3, -154.9, 5.7),
(5002, 'Stormwind Vault - Entrance (outside)', 'You must be at least level 58 to enter.', 58, 0, 35, -0.91, 40.57, -24.23, 0),
(5004, 'Crescent Grove - Entrance', 'You must be at least level 32 to enter.', 32, 0, 802, 579.13, 90.7, 276.11, 3.4),
(5005, 'Crescent Grove - Exit', '', 0, 0, 1, 1722.0, -1272.6, 163.26, 5.8),
(5008, 'Karazhan Crypt - Entrance', 'You must be at least level 55 to enter.', 55, 0, 800, -11068.1, -1806.4, 52.7, 1.5),
(5009, 'Hateforge Quarry - Entrance', 'You must be at least level 48 to enter.', 48, 0, 808, -8173.9, -3120.6, 199.8, 4.7),
(5011, 'Karazhan Crypt - Exit', '', 0, 0, 0, -11068.9, -1828.6, 60.26, 3.1),
(5012, 'The Crescent Grove - Exit', '', 0, 0, 1, 1722, -1272.6, 163.26, 5.8),
(5013, 'Hateforge Quarry - Exit', '', 0, 0, 0, -8169.2, -3106.7, 200.4, 1.1),
(5014, 'Gilneas City - Entrance', 'You must be at least level 40 to enter.', 40, 0, 815, -1100.00, 2237.75, 182.86, 2.6),
(5015, 'Gilneas City - Exit', '', 0, 0, 0, -1089.86, 2231.4, 182.859, 5.54),
(5016, 'Emerald Sanctum - Exit', '', 0, 0, 1, 4819.065, -1746.326, 1156.988, 2.5),
(5017, 'Emerald Sanctum - Entrance', 'You must be at least level 60 to enter.', 60, 19000, 807, 2762.248, 2972.768, 26.903, 1.9);


-- Placeholder for Emerald Sanctum attunement item:

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (19470, 13, 0, 'Emerald Key', '', 20802, 1, 2112, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3366, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (19000, 2, 19470, 0, 0, 0, 0);
