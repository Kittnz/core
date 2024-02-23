REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('81032', '0', '0', 'Rough Gemstone Cluster', '', '4690', '1', '0', '1', '200', '50', '0', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);
 
UPDATE `skill_line_ability` SET `max_value` = 40, `min_value` = 20 WHERE `id` = 17000; 
UPDATE `item_template` SET `class` = 15, `flags` = 4  WHERE `entry` = 81032;
 
SET @JEWELCRAFTING = 755;

DELETE FROM `item_loot_template` WHERE `entry` = 81032;
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(81032, 774,   100,  1, 1, 1, 0), -- Malachite
(81032, 818,   100,  1, 1, 1, 0), -- Tigerseye
(81032, 81094, 100,  1, 1, 1, 0), -- Tigerseye
(81032, 1210,  100,  1, 1, 1, 0), -- Shadowgem

(81032, 774,   5,  2, 1, 1, 0), -- Malachite
(81032, 818,   10, 2, 1, 1, 0), -- Tigerseye
(81032, 81094, 5,  2, 1, 1, 0), -- Tigerseye
(81032, 1210,  10, 2, 1, 1, 0); -- Shadowgem

SET @learn_spell_id = 41030; -- Ensure it's unique.
SET @craft_spell_id = 41031; -- Ensure it's unique, usually learning spell ID + 1
SET @skill_line_entry = 17015; -- Unique entry that isn't taken yet!!!
SET @output_item_id = 81032; -- What you're crafting.
SET @recipe_spell_name = 'Rough Gemstone Cluster'; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_learn_spell_name = @recipe_spell_name; -- Ensure it's unique, usually learning spell ID + 1
SET @cost = 180;
SET @tool_item_1 = 55155; -- Jewelcrafter's Kit
SET @tool_item_2 = 0; -- Example: Golden Rod.
SET @skill_level_required = 25; -- Required to craft.
SET @skill_level_max = 50; -- When it'll stop giving skillups.

SET @reagent_item_1 = 55150; SET @reagent_item_count_1 = 3; -- Rough Copper Ring
SET @reagent_item_2 = 2770;  SET @reagent_item_count_2 = 3; -- Copper Ore
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_6 = 8;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; -- Teaching scroll item. Item must exist in DB. Create it with ANY recipe in the field, it'll be overwritten.
SET @if_required_spell_focus = 0; -- 0 or 1. Spell focus needed by spell to be casted. 
SET @cast_time_index = 1; -- For trainers: 1, for recipes: 14.
SET @cast_time_index_craft = 33; -- Casting time of crafting.
SET @targets = 256; -- For trainers: 256, for recipes: 0.
SET @on_skill_get_bool = 0; -- 1 or 0, 1 is it's obtained with the first tradeskill rank, rare case!
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3, @learn_spell_id, @cost, @skill_id, @skill_level_required, 0);


