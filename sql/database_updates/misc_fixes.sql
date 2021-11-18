
-- Events list for Milton Beats
DELETE FROM `creature_ai_events` WHERE `creature_id`=13082;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1308201, 13082, 0, 4, 0, 100, 1, 0, 0, 0, 0, 1308201, 0, 0, 'Milton Beats - Say Text on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1308202, 13082, 0, 9, 0, 100, 1, 0, 5, 8000, 12000, 1308202, 0, 0, 'Milton Beats - Cast Slap!');
DELETE FROM `creature_ai_scripts` WHERE `id`=1308201;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1308201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8512, 0, 0, 0, 0, 0, 0, 0, 0, 'Milton Beats - Say Text');

-- Correct auras used by Syndicate Highwayman.
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=2586);
UPDATE `creature_template` SET `auras`='7939 22766' WHERE `entry`=2586;
