
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

-- Changes by VOJI
REPLACE INTO `creature` VALUES (2577408,892,0,0,0,0,-11036.8,-233.53,14.6491,4.47772,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577408,892,0,0,0,0,-11036.8,-233.53,14.6491,4.47772,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577409,892,0,0,0,0,-11056.2,-184.967,20.4743,6.11135,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577410,892,0,0,0,0,-11056.2,-184.967,20.4743,6.11135,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2577409;
DELETE FROM creature_addon WHERE guid=2577409;
DELETE FROM creature_movement WHERE id=2577409;
DELETE FROM game_event_creature WHERE guid=2577409;
DELETE FROM game_event_creature_data WHERE guid=2577409;
DELETE FROM creature_battleground WHERE guid=2577409;
REPLACE INTO `creature` VALUES (2577410,892,0,0,0,0,-11056.2,-184.967,20.4743,6.11135,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577411,892,0,0,0,0,-11044.2,-134.922,20.1771,5.95034,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577411,892,0,0,0,0,-11044.2,-134.922,20.1771,5.95034,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577412,892,0,0,0,0,-10977.2,-226.219,16.8792,5.32595,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577412,892,0,0,0,0,-10977.2,-226.219,16.8792,5.32595,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577413,892,0,0,0,0,-11029.1,-45.9967,14.9002,5.3181,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577413,892,0,0,0,0,-11029.1,-45.9967,14.9002,5.3181,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577414,892,0,0,0,0,-11181.9,-149.654,7.30983,0.998412,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577414,892,0,0,0,0,-11181.9,-149.654,7.30983,0.998412,300,300,3,100,100,1,0,0);

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2577415,61548,0,0,0,0,-2316.89,805.866,66.9058,4.63231,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577415;
DELETE FROM creature_addon WHERE guid=2577415;
DELETE FROM creature_movement WHERE id=2577415;
DELETE FROM game_event_creature WHERE guid=2577415;
DELETE FROM game_event_creature_data WHERE guid=2577415;
DELETE FROM creature_battleground WHERE guid=2577415;
REPLACE INTO `creature` VALUES (2577416,61549,0,0,0,0,-2316.9,805.748,66.9058,4.63231,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577416;
DELETE FROM creature_addon WHERE guid=2577416;
DELETE FROM creature_movement WHERE id=2577416;
DELETE FROM game_event_creature WHERE guid=2577416;
DELETE FROM game_event_creature_data WHERE guid=2577416;
DELETE FROM creature_battleground WHERE guid=2577416;
REPLACE INTO `creature` VALUES (2577417,61257,0,0,0,0,-2316.89,805.959,66.9058,4.63231,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577417;
DELETE FROM creature_addon WHERE guid=2577417;
DELETE FROM creature_movement WHERE id=2577417;
DELETE FROM game_event_creature WHERE guid=2577417;
DELETE FROM game_event_creature_data WHERE guid=2577417;
DELETE FROM creature_battleground WHERE guid=2577417;
REPLACE INTO `creature` VALUES (2577418,61550,0,0,0,0,-2316.89,805.959,66.9058,4.63231,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577419,61551,0,0,0,0,-2309.15,801.864,67.0705,5.96711,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577419;
DELETE FROM creature_addon WHERE guid=2577419;
DELETE FROM creature_movement WHERE id=2577419;
DELETE FROM game_event_creature WHERE guid=2577419;
DELETE FROM game_event_creature_data WHERE guid=2577419;
DELETE FROM creature_battleground WHERE guid=2577419;
REPLACE INTO `creature` VALUES (2577420,61551,0,0,0,0,-1761.07,1498.67,58.2539,4.84239,120,120,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 1.200000 where entry = 61551;
UPDATE `creature_template` set `scale` = 1.300000 where entry = 61551;
REPLACE INTO `creature` VALUES (2577420,61551,0,0,0,0,-1761.07,1498.67,58.2539,4.84239,300,300,10,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577421,61552,0,0,0,0,-1823.74,1381.07,60.961,5.14049,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577421;
DELETE FROM creature_addon WHERE guid=2577421;
DELETE FROM creature_movement WHERE id=2577421;
DELETE FROM game_event_creature WHERE guid=2577421;
DELETE FROM game_event_creature_data WHERE guid=2577421;
DELETE FROM creature_battleground WHERE guid=2577421;
REPLACE INTO `creature` VALUES (2577422,61553,0,0,0,0,-1734.9,1263.67,50.7456,3.42436,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577423,61554,0,0,0,0,-1736.99,1263.06,50.6598,3.42436,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577424,61555,0,0,0,0,-1736.99,1263.06,50.6598,3.42436,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577422;
DELETE FROM creature_addon WHERE guid=2577422;
DELETE FROM creature_movement WHERE id=2577422;
DELETE FROM game_event_creature WHERE guid=2577422;
DELETE FROM game_event_creature_data WHERE guid=2577422;
DELETE FROM creature_battleground WHERE guid=2577422;
DELETE FROM creature WHERE guid=2577423;
DELETE FROM creature_addon WHERE guid=2577423;
DELETE FROM creature_movement WHERE id=2577423;
DELETE FROM game_event_creature WHERE guid=2577423;
DELETE FROM game_event_creature_data WHERE guid=2577423;
DELETE FROM creature_battleground WHERE guid=2577423;
UPDATE `creature` SET `position_x` = -1734.238037, `position_y` = 1263.429688, `position_z` = 50.695374, `orientation` = 3.462351 WHERE `guid` = 2577424;
DELETE FROM creature WHERE guid=2577424;
DELETE FROM creature_addon WHERE guid=2577424;
DELETE FROM creature_movement WHERE id=2577424;
DELETE FROM game_event_creature WHERE guid=2577424;
DELETE FROM game_event_creature_data WHERE guid=2577424;
DELETE FROM creature_battleground WHERE guid=2577424;
REPLACE INTO `creature` VALUES (2577425,61555,0,0,0,0,-1734.24,1263.43,50.6954,3.46235,120,120,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 1.200000 where entry = 61555;
UPDATE `creature_template` set `scale` = 1.400000 where entry = 61555;
REPLACE INTO `creature` VALUES (2577426,61553,0,0,0,0,-1582.33,2144.99,54.6329,5.82429,120,120,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 1.200000 where entry = 61553;
REPLACE INTO `creature` VALUES (2577426,61553,0,0,0,0,-1582.33,2144.99,54.6329,5.82429,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577426;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577426,1, -1582.334351,2144.993652,54.632900, 100);
DELETE FROM creature WHERE guid=2577426;
DELETE FROM creature_addon WHERE guid=2577426;
DELETE FROM creature_movement WHERE id=2577426;
DELETE FROM game_event_creature WHERE guid=2577426;
DELETE FROM game_event_creature_data WHERE guid=2577426;
DELETE FROM creature_battleground WHERE guid=2577426;
REPLACE INTO `creature` VALUES (2577427,61553,0,0,0,0,-1582.37,2145.09,54.618,5.3765,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577427,61553,0,0,0,0,-1582.37,2145.09,54.618,5.3765,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577427;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577427,1, -1582.370728,2145.088623,54.617954, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577427,2, -1600.692627,2127.622070,54.799221, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577427,3, -1578.075684,2099.380371,55.611275, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577427,4, -1554.548462,2071.463867,53.490303, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577427,5, -1524.829224,2095.407227,54.104336, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577427,6, -1529.653442,2113.599365,53.355759, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577427,7, -1537.123291,2119.534424,53.809887, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577427,8, -1562.234375,2153.270752,54.047066, 100);
REPLACE INTO `creature` VALUES (2577427,61553,0,0,0,0,-1582.37,2145.09,54.618,5.3765,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2577428,61554,0,0,0,0,-1663.81,2661.68,54.9948,4.14814,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577428;
DELETE FROM creature_addon WHERE guid=2577428;
DELETE FROM creature_movement WHERE id=2577428;
DELETE FROM game_event_creature WHERE guid=2577428;
DELETE FROM game_event_creature_data WHERE guid=2577428;
DELETE FROM creature_battleground WHERE guid=2577428;
REPLACE INTO `creature` VALUES (2577429,61554,0,0,0,0,-1609.36,2720.3,19.4141,4.23145,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577429;
DELETE FROM creature_addon WHERE guid=2577429;
DELETE FROM creature_movement WHERE id=2577429;
DELETE FROM game_event_creature WHERE guid=2577429;
DELETE FROM game_event_creature_data WHERE guid=2577429;
DELETE FROM creature_battleground WHERE guid=2577429;
REPLACE INTO `creature` VALUES (2577430,61554,0,0,0,0,-913.759,1458.63,73.4582,1.43226,120,120,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 1.200000 where entry = 61554;
REPLACE INTO `creature` VALUES (2577431,61556,0,0,0,0,-902.4,1457.45,62.1727,0.979812,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577431;
DELETE FROM creature_addon WHERE guid=2577431;
DELETE FROM creature_movement WHERE id=2577431;
DELETE FROM game_event_creature WHERE guid=2577431;
DELETE FROM game_event_creature_data WHERE guid=2577431;
DELETE FROM creature_battleground WHERE guid=2577431;
REPLACE INTO `creature` VALUES (2577432,61550,0,0,0,0,-899.93,1456.77,60.9649,3.73156,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577433,61549,0,0,0,0,-899.93,1456.77,60.9649,3.73156,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577433;
DELETE FROM creature_addon WHERE guid=2577433;
DELETE FROM creature_movement WHERE id=2577433;
DELETE FROM game_event_creature WHERE guid=2577433;
DELETE FROM game_event_creature_data WHERE guid=2577433;
DELETE FROM creature_battleground WHERE guid=2577433;
DELETE FROM creature WHERE guid=2577432;
DELETE FROM creature_addon WHERE guid=2577432;
DELETE FROM creature_movement WHERE id=2577432;
DELETE FROM game_event_creature WHERE guid=2577432;
DELETE FROM game_event_creature_data WHERE guid=2577432;
DELETE FROM creature_battleground WHERE guid=2577432;
REPLACE INTO `creature` VALUES (2577434,61551,0,0,0,0,-898.894,1455.22,60.8062,3.73156,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577434;
DELETE FROM creature_addon WHERE guid=2577434;
DELETE FROM creature_movement WHERE id=2577434;
DELETE FROM game_event_creature WHERE guid=2577434;
DELETE FROM game_event_creature_data WHERE guid=2577434;
DELETE FROM creature_battleground WHERE guid=2577434;
REPLACE INTO `creature` VALUES (2577435,61552,0,0,0,0,-898.894,1455.22,60.8062,3.73156,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577435;
DELETE FROM creature_addon WHERE guid=2577435;
DELETE FROM creature_movement WHERE id=2577435;
DELETE FROM game_event_creature WHERE guid=2577435;
DELETE FROM game_event_creature_data WHERE guid=2577435;
DELETE FROM creature_battleground WHERE guid=2577435;
REPLACE INTO `creature` VALUES (2577436,61553,0,0,0,0,-2264.18,1579.59,40.09,0.13187,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577436;
DELETE FROM creature_addon WHERE guid=2577436;
DELETE FROM creature_movement WHERE id=2577436;
DELETE FROM game_event_creature WHERE guid=2577436;
DELETE FROM game_event_creature_data WHERE guid=2577436;
DELETE FROM creature_battleground WHERE guid=2577436;
REPLACE INTO `creature` VALUES (2577437,61552,0,0,0,0,-2264.18,1579.59,40.09,0.13187,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577437,61552,0,0,0,0,-2264.18,1579.59,40.09,0.13187,300,300,5,100,100,1,0,0);
UPDATE `creature_template` set `scale` = 1.200000 where entry = 61552;

-- Changes by VOJI
REPLACE INTO `gameobject` VALUES ( 5015512, 1000014, 0, 2230.38, 2487.32, 132.032, 3.17789, 0, 0, 0.999835, -0.0181458, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015512';
DELETE FROM game_event_gameobject WHERE guid = '5015512';
DELETE FROM gameobject_battleground WHERE guid = '5015512';
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2227.18, 2487.5, 132.032, 3.55095, 0, 0, 0.979126, -0.203253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2227.18, 2487.5, 132.032, 0.130537, 0, 0, 0.0652222, 0.997871, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2227.18, 2486.9, 132.032, 0.130537, 0, 0, 0.0652222, 0.997871, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2227.18, 2487.1, 132.032, 0.130537, 0, 0, 0.0652222, 0.997871, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2226.98, 2487.1, 132.032, 0.130537, 0, 0, 0.0652222, 0.997871, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2227.18, 2487.1, 132.032, 0.130537, 0, 0, 0.0652222, 0.997871, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
DELETE FROM gameobject WHERE guid = '4012468';
DELETE FROM game_event_gameobject WHERE guid = '4012468';
DELETE FROM gameobject_battleground WHERE guid = '4012468';

-- Changes by VOJI
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2227.38, 2487.1, 132.032, 0.130537, 0, 0, 0.0652222, 0.997871, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2227.18, 2487.1, 132.032, 0.130537, 0, 0, 0.0652222, 0.997871, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015513, 1000092, 0, 2226.98, 2487.1, 132.032, 0.130537, 0, 0, 0.0652222, 0.997871, 300, 300, 100, 1, 0, 0);
