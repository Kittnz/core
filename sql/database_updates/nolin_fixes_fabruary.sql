
-- Remove unobtainable/obstructed ore veins
DELETE FROM `gameobject` WHERE `guid` IN (5242, 39989);

-- Assign range to Dark Iron Ale TRAP.
UPDATE `gameobject_template` SET `data2`=20 WHERE `entry`=165578;

-- Prevent spell "Dark Iron Drunk Mug" from hitting Jubjub.
DELETE FROM `spell_script_target` WHERE `entry`=14813 && `targetEntry`=14867;

-- Events list for Morja
DELETE FROM `creature_ai_events` WHERE `creature_id`=14871;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1487101, 14871, 0, 8, 0, 100, 1, 14813, -1, 120000, 120000, 1487101, 0, 0, 'Morja - Attract Jubjub on Hit By Spell Dark Iron Drunk Mug');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1487102, 14871, 0, 1, 0, 100, 1, 30000, 84000, 30000, 84000, 1487102, 0, 0, 'Morja - Talk - OOC');
DELETE FROM `creature_ai_scripts` WHERE `id`=1487101;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1487101, 0, 15, 23845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Morja - Cast Spell Attract Jubjub');

-- Script when Jubjub reaches the Dark Iron Ale.
DELETE FROM `creature_ai_scripts` WHERE `id`=1486701;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1486701, 0, 0, 0, 0, 0, 0, 14871, 30, 8, 2, 10170, 0, 0, 0, 0, 0, 0, 0, 0, 'Morja - Say Text');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1486701, 0, 4, 147, 2, 1, 0, 14871, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Morja - Enable Quest Giver Flag');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1486701, 0, 39, 10002, 0, 0, 0, 14871, 30, 8, 6, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Morja - Start Script to Remove Quest Giver Flag in 120s');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1486701, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jubjub - Move Idle');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1486701, 0, 18, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jubjub - Despawn');

-- Script to remove Quest Giver Flag from Morja.
DELETE FROM `generic_scripts` WHERE `id`=10002;
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10002, 120, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Morja - Remove Quest Giver Flag');

-- Add cheer emote to text 10170.
UPDATE `broadcast_text` SET `emote_id1`=4 WHERE `entry`=10170;


-- Rewrite Shadowfang Keep (TODO)
-- UPDATE `creature_template` SET `gossip_menu_id`='0' WHERE `entry`=3850;
-- DELETE FROM `gossip_menu_option` WHERE `menu_id` = 21213;
-- DELETE FROM `gossip_scripts` WHERE `id` = 21213;
-- DELETE FROM `creature_movement_special` WHERE `id` = 3850;
-- REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES 
-- (3850, 0, -241.817, 2122.900, 81.179, 0, ""),
-- (3850, 1, -247.139, 2124.890, 81.179, 0, ""),
-- (3850, 2, -253.179, 2127.410, 81.179, 0, ""),
-- (3850, 3, -253.898, 2130.870, 81.179, 0, ""),
-- (3850, 4, -249.889, 2142.310, 86.972, 0, ""),
-- (3850, 5, -248.205, 2144.020, 87.013, 0, ""),
-- (3850, 6, -240.553, 2140.550, 87.012, 0, ""),
-- (3850, 7, -237.514, 2142.070, 87.012, 0, ""),
-- (3850, 8, -235.638, 2149.230, 90.587, 0, ""),
-- (3850, 9, -234.186, 2152.720, 90.624, 0, ""),
-- (3850, 10, -241.162, 2153.65, 90.624, 0, ""),
-- (3850, 11, -241.130, 2154.56, 90.624, 0, "");
