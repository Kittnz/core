
-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2573797,14444,0,0,0,451,16893.7,15651.9,67.9052,6.06234,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573798,14444,0,0,0,451,16891.9,15652.7,68.073,5.1929,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2573797;
DELETE FROM creature_addon WHERE guid=2573797;
DELETE FROM creature_movement WHERE id=2573797;
DELETE FROM game_event_creature WHERE guid=2573797;
DELETE FROM game_event_creature_data WHERE guid=2573797;
DELETE FROM creature_battleground WHERE guid=2573797;
DELETE FROM creature WHERE guid=2573798;
DELETE FROM creature_addon WHERE guid=2573798;
DELETE FROM creature_movement WHERE id=2573798;
DELETE FROM game_event_creature WHERE guid=2573798;
DELETE FROM game_event_creature_data WHERE guid=2573798;
DELETE FROM creature_battleground WHERE guid=2573798;
