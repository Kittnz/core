
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
