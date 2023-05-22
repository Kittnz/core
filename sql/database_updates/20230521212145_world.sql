
-- Changes by DRAGUNOVI
DELETE FROM creature WHERE guid=2577011;
DELETE FROM creature_addon WHERE guid=2577011;
DELETE FROM creature_movement WHERE id=2577011;
DELETE FROM game_event_creature WHERE guid=2577011;
DELETE FROM game_event_creature_data WHERE guid=2577011;
DELETE FROM creature_battleground WHERE guid=2577011;
REPLACE INTO `creature` VALUES (2577212,61533,0,0,0,1,5164.11,-1347.01,1357.58,4.96539,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 5175.625488, `position_y` = -1393.601318, `position_z` = 1355.679932, `orientation` = 0.775270 WHERE `guid` = 2577212;
REPLACE INTO `creature` VALUES (2577212,61533,0,0,0,1,5175.63,-1393.6,1355.68,0.77527,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577212;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,1, 5175.625488,-1393.601318,1355.679932, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,2, 5181.490723,-1458.329712,1349.840210, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,3, 5142.272461,-1452.146484,1346.249023, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,4, 5113.335449,-1463.651001,1343.621216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,5, 5105.263184,-1373.206177,1348.120117, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,6, 5166.043457,-1335.825928,1359.046387, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,7, 5211.960938,-1256.336792,1371.696899, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577212,8, 5161.615723,-1338.726074,1358.527710, 100);
REPLACE INTO `creature` VALUES (2577212,61533,0,0,0,1,5175.63,-1393.6,1355.68,0.77527,300,300,0,100,100,2,0,0);

-- Changes by TORTA
REPLACE INTO `gameobject` VALUES ( 5015492, 2005047, 1, 2910.17, -3248.18, 161.334, 4.30707, 0, 0, 0.834959, -0.550313, 300, 300, 100, 1, 0, 0);
