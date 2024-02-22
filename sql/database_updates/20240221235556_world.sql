UPDATE `spell_template` SET `effectBasePoints2` = 0 WHERE `entry` = 30220;
UPDATE `spell_template` SET `effectBasePoints2` = 1 WHERE `entry` = 30224;
UPDATE `spell_template` SET `effectBasePoints2` = 2 WHERE `entry` = 30226;
UPDATE `spell_template` SET `effectBasePoints2` = 3 WHERE `entry` = 30228;

SET @JEWELCRAFTING        = 755;

-- MODIFY THIS PART:

SET @learn_spell_id = 29729; -- Ensure it's unique.
SET @craft_spell_id = 29728; -- Ensure it's unique, usually learning spell ID + 1
SET @skill_id = @JEWELCRAFTING; 
SET @recipe_spell_name = 'Rough Gritted Paper'; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_learn_spell_name = @recipe_spell_name; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_item = 0; -- Teaching scroll item. Item must exist in DB. Create it with ANY recipe in the field, it'll be overwritten.
SET @output_item_id = 55150 ; -- What you're crafting.
SET @tool_item_1 = 0; -- Example: Silver Rod.
SET @tool_item_2 = 0; -- Example: Golden Rod.

SET @reagent_item_1 = 2589; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 2835; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 0; SET @reagent_item_count_3 = 0;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_6 = 8;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;

SET @spell_visual_1 = 1168; 
SET @skill_line_entry = 30425; -- Unique entry that isn't taken yet!!!
SET @skill_level_required = 1; -- Required to craft.
SET @skill_level_max = 10; -- When it'll stop giving skillups.
SET @if_required_spell_focus = 0; -- 0 or 1. Spell focus needed by spell to be casted. Player needs to be within range of apropriate gameobject with type=8. 
SET @cast_time_index = 1; -- For trainers: 1, for recipes: 14.
SET @cast_time_index_craft = 33; -- Casting time of crafting.
SET @targets = 256; -- For trainers: 256, for recipes: 0.
SET @on_skill_get_bool = 1; -- 1 or 0, 1 is it's obtained with the first tradeskill rank, rare case!

-- DO NOT MODIFY THIS PART:
-- Edit: Change "craft" to "make" for Blacsksmithing, Alchemy and Engineering, "sew" for Tailoring, "create" for Survival, "permanently enchant a <item type> to X" for Enchanting.
SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;

REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (22220, 29729, 10, 0, 0, 5);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (30521, 755, 30236, 0, 0, 1, 0, 1, 20, 1, 0);
