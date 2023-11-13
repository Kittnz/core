
-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5016914, 2020062, 0, 335.493, -2089.37, 121.839, 0.184529, 0, 0, 0.0921339, 0.995747, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016914';
DELETE FROM game_event_gameobject WHERE guid = '5016914';
DELETE FROM gameobject_battleground WHERE guid = '5016914';
REPLACE INTO `gameobject` VALUES ( 5016915, 2020062, 0, 326.911, -2245.5, 137.595, 3.00489, 0, 0, 0.997665, 0.0682972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2580114,61758,0,0,0,0,201.862,-1959.28,140.199,5.59357,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580115,61757,0,0,0,0,215.608,-1951.79,140.199,4.41312,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580116,61757,0,0,0,0,216.476,-1961.87,140.199,4.99038,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2580116;
DELETE FROM creature_addon WHERE guid=2580116;
DELETE FROM creature_movement WHERE id=2580116;
DELETE FROM game_event_creature WHERE guid=2580116;
DELETE FROM game_event_creature_data WHERE guid=2580116;
DELETE FROM creature_battleground WHERE guid=2580116;
REPLACE INTO `creature` VALUES (2580117,61758,0,0,0,0,216.476,-1961.87,140.199,4.99038,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2580117;
DELETE FROM creature_addon WHERE guid=2580117;
DELETE FROM creature_movement WHERE id=2580117;
DELETE FROM game_event_creature WHERE guid=2580117;
DELETE FROM game_event_creature_data WHERE guid=2580117;
DELETE FROM creature_battleground WHERE guid=2580117;
REPLACE INTO `creature` VALUES (2580118,61756,0,0,0,0,216.434,-1961.72,140.199,4.99038,120,120,0,100,100,0,0,0);

-- Changes by DRAGU
DELETE FROM creature WHERE guid=2579359;
DELETE FROM creature_addon WHERE guid=2579359;
DELETE FROM creature_movement WHERE id=2579359;
DELETE FROM game_event_creature WHERE guid=2579359;
DELETE FROM game_event_creature_data WHERE guid=2579359;
DELETE FROM creature_battleground WHERE guid=2579359;
DELETE FROM creature WHERE guid=2579357;
DELETE FROM creature_addon WHERE guid=2579357;
DELETE FROM creature_movement WHERE id=2579357;
DELETE FROM game_event_creature WHERE guid=2579357;
DELETE FROM game_event_creature_data WHERE guid=2579357;
DELETE FROM creature_battleground WHERE guid=2579357;
DELETE FROM creature WHERE guid=2579356;
DELETE FROM creature_addon WHERE guid=2579356;
DELETE FROM creature_movement WHERE id=2579356;
DELETE FROM game_event_creature WHERE guid=2579356;
DELETE FROM game_event_creature_data WHERE guid=2579356;
DELETE FROM creature_battleground WHERE guid=2579356;
DELETE FROM creature WHERE guid=2579358;
DELETE FROM creature_addon WHERE guid=2579358;
DELETE FROM creature_movement WHERE id=2579358;
DELETE FROM game_event_creature WHERE guid=2579358;
DELETE FROM game_event_creature_data WHERE guid=2579358;
DELETE FROM creature_battleground WHERE guid=2579358;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2580119,80112,0,0,0,1,-300.019,-7208.12,5.01747,2.82994,120,120,5,100,100,1,0,0);
