
-- Changes by VOJI
REPLACE INTO `creature` VALUES (2577923,61550,0,0,0,0,-1422.66,1945.8,54.1587,3.36825,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577923;
DELETE FROM creature_addon WHERE guid=2577923;
DELETE FROM creature_movement WHERE id=2577923;
DELETE FROM game_event_creature WHERE guid=2577923;
DELETE FROM game_event_creature_data WHERE guid=2577923;
DELETE FROM creature_battleground WHERE guid=2577923;
