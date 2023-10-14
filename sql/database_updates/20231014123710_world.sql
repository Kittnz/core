-- Events list for Novice Investor
DELETE FROM `creature_ai_events` WHERE `creature_id`=51247;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (5124701, 51247, 0, 1, 0, 100, 1, 300000, 900000, 300000, 900000, 5124701, 0, 0, 'Novice Investor - Say Text OOC');
-- Events list for Marlos Catos
DELETE FROM `creature_ai_events` WHERE `creature_id`=51252;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (5125201, 51252, 0, 1, 0, 100, 1, 900000, 9000000, 900000, 9000000, 5125201, 0, 0, 'Marlos Catos - Say Text OOC');
-- Events list for Shellcoin Promoter
DELETE FROM `creature_ai_events` WHERE `creature_id`=51237;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (5123701, 51237, 85, 10, 0, 100, 1, 1, 20, 300000, 600000, 5123701, 0, 0, 'Shellcoin Promoter - Follow Player in LoS');
-- Events list for Fanatical Investor
DELETE FROM `creature_ai_events` WHERE `creature_id`=51241;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (5124101, 51241, 0, 1, 0, 100, 1, 300000, 900000, 300000, 900000, 5124101, 0, 0, 'Fanatical Investor - Say Text OOC');
