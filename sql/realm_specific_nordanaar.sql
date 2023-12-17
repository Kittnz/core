UPDATE `quest_cast_objective` SET `spell_id` = 21343, `player_guid` = 688152, `player_class` = 0, `objective_text` = 'Throw snowball at Akalix' WHERE `entry` = 50321 AND `idx` = 0;
UPDATE `quest_cast_objective` SET `spell_id` = 21343, `player_guid` = 605121, `player_class` = 0, `objective_text` = 'Throw snowball at Shockwarden' WHERE `entry` = 50321 AND `idx` = 1;
UPDATE `quest_cast_objective` SET `spell_id` = 21343, `player_guid` = 346800, `player_class` = 0, `objective_text` = 'Throw snowball at Dated' WHERE `entry` = 50321 AND `idx` = 2;
UPDATE `quest_cast_objective` SET `spell_id` = 21343, `player_guid` = 391543, `player_class` = 0, `objective_text` = 'Throw snowball at Vrograg' WHERE `entry` = 50321 AND `idx` = 3;

-- 688152	Akalix
-- 369620	Lexie
-- 542109	Sarenrae
-- 391543	Vrograg

-- Frosties!

REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2582213, 50661, 0, 0, 0, 0, -4895.12, -959.787, 501.451, 3.14403, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2582212, 50661, 0, 0, 0, 0, -8804.96, 634.897, 94.2291, 3.98388, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2582214, 50661, 0, 0, 0, 1, 1642.6, -4431.83, 16.5677, 1.63943, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2582215, 50661, 0, 0, 0, 1, 9950.14, 2498.66, 1317.82, 4.66285, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2582216, 50661, 0, 0, 0, 1, -1289.47, 116.286, 131.085, 5.53296, 120, 120, 0, 100, 100, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (2582217, 50661, 0, 0, 0, 0, 1557.14, 240.612, -43.1026, 0.0535726, 120, 120, 0, 100, 100, 0, 0, 0);

-- Autobroadcast:

UPDATE `mangos_string` SET `content_default` = 'All donation rewards are half-price until January 1st! Happy Holidays!' WHERE `entry` = 50001;