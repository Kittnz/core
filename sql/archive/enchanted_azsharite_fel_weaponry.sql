-- Correct start script for quest Enchanted Azsharite Fel Weaponry.
DELETE FROM `quest_start_scripts` WHERE `id`=3625;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(3625, 0, 1, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Azsharite Fel Weaponry: Galvan the Ancient - Set Emote State to Work'),
(3625, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Azsharite Fel Weaponry: Galvan the Ancient - Set Emote State to None'),
(3625, 5, 7, 3625, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Azsharite Fel Weaponry: Player - Complete Quest'),
(3625, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4542, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Azsharite Fel Weaponry: Galvan the Ancient - Say Text');
