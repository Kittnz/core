
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573764,61048,0,0,0,0,-8813.6,608.686,95.7406,2.4288,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2573764;
DELETE FROM creature_addon WHERE guid=2573764;
DELETE FROM creature_movement WHERE id=2573764;
DELETE FROM game_event_creature WHERE guid=2573764;
DELETE FROM game_event_creature_data WHERE guid=2573764;
DELETE FROM creature_battleground WHERE guid=2573764;
REPLACE INTO `gameobject` VALUES ( 5012006, 2010948, 1, -9006.18, -6692.23, 21.6073, 5.69333, 0, 0, 0.290671, -0.956823, 300, 300, 100, 1, 0, 0);
