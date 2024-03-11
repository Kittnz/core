
SET @JEWELCRAFTING = 755;


-- Recipe Item Name: Small Pearl Ring (55169)
-- Recipe Learning Requirements: 65 Jewelry (Minimum 85, maximum 105)
-- Required Materials: 55156 (1), 5498 (1), 55150 (2), 55245 (1)
-- Requires:Jewelry Kit, Forge

SET @learn_spell_id = 41246; 
SET @craft_spell_id = 41247; 
SET @skill_line_entry = 17129;
SET @output_item_id = 55169; 
SET @recipe_spell_name = 'Small Pearl Ring'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 0;
SET @tool_item_1 = 2772;  -- Jewelry Kit
SET @tool_item_2 = 0; 
SET @tool_item_3 = 0; 
SET @skill_level_required = 65; 
SET @skill_level_max = 105; 
SET @skill_trainer_required = 85;

SET @reagent_item_1 = 55156; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 5498; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 55150; SET @reagent_item_count_3 = 2;
SET @reagent_item_4 = 55245; SET @reagent_item_count_4 = 1;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 3;  -- Forge
SET @cast_time_index = 14; 
SET @cast_time_index_craft = 33; 
SET @targets = 0; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);


-- Recipe Item Name: Bulky Copper Ring (81093)
-- Recipe Learning Requirements: 25 Jewelry (minimum 45, maximum 65)
-- Required Materials: 55156 (1), 2880 (1), 55245 (1)
-- Requires:Jewelry Kit, Forge

SET @learn_spell_id = 41248; 
SET @craft_spell_id = 41249; 
SET @skill_line_entry = 17128;
SET @output_item_id = 81093; 
SET @recipe_spell_name = 'Bulky Copper Ring'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 0;
SET @tool_item_1 = 2772;  -- Jewelry Kit
SET @tool_item_2 = 0; 
SET @tool_item_3 = 0; 
SET @skill_level_required = 25; 
SET @skill_level_max = 65; 
SET @skill_trainer_required = 45;

SET @reagent_item_1 = 55156; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 2880; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 55245; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 3;  -- Forge
SET @cast_time_index = 14; 
SET @cast_time_index_craft = 33; 
SET @targets = 0; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

REPLACE INTO item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, wrapped_gift, extra_flags, other_team_entry, script_name) VALUES
 ('56021', '9', '11', 'Plans: Small Pearl Ring', '', '7798', '2', '0', '1', '1632', '408', '0', '-1', '-1', '18',
 '0', '755', '65', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '41246', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

--

REPLACE INTO item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, wrapped_gift, extra_flags, other_team_entry, script_name) VALUES
 ('56022', '9', '10', 'Plans: Bulky Copper Ring', '', '7798', '2', '0', '1', '568', '142', '0', '-1', '-1', '10',
 '0', '755', '25', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '41248', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);