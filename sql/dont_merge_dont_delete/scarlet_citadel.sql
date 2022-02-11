
-- Scarlet Citadel (raid) introduction.

-- Sally Whitemane is dead. Confused, scattered and some even in panic, Scarlet Fanatics were laying low.
-- Many died in attempts to continue their struggles but without a strong command leading their effort failed.
-- However, week by week, Scarlets had reinstated their structure, and scouting groups that were mercilessly murdering every non-human being started to succeed in their crazy mission.
-- Looks like the new leader of the Scarlet Crusade has ambitions protruding further than just instinct of other races in Azeroth:
-- Multiple human SETtlements had been reporting of strangers appearing in their towns speaking to the young and trying to spread their influence over their minds. 

-- New Display IDs
-- 18671 Citadel Archwizard
-- 18672 High General Abbendis
-- 18673 Citadel Bishop
-- 18674 Citadel Clergyman
-- 18675 Citadel Footman
-- 18676 Grand Inquisitor Boss
-- 18677 Citadel High Cleric
-- 18678 Illusion Boss
-- 18679 Citadel Illusionist
-- 18680 Citadel Inquisitor
-- 18681 Citadel Interrogator
-- 18682 Citadel Monk
-- 18683 High Monk Daelus
-- 18684 Paladin Halidus
-- 18685 Citadel Praetorian
-- 18686 Citadel Spellblade
-- 18687 Citadel Valiant
-- 18688 Citadel Watchman
-- 18689 Citadel Zealot

-- Teleport
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(500, 81.1913, -0.849708, 18.6773, 6.27162, 44, 'ScarletCitadel');

-- Dungeon is a 10 man raid with 7 day reset timer
REPLACE INTO `map_template` (`entry`, `parent`, `map_type`, `linked_zone`, `player_limit`, `reset_delay`, `ghost_entrance_map`, `ghost_entrance_x`, `ghost_entrance_y`, `map_name`, `script_name`) VALUES
(44, 0, 2, 0, 10, 7, -1, 0, 0, 'Scarlet Citadel', 'instance_scarlet_citadel');

-- Doors
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `phase_quest_action`, `script_name`) VALUES
(5000000, 0, 6385, 'SC_INSTANCE_WHIRL', 0, 52, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000001, 0, 6385, 'SC_RIGHT_WING_DOOR', 0, 52, 1.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000002, 0, 6385, 'SC_ABBENDIS_DOOR', 0, 52, 1.1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000003, 0, 3751, 'SC_ENTER_DOOR_LOCKED', 0, 52, 1.29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000004, 0, 444, 'SC_VENDOR_DOOR_LEFT', 0, 52, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000005, 0, 444, 'SC_VENDOR_DOOR_RIGHT', 0, 52, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000006, 0, 444, 'SC_DAELUS_DOOR', 0, 52, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000007, 0, 444, 'SC_DAELUS_DOOR_LOCKED', 0, 52, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000008, 0, 444, 'SC_ARDAEUS_DOOR_ENTER', 0, 52, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000009, 0, 444, 'SC_ARDAEUS_DOOR_EXIT', 0, 52, 1.2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000010, 0, 444, 'SC_MARIELLA_DOOR', 0, 52, 1.18, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000011, 0, 3751, 'SC_NOLIN_DOOR_LOCKED', 0, 52, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES
(5000000, 5000000, 44, 70.75, -0.725565, 21, 6.25026, 0, 0, 0.0164639, -0.999864, 300, 300, 100, 1, 1, 0), -- Instance Locked Whirl
(5000001, 5000003, 44, 72.8568, -0.839216, 18.6773, 3.14298, 0, 0, 1, -0.000692173, 300, 300, 100, 1, 1, 0), -- Instance Locked Door
(5000002, 5000004, 44, 68.7409, -12.7199, 18.6773, 0.00833514, 0, 0, 0.00416756, 0.999991, 300, 300, 100, 1, 1, 0), -- Left Vendor Door
(5000003, 5000005, 44, 68.7249, 11.0146, 18.6773, 6.27494, 0, 0, 0.00412454, 0.999991, 300, 300, 100, 1, 1, 0), -- Right Vendor Door
(5000004, 5000007, 44, 141.352, -12.7469, 18.6773, 3.11881, 0, 0, 0.999935, 0.0113925, 300, 300, 100, 1, 1, 0), -- Boss Daelus' Locked Door
(5000005, 5000007, 44, 143.98, -12.8275, 18.6774, 0.0176611, 0, 0, 0.00883043, 0.999961, 300, 300, 100, 1, 1, 0), -- Boss Daelus' Locked Door
(5000006, 5000006, 44, 140.889, 11.0119, 18.6773, 6.28056, 0, 0, 0.00131241, -0.999999, 300, 300, 100, 1, 1, 0), -- Boss Daelus' Door
(5000007, 5000008, 44, 244.069, -99.993, 18.6773, 0.00169, 0, 0, 0.00544775, -0.999985, 300, 300, 100, 0, 1, 0), -- Boss Ardaeus' Enter Door
(5000008, 5000009, 44, 286.786, -100.016, 31.4936, 3.20612, 0, 0, 0.00281054, 0.999996, 300, 300, 100, 1, 1, 0), -- Boss Ardaeus' Exit Door
(5000009, 104600, 44, 374.393, -120.773, 32.4956, 1.59063, 0, 0, 0.706667, 0.707546, 300, 300, 100, 1, 1, 0), -- Boss Abbendis' Locked Door
(5000010, 5000002, 44, 374.397, -18.1461, 34.4945, 4.72046, 0, 0, 0.704249, -0.709953, 300, 300, 100, 0, 1, 0), -- Boss Abbendis' Door
(5000011, 5000001, 44, 308.668, -53.3655, 35.6911, 3.19283, 0, 0, 0.0116924, -0.999932, 300, 300, 100, 1, 1, 0), -- Right Wing Door
(5000012, 5000010, 44, 221.343, 25.8922, 31.493, 3.13509, 0, 0, 0.999995, 0.00325365, 300, 300, 100, 0, 1, 0), -- Boss Mariella's Door
(5000013, 5000011, 44, 184.546, -107.881, 18.6774, 4.7138, 0, 0, 0.706609, -0.707604, 300, 300, 100, 1, 1, 0); -- Nolin's Locked Door

-- NPCs
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `phase_quest_action`, `script_name`) VALUES
(2000000, 10529, 0, 0, 0, 'High Monk Daelus', 'The Scarlet Crusade', 0, 63, 63, 700000, 700000, 5000000, 5000000, 4500, 67, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'boss_daelus'),
(2000001, 10529, 0, 0, 0, 'Grand Magi Ardaeus', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 6000, 67, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'boss_ardaeus'),
(2000002, 10529, 0, 0, 0, 'High Inquisitor Mariella', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 4500, 67, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'boss_mariella'),
(2000003, 10529, 0, 0, 0, 'High General Abbendis', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 4500, 67, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'boss_abbendis'),
(2000004, 10529, 0, 0, 0, 'FIRST_WING_TRASH', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000005, 10529, 0, 0, 0, 'RP_ONE_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000006, 10529, 0, 0, 0, 'RP_TWO_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000007, 221, 0, 0, 0, 'Nolin', 'The Goose', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1.3, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000008, 5556, 0, 0, 0, 'Bokkeum', 'Nolin''s Pet', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 0.7, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000009, 10529, 0, 0, 0, 'SECOND_WING_TRASH_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000010, 10529, 0, 0, 0, 'FIRST_VENDOR_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000011, 10529, 0, 0, 0, 'SECOND_VENDOR_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000012, 10529, 0, 0, 0, 'THIRD_VENDOR_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000013, 10529, 0, 0, 0, 'FIRST_WING_TRIGGER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 1, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 'npc_areatrigger'),
-- Trash OUTSIDE
(2000014, 18680, 0, 0, 0, 'Citadel Inquisitor', 'The Scarlet Crusade', 0, 63, 63, 16250, 16250, 25680, 25680, 3555, 67, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 2400, 3900, 0, 284, 1, 1150, 1265, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 0, 3, 0, 0, 3, 200000, 0, 0, 1022049875, 0, 0, 0, 1, 'npc_citadel_inquisitor'),
(2000015, 18687, 0, 0, 0, 'Citadel Valiant', 'The Scarlet Crusade', 0, 63, 63, 21125, 21125, 0, 0, 4190, 67, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 3900, 4300, 0, 284, 1, 1150, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 0, 3, 0, 0, 3, 200001, 0, 0, 1022049875, 0, 0, 0, 1, 'npc_citadel_valiant'),
(2000016, 15866, 0, 0, 0, 'Void Zone', 'The Scarlet Crusade', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 0.1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_voidzone'),
(2000017, 850, 0, 0, 0, 'Felhound', 'Mariella''s Slave', 0, 62, 62, 25000, 25000, 500000, 500000, 900, 67, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 1073741823, 32, 308, 0, 1, 'npc_felhound');


REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
(3000000, 2000000, 0, 0, 0, 44, 0, 0, 104.894, -0.835886, 18.6774, 6.27162, 604800, 604800, 0, 100, 100, 0, 0, 0), -- Boss Daelus
(3000001, 2000001, 0, 0, 0, 44, 0, 0, 269.607, -100.035, 18.6794, 3.16849, 604800, 604800, 0, 100, 100, 0, 0, 0), -- Boss Ardaeus
(3000002, 2000002, 0, 0, 0, 44, 0, 0, 196.597, 25.8633, 30.8391, 6.2708, 604800, 604800, 0, 100, 100, 0, 0, 0), -- Boss Mariella
(3000003, 2000003, 0, 0, 0, 44, 0, 0, 373.912, -103.02, 33.0511, 4.71518, 25, 25, 0, 100, 100, 0, 1, 200), -- Boss Abbendis
(3000004, 2000008, 0, 0, 0, 44, 0, 0, 183.999, -116.525, 18.6774, 0.002802, 25, 25, 0, 100, 100, 0, 0, 0), -- Nolin
(3000005, 2000007, 0, 0, 0, 44, 0, 0, 185.997, -116.435, 18.6774, 3.18367, 25, 25, 0, 100, 100, 0, 0, 0), -- Bokkeum
(3000006, 2000013, 0, 0, 0, 44, 0, 0, 299.84, -44.2053, 30.8232, 4.71381, 25, 25, 0, 100, 100, 2, 0, 0), -- Trash NPC Second Wing
(3000007, 2000009, 0, 0, 0, 44, 0, 0, 151.724518, 2.139748, 18.007, 0.0, 25, 25, 0, 100, 100, 2, 0, 0); -- Areatrigger First Wing

REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(200000, 0, 0, 0), -- PLACEHOLDER
(200001, 0, 0, 0); -- PLACEHOLDER

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(18671, 1, 1, 0, 0), -- Citadel Archwizard
(18672, 1, 1, 0, 0), -- High General Abbendis
(18673, 1, 1, 0, 0), -- Citadel Bishop
(18674, 1, 1, 0, 0), -- Citadel Clergyman
(18675, 1, 1, 0, 0), -- Citadel Footman
(18676, 1, 1, 0, 0), -- Grand Inquisitor Boss
(18677, 1, 1, 0, 0), -- Citadel High Cleric
(18678, 1, 1, 0, 0), -- Illusion Boss
(18679, 1, 1, 0, 0), -- Citadel Illusionist
(18680, 1, 1, 0, 0), -- Citadel Inquisitor
(18681, 1, 1, 0, 0), -- Citadel Interrogator
(18683, 1, 1, 0, 0), -- Citadel Monk
(18684, 1, 1, 0, 0), -- High Monk Daelus
(18685, 1, 1, 0, 0), -- Paladin Halidus
(18686, 1, 1, 0, 0), -- Citadel Praetorian
(18687, 1, 1, 0, 0), -- Citadel Spellblade
(18688, 1, 1, 0, 0), -- Citadel Valiant
(18689, 1, 1, 0, 0), -- Citadel Watchman
(18690, 1, 1, 0, 0); -- Citadel Zealot
