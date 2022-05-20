
-- Custom Graveyard
REPLACE INTO `custom_graveyards` (`id`, `name`, `map_id`, `zone_id`, `area_id`, `max_level`, `map_gy_alliance`, `gy_x_alliance`, `gy_y_alliance`, `gy_z_alliance`, `orientation_alliance`, `map_gy_horde`, `gy_x_horde`, `gy_y_horde`, `gy_z_horde`, `orientation_horde`) VALUES
(30, 'Scarlet Citadel', 44, 0, 0, 60, 0, 2603.33, -534.807, 89, 2.46552, 0, 2603.33, -534.807, 89, 2.46552);


-- Teleport
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(500, 32.5495, 13.2999, 16.869, 6.28138, 44, 'ScarletCitadel');


-- Dungeon is a 10 man raid with 7 day reset timer
REPLACE INTO `map_template` (`entry`, `parent`, `map_type`, `linked_zone`, `player_limit`, `reset_delay`, `ghost_entrance_map`, `ghost_entrance_x`, `ghost_entrance_y`, `map_name`, `script_name`) VALUES
(44, 0, 2, 0, 40, 7, -1, 0, 0, 'Scarlet Citadel', 'instance_scarlet_citadel');


-- GOs
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
(5000011, 0, 3751, 'SC_NOLIN_DOOR_LOCKED', 0, 52, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000012, 5, 6679, 'SC_SUMMONING_CIRCLE', 0, 52, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000013, 3, 23431, 'SC_MIRELLAS_ACHIEVEMENT_CHEST', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(5000014, 3, 23431, 'SC_ARDAEUS_ACHIEVEMENT_CHEST', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');

-- Reserved Range 650000-650100
DELETE FROM `gameobject` WHERE `guid` BETWEEN 5000000 AND 5000013; -- Erase deprecated GOs
DELETE FROM `gameobject` WHERE `guid` BETWEEN 5003799 AND 5003779; -- Erase deprecated GOs


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

-- NPCs
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `phase_quest_action`, `script_name`) VALUES
(2000000, 10529, 0, 0, 0, 'High Monk Daelus', 'The Scarlet Crusade', 0, 63, 63, 700000, 700000, 5000000, 5000000, 4500, 67, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'boss_daelus'),
(2000001, 10529, 0, 0, 0, 'Grand Magi Ardaeus', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 6000, 67, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'boss_ardaeus'),
(2000002, 18676, 0, 0, 0, 'High Inquisitor Mariella', 'The Scarlet Crusade', 0, 63, 63, 795000, 795000, 5000000, 5000000, 3000, 67, 0, 1.5, 1.5, 1.3, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'boss_mariella'),
(2000003, 10431, 0, 0, 0, 'High General Abbendis', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 4500, 67, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 1, 'boss_abbendis'),
(2000004, 10529, 0, 0, 0, 'FIRST_WING_TRASH', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000005, 10529, 0, 0, 0, 'RP_ONE_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000006, 10529, 0, 0, 0, 'RP_TWO_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000007, 221, 0, 0, 0, 'Nolin', 'The Goose', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1.3, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000008, 5556, 0, 0, 0, 'Bokkeum', 'Nolin''s Pet', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 0.7, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000009, 10529, 0, 0, 0, 'SECOND_WING_TRASH_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000010, 10529, 0, 0, 0, 'FIRST_VENDOR_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000011, 10529, 0, 0, 0, 'SECOND_VENDOR_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000012, 10529, 0, 0, 0, 'THIRD_VENDOR_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(2000013, 10529, 0, 0, 0, 'FIRST_WING_TRIGGER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 'npc_areatrigger'),
(2000014, 18680, 0, 0, 0, 'Citadel Inquisitor', 'The Scarlet Crusade', 0, 63, 63, 16250, 16250, 25680, 25680, 3555, 67, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 2400, 3900, 0, 284, 1, 1150, 1265, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 0, 3, 0, 0, 3, 200000, 0, 0, 1022049875, 0, 0, 0, 1, 'npc_citadel_inquisitor'),
(2000015, 18687, 0, 0, 0, 'Citadel Valiant', 'The Scarlet Crusade', 0, 63, 63, 21125, 21125, 0, 0, 4190, 67, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 3900, 4300, 0, 284, 1, 1150, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 0, 3, 0, 0, 3, 200001, 0, 0, 1022049875, 0, 0, 0, 1, 'npc_citadel_valiant'),
(2000016, 15866, 0, 0, 0, 'Void Zone', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 0.1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_voidzone'),
(2000017, 850, 0, 0, 0, 'Felhound', 'Mariella''s Slave', 0, 62, 62, 25000, 25000, 500000, 500000, 1900, 67, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 1073741823, 32, 308, 0, 1, 'npc_felhound'),
(2000018, 15866, 0, 0, 0, 'Kill Zone', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 0.2, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_killzone'),
-- TODO: Everything
(2000019, 10529, 0, 0, 0, 'Sun', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_sun'),
(2000020, 10529, 0, 0, 0, 'Invar One-Arm', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_invar_onearm'),
(2000021, 10529, 0, 0, 0, 'Arellas Fireleaf', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_arellas_fireleaf'),
(2000022, 10529, 0, 0, 0, 'Holia Sunshield', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_holia_sunshield'),
(2000023, 10529, 0, 0, 0, 'Ferren Marcus', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_ferren_marcus'),
(2000024, 10529, 0, 0, 0, 'Yana Bloodspear', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_yana_bloodspear'),
(2000025, 10529, 0, 0, 0, 'Orman of Stromgarde', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_orman_stromgarde'),
(2000026, 10529, 0, 0, 0, 'Fellari Swiftarrow', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_fellari_swiftarrow'),
(2000027, 10529, 0, 0, 0, 'Dorgar Stoenbrow', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_dorgar_stoenbrow'),
(2000028, 10529, 0, 0, 0, 'Valea Twinblades', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_valea_twinblades'),
(2000029, 10529, 0, 0, 0, 'Harthal Truesight', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_harthal_truesight'),
(2000030, 10529, 0, 0, 0, 'Admiral Barean Westwind', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_admiral_barean_westwind'),
(2000031, 10529, 0, 0, 0, 'ARDAEUS_STATUE_NPC', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, ''),
(2000032, 10529, 0, 0, 0, 'ANTI_EXPLOIT_TELEPORTER', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 1, 'npc_citadel_anti_exploit');


-- Reserved Range 1300000-1300100
DELETE FROM `creature` WHERE `guid` BETWEEN 3000000 AND 3000007; -- Erase deprecated NPCs


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


REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES 
(1000000, 1000000), -- Boss Mariella
(1000001, 1000001); -- Boss Ardaeus

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(1000000, 'It seems Mistress Abbendis was rash when choosing the new blood, if you were to have faced me at the entrance you wouldn''t have made it this far.$B\nLook at you, monster, abomination. The way you move, the way you fight, the way you speak it''s all driven by the strings of your Dark Master. If there''s any morality left in you, pray to what you once knew as a powerful being.$B\nI have wasted breath on you, despicable creature, come and meet your end!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Boss Mariella
(1000001, 'For years, I have studied the arcane. My role in the order was different, yet meaningful. I have seen the work of necromancers in my studies. Never would I have imagined standing against such a powerful abomination as yourself.$B\nI believe it to be mockery-the fact you stand before me and have yet to attack. Do you, who carry the shame of your dark master, overestimate yourself this much? Alas, I will give you the satisfaction you seek.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0); -- Boss Ardaeus
