SET @JEWELCRAFTING = 755;

DELETE FROM `npc_trainer_template` WHERE `entry` = 6;

REPLACE `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 

(6, 41010, 90, 755, 50, 0),
(6, 41008, 90, 755, 40, 0),
(6, 41006, 45, 755, 35, 0),
(6, 41004, 45, 755, 25, 0),
(6, 41002, 45, 755, 20, 0),
(6, 41000, 45, 755, 15, 0),
(6, 30219, 10, 0, 0, 5),
(6, 41012, 90, 755, 50, 0),
(6, 41014, 90, 755, 50, 0),
(6, 41016, 270, 755, 55, 0),
(6, 41030, 180, 755, 25, 0),
(6, 41028, 225, 755, 70, 0),
(6, 41026, 180, 755, 70, 0),
(6, 41024, 180, 755, 65, 0),
(6, 41022, 180, 755, 65, 0),
(6, 41020, 180, 755, 60, 0),
(6, 41018, 180, 755, 60, 0),
(6, 41004, 45, 755, 25, 0),
(6, 41006, 45, 755, 35, 0),
(6, 41060, 480, 755, 125, 0),
(6, 41062, 600, 755, 125, 0),
(6, 41066, 450, 755, 125, 0),
(6, 41008, 90, 755, 40, 0),
(6, 41002, 45, 755, 20, 0),
(6, 41000, 45, 755, 15, 0),
(6, 41058, 1000, 755, 125, 0),
(6, 41056, 500, 755, 125, 0),
(6, 41054, 440, 755, 120, 0),
(6, 41052, 500, 755, 110, 0),
(6, 41050, 330, 755, 105, 0),
(6, 41048, 250, 755, 105, 0),
(6, 41082, 1500, 755, 150, 0),
(6, 41010, 90, 755, 50, 0),
(6, 41018, 180, 755, 60, 0),
(6, 41020, 180, 755, 60, 0),
(6, 41022, 180, 755, 65, 0),
(6, 41024, 180, 755, 65, 0),
(6, 41026, 180, 755, 70, 0),
(6, 41028, 225, 755, 70, 0),
(6, 41030, 180, 755, 25, 0),
(6, 41068, 750, 755, 135, 0),
(6, 41070, 1150, 755, 135, 0),
(6, 41080, 1500, 755, 150, 0),
(6, 41040, 250, 755, 90, 0),
(6, 41014, 90, 755, 50, 0),
(6, 41012, 90, 755, 50, 0),
(6, 41016, 270, 755, 55, 0),
(6, 41046, 250, 755, 100, 0),
(6, 41036, 180, 755, 85, 0),
(6, 41038, 250, 755, 90, 0),
(6, 41034, 180, 755, 80, 0),
(6, 41032, 180, 755, 80, 0),
(6, 30223, 450, 755, 50, 10),
(6, 30219, 10, 0, 0, 5),
(6, 41064, 520, 755, 125, 0),
(6, 41044, 600, 755, 100, 0),
(6, 41042, 450, 755, 95, 0),
(6, 41224, 1850, 755, 190, 0),
(6, 41212, 1500, 755, 175, 0),
(6, 41018, 180, 755, 60, 0),
(6, 30225, 4500, 755, 125, 20),
(6, 30227, 50000, 755, 200, 35),
(6, 41000, 45, 755, 15, 0),
(6, 41002, 45, 755, 20, 0),
(6, 41004, 45, 755, 25, 0),
(6, 41006, 45, 755, 35, 0),
(6, 41214, 7500, 755, 175, 0),
(6, 41216, 8500, 755, 175, 0),
(6, 41222, 1850, 755, 190, 0),
(6, 41220, 1250, 755, 185, 0),
(6, 41226, 1850, 755, 200, 0),
(6, 41218, 2500, 755, 175, 0),
(6, 41228, 1850, 755, 200, 0),
(6, 41230, 0, 755, 50, 0),
(6, 30223, 450, 755, 50, 10),
(6, 30219, 10, 0, 0, 5),
(6, 41008, 90, 755, 40, 0),
(6, 41010, 90, 755, 50, 0),
(6, 41206, 1250, 755, 155, 0),
(6, 41204, 1350, 755, 155, 0),
(6, 41202, 1500, 755, 150, 0),
(6, 41200, 1500, 755, 150, 0),
(6, 41082, 1500, 755, 150, 0),
(6, 41080, 1500, 755, 150, 0),
(6, 41070, 1150, 755, 135, 0),
(6, 41030, 180, 755, 25, 0),
(6, 41028, 225, 755, 70, 0),
(6, 41012, 90, 755, 50, 0),
(6, 41014, 90, 755, 50, 0),
(6, 41016, 270, 755, 55, 0),
(6, 41210, 1450, 755, 170, 0),
(6, 41020, 180, 755, 60, 0),
(6, 41022, 180, 755, 65, 0),
(6, 41208, 7500, 755, 165, 0),
(6, 41026, 180, 755, 70, 0),
(6, 41068, 750, 755, 135, 0),
(6, 41034, 180, 755, 80, 0),
(6, 41044, 600, 755, 100, 0),
(6, 41042, 450, 755, 95, 0),
(6, 41040, 250, 755, 90, 0),
(6, 41024, 180, 755, 65, 0),
(6, 41038, 250, 755, 90, 0),
(6, 41036, 180, 755, 85, 0),
(6, 41032, 180, 755, 80, 0),
(6, 41066, 450, 755, 125, 0),
(6, 41046, 250, 755, 100, 0),
(6, 41058, 1000, 755, 125, 0),
(6, 41064, 520, 755, 125, 0),
(6, 41060, 480, 755, 125, 0),
(6, 41056, 500, 755, 125, 0),
(6, 41054, 440, 755, 120, 0),
(6, 41052, 500, 755, 110, 0),
(6, 41050, 330, 755, 105, 0),
(6, 41048, 250, 755, 105, 0),
(6, 41062, 600, 755, 125, 0),
(6, 41048, 250, 755, 105, 0),
(6, 41050, 330, 755, 105, 0),
(6, 30225, 4500, 755, 125, 20),
(6, 41046, 250, 755, 100, 0),
(6, 41044, 600, 755, 100, 0),
(6, 30219, 10, 0, 0, 5),
(6, 30223, 450, 755, 50, 10),
(6, 41052, 500, 755, 110, 0),
(6, 41054, 440, 755, 120, 0),
(6, 41056, 500, 755, 125, 0),
(6, 41058, 1000, 755, 125, 0),
(6, 41060, 480, 755, 125, 0),
(6, 41028, 225, 755, 70, 0),
(6, 41062, 600, 755, 125, 0),
(6, 41064, 520, 755, 125, 0),
(6, 41066, 450, 755, 125, 0),
(6, 41098, 9500, 755, 265, 0),
(6, 30227, 50000, 755, 200, 35),
(6, 41030, 180, 755, 25, 0),
(6, 41034, 180, 755, 80, 0),
(6, 41032, 180, 755, 80, 0),
(6, 41068, 750, 755, 135, 0),
(6, 41070, 1150, 755, 135, 0),
(6, 41104, 11500, 755, 280, 0),
(6, 41102, 9500, 755, 280, 0),
(6, 41100, 8750, 755, 280, 0),
(6, 41096, 12500, 755, 265, 0),
(6, 41094, 7500, 755, 260, 0),
(6, 41092, 6000, 755, 255, 0),
(6, 41090, 10000, 755, 250, 0),
(6, 41088, 6500, 755, 245, 0),
(6, 41086, 10000, 755, 235, 0),
(6, 41084, 6500, 755, 225, 0),
(6, 41082, 1500, 755, 150, 0),
(6, 41036, 180, 755, 85, 0),
(6, 41038, 250, 755, 90, 0),
(6, 41040, 250, 755, 90, 0),
(6, 41026, 180, 755, 70, 0),
(6, 41024, 180, 755, 65, 0),
(6, 41022, 180, 755, 65, 0),
(6, 41020, 180, 755, 60, 0),
(6, 41018, 180, 755, 60, 0),
(6, 41016, 270, 755, 55, 0),
(6, 41014, 90, 755, 50, 0),
(6, 41012, 90, 755, 50, 0),
(6, 41010, 90, 755, 50, 0),
(6, 41008, 90, 755, 40, 0),
(6, 41006, 45, 755, 35, 0),
(6, 41004, 45, 755, 25, 0),
(6, 41002, 45, 755, 20, 0),
(6, 41000, 45, 755, 15, 0),
(6, 41042, 450, 755, 95, 0),
(6, 41080, 1500, 755, 150, 0);

-- New spells:

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('56019', '15', '0', 'Dense Gemstone Cluster', '', '4721', '1', '0', '1', '640', '160', '0', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);
 
 REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('56020', '15', '0', 'Solid Gemstone Cluster', '', '4717', '1', '0', '1', '480', '120', '0', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);
 
 -- Recipe Item Name: Aquamarine Pendant (55196)
-- Cost:1500
-- Recipe Learning Requirements: 195  Jewelry (min 215, max 235)
-- Required Materials: 3860 (8), 7909 (2), 55152 (2)
-- Requires:Jewelers Kit, Jewelers Lens, Forge

SET @learn_spell_id = 41234; 
SET @craft_spell_id = 41235; 
SET @skill_line_entry = 17117;
SET @output_item_id = 55196; 
SET @recipe_spell_name = 'Aquamarine Pendant'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 1500;
SET @tool_item_1 = 41328;  -- Precision Jewelers Kit
SET @tool_item_2 = 3;  -- Forge
SET @skill_level_required = 195; 
SET @skill_level_max = 235; 
SET @skill_trainer_required = 215;

SET @reagent_item_1 = 3860; SET @reagent_item_count_1 = 8;
SET @reagent_item_2 = 7909; SET @reagent_item_count_2 = 2;
SET @reagent_item_3 = 55152; SET @reagent_item_count_3 = 2;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 3;  -- Forge
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (5, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0); REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (6, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);


-- Recipe Item Name: Solid Gemstone Cluster (56020)
-- Cost:2500
-- Recipe Learning Requirements: 200  Jewelry (min 200, max 210)
-- Required Materials: 3860 (6), 55153 (6)
-- Requires:Precision Jewelers Kit,

SET @learn_spell_id = 41236; 
SET @craft_spell_id = 41237; 
SET @skill_line_entry = 17118;
SET @output_item_id = 56020; 
SET @recipe_spell_name = 'Solid Gemstone Cluster'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 2500;
SET @tool_item_1 = 41328;  -- Precision Jewelers Kit
SET @tool_item_2 = 0; 
SET @skill_level_required = 200; 
SET @skill_level_max = 210; 
SET @skill_trainer_required = 200;

SET @reagent_item_1 = 3860; SET @reagent_item_count_1 = 6;
SET @reagent_item_2 = 55153; SET @reagent_item_count_2 = 6;
SET @reagent_item_3 = 0; SET @reagent_item_count_3 = 0;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (5, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0); REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (6, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Rough Truesilver Ring (41341)
-- Cost:2500
-- Recipe Learning Requirements: 200  Jewelry (min 200, max 210)
-- Required Materials: 7911 (2)
-- Requires:Precision Jewelers Kit, Forge

SET @learn_spell_id = 41232; 
SET @craft_spell_id = 41233; 
SET @skill_line_entry = 17116;
SET @output_item_id = 41341; 
SET @recipe_spell_name = 'Rough Truesilver Ring'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 2500;
SET @tool_item_1 = 41328;  -- Precision Jewelers Kit
SET @tool_item_2 = 3;  -- Forge
SET @skill_level_required = 200; 
SET @skill_level_max = 210; 
SET @skill_trainer_required = 200;

SET @reagent_item_1 = 7911; SET @reagent_item_count_1 = 2;
SET @reagent_item_2 = 0; SET @reagent_item_count_2 = 0;
SET @reagent_item_3 = 0; SET @reagent_item_count_3 = 0;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 3;  -- Forge
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (5, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0); REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (6, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Greater Binding Signet (41346)
-- Cost:2500
-- Recipe Learning Requirements: 210  Jewelry (min 230, max 250)
-- Required Materials: 41322 (1), 55251 (1), 7909 (1), 6149 (2), 55247 (1)
-- Requires:Precision Jewelers Kit, Jewelers Lens, Forge

SET @learn_spell_id = 41238; 
SET @craft_spell_id = 41239; 
SET @skill_line_entry = 17119;
SET @output_item_id = 41346; 
SET @recipe_spell_name = 'Greater Binding Signet'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 2500;
SET @tool_item_1 = 41328;  -- Precision Jewelers Kit
SET @tool_item_2 = 41326;
SET @skill_level_required = 230; 
SET @skill_level_max = 250; 
SET @skill_trainer_required = 210;

SET @reagent_item_1 = 41322; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 55251; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 7909; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 6149; SET @reagent_item_count_4 = 2;
SET @reagent_item_5 = 55247; SET @reagent_item_count_5 = 1;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 3; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (5, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0); REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (6, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Royal Gemstone Staff (41345)
-- Cost:12500
-- Recipe Learning Requirements: 215  Jewelry (min 235, max 255)
-- Required Materials: 3860 (14), 3577 (4), 55251 (2), 7909 (2), 55153 (4)
-- Requires:Precision Jewelers Kit, Jewelers Lens, Forge

SET @learn_spell_id = 41240; 
SET @craft_spell_id = 41241; 
SET @skill_line_entry = 17120;
SET @output_item_id = 41345; 
SET @recipe_spell_name = 'Royal Gemstone Staff'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 12500;
SET @tool_item_1 = 41328;  -- Precision Jewelers Kit
SET @tool_item_2 = 41326;  -- Jewelers Lens
SET @skill_level_required = 235; 
SET @skill_level_max = 255; 
SET @skill_trainer_required = 215;

SET @reagent_item_1 = 3860; SET @reagent_item_count_1 = 14;
SET @reagent_item_2 = 3577; SET @reagent_item_count_2 = 4;
SET @reagent_item_3 = 55251; SET @reagent_item_count_3 = 2;
SET @reagent_item_4 = 7909; SET @reagent_item_count_4 = 2;
SET @reagent_item_5 = 55153; SET @reagent_item_count_5 = 4;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 3; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (5, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0); REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (6, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);


-- Recipe Item Name: Runed Truesilver Ring (41347)
-- Cost:3850
-- Recipe Learning Requirements: 220  Jewelry (min 240, max 260)
-- Required Materials: 41341 (1), 7067 (1), 7075 (1), 55153 (2)
-- Requires:Precision Jewelers Kit, Jewelers Lens, Forge

SET @learn_spell_id = 41244; 
SET @craft_spell_id = 41245; 
SET @skill_line_entry = 17127;
SET @output_item_id = 41347; 
SET @recipe_spell_name = 'Runed Truesilver Ring'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 3850;
SET @tool_item_1 = 41328;  -- Precision Jewelers Kit
SET @tool_item_2 = 41326;  -- Jewelers Lens
SET @tool_item_3 = 0; 
SET @skill_level_required = 240; 
SET @skill_level_max = 260; 
SET @skill_trainer_required = 220;

SET @reagent_item_1 =  41341; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 7067; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 7075; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 55153; SET @reagent_item_count_4 = 2;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 3;  -- Forge
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (5, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0); REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (6, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Emberstone Idol (41349)
-- Cost:5000
-- Recipe Learning Requirements: 220  Jewelry (min 240, max 260)
-- Required Materials: 55250 (5), 6371 (3), 7077 (1), 7068 (1)
-- Requires:Precision Jewelers Kit, Jewelers Lens, Forge

SET @learn_spell_id = 41242; 
SET @craft_spell_id = 41243; 
SET @skill_line_entry = 17126;
SET @output_item_id = 41349; 
SET @recipe_spell_name = 'Emberstone Idol'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 5000;
SET @tool_item_1 = 41328;  -- Precision Jewelers Kit
SET @tool_item_2 = 41326;  -- Jewelers Lens
SET @tool_item_3 = 0; 
SET @skill_level_required = 240; 
SET @skill_level_max = 260; 
SET @skill_trainer_required = 220;

SET @reagent_item_1 = 55250; SET @reagent_item_count_1 = 5;
SET @reagent_item_2 = 6371; SET @reagent_item_count_2 = 3;
SET @reagent_item_3 = 7077; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 7068; SET @reagent_item_count_4 = 1;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 3;  -- Forge
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (5, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0); REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (6, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);
