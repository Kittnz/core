
-- Changes by SHANG
UPDATE `creature` SET `position_x` = 4298.164062, `position_y` = -2822.463135, `position_z` = 1091.191895, `orientation` = 2.156186 WHERE `guid` = 2578189;
REPLACE INTO `creature` VALUES (2578338,61362,0,0,0,1,5188.9,-3345.04,1639.16,0.852152,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578338;
DELETE FROM creature_addon WHERE guid=2578338;
DELETE FROM creature_movement WHERE id=2578338;
DELETE FROM game_event_creature WHERE guid=2578338;
DELETE FROM game_event_creature_data WHERE guid=2578338;
DELETE FROM creature_battleground WHERE guid=2578338;
REPLACE INTO `creature` VALUES (2578339,61360,0,0,0,1,5188.9,-3345.04,1639.16,0.852152,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578339;
DELETE FROM creature_addon WHERE guid=2578339;
DELETE FROM creature_movement WHERE id=2578339;
DELETE FROM game_event_creature WHERE guid=2578339;
DELETE FROM game_event_creature_data WHERE guid=2578339;
DELETE FROM creature_battleground WHERE guid=2578339;

-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5015966, 2045, 0, -1019.43, 2673.37, -2.27602, 3.81127, 0, 0, 0.944463, -0.328618, 300, 300, 100, 1, 0, 0);
