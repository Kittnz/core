-- Add Uldum Pedestal with original guid.
DELETE FROM `gameobject` WHERE `id`=142343;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (17230, 142343, 1, -9619.27, -2815.05, 8.21132, -3.13287, 0, 0, 0.99999, -0.004363, 2, 2, 100, 1, 0, 0);
