
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577474,61556,0,0,0,1,-3667.39,-4412.68,10.7948,4.43763,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577474;
DELETE FROM creature_addon WHERE guid=2577474;
DELETE FROM creature_movement WHERE id=2577474;
DELETE FROM game_event_creature WHERE guid=2577474;
DELETE FROM game_event_creature_data WHERE guid=2577474;
DELETE FROM creature_battleground WHERE guid=2577474;
REPLACE INTO `creature` VALUES (2577475,61557,0,0,0,1,-3817.8,-4561.31,9.12589,2.38301,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -3819.262451, `position_y` = -4562.958984, `position_z` = 9.006362, `orientation` = 2.398850 WHERE `guid` = 2577475;
REPLACE INTO `creature` VALUES (2574701,61279,0,0,0,0,-2173.26,1160.76,26.7683,1.51749,300,300,5,100,100,1,0,0);
UPDATE `creature` SET `position_x` = -2174.518311, `position_y` = 1161.486328, `position_z` = 26.880362, `orientation` = 2.586490 WHERE `guid` = 2574701;
REPLACE INTO `creature` VALUES (2574701,61279,0,0,0,0,-2174.52,1161.49,26.8804,2.58649,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2574701,61279,0,0,0,0,-2174.52,1161.49,26.8804,2.58649,300,300,3,100,100,1,0,0);
REPLACE INTO `gameobject` VALUES ( 5015523, 22834, 0, -2175.06, 1168.22, 26.8529, 5.38735, 0, 0, 0.433089, -0.901351, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015523, 22834, 0, -2175.06, 1168.42, 26.8529, 5.38735, 0, 0, 0.433089, -0.901351, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2954.07, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2954.27, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2954.47, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2954.67, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2954.87, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2955.07, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2955.27, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2955.47, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2955.67, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2955.87, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2956.07, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2956.27, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2956.47, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015524, 2003528, 815, -969.369, 2956.67, 166.314, 5.60712, 0, 0, 0.331631, -0.943409, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015525, 177514, 815, -970.722, 2954.52, 166.314, 0.398607, 0, 0, 0.197987, 0.980205, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015525';
DELETE FROM game_event_gameobject WHERE guid = '5015525';
DELETE FROM gameobject_battleground WHERE guid = '5015525';
REPLACE INTO `gameobject` VALUES ( 5015526, 177513, 815, -969.971, 2955.14, 166.314, 0.0891571, 0, 0, 0.0445638, 0.999007, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015527, 177512, 815, -968.723, 2958.27, 166.314, 4.06327, 0, 0, 0.895679, -0.444701, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015527';
DELETE FROM game_event_gameobject WHERE guid = '5015527';
DELETE FROM gameobject_battleground WHERE guid = '5015527';
REPLACE INTO `gameobject` VALUES ( 5015528, 2020033, 815, -969.41, 2957.07, 167.442, 4.61619, 0, 0, 0.740287, -0.672291, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015529, 2020034, 0, -13306, -452.182, 18.3923, 5.12116, 0, 0, 0.548871, -0.835907, 300, 300, 100, 1, 0, 0);
