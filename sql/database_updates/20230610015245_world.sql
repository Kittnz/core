
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577396,61548,0,0,0,0,-696.849,1498.4,8.69619,2.72235,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577396;
DELETE FROM creature_addon WHERE guid=2577396;
DELETE FROM creature_movement WHERE id=2577396;
DELETE FROM game_event_creature WHERE guid=2577396;
DELETE FROM game_event_creature_data WHERE guid=2577396;
DELETE FROM creature_battleground WHERE guid=2577396;
REPLACE INTO `creature` VALUES (2577397,61548,0,0,0,0,-1295.88,1160.3,127.615,2.82031,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577350;
DELETE FROM creature_addon WHERE guid=2577350;
DELETE FROM creature_movement WHERE id=2577350;
DELETE FROM game_event_creature WHERE guid=2577350;
DELETE FROM game_event_creature_data WHERE guid=2577350;
DELETE FROM creature_battleground WHERE guid=2577350;
REPLACE INTO `creature` VALUES (2577398,61549,0,0,0,0,-2166.05,979.948,2.22062,4.3991,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577399,61450,0,0,0,0,-2122.38,982.97,4.01984,0.628618,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577399;
DELETE FROM creature_addon WHERE guid=2577399;
DELETE FROM creature_movement WHERE id=2577399;
DELETE FROM game_event_creature WHERE guid=2577399;
DELETE FROM game_event_creature_data WHERE guid=2577399;
DELETE FROM creature_battleground WHERE guid=2577399;
REPLACE INTO `creature` VALUES (2577400,61550,0,0,0,0,-2120.1,984.527,3.76976,0.598614,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577400;
DELETE FROM creature_addon WHERE guid=2577400;
DELETE FROM creature_movement WHERE id=2577400;
DELETE FROM game_event_creature WHERE guid=2577400;
DELETE FROM game_event_creature_data WHERE guid=2577400;
DELETE FROM creature_battleground WHERE guid=2577400;
REPLACE INTO `creature` VALUES (2577401,61551,0,0,0,0,-2122.08,983.18,4.01356,0.596567,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577401;
DELETE FROM creature_addon WHERE guid=2577401;
DELETE FROM creature_movement WHERE id=2577401;
DELETE FROM game_event_creature WHERE guid=2577401;
DELETE FROM game_event_creature_data WHERE guid=2577401;
DELETE FROM creature_battleground WHERE guid=2577401;
REPLACE INTO `creature` VALUES (2577402,61552,0,0,0,0,-2122.77,982.709,4.02819,0.591256,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577402;
DELETE FROM creature_addon WHERE guid=2577402;
DELETE FROM creature_movement WHERE id=2577402;
DELETE FROM game_event_creature WHERE guid=2577402;
DELETE FROM game_event_creature_data WHERE guid=2577402;
DELETE FROM creature_battleground WHERE guid=2577402;
REPLACE INTO `creature` VALUES (2577403,61554,0,0,0,0,-2122.77,982.709,4.02819,0.591256,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577403;
DELETE FROM creature_addon WHERE guid=2577403;
DELETE FROM creature_movement WHERE id=2577403;
DELETE FROM game_event_creature WHERE guid=2577403;
DELETE FROM game_event_creature_data WHERE guid=2577403;
DELETE FROM creature_battleground WHERE guid=2577403;
REPLACE INTO `creature` VALUES (2577404,61551,0,0,0,0,-2122.77,982.709,4.02819,0.591256,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577404;
DELETE FROM creature_addon WHERE guid=2577404;
DELETE FROM creature_movement WHERE id=2577404;
DELETE FROM game_event_creature WHERE guid=2577404;
DELETE FROM game_event_creature_data WHERE guid=2577404;
DELETE FROM creature_battleground WHERE guid=2577404;
REPLACE INTO `creature` VALUES (2577405,61555,0,0,0,0,-2124.17,981.762,4.00753,0.599565,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577405;
DELETE FROM creature_addon WHERE guid=2577405;
DELETE FROM creature_movement WHERE id=2577405;
DELETE FROM game_event_creature WHERE guid=2577405;
DELETE FROM game_event_creature_data WHERE guid=2577405;
DELETE FROM creature_battleground WHERE guid=2577405;
REPLACE INTO `gameobject` VALUES ( 5015511, 2020032, 0, -2124.17, 981.762, 4.00753, 0.599565, 0, 0, 0.295312, 0.955401, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015511';
DELETE FROM game_event_gameobject WHERE guid = '5015511';
DELETE FROM gameobject_battleground WHERE guid = '5015511';
DELETE FROM creature WHERE guid=2565745;
DELETE FROM creature_addon WHERE guid=2565745;
DELETE FROM creature_movement WHERE id=2565745;
DELETE FROM game_event_creature WHERE guid=2565745;
DELETE FROM game_event_creature_data WHERE guid=2565745;
DELETE FROM creature_battleground WHERE guid=2565745;
DELETE FROM creature WHERE guid=2567788;
DELETE FROM creature_addon WHERE guid=2567788;
DELETE FROM creature_movement WHERE id=2567788;
DELETE FROM game_event_creature WHERE guid=2567788;
DELETE FROM game_event_creature_data WHERE guid=2567788;
DELETE FROM creature_battleground WHERE guid=2567788;
UPDATE `creature` SET `position_x` = -905.022583, `position_y` = 1614.038940, `position_z` = 49.272125, `orientation` = 2.709420 WHERE `guid` = 2577341;
UPDATE `creature` SET `position_x` = -899.042969, `position_y` = 1646.837036, `position_z` = 49.407784, `orientation` = 4.577096 WHERE `guid` = 2577336;
UPDATE `creature_addon` SET `emote_state`=0 WHERE `guid`=2577336;
REPLACE INTO `creature` VALUES (2575361,61243,0,0,0,0,-1959.4,1230.04,54.2364,4.25697,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575360,61243,0,0,0,0,-1993.2,1250.97,66.1792,6.19846,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575359,61244,0,0,0,0,-2009.4,1290.83,53.5528,5.41464,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575363,61243,0,0,0,0,-1931.29,1190.27,54.6779,1.84501,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575369,61244,0,0,0,0,-1896.99,1167.96,54.484,5.97554,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575346,61243,0,0,0,0,-1858.85,1258.4,51.5745,4.51382,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575348,61244,0,0,0,0,-1838.27,1305.74,52.0111,0.972457,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575347,61243,0,0,0,0,-1860.24,1294.59,52.4589,1.68717,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575349,61243,0,0,0,0,-1824.14,1322.72,52.505,3.39856,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575350,61243,0,0,0,0,-1852.14,1341.67,54.4645,1.52774,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575383,61244,0,0,0,0,-1831.82,1378.26,61.0509,3.24906,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575351,61244,0,0,0,0,-1873.24,1377.91,53.7115,3.1543,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575353,61244,0,0,0,0,-1915.46,1389.5,58.9896,0.436038,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575355,61243,0,0,0,0,-1930.03,1362.7,55.6816,4.03941,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575358,61244,0,0,0,0,-1964.69,1324.79,54.7362,3.59331,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575370,61246,0,0,0,0,-1846.71,1219.22,52.8949,0.422767,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575371,61246,0,0,0,0,-1822.03,1227.42,49.0297,5.33858,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575372,61245,0,0,0,0,-1811,1251.71,50.1598,1.33304,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575381,61245,0,0,0,0,-1763.57,1260.87,52.8397,2.97575,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575373,61246,0,0,0,0,-1768.58,1236.63,47.9958,6.02737,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575382,61245,0,0,0,0,-1729.24,1252.82,46.8083,0.164018,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575373,61246,0,0,0,0,-1768.58,1236.63,47.9958,6.02737,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575374,61246,0,0,0,0,-1769.84,1208.32,43.177,1.70611,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575375,61245,0,0,0,0,-1781.99,1181.74,44.7817,1.40888,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575374,61246,0,0,0,0,-1769.84,1208.32,43.177,1.70611,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575377,61246,0,0,0,0,-1742.07,1210.56,42.6465,0.142817,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575378,61246,0,0,0,0,-1717.06,1201.83,40.7082,2.86187,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575380,61245,0,0,0,0,-1719.27,1182.41,43.6218,0.340738,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2575373,61246,0,0,0,0,-1768.58,1236.63,47.9958,6.02737,120,120,5,100,100,1,0,0);
