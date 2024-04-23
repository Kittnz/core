
-- Changes by LUKE
REPLACE INTO `creature` VALUES (2583252,61552,0,0,0,0,-2268.03,1573.76,40.564,2.08616,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583252;
DELETE FROM creature_addon WHERE guid=2583252;
DELETE FROM creature_movement WHERE id=2583252;
DELETE FROM game_event_creature WHERE guid=2583252;
DELETE FROM game_event_creature_data WHERE guid=2583252;
DELETE FROM creature_battleground WHERE guid=2583252;
