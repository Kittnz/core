
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582351,8581,0,0,0,451,15708.1,16574.5,48.6117,2.283,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2582351;
DELETE FROM creature_addon WHERE guid=2582351;
DELETE FROM creature_movement WHERE id=2582351;
DELETE FROM game_event_creature WHERE guid=2582351;
DELETE FROM game_event_creature_data WHERE guid=2582351;
DELETE FROM creature_battleground WHERE guid=2582351;
REPLACE INTO `creature` VALUES (2582352,6199,0,0,0,451,15708.3,16574.2,48.6117,2.27907,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582352;
DELETE FROM creature_addon WHERE guid=2582352;
DELETE FROM creature_movement WHERE id=2582352;
DELETE FROM game_event_creature WHERE guid=2582352;
DELETE FROM game_event_creature_data WHERE guid=2582352;
DELETE FROM creature_battleground WHERE guid=2582352;

-- Changes by WOJI
UPDATE `creature` SET `position_x` = 3401.525146, `position_y` = -2812.372070, `position_z` = 103.637939, `orientation` = 0.615097 WHERE `guid` = 2582210;
UPDATE `creature` SET `position_x` = 3369.743652, `position_y` = -2817.262695, `position_z` = 112.517204, `orientation` = 3.252464 WHERE `guid` = 2582210;
REPLACE INTO `gameobject` VALUES ( 5017844, 2009808, 0, 3289.03, -2402.33, 104.909, 3.79831, 0, 0, 0.946572, -0.322491, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017844';
DELETE FROM game_event_gameobject WHERE guid = '5017844';
DELETE FROM gameobject_battleground WHERE guid = '5017844';
REPLACE INTO `creature` VALUES (2582353,61540,0,0,0,0,3200.41,-2531.85,102.167,3.14764,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582353;
DELETE FROM creature_addon WHERE guid=2582353;
DELETE FROM creature_movement WHERE id=2582353;
DELETE FROM game_event_creature WHERE guid=2582353;
DELETE FROM game_event_creature_data WHERE guid=2582353;
DELETE FROM creature_battleground WHERE guid=2582353;
REPLACE INTO `creature` VALUES (2582354,51540,0,0,0,0,3200.47,-2531.52,102.168,3.13585,120,120,0,100,100,0,0,0);
