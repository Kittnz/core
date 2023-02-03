
-- Changes by JOE
DELETE FROM gameobject WHERE guid = '40024';
DELETE FROM game_event_gameobject WHERE guid = '40024';
DELETE FROM gameobject_battleground WHERE guid = '40024';
DELETE FROM gameobject WHERE guid = '40023';
DELETE FROM game_event_gameobject WHERE guid = '40023';
DELETE FROM gameobject_battleground WHERE guid = '40023';
REPLACE INTO `creature` VALUES (2574448,61027,0,0,0,1,1839.95,2077.24,69.8282,3.4524,120,120,0,100,100,0,0,0);
