replace into `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES ('93107', '16136', '0', '0', '0', '[PH] Crystal Boss', '0', '63', '63', '9993', '9993', '0', '0', '20', '370', '0', '1', '1.14286', '0', '20', '5', '0', '1', '1', '10', '15', '0', '44', '1', '2000', '2000', '1', '33554496', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', 'boss_major_resonating_crystal');

UPDATE `creature_template` SET `name` = 'Arc\'tiras', `script_name` = 'boss_arctiras' WHERE (`entry` = '93107');

UPDATE `creature_template` SET `display_id1` = '18505' WHERE (`entry` = '93107');

UPDATE `creature_template` SET `subname` = 'The Frigid Crystal of Madness', `unit_flags` = '4', `type_flags` = '4' WHERE (`entry` = '93107');

replace into `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES ('93108', '18505', '0', '0', '0', 'Frigid Guardian', '', '0', '63', '63', '3000', '3000', '0', '0', '20', '370', '0', '1', '1.14286', '0', '20', '5', '0', '1', '1', '10', '15', '0', '44', '1', '2000', '2000', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '');

UPDATE `creature_template` SET `display_id1` = '18504' WHERE (`entry` = '93107');
UPDATE `creature_template` SET `display_id1` = '18641' WHERE (`entry` = '93108');

UPDATE `creature_template` SET `subname` = 'The Glacier of Madness', `health_min` = '45851', `health_max` = '45851' WHERE (`entry` = '93107');
UPDATE `creature_template` SET `type_flags` = '0' WHERE (`entry` = '93107');


UPDATE `creature_template` SET `dmg_min` = '280', `dmg_max` = '305' WHERE (`entry` = '93106');
UPDATE `creature_template` SET `health_min` = '41064', `health_max` = '41064' WHERE (`entry` = '80854');
UPDATE `creature_template` SET `health_min` = '39116', `health_max` = '39116' WHERE (`entry` = '80850');
UPDATE `creature_template` SET `health_min` = '40119', `health_max` = '40119' WHERE (`entry` = '80853');
UPDATE `creature_template` SET `health_min` = '37069', `health_max` = '37069' WHERE (`entry` = '80852');

UPDATE `creature_template` SET `health_min` = '14523', `health_max` = '14863' WHERE (`entry` = '60597');
UPDATE `creature_template` SET `health_min` = '14423', `health_max` = '14793' WHERE (`entry` = '60603');
UPDATE `creature_template` SET `health_min` = '14451', `health_max` = '14798' WHERE (`entry` = '60601');
UPDATE `creature_template` SET `health_min` = '14461', `health_max` = '14801' WHERE (`entry` = '60602');
UPDATE `creature_template` SET `health_min` = '14561', `health_max` = '14912' WHERE (`entry` = '60598');
UPDATE `creature_template` SET `health_min` = '14277', `health_max` = '14533' WHERE (`entry` = '60599');
UPDATE `creature_template` SET `health_min` = '14625', `health_max` = '14852' WHERE (`entry` = '60604');
UPDATE `creature_template` SET `health_min` = '14589', `health_max` = '14816' WHERE (`entry` = '93105');
