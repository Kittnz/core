
-- Changes by SHANG
DELETE FROM creature WHERE guid=2574100;
DELETE FROM creature_addon WHERE guid=2574100;
DELETE FROM creature_movement WHERE id=2574100;
DELETE FROM game_event_creature WHERE guid=2574100;
DELETE FROM game_event_creature_data WHERE guid=2574100;
DELETE FROM creature_battleground WHERE guid=2574100;
REPLACE INTO `gameobject` VALUES ( 5013752, 179395, 532, -11124.5, -1937.78, 49.3346, 3.36991, 0, 0, 0.993491, -0.113911, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2575745,61319,0,0,0,532,-11125.2,-1936.38,49.3216,5.28706,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2575745, 28);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2575745, 173);
DELETE FROM creature WHERE guid=2574103;
DELETE FROM creature_addon WHERE guid=2574103;
DELETE FROM creature_movement WHERE id=2574103;
DELETE FROM game_event_creature WHERE guid=2574103;
DELETE FROM game_event_creature_data WHERE guid=2574103;
DELETE FROM creature_battleground WHERE guid=2574103;
