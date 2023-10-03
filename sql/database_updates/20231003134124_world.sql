
-- Changes by VOJI
REPLACE INTO `creature` VALUES (2579086,90983,0,0,0,1,-943.926,-3749.53,6.91225,0.43115,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2579086;
DELETE FROM creature_addon WHERE guid=2579086;
DELETE FROM creature_movement WHERE id=2579086;
DELETE FROM game_event_creature WHERE guid=2579086;
DELETE FROM game_event_creature_data WHERE guid=2579086;
DELETE FROM creature_battleground WHERE guid=2579086;
