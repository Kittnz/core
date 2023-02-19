
-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013375, 2010997, 0, 2508.46, 2562.08, -0.84797, 5.1048, 0, 0, 0.555691, -0.831389, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013375';
DELETE FROM game_event_gameobject WHERE guid = '5013375';
DELETE FROM gameobject_battleground WHERE guid = '5013375';
REPLACE INTO `gameobject` VALUES ( 5013376, 2010997, 0, 2511.85, 2439.43, 1.2622, 5.19352, 0, 0, 0.518274, -0.855215, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013376, 2010997, 0, 2511.85, 2439.43, 1.2622, 1.98517, 0, 0, 0.837442, 0.546526, 300, 300, 100, 1, 0, 0);

-- Changes by JOE
UPDATE `creature` SET `position_x` = -652.160706, `position_y` = 695.482971, `position_z` = -329.113892, `orientation` = 2.859456 WHERE `guid` = 33491;
REPLACE INTO `gameobject` VALUES ( 374694, 180248, 0, -12393.1, 298.543, -1.0622, 5.41052, 0, 0, -0.422618, 0.906308, 180, 180, 100, 1, 0, 0);
