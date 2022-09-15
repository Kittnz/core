
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2572379,60917,0,0,0,0,-8169.88,1220.17,8.21004,3.22876,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572379;
DELETE FROM creature_addon WHERE guid=2572379;
DELETE FROM creature_movement WHERE id=2572379;
DELETE FROM game_event_creature WHERE guid=2572379;
DELETE FROM game_event_creature_data WHERE guid=2572379;
DELETE FROM creature_battleground WHERE guid=2572379;
