
-- Custom Graveyard
REPLACE INTO `custom_graveyards` (`id`, `name`, `map_id`, `zone_id`, `area_id`, `max_level`, `map_gy_alliance`, `gy_x_alliance`, `gy_y_alliance`, `gy_z_alliance`, `orientation_alliance`, `map_gy_horde`, `gy_x_horde`, `gy_y_horde`, `gy_z_horde`, `orientation_horde`) VALUES
(30, 'Scarlet Citadel', 45, 0, 0, 60, 0, 2603.33, -534.807, 89, 2.46552, 0, 2603.33, -534.807, 89, 2.46552);

-- Teleport
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(500, 32.5495, 13.2999, 16.869, 6.28138, 45, 'ScarletCitadel');

-- Dungeon is a 40 man raid with 7 day reset timer
REPLACE INTO `map_template` (`entry`, `parent`, `map_type`, `linked_zone`, `player_limit`, `reset_delay`, `ghost_entrance_map`, `ghost_entrance_x`, `ghost_entrance_y`, `map_name`, `script_name`) VALUES
(45, 0, 2, 0, 40, 7, -1, 0, 0, 'Scarlet Citadel', 'instance_scarlet_citadel');

-- GOs
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
-- Doors
(5000000, 0, 3751, 'SC_ENTERANCE_DOOR', 0, 52, 1.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000001, 0, 444, 'SC_VENDOR_DOOR_LEFT', 0, 52, 1.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000002, 0, 444, 'SC_VENDOR_DOOR_RIGHT', 0, 52, 1.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000003, 0, 444, 'SC_DAELUS_DOOR', 0, 52, 1.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000004, 0, 444, 'SC_DAELUS_DOOR_LOCKED', 0, 52, 1.39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000005, 0, 3751, 'SC_NOLIN_DOOR_LOCKED', 0, 52, 1.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000006, 0, 444, 'SC_ARDAEUS_ENTRANCE_DOOR', 0, 52, 1.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000007, 0, 444, 'SC_ARDAEUS_EXIT_DOOR', 0, 52, 1.39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000008, 0, 444, 'SC_MARIELLA_DOOR', 0, 52, 1.58, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000009, 0, 1207, 'SC_RIGHT_WING_DOOR', 0, 52, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000010, 0, 6385, 'SC_ABBENDIS_ENTRANCE_DOOR', 0, 52, 1.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000011, 0, 443, 'SC_ABBENDIS_LOCKED_DOOR', 0, 52, 1.35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
-- Misc
(5000012, 5, 6679, 'SC_SUMMONING_CIRCLE', 0, 52, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000013, 3, 23431, 'SC_MIRELLAS_ACHIEVEMENT_CHEST', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000014, 3, 23431, 'SC_ARDAEUS_ACHIEVEMENT_CHEST', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Reserved Range 650000-650100
-- DELETE FROM `gameobject` WHERE `guid` BETWEEN 5000000 AND 5000013; -- Erase deprecated GOs

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES
-- Daelus' Room
(650000, 5000000, 45, 25.3835, 13.3128, 16.869, 6.28138, 0, 0, 0.000902565, -1, 0, 0, 100, 1, 1, 533.333),
(650001, 5000001, 45, 19.7918, -2.30051, 16.869, 6.27707, 0, 0, 0.00306001, -0.999995, 0, 0, 100, 1, 1, 533.333),
(650002, 5000002, 45, 19.7611, 28.8518, 16.869, 0.00172281, 0, 0, 0.000861406, 1, 0, 0, 100, 1, 1, 533.333),
(650003, 5000003, 45, 114.999, 28.9187, 16.869, 3.13861, 0, 0, 0.999999, 0.00149079, 0, 0, 100, 1, 1, 533.333),
(650004, 5000004, 45, 114.915, -2.19142, 16.869, 3.12486, 0, 0, 0.999965, 0.00836561, 0, 0, 100, 1, 1, 533.333),
-- Nolin's Room
(650005, 5000005, 45, 171.915, -126.624, 16.869, 1.56309, 0, 0, 0.704379, 0.709825, 300, 300, 100, 1, 1, 533.333),
-- Ardaeus' Room
(650006, 5000006, 45, 250.217, -116.853, 16.8702, 0.0105844, 0, 0, 0.00529215, 0.999986, 0, 0, 100, 0, 1, 533.333),
(650007, 5000007, 45, 306.483, -116.88, 33.705, 3.12978, 0, 0, 0.999983, 0.00590698, 0, 0, 100, 1, 1, 533.333),
-- Mariella's Room
(650008, 5000008, 45, 220.03, 48.4829, 33.7034, 3.14467, 0, 0, 0.999999, -0.0015388, 0, 0, 100, 0, 1, 533.333),
-- Right Wing's Door
(650009, 5000009, 45, 332.627, -55.8007, 33.7003, 3.13626, 0, 0, 0.999996, 0.00266476, 0, 0, 100, 1, 1, 533.333),
-- Abbendis' Room
(650010, 5000010, 45, 421.206, -8.97886, 37.7045, 4.70785, 0, 0, 0.70871, -0.7055, 0, 0, 100, 0, 1, 533.333),
(650011, 5000011, 45, 421.228, -144.38, 35.0195, 4.69175, 0, 0, 0.714365, -0.699774, 0, 0, 100, 1, 1, 533.333);

-- NPCs
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES
(2000000, 18683, 0, 0, 0, 'Sacred Fist Daelus', 'The Scarlet Crusade', 0, 63, 63, 700000, 700000, 5000000, 5000000, 4500, 67, 0, 1.5, 1.5, 1.6, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 'boss_daelus'),
(2000001, 18671, 0, 0, 0, 'Grand Sorcerer Ardaeus', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 6000, 67, 0, 1.5, 1.5, 1.6, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 'boss_ardaeus'),
(2000002, 18676, 0, 0, 0, 'High Inquisitor Mariella', 'The Scarlet Crusade', 0, 63, 63, 795000, 795000, 5000000, 5000000, 3000, 67, 0, 1.5, 1.5, 1.6, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 'boss_mariella'),
(2000003, 10431, 0, 0, 0, 'High General Abbendis', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 4500, 67, 0, 1.5, 1.5, 1.6, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 'boss_abbendis'),
(2000004, 18678, 0, 0, 0, 'Brother Eric Vesper', 'The Scarlet Crusade', 0, 63, 63, 1250000, 1250000, 50000, 50000, 4500, 35, 0, 1, 2.14286, 1.8, 20, 5, 0, 3, 1, 5000, 7000, 0, 290, 1, 1500, 1800, 2, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 864999, 964999, '', 0, 3, 0, 0, 3, 200003, 0, 0, 3167436667, 0, 0, 0, 'npc_eric_vesper'),
(2000005, 10529, 0, 0, 0, 'Scarlet Chaplain', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_chaplain_and_sister'),
(2000006, 10529, 0, 0, 0, 'Scarlet Sister', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000007, 221, 0, 0, 0, 'Nolin', 'The Goose', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1.3, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000008, 5556, 0, 0, 0, 'Bokkeum', 'Nolin''s Pet', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 0.7, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000009, 10529, 0, 0, 0, 'SECOND_WING_TRASH_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000010, 10529, 0, 0, 0, 'Malor', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000011, 10529, 0, 0, 0, 'Jordan', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000012, 10529, 0, 0, 0, 'Durgen', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000013, 10045, 0, 0, 0, 'Fallen Spirit', 'The Scarlet Crusade', 0, 61, 61, 500000, 500000, 5000000, 5000000, 0, 67, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_fallen_spirit'),
(2000014, 18680, 0, 0, 0, 'Citadel Inquisitor', 'The Scarlet Crusade', 0, 63, 63, 16250, 16250, 25680, 25680, 3555, 67, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 2400, 3900, 0, 284, 1, 1150, 1265, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 0, 3, 0, 0, 3, 200000, 0, 0, 1022049875, 0, 0, 0, 'npc_citadel_inquisitor'),
(2000015, 18687, 0, 0, 0, 'Citadel Valiant', 'The Scarlet Crusade', 0, 63, 63, 21125, 21125, 0, 0, 4190, 67, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 3900, 4300, 0, 284, 1, 1150, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 0, 3, 0, 0, 3, 200001, 0, 0, 1022049875, 0, 0, 0, 'npc_citadel_valiant'),
(2000016, 15866, 0, 0, 0, 'Void Zone', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 0.1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_voidzone'),
(2000017, 850, 0, 0, 0, 'Felhound', 'Mariella''s Slave', 0, 62, 62, 25000, 25000, 500000, 500000, 1900, 67, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 1073741823, 32, 308, 0, 'npc_felhound'),
(2000018, 15866, 0, 0, 0, 'Kill Zone', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 0.2, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_killzone'),
(2000019, 18495, 0, 0, 0, 'Sun', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_sun'),
(2000020, 10529, 0, 0, 0, 'Invar One-Arm', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_invar_onearm'),
(2000021, 10529, 0, 0, 0, 'Arellas Fireleaf', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_arellas_fireleaf'),
(2000022, 10529, 0, 0, 0, 'Holia Sunshield', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_holia_sunshield'),
(2000023, 10529, 0, 0, 0, 'Ferren Marcus', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_ferren_marcus'),
(2000024, 10529, 0, 0, 0, 'Yana Bloodspear', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_yana_bloodspear'),
(2000025, 10529, 0, 0, 0, 'Orman of Stromgarde', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_orman_stromgarde'),
(2000026, 10529, 0, 0, 0, 'Fellari Swiftarrow', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_fellari_swiftarrow'),
(2000027, 10529, 0, 0, 0, 'Dorgar Stoenbrow', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_dorgar_stoenbrow'),
(2000028, 10529, 0, 0, 0, 'Valea Twinblades', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_valea_twinblades'),
(2000029, 10529, 0, 0, 0, 'Harthal Truesight', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_harthal_truesight'),
(2000030, 10529, 0, 0, 0, 'Admiral Barean Westwind', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_admiral_barean_westwind'),
(2000031, 10529, 0, 0, 0, 'ARDAEUS_STATUE_NPC', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, ''),
(2000032, 10529, 0, 0, 0, 'ANTI_EXPLOIT_TELEPORTER', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_citadel_anti_exploit'),
(2000033, 18680, 0, 0, 0, 'Citadel Inquisitor', 'The Scarlet Crusade', 0, 62, 62, 165000, 165000, 135000, 135000, 3600, 67, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 1900, 2150, 0, 100, 1, 3000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200002, 0, 0, 3167436667, 0, 0, 0, 'npc_citadel_inquisitor'),
(2000034, 18687, 0, 0, 0, 'Citadel Valiant', 'The Scarlet Crusade', 0, 61, 61, 210000, 210000, 0, 0, 4400, 67, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 2965, 3665, 0, 100, 1, 1480, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200001, 0, 0, 3167436667, 0, 0, 0, 'npc_citadel_valiant'),
(2000035, 18675, 0, 0, 0, 'Citadel Footman', 'The Scarlet Crusade', 0, 60, 60, 180000, 180000, 0, 0, 4000, 67, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 2650, 3200, 0, 100, 1, 1000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200000, 0, 0, 3167436667, 0, 0, 0, 'npc_citadel_footman'),
(2000036, 18681, 0, 0, 0, 'Citadel Interrogator', 'The Scarlet Crusade', 0, 62, 62, 190000, 190000, 0, 0, 4100, 67, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 2650, 3200, 0, 100, 1, 1000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200004, 0, 0, 3167436667, 0, 0, 0, 'npc_citadel_interrogator'),
(2000037, 18679, 0, 0, 0, 'Darkcaller Rayn', 'The Scarlet Crusade', 0, 62, 62, 190000, 190000, 0, 0, 3900, 67, 0, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 2350, 2900, 0, 100, 1, 3500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200005, 0, 0, 3167436667, 0, 0, 0, 'npc_darkcaller_rayn');


-- Reserved Range 1300000-1300100
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `display_id`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
-- Bosses
(1300000, 2000000, 0, 0, 0, 45, 0, 0, 67.3897, 13.3098, 16.8691, 6.2806, 25, 25, 0, 100, 100, 0, 1, 200),  -- Boss Sacred Fist Daelus
(1300001, 2000001, 0, 0, 0, 45, 0, 0, 283.91, -116.886, 16.8717, 3.14647, 25, 25, 0, 100, 100, 0, 1, 200), -- Boss Grand Sorcerer Ardaeus
(1300002, 2000002, 0, 0, 0, 45, 0, 0, 188.304, 48.5719, 32.8437, 6.28209, 25, 25, 0, 100, 100, 0, 1, 200), -- Boss High Inquisitor Mariella
(1300003, 2000003, 0, 0, 0, 45, 0, 0, 420.76, -120.074, 35.7493, 1.55949, 25, 25, 0, 100, 100, 0, 1, 200), -- Boss High General Abbendis
-- Easter Eggs
(1300004, 2000008, 0, 0, 0, 45, 0, 0, 174.662, -156.664, 16.1426, 3.13743, 25, 25, 0, 100, 100, 0, 0, 0), -- Nolin
(1300005, 2000007, 0, 0, 0, 45, 0, 0, 174.667, -155.46, 16.2131, 3.13743, 25, 25, 0, 100, 100, 0, 0, 0),  -- Nolin's Pet (Bokkeum)
-- First Wing Trash
(1300006, 2000004, 0, 0, 0, 45, 0, 0, 128.852, -73.6235, 15.9885, 1.56192, 25, 25, 0, 100, 100, 0, 0, 0), -- Eric Black
-- Ambush Park
(1300007, 2000036, 0, 0, 0, 45, 0, 200004, 159.388, -73.4126, 16.4383, 5.57385, 7200, 7200, 0, 100, 100, 0, 0, 0), -- Citadel Interrogator
(1300008, 2000036, 0, 0, 0, 45, 0, 200004, 160.215, -105.74, 16.6029, 0.867746, 7200, 7200, 0, 100, 100, 0, 0, 0), -- Citadel Interrogator
(1300009, 2000036, 0, 0, 0, 45, 0, 200004, 194.047, -76.657, 16.3321, 3.68339, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300010, 2000036, 0, 0, 0, 45, 0, 200004, 192.524, -104.285, 16.2855, 2.51708, 7200, 7200, 0, 100, 100, 0, 0, 0), -- Citadel Interrogator
(1300011, 2000036, 0, 0, 0, 45, 0, 200004, 182.289, -57.3441, 16.869, 4.72405, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300012, 2000036, 0, 0, 0, 45, 0, 200004, 209.626, -57.4301, 16.869, 3.96025, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300013, 2000036, 0, 0, 0, 45, 0, 200004, 209.906, -95.2465, 16.869, 3.15719, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300014, 2000036, 0, 0, 0, 45, 0, 200004, 209.675, -122.707, 16.869, 2.35412, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300015, 2000036, 0, 0, 0, 45, 0, 200004, 171.899, -122.853, 16.869, 1.55891, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300016, 2000036, 0, 0, 0, 45, 0, 200004, 144.634, -122.575, 16.869, 0.854016, 7200, 7200, 0, 100, 100, 0, 0, 0), -- Citadel Interrogator
(1300017, 2000036, 0, 0, 0, 45, 0, 200004, 144.257, -84.8893, 16.869, 6.26541, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
-- Vendors
(1300019, 2000010, 0, 0, 0, 45, 0, 0, 10.4733, -5.30098, 16.869, 0.333276, 25, 25, 0, 100, 100, 0, 0, 0), -- Malor
(1300019, 2000011, 0, 0, 0, 45, 0, 0, 10.4092, 32.8486, 16.869, 5.83813, 25, 25, 0, 100, 100, 0, 0, 0),   -- Jordan
(1300020, 2000012, 0, 0, 0, 45, 0, 0, 225.379, -133.486, 15.9885, 1.5644, 25, 25, 0, 100, 100, 0, 0, 0),  -- Durgen
-- Shadow Wing
(1300021, 2000037, 0, 0, 0, 45, 0, 200005, 231.214, 63.3696, 32.8229, 4.71373, 25, 25, 0, 100, 100, 0, 0, 0), -- Darkcaller Rayn
-- RP Event
(1300022, 2000005, 0, 0, 0, 45, 0, 0, 172.061, -89.7261, 16.0093, 1.24109, 25, 25, 0, 100, 100, 0, 0, 0), -- Scarlet Chaplain
(1300023, 2000006, 0, 0, 0, 45, 0, 0, 172.84, -87.1637, 16.0093, 4.36108, 25, 25, 0, 100, 100, 0, 0, 0); -- Scarlet Sister


REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(200000, 10825, 0, 0), -- Citadel Footman 2H Sword
(200001, 13623, 0, 0), -- Citadel Valiant 2H Sword
(200002, 22394, 0, 0), -- Citadel Inquisitor Staff
(200003, 22391, 0, 0), -- Eric Dark Staff
(200004, 13504, 23743, 0), -- Citadel Interrogator 2x1H Sword
(200005, 13722, 0, 0); -- Citadel Rayllusionist Staff


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
(18690, 1, 1, 0, 0), -- Citadel Zealot
(18682, 1, 1, 0, 0); -- Citadel Monk


REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES 
(1000000, 1000000), -- Boss Mariella
(1000001, 1000001), -- Boss Ardaeus
(1000002, 1000002); -- Boss Daelus

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(1000000, 'It seems Mistress Abbendis was rash when choosing the new blood, if you were to have faced me at the entrance you wouldn''t have made it this far.$B\nLook at you, monster, abomination. The way you move, the way you fight, the way you speak it''s all driven by the strings of your Dark Master. If there''s any morality left in you, pray to what you once knew as a powerful being.$B\nI have wasted breath on you, despicable creature, come and meet your end!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Boss Mariella
(1000001, 'For years, I have studied the arcane. My role in the order was different, yet meaningful. I have seen the work of necromancers in my studies. Never would I have imagined standing against such a powerful abomination as yourself.$B\nI believe it to be mockery-the fact you stand before me and have yet to attack. Do you, who carry the shame of your dark master, overestimate yourself this much? Alas, I will give you the satisfaction you seek.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Boss Ardaeus
(1000002, 'I like to remember the Monastery as it used to be.$B\nA place of worship and joy, a place where the young would come in search of greater purpose. Sparring within these very halls, there were many I''ve taught them how to defend themselves and what they stood for.$B\nMany were taken by the Light, butchered, and maimed by this unreasonable world. Nothing but toys to creatures like you that lavish in the pain and sorrow of righteous good people. I curse you, all of you. You believe us so weak to be defeated by a handful of wretched minions of the Scourge?$B\nCount your steps, they will be your last. When we are done with you, our shipwrights will be ready and we will find justice by our own means.$B\nYour downfall comes fools, I will protect the order!$B\nFor the Scarlet Crusade!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0); -- Boss Daelus

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
('2000033', '45', '2000034', '1', '8'),
('2000034', '45', '2000035', '1', '8'),
('2000035', '45', '2000033', '1', '8');

-- SC Drops:
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (84000, 'Pulseseeker', '', 2, 15, 1, 4, 61068, 1, 60, 1, -1, -1, 783412, 195853, 13, 3, 0, 0, 1, 1, 0, 94, 141, 1800, 0, 0, 75, 0, 0, 0, 73, 0, 65, 0, 0, 0, 0, 0, 0, 3, 10, 26693, 2, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (84001, 'Rose of Sanguine Rage', '', 4, 0, 1, 4, 31779, 1, 60, 0, -1, -1, 358312, 89578, 23, 6, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 0, 0, 0, 0, 0, 0, 0, 5, 12, 17872, 1, 0, 0, -1, 0, -1, 18382, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (84002, 'Headguard of the Scarlet Bastion', '', 4, 4, 6, 4, 14957, 1, 60, 0, -1, -1, 247853, 61963, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 100, 757, 0, 0, 83, 0, 65, 0, 0, 0, 0, 0, 0, 3, 20, 5, 14, 7, 30, 13669, 1, 0, 0, 0, 0, 0, 14249, 1, 0, 0, -1, 0, -1, 18049, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (84003, 'Signet of the Broken Oath', '', 4, 0, 1, 4, 31655, 1, 60, 0, -1, -1, 241005, 60251, 11, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 0, 65, 0, 0, 0, 0, 0, 0, 5, 10, 18015, 1, 0, 0, -1, 0, -1, 21523, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (84004, 'Subjugator\'s Boots', '', 4, 2, 8, 4, 66248, 1, 60, 0, -1, -1, 305217, 76304, 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 83, 0, 65, 0, 0, 0, 0, 0, 0, 3, 28, 7, 24, 9132, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (84005, 'Blindfold of the Scarlet Marksman', 'Those that blinded are those that truly see.', 4, 3, 5, 4, 5878, 1, 60, 0, -1, -1, 364609, 91152, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 85, 425, 0, 0, 83, 0, 65, 0, 0, 0, 0, 0, 0, 3, 30, 7, 16, 15466, 1, 0, 0, -1, 0, -1, 9132, 1, 0, 0, -1, 0, -1, 14049, 1, 0, 0, -1, 0, -1, 0, 0, 0);
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (84006, 'Banner of the Scarlet Crusade', 'Soaked in the blood of those devoted to this zealous crusade.', 4, 0, 1, 4, 23954, 1, 0, 0, -1, -1, 380702, 95175, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 13681, 1, 0, 0, 0, 0, 0, 9336, 1, 0, 0, -1, 0, -1, 0, 0, 0);
