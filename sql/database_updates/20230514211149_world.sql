
-- Changes by TAMMO
DELETE FROM creature WHERE guid=2576362;
DELETE FROM creature_addon WHERE guid=2576362;
DELETE FROM creature_movement WHERE id=2576362;
DELETE FROM game_event_creature WHERE guid=2576362;
DELETE FROM game_event_creature_data WHERE guid=2576362;
DELETE FROM creature_battleground WHERE guid=2576362;
REPLACE INTO `creature` VALUES (2576420,61480,0,0,0,1,-2310.94,338.043,184.925,4.66013,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2576420;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,1, -2310.939941,338.042999,184.925003, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,2, -2322.757568,338.463470,184.929825, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,3, -2342.063232,348.524261,184.862259, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,4, -2372.971436,386.168274,184.807419, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,5, -2364.052734,388.053680,184.831558, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,6, -2336.409668,343.601471,184.877258, 100);
REPLACE INTO `creature` VALUES (2576420,61480,0,0,0,1,-2310.94,338.043,184.925,4.66013,300,300,4,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2576411,61480,0,0,0,1,-2271.94,369.048,183.731,5.2429,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2576411;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576411,1, -2271.939941,369.048004,183.731003, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576411,2, -2298.126221,349.287201,184.966019, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576411,3, -2286.826416,368.439667,183.985275, 100);
REPLACE INTO `creature` VALUES (2576411,61480,0,0,0,1,-2271.94,369.048,183.731,5.2429,300,300,4,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2105.66,836.157,165.819,0.0657732,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2105.66,836.157,165.819,0.0657732,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577123;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,1, -2105.664551,836.156860,165.819244, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,2, -2077.113770,839.761047,160.426987, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,3, -2058.528809,844.545471,161.871033, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,4, -2040.376099,846.717468,154.298447, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,5, -2024.367798,858.892639,154.954147, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,6, -2012.669922,868.080994,150.958801, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,7, -1996.298340,875.197510,147.679291, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,8, -1995.726807,873.613281,147.669632, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,9, -2012.371460,865.996704,151.150055, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,10, -2023.084839,858.419800,154.749634, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,11, -2041.518311,846.157288,154.638748, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,12, -2058.988037,843.966064,161.914032, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,13, -2072.395508,840.566040,160.600159, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,14, -2082.652588,838.486206,161.565018, 100);
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2105.66,836.157,165.819,0.0657732,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = -2058.685547, `position_y` = 844.108887, `position_z` = 161.911575, `orientation` = 0.179654 WHERE `guid` = 2577123;
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2058.69,844.109,161.912,0.179654,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577123;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,1, -2058.685547,844.108887,161.911575, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,2, -2040.503906,848.065857,154.197784, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,3, -2016.646729,863.336731,152.179596, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,4, -1995.153687,873.869995,147.554916, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,5, -2014.158691,866.850342,151.440384, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,6, -2028.117920,854.169983,155.016968, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,7, -2042.128174,845.676514,154.894012, 100);
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2058.69,844.109,161.912,0.179654,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = 4250.143066, `position_y` = -2737.343506, `position_z` = 7.106559, `orientation` = 5.743947 WHERE `guid` = 2558342;
REPLACE INTO `creature` VALUES (2560424,40013,0,0,0,0,4247.03,-2704.86,6.68264,4.01845,143,143,0,100,0,0,0,0);
DELETE FROM creature_movement WHERE id=2560424;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,1, 4247.029785,-2704.860107,6.682640, 100);
REPLACE INTO `creature` VALUES (2560424,40013,0,0,0,0,4247.03,-2704.86,6.68264,4.01845,143,143,0,100,0,2,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,2, 4254.899414,-2697.345947,6.887248, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,3, 4271.760254,-2694.312744,5.483411, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,4, 4274.933105,-2702.884521,5.449792, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,5, 4250.871094,-2703.482910,6.880307, 100);
REPLACE INTO `creature` VALUES (2560425,40019,0,0,0,0,4280.84,-2699.17,6.27102,4.08207,147,147,0,100,0,0,0,0);
DELETE FROM creature_movement WHERE id=2560425;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,1, 4280.839844,-2699.169922,6.271020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,2, 4280.537598,-2699.413818,6.224945, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,3, 4283.192383,-2719.054688,7.024815, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,4, 4286.504883,-2750.307617,7.921516, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,5, 4274.611328,-2747.649902,8.497016, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,6, 4269.018555,-2732.091064,8.866570, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,7, 4280.585938,-2720.164795,6.855968, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,8, 4281.210449,-2704.526611,6.169866, 100);
REPLACE INTO `creature` VALUES (2560425,40019,0,0,0,0,4280.84,-2699.17,6.27102,4.08207,147,147,0,100,0,2,0,0);
REPLACE INTO `creature` VALUES (2577124,80216,0,0,0,0,4216.54,-2598.51,26.6581,2.76069,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577124,80216,0,0,0,0,4216.54,-2598.51,26.6581,2.76069,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577124;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,1, 4216.535156,-2598.508301,26.658077, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,2, 4203.337402,-2593.222900,29.599146, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,3, 4192.540039,-2589.737793,26.690065, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,4, 4183.069824,-2594.223145,26.690065, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,5, 4173.360840,-2591.127197,26.690065, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,6, 4157.724609,-2592.845215,30.200850, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,7, 4142.684570,-2588.412109,33.660767, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,8, 4135.883301,-2580.585693,35.999874, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,9, 4132.381348,-2565.474121,39.510262, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,10, 4135.717285,-2555.789795,41.807667, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,11, 4144.918945,-2544.697754,43.283123, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,12, 4142.445801,-2531.597412,43.283123, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,13, 4136.553711,-2519.652588,46.498837, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,14, 4135.357910,-2508.578125,49.102238, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,15, 4139.120605,-2498.708984,51.437782, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,16, 4146.640137,-2491.262451,54.343815, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,17, 4158.548340,-2485.934082,58.118851, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,18, 4171.409668,-2486.089600,61.819347, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,19, 4184.649414,-2493.685303,64.444405, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,20, 4171.130859,-2487.464844,61.858006, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,21, 4154.951172,-2487.866455,56.890388, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,22, 4143.985352,-2494.516846,53.290539, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,23, 4136.564453,-2505.740967,49.699234, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,24, 4135.736328,-2516.382324,47.309017, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,25, 4142.216309,-2527.959229,43.846706, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,26, 4148.519043,-2539.535400,43.282494, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,27, 4141.988770,-2548.885742,43.808411, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,28, 4134.344238,-2559.431396,41.056282, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,29, 4133.982910,-2574.032227,37.532455, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,30, 4141.359863,-2585.314697,34.419968, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,31, 4151.847656,-2591.295898,31.527571, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,32, 4165.226562,-2591.051758,28.445786, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,33, 4176.967285,-2591.582031,26.689631, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,34, 4184.000977,-2594.836182,26.689631, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,35, 4191.737793,-2589.778564,26.689631, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577124,36, 4203.565430,-2593.562988,29.552652, 100);
REPLACE INTO `creature` VALUES (2577124,80216,0,0,0,0,4216.54,-2598.51,26.6581,2.76069,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2577125,80216,0,0,0,0,4240.42,-2599.26,26.6585,0.270191,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577125,80216,0,0,0,0,4240.42,-2599.26,26.6585,0.270191,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577125;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,1, 4240.418457,-2599.258057,26.658518, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,2, 4258.970215,-2594.119873,36.603432, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,3, 4284.426758,-2587.306885,40.079319, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,4, 4289.469238,-2585.846191,40.063507, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,5, 4302.006836,-2572.007568,40.063507, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,6, 4311.348145,-2571.897217,40.063507, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,7, 4319.557129,-2576.871826,40.063507, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,8, 4334.457520,-2572.683594,42.653416, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,9, 4342.082520,-2565.062012,45.124886, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,10, 4347.217285,-2556.383301,46.991707, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,11, 4349.480957,-2546.144531,48.935116, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,12, 4348.714844,-2535.926758,50.823982, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,13, 4344.499512,-2526.906006,52.662468, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,14, 4337.722656,-2518.942383,54.625484, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,15, 4329.491699,-2513.518066,56.455345, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,16, 4318.467773,-2510.735352,58.596962, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,17, 4308.404785,-2511.319336,60.458694, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,18, 4298.131348,-2516.203125,62.788849, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,19, 4289.088379,-2521.843262,65.244019, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,20, 4274.938477,-2530.497559,64.689156, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,21, 4289.708008,-2521.574951,65.127831, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,22, 4300.793457,-2513.949219,62.022232, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,23, 4313.306641,-2510.457275,59.472878, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,24, 4325.041016,-2512.023438,57.292904, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,25, 4334.919434,-2516.040527,55.325672, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,26, 4343.482910,-2524.923828,53.072582, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,27, 4349.384766,-2534.399414,51.061100, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,28, 4349.656250,-2545.398193,49.070229, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,29, 4347.693359,-2555.669189,47.140259, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,30, 4342.917969,-2564.826416,45.242359, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,31, 4334.566406,-2572.154785,42.734375, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,32, 4321.571777,-2579.621338,40.063122, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,33, 4309.041016,-2590.359619,40.063122, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,34, 4302.316406,-2591.645264,40.063122, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,35, 4293.664551,-2587.798096,40.063122, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,36, 4285.308105,-2588.188477,40.065212, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,37, 4261.326660,-2594.046875,37.357544, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577125,38, 4244.944336,-2598.450684,27.245775, 100);
REPLACE INTO `creature` VALUES (2577125,80216,0,0,0,0,4240.42,-2599.26,26.6585,0.270191,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2577126,60439,0,0,0,0,4285.29,-2545.71,64.6893,5.55592,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577126;
DELETE FROM creature_addon WHERE guid=2577126;
DELETE FROM creature_movement WHERE id=2577126;
DELETE FROM game_event_creature WHERE guid=2577126;
DELETE FROM game_event_creature_data WHERE guid=2577126;
DELETE FROM creature_battleground WHERE guid=2577126;
REPLACE INTO `creature` VALUES (2577127,60438,0,0,0,0,4285.25,-2545.68,64.6893,5.55592,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577127;
DELETE FROM creature_addon WHERE guid=2577127;
DELETE FROM creature_movement WHERE id=2577127;
DELETE FROM game_event_creature WHERE guid=2577127;
DELETE FROM game_event_creature_data WHERE guid=2577127;
DELETE FROM creature_battleground WHERE guid=2577127;
REPLACE INTO `creature` VALUES (2577128,60437,0,0,0,0,4284.75,-2545.23,64.6893,5.55592,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577128,60437,0,0,0,0,4284.75,-2545.23,64.6893,5.55592,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577128;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577128,1, 4284.751953,-2545.231689,64.689308, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577128,2, 4285.335938,-2545.751465,64.689308, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577128,3, 4278.945801,-2539.951660,64.689308, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577128,4, 4272.216797,-2533.277588,64.689308, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577128,5, 4272.072754,-2529.122314,64.689308, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577128,6, 4274.072754,-2525.749268,64.689308, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577128,7, 4273.201172,-2519.927979,64.689308, 100);
