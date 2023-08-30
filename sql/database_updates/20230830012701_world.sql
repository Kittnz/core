
-- Changes by DRAGUNOVI
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578770, 1);
REPLACE INTO `creature` VALUES (2578770,61643,0,0,0,0,-1342.07,1183.02,126.912,4.81836,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578770, 0);
REPLACE INTO `creature` VALUES (2578770,61643,0,0,0,0,-1342.07,1183.02,126.912,4.81836,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2561853,10814,0,0,0,229,33.5571,-294.378,110.948,6.21954,7200,7200,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 29.022751, `position_y` = -294.337555, `position_z` = 110.943710, `orientation` = 3.047149 WHERE `guid` = 2561853;
UPDATE `creature` SET `position_x` = 30.198141, `position_y` = -294.283508, `position_z` = 110.944817, `orientation` = 3.212090 WHERE `guid` = 2561853;

-- Changes by VOJI
UPDATE `creature_addon` SET `stand_state`=1 WHERE `guid`=2578712;
REPLACE INTO `creature` VALUES (2578778,61643,0,0,0,0,-2121.88,1308.63,54.5252,2.80872,120,120,5,100,100,1,0,0);
UPDATE `creature` SET `position_x` = -2122.528320, `position_y` = 1309.356567, `position_z` = 55.827312, `orientation` = 5.938528 WHERE `guid` = 2578778;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578778, 1);
REPLACE INTO `creature` VALUES (2578778,61643,0,0,0,0,-2122.53,1309.36,55.8273,5.93853,300,300,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578778;
DELETE FROM creature_addon WHERE guid=2578778;
DELETE FROM creature_movement WHERE id=2578778;
DELETE FROM game_event_creature WHERE guid=2578778;
DELETE FROM game_event_creature_data WHERE guid=2578778;
DELETE FROM creature_battleground WHERE guid=2578778;
REPLACE INTO `creature` VALUES (2578779,61643,0,0,0,0,-2126.43,1319.98,41.206,5.88748,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578779,61643,0,0,0,0,-2126.43,1319.98,41.206,5.88748,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578779, 1);
REPLACE INTO `creature` VALUES (2578780,61643,0,0,0,0,-2162.55,1343.16,49.2237,0.42111,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578780,61643,0,0,0,0,-2162.55,1343.16,49.2237,0.42111,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578780, 1);
REPLACE INTO `creature` VALUES (2578781,61643,0,0,0,0,-2216.39,1679.49,42.083,1.28505,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578781,61643,0,0,0,0,-2216.39,1679.49,42.083,1.28505,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578781, 1);
REPLACE INTO `creature` VALUES (2578782,61643,0,0,0,0,-2226.08,1900.61,35.174,2.75374,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578782,61643,0,0,0,0,-2226.08,1900.61,35.174,2.75374,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578782, 1);
UPDATE `creature` SET `position_x` = -2226.180908, `position_y` = 1899.495483, `position_z` = 34.957611, `orientation` = 2.262870 WHERE `guid` = 2578782;
REPLACE INTO `creature` VALUES (2578782,61643,0,0,0,0,-2226.18,1899.5,34.9576,2.26287,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578782, 1);
REPLACE INTO `creature` VALUES (2578783,61643,0,0,0,0,-2213.77,2031.5,43.1237,4.91202,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578783,61643,0,0,0,0,-2213.77,2031.5,43.1237,4.91202,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578783, 1);
REPLACE INTO `creature` VALUES (2578784,61643,0,0,0,0,-2097.19,2322.76,37.5231,2.4066,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578785,61643,0,0,0,0,-2188.54,2409.94,34.1575,2.96423,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578785,61643,0,0,0,0,-2188.54,2409.94,34.1575,2.96423,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578785, 1);
REPLACE INTO `creature` VALUES (2578786,61643,0,0,0,0,-1947.75,2461.91,56.7091,0.360627,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578786,61643,0,0,0,0,-1947.75,2461.91,56.7091,0.360627,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578786, 1);
REPLACE INTO `creature` VALUES (2578787,61643,0,0,0,0,-1875.88,2522.43,33.9419,1.38557,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578787,61643,0,0,0,0,-1875.88,2522.43,33.9419,1.38557,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578787, 1);
REPLACE INTO `creature` VALUES (2578788,61643,0,0,0,0,-1881.83,2521.62,33.9246,2.12385,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578788,61643,0,0,0,0,-1881.83,2521.62,33.9246,2.12385,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578788, 1);
REPLACE INTO `creature` VALUES (2578789,61643,0,0,0,0,-1883.41,2487.62,33.9556,4.69603,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578789,61643,0,0,0,0,-1883.41,2487.62,33.9556,4.69603,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578789, 1);
REPLACE INTO `creature` VALUES (2578790,61643,0,0,0,0,-1179.99,2739.21,59.0291,0.748608,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578790,61643,0,0,0,0,-1179.99,2739.21,59.0291,0.748608,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578790, 1);
REPLACE INTO `creature` VALUES (2578791,61643,0,0,0,0,-1201.28,2713.7,46.309,3.85879,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578791,61643,0,0,0,0,-1201.28,2713.7,46.309,3.85879,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578791, 1);
REPLACE INTO `creature` VALUES (2578792,61643,0,0,0,0,-1211.45,2734.42,46.309,1.373,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578792,61643,0,0,0,0,-1211.45,2734.42,46.309,1.373,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578792, 1);
REPLACE INTO `creature` VALUES (2578793,61643,0,0,0,0,-1442.27,2572.7,100.404,2.32726,120,120,5,100,100,1,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578793, 1);
REPLACE INTO `creature` VALUES (2578793,61643,0,0,0,0,-1442.27,2572.7,100.404,2.32726,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578793, 1);
REPLACE INTO `creature` VALUES (2578794,61643,0,0,0,0,-1454.88,2513.77,124.579,1.74999,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578794,61643,0,0,0,0,-1454.88,2513.77,124.579,1.74999,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578794, 1);
REPLACE INTO `creature` VALUES (2578795,61643,0,0,0,0,-1469.71,1971.49,66.3359,0.901756,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578795,61643,0,0,0,0,-1469.71,1971.49,66.3359,0.901756,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2577362, 1);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578795, 1);
REPLACE INTO `creature` VALUES (2578796,61643,0,0,0,0,-1437.71,1901,63.8019,4.62062,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578796,61643,0,0,0,0,-1437.71,1901,63.8019,4.62062,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578796, 1);
REPLACE INTO `creature` VALUES (2578797,61643,0,0,0,0,-1542.18,2117.97,64.0682,2.19688,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578797,61643,0,0,0,0,-1542.18,2117.97,64.0682,2.19688,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578797, 1);
REPLACE INTO `creature` VALUES (2578798,61643,0,0,0,0,-1234.63,2083.62,119.269,3.80537,120,120,5,100,100,1,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578798, 1);
REPLACE INTO `creature` VALUES (2578798,61643,0,0,0,0,-1234.63,2083.62,119.269,3.80537,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578798, 1);
REPLACE INTO `creature` VALUES (2578799,61643,0,0,0,0,-1216.89,2105.92,120.882,4.92456,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578799,61643,0,0,0,0,-1216.89,2105.92,120.882,4.92456,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578799, 1);
REPLACE INTO `creature` VALUES (2578800,61643,0,0,0,0,-1013.12,1983.83,123.509,4.95598,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578800,61643,0,0,0,0,-1013.12,1983.83,123.509,4.95598,300,300,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -1012.690430, `position_y` = 1982.734497, `position_z` = 123.872833, `orientation` = 4.826393 WHERE `guid` = 2578800;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578800, 1);
REPLACE INTO `creature` VALUES (2578801,61643,0,0,0,0,-1050.24,2222.11,191.902,5.2348,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578801,61643,0,0,0,0,-1050.24,2222.11,191.902,5.2348,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578801, 1);
REPLACE INTO `creature` VALUES (2578802,61643,0,0,0,0,-1093.6,2216.42,202.278,5.70211,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578802,61643,0,0,0,0,-1093.6,2216.42,202.278,5.70211,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578802, 1);
REPLACE INTO `creature` VALUES (2578803,61643,0,0,0,0,-1089.73,2220.7,203.502,5.64713,120,120,5,100,100,1,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578803, 1);
REPLACE INTO `creature` VALUES (2578803,61643,0,0,0,0,-1089.73,2220.7,203.502,5.64713,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578803,61643,0,0,0,0,-1089.73,2220.7,203.502,5.64713,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578803, 1);
REPLACE INTO `creature` VALUES (2578804,61643,0,0,0,0,-1090.66,2220.11,203.281,5.28978,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578804,61643,0,0,0,0,-1090.66,2220.11,203.281,5.28978,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578804, 1);
REPLACE INTO `creature` VALUES (2578805,61643,0,0,0,815,-1120.31,2264.83,185.221,4.06095,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578805,61643,0,0,0,815,-1120.31,2264.83,185.221,4.06095,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578805, 1);
REPLACE INTO `creature` VALUES (2578806,61643,0,0,0,815,-1133.96,2233.49,186.724,1.20603,120,120,5,100,100,1,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578806, 1);
REPLACE INTO `creature` VALUES (2578806,61643,0,0,0,815,-1133.96,2233.49,186.724,1.20603,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578806, 1);
REPLACE INTO `creature` VALUES (2578807,61643,0,0,0,815,-1140.76,2237.51,185.776,1.54768,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578807,61643,0,0,0,815,-1140.76,2237.51,185.776,1.54768,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578807, 1);
REPLACE INTO `creature` VALUES (2578808,61643,0,0,0,815,-1174.98,2258.91,207.674,5.89093,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578808,61643,0,0,0,815,-1174.98,2258.91,207.674,5.89093,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578808, 1);
UPDATE `creature` SET `position_x` = -1173.867920, `position_y` = 2258.949707, `position_z` = 208.244934, `orientation` = 6.048008 WHERE `guid` = 2578808;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578808, 1);
REPLACE INTO `creature` VALUES (2578809,61643,0,0,0,815,-1150.38,2280.91,204.678,3.39336,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578809,61643,0,0,0,815,-1150.38,2280.91,204.678,3.39336,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578809, 1);
REPLACE INTO `creature` VALUES (2578810,61643,0,0,0,815,-1178.66,2302.67,194.073,0.247842,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578810,61643,0,0,0,815,-1178.66,2302.67,194.073,0.247842,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578810, 1);
REPLACE INTO `creature` VALUES (2578811,61643,0,0,0,815,-1168.29,2355.58,190.554,3.11455,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578811,61643,0,0,0,815,-1168.29,2355.58,190.554,3.11455,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578811,61643,0,0,0,815,-1168.29,2355.58,190.554,3.11455,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578811, 1);
REPLACE INTO `creature` VALUES (2578812,61643,0,0,0,815,-1159.52,2390.54,185.567,3.5151,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578812,61643,0,0,0,815,-1159.52,2390.54,185.567,3.5151,300,300,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -1160.470337, `position_y` = 2390.503418, `position_z` = 186.741837, `orientation` = 3.511176 WHERE `guid` = 2578812;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578812, 1);
REPLACE INTO `creature` VALUES (2578813,61643,0,0,0,815,-1098.63,2365.01,188.7,2.78076,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578813,61643,0,0,0,815,-1098.63,2365.01,188.7,2.78076,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578813, 1);
REPLACE INTO `creature` VALUES (2578814,61643,0,0,0,815,-1113.73,2332.1,186.755,0.467769,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578814,61643,0,0,0,815,-1113.73,2332.1,186.755,0.467769,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578814, 1);
REPLACE INTO `creature` VALUES (2578815,61643,0,0,0,815,-1232.56,2369.42,184.419,4.866,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578815,61643,0,0,0,815,-1232.56,2369.42,184.419,4.866,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578815, 1);
REPLACE INTO `creature` VALUES (2578816,61643,0,0,0,815,-1287.79,2335.03,185.009,2.99282,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578816,61643,0,0,0,815,-1287.79,2335.03,185.009,2.99282,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578816, 1);
REPLACE INTO `creature` VALUES (2578817,61643,0,0,0,815,-1293.74,2290.48,184.285,2.81217,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578817,61643,0,0,0,815,-1293.74,2290.48,184.285,2.81217,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578817, 1);
REPLACE INTO `creature` VALUES (2578818,61643,0,0,0,815,-1282.25,2245.78,199.131,4.51256,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578818,61643,0,0,0,815,-1282.25,2245.78,199.131,4.51256,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578818, 1);
REPLACE INTO `creature` VALUES (2578819,61643,0,0,0,815,-1280.75,2245.75,199.12,4.65785,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578819,61643,0,0,0,815,-1280.75,2245.75,199.12,4.65785,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578819, 1);
REPLACE INTO `creature` VALUES (2578820,61643,0,0,0,815,-1300.77,2210.69,183.395,1.76758,120,120,5,100,100,1,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578820, 1);
REPLACE INTO `creature` VALUES (2578820,61643,0,0,0,815,-1300.77,2210.69,183.395,1.76758,300,300,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578820, 1);
