
-- Changes by SHANG
DELETE FROM creature WHERE guid=2575745;
DELETE FROM creature_addon WHERE guid=2575745;
DELETE FROM creature_movement WHERE id=2575745;
DELETE FROM game_event_creature WHERE guid=2575745;
DELETE FROM game_event_creature_data WHERE guid=2575745;
DELETE FROM creature_battleground WHERE guid=2575745;
REPLACE INTO `creature` VALUES (2576995,61319,0,0,0,532,-11125.1,-1936.38,49.3187,5.1188,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2576995, 233);
