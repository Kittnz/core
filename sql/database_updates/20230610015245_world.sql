
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
REPLACE INTO `creature` VALUES (2576258,61464,0,0,0,0,-4762.86,385.434,309.999,0.367334,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576250,61465,0,0,0,0,-4750.98,418.873,309.999,4.10917,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576250,61465,0,0,0,0,-4750.98,418.873,309.999,4.10917,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576250,61465,0,0,0,0,-4750.98,418.873,309.999,4.10917,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576254,61465,0,0,0,0,-4792.61,364.377,309.999,4.21737,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576260,61464,0,0,0,0,-4778.71,322.524,309.999,4.13588,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576255,61465,0,0,0,0,-4837.16,327.009,309.999,2.38032,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576256,61465,0,0,0,0,-4875.79,347.018,309.999,1.48732,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576257,61464,0,0,0,0,-4850.12,354.432,309.999,2.18946,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576252,61465,0,0,0,0,-4883.98,410.794,309.999,3.47203,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576454,61465,0,0,0,0,-4878.11,430.367,309.999,5.00491,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576253,61465,0,0,0,0,-4851.48,420.254,309.999,0.276245,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576251,61465,0,0,0,0,-4829.81,454.575,309.999,2.64022,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576259,61464,0,0,0,0,-4835.83,432.018,309.999,2.96779,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576268,61464,0,0,0,0,-4671.99,279.793,310.16,0.114496,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576262,61465,0,0,0,0,-4728.69,308.384,310.158,5.71923,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576275,61464,0,0,0,0,-4741.87,255.814,310.16,1.49042,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576267,61465,0,0,0,0,-4672.52,320.328,310.16,4.22213,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576269,61464,0,0,0,0,-4624.4,269.651,310.16,3.79409,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576270,61465,0,0,0,0,-4640.5,232.801,310.16,4.61248,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576271,61465,0,0,0,0,-4679.68,210.106,298.996,2.99062,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576272,61464,0,0,0,0,-4652.48,224.978,298.996,1.83609,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576276,61465,0,0,0,0,-4712.43,213.5,310.16,0.082194,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576274,61465,0,0,0,0,-4744.68,181.892,298.996,4.81824,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576273,61464,0,0,0,0,-4711.03,189.577,298.996,1.52585,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576456,61465,0,0,0,0,-4782.13,192.843,310.16,3.75569,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576265,61465,0,0,0,0,-4759.55,211.636,310.16,2.8808,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576264,61464,0,0,0,0,-4817.12,193.268,310.158,0.443705,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576266,61464,0,0,0,0,-4770.18,159.69,310.16,3.75717,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576264,61464,0,0,0,0,-4817.12,193.268,310.158,0.443705,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576263,61465,0,0,0,0,-4811.36,228.055,310.158,3.14627,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577406,61556,0,0,0,1,5694.79,-3057.43,1563.12,0.65344,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577406,61556,0,0,0,1,5694.79,-3057.43,1563.12,0.65344,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577407,61360,0,0,0,1,5128.03,-1366.01,1350.71,5.34112,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577407;
DELETE FROM creature_addon WHERE guid=2577407;
DELETE FROM creature_movement WHERE id=2577407;
DELETE FROM game_event_creature WHERE guid=2577407;
DELETE FROM game_event_creature_data WHERE guid=2577407;
DELETE FROM creature_battleground WHERE guid=2577407;
REPLACE INTO `creature` VALUES (2577083,61358,0,0,0,1,5308.21,-1591.13,1373.76,5.42263,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577086,61357,0,0,0,1,5334.29,-1659.74,1373.01,4.88228,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577087,61358,0,0,0,1,5373.25,-1690.65,1373.19,3.95394,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577090,61358,0,0,0,1,5445.7,-1703.35,1373.06,6.20017,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577091,61356,0,0,0,1,5525.7,-1641.1,1386.09,2.70594,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577093,61359,0,0,0,1,5508.8,-1600,1395.22,3.65627,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577092,61357,0,0,0,1,5498.49,-1614.12,1393.17,1.56868,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577094,61356,0,0,0,1,5458.18,-1586.05,1400.84,5.41288,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577099,61358,0,0,0,1,5465.47,-1545.83,1401.24,4.30547,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577104,61356,0,0,0,1,5408.13,-1565.85,1400.07,1.26275,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577101,61357,0,0,0,1,5403.96,-1605.29,1400.38,2.27521,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577105,61358,0,0,0,1,5361.54,-1597.14,1400.48,0.131777,120,120,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576769,61336,0,0,0,1,4560.23,-1977.47,1151.47,5.66291,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576768,61333,0,0,0,1,4582.14,-1876.1,1153.98,3.97509,300,300,5,100,100,1,0,0);
