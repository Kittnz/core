
-- Changes by VOJI
DELETE FROM creature WHERE guid=2566374;
DELETE FROM creature_addon WHERE guid=2566374;
DELETE FROM creature_movement WHERE id=2566374;
DELETE FROM game_event_creature WHERE guid=2566374;
DELETE FROM game_event_creature_data WHERE guid=2566374;
DELETE FROM creature_battleground WHERE guid=2566374;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2579051,91833,0,0,0,451,15708.1,16574.5,48.6117,2.283,120,120,5,100,100,1,0,0);
