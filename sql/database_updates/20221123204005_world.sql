
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573764,61048,0,0,0,0,-8813.6,608.686,95.7406,2.4288,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2573764;
DELETE FROM creature_addon WHERE guid=2573764;
DELETE FROM creature_movement WHERE id=2573764;
DELETE FROM game_event_creature WHERE guid=2573764;
DELETE FROM game_event_creature_data WHERE guid=2573764;
DELETE FROM creature_battleground WHERE guid=2573764;
