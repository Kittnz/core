
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
