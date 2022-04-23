-- Completion script for quest Shadoweaver.
DELETE FROM `quest_end_scripts` WHERE `id`=3379;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES 
(3379, 0, 0, 0, 0, 0, 0, 8441, 30, 8, 3, 4415, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadoweaver: Raze - Say Text'),
(3379, 3, 18, 0, 0, 0, 0, 8441, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadoweaver: Raze - Despawn Creature');
UPDATE `quest_template` SET `CompleteScript`=3379 WHERE `entry`=3379;

-- Raze respawns in 5 seconds.
UPDATE `creature` SET `spawntimesecsmin`=5, `spawntimesecsmax`=5 WHERE `id`=8441;
