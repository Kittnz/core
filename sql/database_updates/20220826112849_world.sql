
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2572135,60939,0,0,0,0,-7232.1,-3616.76,324.097,0.875296,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572135;
DELETE FROM creature_addon WHERE guid=2572135;
DELETE FROM creature_movement WHERE id=2572135;
DELETE FROM game_event_creature WHERE guid=2572135;
DELETE FROM game_event_creature_data WHERE guid=2572135;
DELETE FROM creature_battleground WHERE guid=2572135;
