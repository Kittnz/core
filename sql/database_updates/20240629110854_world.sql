
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583662,65133,0,0,0,451,15648.8,16562.3,48.612,0.140435,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583663,11699,0,0,0,451,15648.6,16560.3,48.612,0.101166,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583663;
DELETE FROM creature_addon WHERE guid=2583663;
DELETE FROM creature_movement WHERE id=2583663;
DELETE FROM game_event_creature WHERE guid=2583663;
DELETE FROM game_event_creature_data WHERE guid=2583663;
DELETE FROM creature_battleground WHERE guid=2583663;
DELETE FROM creature WHERE guid=2583662;
DELETE FROM creature_addon WHERE guid=2583662;
DELETE FROM creature_movement WHERE id=2583662;
DELETE FROM game_event_creature WHERE guid=2583662;
DELETE FROM game_event_creature_data WHERE guid=2583662;
DELETE FROM creature_battleground WHERE guid=2583662;
