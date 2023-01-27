
-- Changes by JOE
DELETE FROM gameobject WHERE guid = '1270223';
DELETE FROM game_event_gameobject WHERE guid = '1270223';
DELETE FROM gameobject_battleground WHERE guid = '1270223';

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2574439,61193,0,0,0,0,-8119.08,-1553.18,133.52,4.6653,120,120,0,100,100,0,0,0);
