-- Add Events to Barov Servants
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` IN (11636, 11637);

-- Events list for Servant of Alexi Barov
DELETE FROM `creature_ai_events` WHERE `creature_id`=11637;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1163701, 11637, 0, 4, 0, 20, 2, 0, 0, 0, 0, 1163601, 1163602, 0, 'Servant of Alexi Barov - Talk On Aggro');

-- Events list for Servant of Weldon Barov
DELETE FROM `creature_ai_events` WHERE `creature_id`=11636;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(1163601, 11636, 0, 4, 0, 20, 2, 0, 0, 0, 0, 1163601, 1163602, 0, 'Servant of Weldon Barov - Talk On Aggro');

-- On aggro scripts.
DELETE FROM `creature_ai_scripts` WHERE `id`=1163601;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1163601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7150, 7151, 7152, 7153, 0, 0, 0, 0, 0, 'Servant of Alexi\Weldon Barov - Talk');
DELETE FROM `creature_ai_scripts` WHERE `id`=1163602;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1163602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7154, 7153, 7152, 7151, 0, 0, 0, 0, 0, 'Servant of Alexi\Weldon Barov - Talk');


