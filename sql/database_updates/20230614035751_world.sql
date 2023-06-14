
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577476,10987,0,0,0,0,-1168.27,1504.88,70.9742,2.50661,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577476;
DELETE FROM creature_addon WHERE guid=2577476;
DELETE FROM creature_movement WHERE id=2577476;
DELETE FROM game_event_creature WHERE guid=2577476;
DELETE FROM game_event_creature_data WHERE guid=2577476;
DELETE FROM creature_battleground WHERE guid=2577476;
