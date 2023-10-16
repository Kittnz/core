
-- Changes by TORTA
REPLACE INTO `gameobject` VALUES ( 5016904, 1000031, 1, 16226, 16251.1, 12.6866, 5.11038, 0, 0, 0.553367, -0.832938, 300, 300, 100, 1, 0, 0);

-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2579223,80236,0,0,0,0,3883.1,-2488.3,28.7268,5.07987,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 3882.559326, `position_y` = -2491.491211, `position_z` = 28.725462, `orientation` = 5.752954 WHERE `guid` = 2579223;
DELETE FROM creature WHERE guid=2579223;
DELETE FROM creature_addon WHERE guid=2579223;
DELETE FROM creature_movement WHERE id=2579223;
DELETE FROM game_event_creature WHERE guid=2579223;
DELETE FROM game_event_creature_data WHERE guid=2579223;
DELETE FROM creature_battleground WHERE guid=2579223;
