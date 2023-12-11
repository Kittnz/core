
-- Changes by TORTA
REPLACE INTO `creature` VALUES (2582199,7,0,0,0,451,15708.1,16574.5,48.6117,2.283,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582199;
DELETE FROM creature_addon WHERE guid=2582199;
DELETE FROM creature_movement WHERE id=2582199;
DELETE FROM game_event_creature WHERE guid=2582199;
DELETE FROM game_event_creature_data WHERE guid=2582199;
DELETE FROM creature_battleground WHERE guid=2582199;
