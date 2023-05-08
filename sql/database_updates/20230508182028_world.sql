
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2576466,61483,0,0,0,0,-4810.14,639.711,378.472,3.28001,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576466;
DELETE FROM creature_addon WHERE guid=2576466;
DELETE FROM creature_movement WHERE id=2576466;
DELETE FROM game_event_creature WHERE guid=2576466;
DELETE FROM game_event_creature_data WHERE guid=2576466;
DELETE FROM creature_battleground WHERE guid=2576466;
