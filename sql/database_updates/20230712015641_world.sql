
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2578269,61601,0,0,0,1,-4381.41,-743.307,-29.6292,0.465135,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578269;
DELETE FROM creature_addon WHERE guid=2578269;
DELETE FROM creature_movement WHERE id=2578269;
DELETE FROM game_event_creature WHERE guid=2578269;
DELETE FROM game_event_creature_data WHERE guid=2578269;
DELETE FROM creature_battleground WHERE guid=2578269;
REPLACE INTO `creature` VALUES (2578270,12236,0,0,0,1,-4380.79,-740.412,-29.976,4.43768,120,120,5,100,100,1,1,200);
DELETE FROM creature WHERE guid=2578270;
DELETE FROM creature_addon WHERE guid=2578270;
DELETE FROM creature_movement WHERE id=2578270;
DELETE FROM game_event_creature WHERE guid=2578270;
DELETE FROM game_event_creature_data WHERE guid=2578270;
DELETE FROM creature_battleground WHERE guid=2578270;
