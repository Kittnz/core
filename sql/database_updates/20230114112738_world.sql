
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573974,10184,0,0,0,807,3300.63,3030.71,24.229,1.80624,120,120,0,100,100,0,1,200);
DELETE FROM creature WHERE guid=2573974;
DELETE FROM creature_addon WHERE guid=2573974;
DELETE FROM creature_movement WHERE id=2573974;
DELETE FROM game_event_creature WHERE guid=2573974;
DELETE FROM game_event_creature_data WHERE guid=2573974;
DELETE FROM creature_battleground WHERE guid=2573974;
