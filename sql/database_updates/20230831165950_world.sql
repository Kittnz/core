-- Remove questgiver flag from Bath'rah the Windwatcher during The Summoning script.
DELETE FROM `quest_start_scripts` WHERE `id`=1713;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
-- (1713, 0, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Summoning: Bath\'rah the Windwatcher - Remove Questgiver Flag'),
(1713, 2, 0, 3, 0, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 253.05, -1459.09, 52.09, 1.39, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2383, 0, 0, 0, 0, 0, 0, 0, 0, 'The Summoning: Bath\'rah the Windwatcher - Say Text'),
(1713, 6, 0, 3, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256.87, -1440.35, 50.09, 0.78, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 12, 0, 3, 0, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 273.74, -1433.18, 50.29, 6.17, 0, 'The Summoning: Bath\'rah the Windwatcher -  Move'),
(1713, 16, 0, 3, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 297.77, -1436.7, 46.96, 6.14, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 26, 0, 3, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 329.59, -1442.08, 40.31, 5.1, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 36, 0, 3, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 332.73, -1455.6, 42.24, 4.23, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 43, 0, 3, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 323.83, -1468.92, 42.24, 5.8, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 50, 0, 15, 8606, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Summoning: Bath\'rah the Windwatcher - Cast Spell Summon Cyclonian'),
(1713, 50, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2382, 0, 0, 0, 0, 0, 0, 0, 0, 'The Summoning: Bath\'rah the Windwatcher - Say Text'),
(1713, 70, 0, 3, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 332.73, -1455.6, 42.24, 4.23, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 77, 0, 3, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 329.59, -1442.08, 40.31, 5.1, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 84, 0, 3, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 297.77, -1436.7, 46.96, 6.14, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 94, 0, 3, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 273.74, -1433.18, 50.29, 6.17, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 104, 0, 3, 0, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256.87, -1440.35, 50.09, 0.78, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 110, 0, 3, 0, 7500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 253.05, -1459.09, 52.09, 1.39, 0, 'The Summoning: Bath\'rah the Windwatcher - Move'),
(1713, 120, 0, 3, 0, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250.84, -1470.58, 55.4491, 1.39626, 0, 'The Summoning: Bath\'rah the Windwatcher - Move');
-- (1713, 124, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Summoning: Bath\'rah the Windwatcher - Add Questgiver Flag');
