
-- Changes by VOLCA
REPLACE INTO `creature` VALUES (2577387,14368,0,0,0,429,296.276,-17.0893,-3.09262,1.64384,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577388,14368,0,0,0,1,16212.1,16227.5,4.94251,1.13483,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2577388;
DELETE FROM creature_addon WHERE guid=2577388;
DELETE FROM creature_movement WHERE id=2577388;
DELETE FROM game_event_creature WHERE guid=2577388;
DELETE FROM game_event_creature_data WHERE guid=2577388;
DELETE FROM creature_battleground WHERE guid=2577388;
