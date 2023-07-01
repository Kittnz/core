
-- Changes by SHANG
DELETE FROM creature WHERE guid=2562919;
DELETE FROM creature_addon WHERE guid=2562919;
DELETE FROM creature_movement WHERE id=2562919;
DELETE FROM game_event_creature WHERE guid=2562919;
DELETE FROM game_event_creature_data WHERE guid=2562919;
DELETE FROM creature_battleground WHERE guid=2562919;
REPLACE INTO `creature` VALUES (2577923,65117,0,0,0,269,-1415.42,6952.17,-14.5516,4.99863,120,120,0,100,100,0,0,0);
