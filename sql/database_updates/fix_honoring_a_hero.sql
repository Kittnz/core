
-- Add serverside spell focus for quest Honoring a Hero (Alliance).
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`) VALUES (99865, 180204, 0, 968.684, -1826.15, 77.0133, -2.94088, 0, 0, -0.994969, 0.100188, 60, 60, 1, 100);

REPLACE INTO `gameobject_template` (`entry`,  `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `script_name`) VALUES (180204,  8, 299, 'Uther\'s Tomb Statue', 1, 1323, 10, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Add serverside spell focus for quest Honoring a Hero (Horde).
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`) VALUES (99997, 180205, 1, 1632.57, -3075, 85.959, 0, 0, 0, 0, 1, 60, 60, 1, 100);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `script_name`) VALUES (180205, 8, 299, 'Grom\'s Monument', 1, 1324, 10, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
