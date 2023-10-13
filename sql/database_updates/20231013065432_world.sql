-- 9938: Stored Value In Index 5 From Instance Script Is Equal To 1
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (9938, 34, 5, 1, 0, 0, 0);

-- Ironhand Guardian should only cast Gout of Flame when Magmus is in combat.
DELETE FROM `creature_ai_events` WHERE `creature_id`=8982;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (898201, 8982, 9938, 1, 0, 100, 1, 4000, 8000, 13000, 18000, 898201, 0, 0, 'Ironhand Guardian - Cast Gout of Flame OOC');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (898202, 8982, 0, 11, 0, 100, 0, 0, 0, 0, 0, 898202, 0, 0, 'Ironhand Guardian - Cast Stoned Visual on Spawn');
