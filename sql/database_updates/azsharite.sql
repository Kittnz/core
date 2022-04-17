-- Start script for quest Azsharite.
DELETE FROM `quest_start_scripts` WHERE `id`=3602;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(3602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4576, 0, 0, 0, 0, 0, 0, 0, 0, 'Azsharite: Loramus Thalipedes - Say Text');
UPDATE `quest_template` SET `StartScript`=3602 WHERE `entry`=3602;

-- This text should be whispered.
UPDATE `broadcast_text` SET `chat_type`=4 WHERE `entry`=4576;
