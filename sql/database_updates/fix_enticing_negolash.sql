-- Script on completion of quest Enticing Negolash.
DELETE FROM `quest_end_scripts` WHERE `id`=619;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(619, 0, 10, 1494, 120000, 0, 0, 0, 0, 0, 0, 0, 1494, -1, 1, -14598.6, 76.0563, -11.249, 0.925025, 0, 'Enticing Negolash: Ruined Lifeboat - Summon Creature Negolash'),
(619, 0, 9, @OGUID+0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+2, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+3, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+4, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+5, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+6, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+7, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+8, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+9, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+10, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+11, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
(619, 0, 9, @OGUID+12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
(619, 0, 9, @OGUID+13, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
(619, 0, 9, @OGUID+14, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
(619, 0, 9, @OGUID+15, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
(619, 0, 9, @OGUID+16, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
(619, 0, 9, @OGUID+17, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Baked Bread'),
(619, 0, 9, @OGUID+18, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Baked Bread'),
(619, 0, 9, @OGUID+19, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enticing Negolash: Ruined Lifeboat - Respawn GameObject Baked Bread');

-- Summon script for Negolash.
DELETE FROM `generic_scripts` WHERE `id`=1494;
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1494, 0, 60, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Negolash - Start Waypoints');

-- Waypoints for Negolash.
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(1494, 1, -14598.599609, 76.056297, -11.249000, 100.000000, 0, 0.000000, 149401),
(1494, 2, -14603.400391, 87.177902, -10.240300, 100.000000, 0, 0.000000, 0),
(1494, 3, -14612.900391, 104.960999, -8.736550, 100.000000, 0, 0.000000, 0),
(1494, 4, -14625.200195, 125.224998, -5.169360, 100.000000, 0, 0.000000, 0),
(1494, 5, -14647.200195, 142.490005, 0.734623, 100.000000, 1000, 0.000000, 149405),
(1494, 6, -14647.200195, 142.490005, 0.734623, 1.421290, 1000, 0.000000, 0);

-- Waypoint scripts for Negolash.
DELETE FROM `creature_movement_scripts` WHERE `id`=149401;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(149401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 731, 0, 0, 0, 0, 0, 0, 0, 0, 'Negolash - Say Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=149405;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(149405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 763, 0, 0, 0, 0, 0, 0, 0, 0, 'Negolash - Say Text');

-- This text should be yelled.
UPDATE `broadcast_text` SET `chat_type`=1 WHERE `entry`=731;

-- Remove EventAI from Negolash.
DELETE FROM `creature_ai_scripts` WHERE `id` IN (149401);
DELETE FROM `creature_ai_events` WHERE `creature_id`=1494;
UPDATE `creature_template` SET `ai_name`='' WHERE `entry`=1494;

