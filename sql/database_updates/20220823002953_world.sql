
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2571882,60893,0,0,0,1,-1565.98,-5001.03,2.72362,0.865461,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2571883,60894,0,0,0,1,-1568.19,-4998.65,2.9743,0.822264,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2571883;
DELETE FROM creature_addon WHERE guid=2571883;
DELETE FROM creature_movement WHERE id=2571883;
DELETE FROM game_event_creature WHERE guid=2571883;
DELETE FROM game_event_creature_data WHERE guid=2571883;
DELETE FROM creature_battleground WHERE guid=2571883;
DELETE FROM creature WHERE guid=2571882;
DELETE FROM creature_addon WHERE guid=2571882;
DELETE FROM creature_movement WHERE id=2571882;
DELETE FROM game_event_creature WHERE guid=2571882;
DELETE FROM game_event_creature_data WHERE guid=2571882;
DELETE FROM creature_battleground WHERE guid=2571882;
