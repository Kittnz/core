
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583605,62025,0,0,0,1,-1649.66,-4285.17,16.9131,3.76912,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583605;
DELETE FROM creature_addon WHERE guid=2583605;
DELETE FROM creature_movement WHERE id=2583605;
DELETE FROM game_event_creature WHERE guid=2583605;
DELETE FROM game_event_creature_data WHERE guid=2583605;
DELETE FROM creature_battleground WHERE guid=2583605;

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2583606,620,0,0,0,0,-10651.9,-1164.99,26.0337,3.93728,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583607,2673,0,0,0,0,-10651.2,-1168.34,26.3693,1.76173,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583607;
DELETE FROM creature_addon WHERE guid=2583607;
DELETE FROM creature_movement WHERE id=2583607;
DELETE FROM game_event_creature WHERE guid=2583607;
DELETE FROM game_event_creature_data WHERE guid=2583607;
DELETE FROM creature_battleground WHERE guid=2583607;
REPLACE INTO `creature` VALUES (2583608,50517,0,0,0,0,-10673.2,-1178.92,24.7554,2.93277,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583608;
DELETE FROM creature_addon WHERE guid=2583608;
DELETE FROM creature_movement WHERE id=2583608;
DELETE FROM game_event_creature WHERE guid=2583608;
DELETE FROM game_event_creature_data WHERE guid=2583608;
DELETE FROM creature_battleground WHERE guid=2583608;

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583555,62014,0,0,0,0,2050.4,2426.86,130.784,3.80753,120,120,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583555;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583555,1, 2050.399902,2426.860107,130.783997, 100);
