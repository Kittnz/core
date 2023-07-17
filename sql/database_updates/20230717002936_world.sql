
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2578330,61203,0,0,0,532,-11098.8,-1914.43,74.4086,1.81123,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578331,61203,0,0,0,532,-11097.6,-1912.28,74.4124,2.54715,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578331;
DELETE FROM creature_addon WHERE guid=2578331;
DELETE FROM creature_movement WHERE id=2578331;
DELETE FROM game_event_creature WHERE guid=2578331;
DELETE FROM game_event_creature_data WHERE guid=2578331;
DELETE FROM creature_battleground WHERE guid=2578331;
DELETE FROM creature WHERE guid=2578330;
DELETE FROM creature_addon WHERE guid=2578330;
DELETE FROM creature_movement WHERE id=2578330;
DELETE FROM game_event_creature WHERE guid=2578330;
DELETE FROM game_event_creature_data WHERE guid=2578330;
DELETE FROM creature_battleground WHERE guid=2578330;
