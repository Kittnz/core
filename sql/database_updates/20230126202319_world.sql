
-- Changes by JOE
DELETE FROM gameobject WHERE guid = '1270223';
DELETE FROM game_event_gameobject WHERE guid = '1270223';
DELETE FROM gameobject_battleground WHERE guid = '1270223';

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2574439,61193,0,0,0,0,-8119.08,-1553.18,133.52,4.6653,120,120,0,100,100,0,0,0);

-- Changes by SHANG
DELETE FROM creature WHERE guid=2574439;
DELETE FROM creature_addon WHERE guid=2574439;
DELETE FROM creature_movement WHERE id=2574439;
DELETE FROM game_event_creature WHERE guid=2574439;
DELETE FROM game_event_creature_data WHERE guid=2574439;
DELETE FROM creature_battleground WHERE guid=2574439;
DELETE FROM creature WHERE guid=3274;
DELETE FROM creature_addon WHERE guid=3274;
DELETE FROM creature_movement WHERE id=3274;
DELETE FROM game_event_creature WHERE guid=3274;
DELETE FROM game_event_creature_data WHERE guid=3274;
DELETE FROM creature_battleground WHERE guid=3274;
REPLACE INTO `creature` VALUES (2574440,7026,0,0,0,0,-8114.45,-1556.86,133.54,4.16351,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2574440,7026,0,0,0,0,-8114.45,-1556.86,133.54,4.16351,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2574441,60654,0,0,0,807,2911.84,3078.4,25.1274,2.96707,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574441;
DELETE FROM creature_addon WHERE guid=2574441;
DELETE FROM creature_movement WHERE id=2574441;
DELETE FROM game_event_creature WHERE guid=2574441;
DELETE FROM game_event_creature_data WHERE guid=2574441;
DELETE FROM creature_battleground WHERE guid=2574441;
REPLACE INTO `creature` VALUES (2574442,16141,0,0,0,807,2910.51,3077.31,25.0471,1.33972,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2574442;
DELETE FROM creature_addon WHERE guid=2574442;
DELETE FROM creature_movement WHERE id=2574442;
DELETE FROM game_event_creature WHERE guid=2574442;
DELETE FROM game_event_creature_data WHERE guid=2574442;
DELETE FROM creature_battleground WHERE guid=2574442;
REPLACE INTO `creature` VALUES (2574443,16141,0,0,0,807,2909.94,3081.29,25.0363,2.59558,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2574443;
DELETE FROM creature_addon WHERE guid=2574443;
DELETE FROM creature_movement WHERE id=2574443;
DELETE FROM game_event_creature WHERE guid=2574443;
DELETE FROM game_event_creature_data WHERE guid=2574443;
DELETE FROM creature_battleground WHERE guid=2574443;
REPLACE INTO `creature` VALUES (2574444,60746,0,0,0,0,-8032.67,-1237.02,133.769,1.35748,120,120,0,100,100,0,0,0);
