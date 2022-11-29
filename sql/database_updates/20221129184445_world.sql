
-- Changes by WILLBERG
DELETE FROM creature WHERE guid=2573794;
DELETE FROM creature_addon WHERE guid=2573794;
DELETE FROM creature_movement WHERE id=2573794;
DELETE FROM game_event_creature WHERE guid=2573794;
DELETE FROM game_event_creature_data WHERE guid=2573794;
DELETE FROM creature_battleground WHERE guid=2573794;

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5012029, 2010967, 230, 901.501, -122.323, -49.7412, 4.32629, 0, 0, 0.829632, -0.55831, 300, 300, 100, 1, 0, 0);
