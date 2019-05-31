DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190531205013');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190531205013');
-- Add your query below.


-- Fix wrong patch and old display id for Grizzle Halfmane.
DELETE FROM `creature_template` WHERE `entry`=347;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (347, 4, 15092, 0, 0, 0, 'Grizzle Halfmane', 'Alterac Valley Battlemaster', 6466, 61, 61, 9563, 9563, 0, 0, 4091, 1215, 2049, 1.1, 1.14286, 0, 20, 5, 0, 1, 1, 544, 703, 0, 278, 1, 1166, 2000, 1, 4672, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 3470, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 347, 0, 0, 0, 0, 8, '');
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (347, 5, 15099, 0, 0, 0, 'Grizzle Halfmane', 'Alterac Valley Battlemaster', 6466, 61, 61, 9563, 9563, 0, 0, 4091, 1215, 2049, 1.1, 1.14286, 0, 20, 5, 0, 1, 1, 544, 703, 0, 278, 1, 1166, 2000, 1, 4672, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 3470, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 347, 0, 0, 0, 0, 8, '');
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=347;
UPDATE `creature` SET `patch_min`=4, `modelid`=0 WHERE `id`=347;
UPDATE `creature_addon` SET `patch`=4 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=347);
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=347;

-- Fix wrong patch and old display id for Elfarran.
DELETE FROM `creature_template` WHERE `entry`=14981;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (14981, 4, 15093, 0, 0, 0, 'Elfarran', 'Warsong Gulch Battlemaster', 6460, 61, 61, 10626, 10626, 8019, 8019, 4091, 1514, 2049, 1, 1.14286, 0, 20, 5, 0, 1, 1, 361, 467, 0, 278, 1, 2000, 2000, 0, 4672, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 14981, 0, 0, 0, 0, 8, '');
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (14981, 5, 15098, 0, 0, 0, 'Elfarran', 'Warsong Gulch Battlemaster', 6460, 61, 61, 10626, 10626, 8019, 8019, 4091, 1514, 2049, 1, 1.14286, 0, 20, 5, 0, 1, 1, 361, 467, 0, 278, 1, 2000, 2000, 0, 4672, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 14981, 0, 0, 0, 0, 8, '');
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=14981;
UPDATE `creature` SET `patch_min`=4, `modelid`=0 WHERE `id`=14981;
UPDATE `creature_addon` SET `patch`=4 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=14981);
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=14981;

-- Fix wrong patch and old display id for Lylandris.
DELETE FROM `creature_template` WHERE `entry`=14982;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (14982, 4, 15094, 0, 0, 0, 'Lylandris', 'Warsong Gulch Battlemaster', 6463, 61, 61, 10626, 10626, 8019, 8019, 4091, 1514, 2049, 1, 1.14286, 0, 20, 5, 0, 1, 1, 361, 467, 0, 278, 1, 1166, 2000, 1, 4672, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 14982, 0, 0, 0, 0, 8, '');
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (14982, 5, 15100, 0, 0, 0, 'Lylandris', 'Warsong Gulch Battlemaster', 6463, 61, 61, 10626, 10626, 8019, 8019, 4091, 1514, 2049, 1, 1.14286, 0, 20, 5, 0, 1, 1, 361, 467, 0, 278, 1, 1166, 2000, 1, 4672, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 14982, 0, 0, 0, 0, 8, '');
UPDATE `creature_equip_template` SET `patch`=4 WHERE `entry`=14982;
UPDATE `creature` SET `patch_min`=4, `modelid`=0 WHERE `id`=14982;
UPDATE `creature_addon` SET `patch`=4 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=14982);
UPDATE `creature_template_addon` SET `patch`=4 WHERE `entry`=14982;

-- Fix wrong patch for revelers.
UPDATE `creature_template` SET `patch`=6 WHERE `entry` IN (15694, 15719, 15723);
UPDATE `creature_equip_template` SET `patch`=6 WHERE `entry` IN (15694, 15719, 15723);
UPDATE `creature_template_addon` SET `patch`=6 WHERE `entry` IN (15694, 15719, 15723);
UPDATE `creature` SET `patch_min`=6 WHERE `id` IN (15694, 15719, 15723);
UPDATE `creature_addon` SET `patch`=6 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (15694, 15719, 15723));

-- Creatures added in patch 1.8.
UPDATE `creature_template` SET `patch`=6 WHERE (`patch` < 6) && `entry` IN (17286, 16445, 15315, 15220, 15218, 15217, 15216, 15215, 15214, 15212, 15211, 15209, 15208, 15207, 15206, 15201, 15200, 15199, 15197, 15195, 15194, 15193, 15192, 15191, 15190, 15189, 15188, 15187, 15186, 15185, 15182, 15180, 15179, 15178, 15177, 15176, 15175, 15174, 15172, 15171, 15170, 15169, 15165);
UPDATE `creature_template_addon` SET `patch`=6 WHERE (`patch` < 6) && `entry` IN (17286, 16445, 15315, 15220, 15218, 15217, 15216, 15215, 15214, 15212, 15211, 15209, 15208, 15207, 15206, 15201, 15200, 15199, 15197, 15195, 15194, 15193, 15192, 15191, 15190, 15189, 15188, 15187, 15186, 15185, 15182, 15180, 15179, 15178, 15177, 15176, 15175, 15174, 15172, 15171, 15170, 15169, 15165);
UPDATE `creature_equip_template` SET `patch`=6 WHERE (`patch` < 6) && `entry` IN (17286, 16445, 15315, 15220, 15218, 15217, 15216, 15215, 15214, 15212, 15211, 15209, 15208, 15207, 15206, 15201, 15200, 15199, 15197, 15195, 15194, 15193, 15192, 15191, 15190, 15189, 15188, 15187, 15186, 15185, 15182, 15180, 15179, 15178, 15177, 15176, 15175, 15174, 15172, 15171, 15170, 15169, 15165);
UPDATE `creature_loot_template` SET `patch_min`=6 WHERE (`patch_min` < 6) && `entry` IN (17286, 16445, 15315, 15220, 15218, 15217, 15216, 15215, 15214, 15212, 15211, 15209, 15208, 15207, 15206, 15201, 15200, 15199, 15197, 15195, 15194, 15193, 15192, 15191, 15190, 15189, 15188, 15187, 15186, 15185, 15182, 15180, 15179, 15178, 15177, 15176, 15175, 15174, 15172, 15171, 15170, 15169, 15165);
UPDATE `creature` SET `patch_min`=6 WHERE (`patch_min` < 6) && `id` IN (17286, 16445, 15315, 15220, 15218, 15217, 15216, 15215, 15214, 15212, 15211, 15209, 15208, 15207, 15206, 15201, 15200, 15199, 15197, 15195, 15194, 15193, 15192, 15191, 15190, 15189, 15188, 15187, 15186, 15185, 15182, 15180, 15179, 15178, 15177, 15176, 15175, 15174, 15172, 15171, 15170, 15169, 15165);
UPDATE `creature_addon` SET `patch`=6 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE (`patch_min` < 6) && `id` IN (17286, 16445, 15315, 15220, 15218, 15217, 15216, 15215, 15214, 15212, 15211, 15209, 15208, 15207, 15206, 15201, 15200, 15199, 15197, 15195, 15194, 15193, 15192, 15191, 15190, 15189, 15188, 15187, 15186, 15185, 15182, 15180, 15179, 15178, 15177, 15176, 15175, 15174, 15172, 15171, 15170, 15169, 15165));
UPDATE `pickpocketing_loot_template` SET `patch_min`=6 WHERE (`patch_min` < 6) && `entry` IN (15200, 15201);

-- Creatures added in patch 1.7.
UPDATE `creature_template` SET `patch`=5 WHERE (`patch` < 5) && `entry` IN (15164, 15163, 15162, 15146, 15141, 15140, 15139, 15138, 15137, 15136, 15131, 15130, 15128, 15127, 15126, 15125, 15124, 15122, 15119, 15117, 15116, 15115, 15113, 15110, 15109, 15108, 15107, 15104, 15101, 15090, 15089, 15088, 15087, 15086, 15080, 15079, 15078, 15077, 15076, 15075, 15074, 15073, 15072, 15071, 15070, 15069, 15068, 15066, 15065, 15064, 15063, 15061, 15047, 15046, 15045, 15041, 15022, 15012, 15011, 15010, 15009, 15005, 15004, 15003, 15002, 15001, 14994, 14989, 14988, 14986, 14984, 14983, 14968, 14967, 14966, 14965, 14964, 14963, 14962, 14961, 14941, 14884, 14881, 14879, 14877);
UPDATE `creature_template_addon` SET `patch`=5 WHERE (`patch` < 5) && `entry` IN (15164, 15163, 15162, 15146, 15141, 15140, 15139, 15138, 15137, 15136, 15131, 15130, 15128, 15127, 15126, 15125, 15124, 15122, 15119, 15117, 15116, 15115, 15113, 15110, 15109, 15108, 15107, 15104, 15101, 15090, 15089, 15088, 15087, 15086, 15080, 15079, 15078, 15077, 15076, 15075, 15074, 15073, 15072, 15071, 15070, 15069, 15068, 15066, 15065, 15064, 15063, 15061, 15047, 15046, 15045, 15041, 15022, 15012, 15011, 15010, 15009, 15005, 15004, 15003, 15002, 15001, 14994, 14989, 14988, 14986, 14984, 14983, 14968, 14967, 14966, 14965, 14964, 14963, 14962, 14961, 14941, 14884, 14881, 14879, 14877);
UPDATE `creature_equip_template` SET `patch`=5 WHERE (`patch` < 5) && `entry` IN (15164, 15163, 15162, 15146, 15141, 15140, 15139, 15138, 15137, 15136, 15131, 15130, 15128, 15127, 15126, 15125, 15124, 15122, 15119, 15117, 15116, 15115, 15113, 15110, 15109, 15108, 15107, 15104, 15101, 15090, 15089, 15088, 15087, 15086, 15080, 15079, 15078, 15077, 15076, 15075, 15074, 15073, 15072, 15071, 15070, 15069, 15068, 15066, 15065, 15064, 15063, 15061, 15047, 15046, 15045, 15041, 15022, 15012, 15011, 15010, 15009, 15005, 15004, 15003, 15002, 15001, 14994, 14989, 14988, 14986, 14984, 14983, 14968, 14967, 14966, 14965, 14964, 14963, 14962, 14961, 14941, 14884, 14881, 14879, 14877);
UPDATE `creature_loot_template` SET `patch_min`=5 WHERE (`patch_min` < 5) && `entry` IN (15164, 15163, 15162, 15146, 15141, 15140, 15139, 15138, 15137, 15136, 15131, 15130, 15128, 15127, 15126, 15125, 15124, 15122, 15119, 15117, 15116, 15115, 15113, 15110, 15109, 15108, 15107, 15104, 15101, 15090, 15089, 15088, 15087, 15086, 15080, 15079, 15078, 15077, 15076, 15075, 15074, 15073, 15072, 15071, 15070, 15069, 15068, 15066, 15065, 15064, 15063, 15061, 15047, 15046, 15045, 15041, 15022, 15012, 15011, 15010, 15009, 15005, 15004, 15003, 15002, 15001, 14994, 14989, 14988, 14986, 14984, 14983, 14968, 14967, 14966, 14965, 14964, 14963, 14962, 14961, 14941, 14884, 14881, 14879, 14877);
UPDATE `creature` SET `patch_min`=5 WHERE (`patch_min` < 5) && `id` IN (15164, 15163, 15162, 15146, 15141, 15140, 15139, 15138, 15137, 15136, 15131, 15130, 15128, 15127, 15126, 15125, 15124, 15122, 15119, 15117, 15116, 15115, 15113, 15110, 15109, 15108, 15107, 15104, 15101, 15090, 15089, 15088, 15087, 15086, 15080, 15079, 15078, 15077, 15076, 15075, 15074, 15073, 15072, 15071, 15070, 15069, 15068, 15066, 15065, 15064, 15063, 15061, 15047, 15046, 15045, 15041, 15022, 15012, 15011, 15010, 15009, 15005, 15004, 15003, 15002, 15001, 14994, 14989, 14988, 14986, 14984, 14983, 14968, 14967, 14966, 14965, 14964, 14963, 14962, 14961, 14941, 14884, 14881, 14879, 14877);
UPDATE `creature_addon` SET `patch`=5 WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE (`patch_min` < 5) && `id` IN (15164, 15163, 15162, 15146, 15141, 15140, 15139, 15138, 15137, 15136, 15131, 15130, 15128, 15127, 15126, 15125, 15124, 15122, 15119, 15117, 15116, 15115, 15113, 15110, 15109, 15108, 15107, 15104, 15101, 15090, 15089, 15088, 15087, 15086, 15080, 15079, 15078, 15077, 15076, 15075, 15074, 15073, 15072, 15071, 15070, 15069, 15068, 15066, 15065, 15064, 15063, 15061, 15047, 15046, 15045, 15041, 15022, 15012, 15011, 15010, 15009, 15005, 15004, 15003, 15002, 15001, 14994, 14989, 14988, 14986, 14984, 14983, 14968, 14967, 14966, 14965, 14964, 14963, 14962, 14961, 14941, 14884, 14881, 14879, 14877));


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
