
-- Changes by WOJI
DELETE FROM creature WHERE guid=2561054;
DELETE FROM creature_addon WHERE guid=2561054;
DELETE FROM creature_movement WHERE id=2561054;
DELETE FROM game_event_creature WHERE guid=2561054;
DELETE FROM game_event_creature_data WHERE guid=2561054;
DELETE FROM creature_battleground WHERE guid=2561054;
REPLACE INTO `gameobject` VALUES ( 5017918, 3000224, 0, -9004.05, 882.773, 29.6209, 0.914442, 0, 0, 0.441456, 0.897283, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '42894';
DELETE FROM game_event_gameobject WHERE guid = '42894';
DELETE FROM gameobject_battleground WHERE guid = '42894';
DELETE FROM gameobject WHERE guid = '42893';
DELETE FROM game_event_gameobject WHERE guid = '42893';
DELETE FROM gameobject_battleground WHERE guid = '42893';
DELETE FROM gameobject WHERE guid = '5017918';
DELETE FROM game_event_gameobject WHERE guid = '5017918';
DELETE FROM gameobject_battleground WHERE guid = '5017918';
DELETE FROM creature WHERE guid=2558294;
DELETE FROM creature_addon WHERE guid=2558294;
DELETE FROM creature_movement WHERE id=2558294;
DELETE FROM game_event_creature WHERE guid=2558294;
DELETE FROM game_event_creature_data WHERE guid=2558294;
DELETE FROM creature_battleground WHERE guid=2558294;
REPLACE INTO `creature` VALUES (2582684,61716,0,0,0,0,4254.28,-2037.75,13.1304,1.15982,120,120,0,100,100,0,0,0);
