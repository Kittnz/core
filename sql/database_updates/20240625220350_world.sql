
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583620,62035,0,0,0,451,15673,16556.1,48.6117,6.17699,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583621,62036,0,0,0,451,15673,16554.2,48.6117,6.25946,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583622,62037,0,0,0,451,15672.8,16552.1,48.6117,6.22902,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583623,62038,0,0,0,451,15672.5,16550.1,48.6117,6.17796,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583624,62039,0,0,0,451,15672.4,16548.1,48.6117,0.0125806,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583625,62040,0,0,0,451,15672.2,16546.3,48.6117,0.0227903,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583626,62041,0,0,0,451,15672.2,16544.3,48.6117,6.20859,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583627,62042,0,0,0,451,15670.4,16556.3,48.6117,6.24393,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583628,62043,0,0,0,451,15670.3,16554.2,48.6117,6.24786,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583629,62044,0,0,0,451,15670.5,16552.2,48.6117,6.20859,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583630,62045,0,0,0,451,15670.5,16550.2,48.6117,6.24786,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583631,62047,0,0,0,451,15670.3,16548.2,48.6117,6.25571,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583632,62048,0,0,0,451,15670.2,16546.2,48.6117,6.25178,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583633,62049,0,0,0,451,15669.9,16544.3,48.6117,6.25178,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583634,62050,0,0,0,451,15667.8,16544.4,48.6117,6.23214,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583635,62051,0,0,0,451,15667.9,16546.3,48.6117,6.20858,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583636,62042,0,0,0,451,15667.9,16548.3,48.6117,6.25571,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583636;
DELETE FROM creature_addon WHERE guid=2583636;
DELETE FROM creature_movement WHERE id=2583636;
DELETE FROM game_event_creature WHERE guid=2583636;
DELETE FROM game_event_creature_data WHERE guid=2583636;
DELETE FROM creature_battleground WHERE guid=2583636;
REPLACE INTO `creature` VALUES (2583637,62052,0,0,0,451,15667.9,16548.3,48.6117,6.25571,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583638,62053,0,0,0,451,15668,16550.3,48.6117,0.0117893,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583639,62054,0,0,0,451,15667.9,16552.2,48.6117,6.21403,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583640,62054,0,0,0,451,15668,16554.2,48.6117,6.20617,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583640;
DELETE FROM creature_addon WHERE guid=2583640;
DELETE FROM creature_movement WHERE id=2583640;
DELETE FROM game_event_creature WHERE guid=2583640;
DELETE FROM game_event_creature_data WHERE guid=2583640;
DELETE FROM creature_battleground WHERE guid=2583640;
REPLACE INTO `creature` VALUES (2583641,62055,0,0,0,451,15668,16554.2,48.6117,6.20617,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583642,62056,0,0,0,451,15668,16556.3,48.6117,6.25329,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583643,62057,0,0,0,451,15665.9,16544.5,48.6117,6.18339,120,120,0,100,100,0,0,0);

-- Changes by ZORIZAR
REPLACE INTO `gameobject` VALUES ( 5019636, 2010582, 1, -7106.24, -5033.57, 2.396, 6.16299, 0, 0, 0.0600638, -0.998195, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5019637, 2010592, 1, -7100.69, -5026.12, 3.47265, 5.91794, 0, 0, 0.181609, -0.983371, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5019638, 1000002, 1, -7092.97, -5034.29, 1.54542, 2.65069, 0, 0, 0.970028, 0.242993, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5019638';
DELETE FROM game_event_gameobject WHERE guid = '5019638';
DELETE FROM gameobject_battleground WHERE guid = '5019638';
DELETE FROM gameobject WHERE guid = '5019636';
DELETE FROM game_event_gameobject WHERE guid = '5019636';
DELETE FROM gameobject_battleground WHERE guid = '5019636';
DELETE FROM gameobject WHERE guid = '5019637';
DELETE FROM game_event_gameobject WHERE guid = '5019637';
DELETE FROM gameobject_battleground WHERE guid = '5019637';
REPLACE INTO `gameobject` VALUES ( 5019639, 2004697, 1, -7088.87, -5038.67, 0.912499, 2.81405, 0, 0, 0.986619, 0.16304, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5019639';
DELETE FROM game_event_gameobject WHERE guid = '5019639';
DELETE FROM gameobject_battleground WHERE guid = '5019639';
