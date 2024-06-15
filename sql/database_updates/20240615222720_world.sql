
-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583555,62014,0,0,0,0,2050.4,2426.86,130.784,3.80753,120,120,0,100,100,0,0,0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583554,80945,0,0,0,451,15705.3,16554,48.6109,2.73931,120,120,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583554;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583554,1, 15705.299805,16554.000000,48.610901, 100);
