
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582166,61862,0,0,0,1,317.673,-7733.7,37.8897,2.54067,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582166,61862,0,0,0,1,317.673,-7733.7,37.8897,2.54067,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582167,61863,0,0,0,1,171.946,-7723.39,46.5682,2.55951,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582167,61863,0,0,0,1,171.946,-7723.39,46.5682,2.55951,300,300,5,100,100,1,0,0);
REPLACE INTO `gameobject` VALUES ( 5017491, 2020068, 1, 294.89, -7603.44, 85.5676, 0.17338, 0, 0, 0.0865814, 0.996245, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017491';
DELETE FROM game_event_gameobject WHERE guid = '5017491';
DELETE FROM gameobject_battleground WHERE guid = '5017491';
REPLACE INTO `gameobject` VALUES ( 5017492, 2020069, 1, 294.89, -7603.44, 85.5676, 0.17338, 0, 0, 0.0865814, 0.996245, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017492';
DELETE FROM game_event_gameobject WHERE guid = '5017492';
DELETE FROM gameobject_battleground WHERE guid = '5017492';
REPLACE INTO `gameobject` VALUES ( 5017493, 2020070, 1, 294.89, -7603.44, 85.5676, 0.17338, 0, 0, 0.0865814, 0.996245, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017493';
DELETE FROM game_event_gameobject WHERE guid = '5017493';
DELETE FROM gameobject_battleground WHERE guid = '5017493';
REPLACE INTO `gameobject` VALUES ( 5017494, 2020071, 1, 294.265, -7603.56, 85.5244, 0.17338, 0, 0, 0.0865814, 0.996245, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017494';
DELETE FROM game_event_gameobject WHERE guid = '5017494';
DELETE FROM gameobject_battleground WHERE guid = '5017494';

-- Changes by DRAGU
UPDATE `creature_addon` SET `emote_state`=69 WHERE `guid`=2573046;
