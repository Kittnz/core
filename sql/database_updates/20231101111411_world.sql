
-- Changes by WILLBERG
REPLACE INTO `creature` VALUES (2579287,7559,0,0,0,1,912.582,-5047.36,5.59913,3.59335,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579288,7559,0,0,0,1,911.118,-5048.46,5.72337,0.807149,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2579288;
DELETE FROM creature_addon WHERE guid=2579288;
DELETE FROM creature_movement WHERE id=2579288;
DELETE FROM game_event_creature WHERE guid=2579288;
DELETE FROM game_event_creature_data WHERE guid=2579288;
DELETE FROM creature_battleground WHERE guid=2579288;
DELETE FROM creature WHERE guid=2579287;
DELETE FROM creature_addon WHERE guid=2579287;
DELETE FROM creature_movement WHERE id=2579287;
DELETE FROM game_event_creature WHERE guid=2579287;
DELETE FROM game_event_creature_data WHERE guid=2579287;
DELETE FROM creature_battleground WHERE guid=2579287;
