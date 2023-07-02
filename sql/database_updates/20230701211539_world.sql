
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577923,60748,0,0,0,1,3095.27,-3388.17,143.576,1.89591,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577923;
DELETE FROM creature_addon WHERE guid=2577923;
DELETE FROM creature_movement WHERE id=2577923;
DELETE FROM game_event_creature WHERE guid=2577923;
DELETE FROM game_event_creature_data WHERE guid=2577923;
DELETE FROM creature_battleground WHERE guid=2577923;
