
-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5015671, 2011050, 815, -1428.59, 2245.26, 188.374, 0.838977, 0, 0, 0.407293, 0.913297, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015671';
DELETE FROM game_event_gameobject WHERE guid = '5015671';
DELETE FROM gameobject_battleground WHERE guid = '5015671';
REPLACE INTO `gameobject` VALUES ( 5015672, 2011049, 815, -1428.59, 2245.26, 188.374, 0.838977, 0, 0, 0.407293, 0.913297, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015672';
DELETE FROM game_event_gameobject WHERE guid = '5015672';
DELETE FROM gameobject_battleground WHERE guid = '5015672';
REPLACE INTO `gameobject` VALUES ( 5015673, 2011052, 815, -1428.59, 2245.26, 188.374, 0.838977, 0, 0, 0.407293, 0.913297, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015673';
DELETE FROM game_event_gameobject WHERE guid = '5015673';
DELETE FROM gameobject_battleground WHERE guid = '5015673';
REPLACE INTO `gameobject` VALUES ( 5015674, 2011050, 815, -1428.59, 2245.26, 188.374, 0.838977, 0, 0, 0.407293, 0.913297, 300, 300, 100, 1, 0, 0);

-- Changes by GURKY
REPLACE INTO `gameobject` VALUES ( 5015675, 180437, 0, 1726.29, 507.081, 41.3925, 4.77279, 0, 0, 0.685432, -0.728137, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015675';
DELETE FROM game_event_gameobject WHERE guid = '5015675';
DELETE FROM gameobject_battleground WHERE guid = '5015675';
REPLACE INTO `gameobject` VALUES ( 5015676, 180574, 0, 1726.15, 508.13, 41.1709, 4.36122, 0, 0, 0.819754, -0.572715, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015676';
DELETE FROM game_event_gameobject WHERE guid = '5015676';
DELETE FROM gameobject_battleground WHERE guid = '5015676';
REPLACE INTO `gameobject` VALUES ( 5015677, 180574, 0, 1727.6, 508.83, 41.163, 3.59153, 0, 0, 0.974801, -0.223077, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015677';
DELETE FROM game_event_gameobject WHERE guid = '5015677';
DELETE FROM gameobject_battleground WHERE guid = '5015677';

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577595,89000,0,0,0,1,5336.38,-3555.15,1576.54,5.45815,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577595;
DELETE FROM creature_addon WHERE guid=2577595;
DELETE FROM creature_movement WHERE id=2577595;
DELETE FROM game_event_creature WHERE guid=2577595;
DELETE FROM game_event_creature_data WHERE guid=2577595;
DELETE FROM creature_battleground WHERE guid=2577595;

-- Changes by GHEOR
REPLACE INTO `gameobject` VALUES ( 5015678, 2000306, 0, -1480.86, 1581.8, 140.018, 4.77225, 0, 0, 0.685628, -0.727952, 300, 300, 100, 1, 0, 0);
