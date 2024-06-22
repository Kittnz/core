
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583605,62025,0,0,0,1,-1649.66,-4285.17,16.9131,3.76912,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583605;
DELETE FROM creature_addon WHERE guid=2583605;
DELETE FROM creature_movement WHERE id=2583605;
DELETE FROM game_event_creature WHERE guid=2583605;
DELETE FROM game_event_creature_data WHERE guid=2583605;
DELETE FROM creature_battleground WHERE guid=2583605;
