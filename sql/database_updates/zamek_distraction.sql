UPDATE creature_template set npc_flags = 2 where entry = 4709;

DELETE FROM `quest_end_scripts` WHERE `id`=1191;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1191, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zamek - Modify Flags');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1191, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zamek - Run');
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1191, 1, 60, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4709, 0, 0, 0, 0, 0, 0, 0, 'Zamek - Start Waypoints');
-- Add waypoints and scripts
REPLACE INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
-- Zamek 4709
(4709, 1, -6237.13, -3911.58, -60.5103, 100, 0, 0),
(4709, 2, -6257.43, -3879.56, -58.8595, 100, 0, 0),
(4709, 3, -6267.61, -3850.91, -58.7503, 100, 0, 0),
(4709, 4, -6266.24, -3846.35, -58.7503, 100, 5000, 470901),
(4709, 5, -6267.61, -3850.91, -58.7503, 100, 0, 0),
(4709, 6, -6257.43, -3879.56, -58.8595, 100, 0, 0),
(4709, 7, -6237.13, -3911.58, -60.5103, 100, 0, 0),
(4709, 8, -6226.13, -3944.94, -58.6251, 100, 1000, 470902),
-- Rizzle Brassbolts 4720
(4720, 1, -6243.39, -3845.91, -58.7498, 100, 2000, 472001),
(4720, 2, -6250.63, -3847.35, -58.7491, 100, 0, 0),
(4720, 3, -6255.06, -3853.64, -58.7491, 100, 0, 0),
(4720, 4, -6262.2,  -3851.84, -58.7491, 100, 0, 0),
(4720, 5, -6266.24, -3846.35, -58.7503, 100, 30000, 472002),
(4720, 6, -6262.2,  -3851.84, -58.7491, 100, 0, 0),
(4720, 7, -6255.06, -3853.64, -58.7491, 100, 0, 0),
(4720, 8, -6250.63, -3847.35, -58.7491, 100, 0, 0),
(4720, 9, -6243.39, -3845.91, -58.7498, 100, 0, 0),
(4720, 10, -6236.99, -3831.23, -58.1364, 100, 1000, 472003);
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (470901, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1540, 0, 0, 0, 0, 0, 0, 0, 0, 'Zamek - Talk');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (470901, 3, 9, 20, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zamek - Respawn Gobject');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (470901, 4, 25, 1, 0, 0, 0, 21577, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rizzle Brassbolts - Run');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (470901, 10, 0, 0, 0, 0, 0, 21577, 0, 9, 2, 1541, 0, 0, 0, 0, 0, 0, 0, 0, 'Rizzle Brassbolts - Talk');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (470901, 10, 60, 2, 0, 0, 0, 21577, 0, 9, 2, 0, 4720, 0, 0, 0, 0, 0, 0, 0, 'Rizzle Brassbolts - Start Waypoints');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (470902, 34, 4, 147, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Zamek - Modify Flags');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (472001, 1, 9, 13621, 42, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rizzle Brassbolts - Respawn Gobject');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (472001, 2, 81, 17087, 41, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rizzle Brassbolts - Despawn Gobject');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (472002, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1542, 0, 0, 0, 0, 0, 0, 0, 0, 'Rizzle Brassbolts - Talk');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (472002, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1543, 0, 0, 0, 0, 0, 0, 0, 0, 'Rizzle Brassbolts - Talk');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (472003, 0, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.38594, 0, 'Rizzle Brassbolts - Orientation');
-- in case if object despawns before player accept next one
-- UPDATE `quest_template` SET `RequiredCondition` = 20227, `PrevQuestId`=0 WHERE `entry` = 1191;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(20225, 9, 1190, 0),
(20226, 19, 1194, 0),
(20227, -2, 20226, 20225);
-- Objects
-- Rizzle's Guarded Plans 179888
UPDATE `gameobject_template` SET `flags` = 0 WHERE entry = 179888;
UPDATE `gameobject` SET `spawntimesecsmin` = 45, `spawntimesecsmax` = 45 WHERE `id` = 179888;
DELETE FROM `gossip_menu` WHERE `entry` = 6029;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(6029, 7182);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6029;
-- Rizzle's Unguarded Plans 20805
UPDATE `gameobject` SET `position_x` = -6236.64, `position_y` = -3830.48, `position_z` = -58.1364, `orientation` = -0.907571, `rotation0` = 0, `rotation1` = 0, `rotation2` = 0.438371, `rotation3` = -0.898794 WHERE `id` = 20805;
UPDATE `gameobject_template` SET `data3` = 0 WHERE `entry` = 20805;
-- Explosive Charge 144065 - added
DELETE FROM `gameobject` WHERE `guid` = 20;
INSERT INTO `gameobject` VALUES (20, 144065,1, -6266.46, -3845.4, -58.7498, 0.550892, 0, 0, 0.271976, 0.962304, -5, -5, 255, 1, 0, 0);
