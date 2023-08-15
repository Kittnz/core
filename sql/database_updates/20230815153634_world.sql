/*
-- Note: I reserved 54000-54000 spell entry range for your new recipe spells, for jewecrafting or whatever you want. However for the skillline data, please always check with the recent SkillLibeAbility.dbc in client repository to see what's the last entry in that table, and go with the next one! 
-- You don't have to include this enum if you're working with the same file:

SET @SURVIVAL                 = 142;
SET @BLACKSMITHING            = 164;
SET @LEATHERWORKING           = 165;
SET @ALCHEMY                  = 171;
SET @TAILORING                = 197;
SET @ENGINEERING              = 202;
SET @ENHANCEMENT              = 373;
SET @JEWELCRAFTING            = 755;

-- MODIFY THIS PART:

SET @learn_spell_id = 54000; -- Ensure it's unique.
SET @recipe_spell_id = 54001; -- Ensure it's unique, usually learning spell ID + 1

SET @recipe_spell_name = 'Blue Dragonscale Boots'; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_learn_spell_name = CONCAT('Pattern: ', @recipe_spell_name); -- Ensure it's unique, usually learning spell ID + 1

SET @recipe_item = 0000; -- Teaching scroll item. Item must exist in DB. Create it with ANY recipe in the field, it'll be overwritten.
SET @skill_id = @LEATHERWORKING; 
SET @output_item_id = 65015; -- What you're crafting.

SET @reagent_item_1 = 8170;
SET @reagent_item_count_1 = 24;

SET @reagent_item_2 = 15415;
SET @reagent_item_count_2 = 25;

SET @reagent_item_3 = 15407;
SET @reagent_item_count_4 = 1;

SET @reagent_item_4 = 14341;
SET @reagent_item_count_4 = 1;

SET @reagent_item_5 = 0;
SET @reagent_item_count_5 = 0;

SET @reagent_item_6 = 0;
SET @reagent_item_count_6 = 0;

SET @reagent_item_7 = 0;
SET @reagent_item_count_7 = 0;

SET @reagent_item_8 = 0;
SET @reagent_item_count_6 = 8;

SET @reagent_item_6 = 0;
SET @reagent_item_count_6 = 0;

SET @skill_line_entry = 36530; -- Unique entry that isn't taken yet.
SET @skill_level_required = 290; -- Required to craft.
SET @skill_level_max = 300; -- When it'll stop giving skillups.
SET @skill_required_to_train = 0; -- Fill only if it's trainer spell.

-- DO NOT MODIFY THIS PART:

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @recipe_spell_id, 0, 0, 1, 0, 0, @skill_level_max, @skill_level_required , @skill_required_to_train);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @recipe_spell_id, 0, 0, 0, 0, 0, 108, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@recipe_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4439, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
*/