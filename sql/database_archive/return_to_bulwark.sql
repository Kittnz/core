-- Completion script for quest Return to the Bulwark.
DELETE FROM `quest_end_scripts` WHERE `id`=5230;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(5230, 0, 15, 23947, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Return to the Bulwark: Shadow Priestess Vandis - Cast Spell Power Word: Fortitude');
UPDATE `quest_template` SET `CompleteScript`=5230 WHERE `entry` IN (5230, 5232, 5234, 5236);