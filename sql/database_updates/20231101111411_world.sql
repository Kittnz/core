
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
REPLACE INTO `creature` VALUES (2579289,7559,0,0,0,1,879.859,-5019.09,6.19654,5.02701,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579290,7559,0,0,0,1,880.683,-5018.75,6.14091,4.87935,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579291,7559,0,0,0,1,881.656,-5018.58,6.05047,4.87935,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579292,7559,0,0,0,1,882.954,-5018.37,5.94608,4.87935,120,120,0,100,100,0,0,0);

-- Changes by TORTA
DELETE FROM creature WHERE guid=2579289;
DELETE FROM creature_addon WHERE guid=2579289;
DELETE FROM creature_movement WHERE id=2579289;
DELETE FROM game_event_creature WHERE guid=2579289;
DELETE FROM game_event_creature_data WHERE guid=2579289;
DELETE FROM creature_battleground WHERE guid=2579289;
DELETE FROM creature WHERE guid=2579290;
DELETE FROM creature_addon WHERE guid=2579290;
DELETE FROM creature_movement WHERE id=2579290;
DELETE FROM game_event_creature WHERE guid=2579290;
DELETE FROM game_event_creature_data WHERE guid=2579290;
DELETE FROM creature_battleground WHERE guid=2579290;
DELETE FROM creature WHERE guid=2579291;
DELETE FROM creature_addon WHERE guid=2579291;
DELETE FROM creature_movement WHERE id=2579291;
DELETE FROM game_event_creature WHERE guid=2579291;
DELETE FROM game_event_creature_data WHERE guid=2579291;
DELETE FROM creature_battleground WHERE guid=2579291;
DELETE FROM creature WHERE guid=2579292;
DELETE FROM creature_addon WHERE guid=2579292;
DELETE FROM creature_movement WHERE id=2579292;
DELETE FROM game_event_creature WHERE guid=2579292;
DELETE FROM game_event_creature_data WHERE guid=2579292;
DELETE FROM creature_battleground WHERE guid=2579292;
