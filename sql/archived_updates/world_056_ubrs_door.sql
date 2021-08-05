
-- Correct UBRS door.
DELETE FROM `gameobject` WHERE `id`=170556 && `map`=229;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES (82597, 164725, 229, 126.879, -319.109, 70.935, 3.14159, 0, 0, 1, 0, 180, 180, 100, 1);

