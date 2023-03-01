
-- Changes by TINYFIN
REPLACE INTO `creature` VALUES (2574579,50514,0,0,0,0,-10617.7,290.595,32.8007,6.1999,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574579;
DELETE FROM creature_addon WHERE guid=2574579;
DELETE FROM creature_movement WHERE id=2574579;
DELETE FROM game_event_creature WHERE guid=2574579;
DELETE FROM game_event_creature_data WHERE guid=2574579;
DELETE FROM creature_battleground WHERE guid=2574579;
