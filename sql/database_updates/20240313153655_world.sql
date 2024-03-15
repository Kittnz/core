
-- Changes by WOJI
REPLACE INTO `creature` VALUES (2582886,14399,0,0,0,532,-11269.5,-1950.17,240.47,2.30231,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2582886;
DELETE FROM creature_addon WHERE guid=2582886;
DELETE FROM creature_movement WHERE id=2582886;
DELETE FROM game_event_creature WHERE guid=2582886;
DELETE FROM game_event_creature_data WHERE guid=2582886;
DELETE FROM creature_battleground WHERE guid=2582886;

-- Changes by REN
REPLACE INTO `gameobject` VALUES ( 5018437, 2005741, 0, 1484.98, 178.099, -62.1909, 3.92556, 0, 0, 0.924153, -0.382023, 300, 300, 100, 1, 0, 0);
