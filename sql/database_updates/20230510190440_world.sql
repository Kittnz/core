
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2576935,61485,0,0,0,0,-5258.35,388.845,393.893,4.20847,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576935;
DELETE FROM creature_addon WHERE guid=2576935;
DELETE FROM creature_movement WHERE id=2576935;
DELETE FROM game_event_creature WHERE guid=2576935;
DELETE FROM game_event_creature_data WHERE guid=2576935;
DELETE FROM creature_battleground WHERE guid=2576935;
REPLACE INTO `creature` VALUES (2576936,61486,0,0,0,0,-5258.35,388.845,393.893,4.20847,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576936;
DELETE FROM creature_addon WHERE guid=2576936;
DELETE FROM creature_movement WHERE id=2576936;
DELETE FROM game_event_creature WHERE guid=2576936;
DELETE FROM game_event_creature_data WHERE guid=2576936;
DELETE FROM creature_battleground WHERE guid=2576936;
REPLACE INTO `creature` VALUES (2576937,61487,0,0,0,0,-5258.35,388.845,393.893,4.20847,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576937;
DELETE FROM creature_addon WHERE guid=2576937;
DELETE FROM creature_movement WHERE id=2576937;
DELETE FROM game_event_creature WHERE guid=2576937;
DELETE FROM game_event_creature_data WHERE guid=2576937;
DELETE FROM creature_battleground WHERE guid=2576937;
REPLACE INTO `creature` VALUES (2576938,61484,0,0,0,1,5500.88,-3799.7,1610.07,1.6953,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576938;
DELETE FROM creature_addon WHERE guid=2576938;
DELETE FROM creature_movement WHERE id=2576938;
DELETE FROM game_event_creature WHERE guid=2576938;
DELETE FROM game_event_creature_data WHERE guid=2576938;
DELETE FROM creature_battleground WHERE guid=2576938;
REPLACE INTO `creature` VALUES (2576939,61485,0,0,0,1,5500.88,-3799.7,1610.07,1.6953,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2576940,61486,0,0,0,1,5508.55,-3808.46,1610.07,2.97,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576940;
DELETE FROM creature_addon WHERE guid=2576940;
DELETE FROM creature_movement WHERE id=2576940;
DELETE FROM game_event_creature WHERE guid=2576940;
DELETE FROM game_event_creature_data WHERE guid=2576940;
DELETE FROM creature_battleground WHERE guid=2576940;
REPLACE INTO `creature` VALUES (2576941,61488,0,0,0,1,5507.73,-3812.78,1610.07,2.41158,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576941;
DELETE FROM creature_addon WHERE guid=2576941;
DELETE FROM creature_movement WHERE id=2576941;
DELETE FROM game_event_creature WHERE guid=2576941;
DELETE FROM game_event_creature_data WHERE guid=2576941;
DELETE FROM creature_battleground WHERE guid=2576941;
REPLACE INTO `creature` VALUES (2576942,61487,0,0,0,1,5506.7,-3812.25,1610.07,1.4424,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576942;
DELETE FROM creature_addon WHERE guid=2576942;
DELETE FROM creature_movement WHERE id=2576942;
DELETE FROM game_event_creature WHERE guid=2576942;
DELETE FROM game_event_creature_data WHERE guid=2576942;
DELETE FROM creature_battleground WHERE guid=2576942;

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2576943,61487,0,0,0,1,4985.58,-3194.23,1051.67,5.80838,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2576944,61488,0,0,0,1,5183.54,-3463.32,1606.25,2.56552,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576944;
DELETE FROM creature_addon WHERE guid=2576944;
DELETE FROM creature_movement WHERE id=2576944;
DELETE FROM game_event_creature WHERE guid=2576944;
DELETE FROM game_event_creature_data WHERE guid=2576944;
DELETE FROM creature_battleground WHERE guid=2576944;

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5015212, 2005680, 1, -2148.96, 361.396, 186.071, 2.5463, 0, 0, 0.95603, 0.293269, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417372653716964, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5015012, 2003305, 1, -2218.28, 539.039, 137.128, 2.45301, 0, 0, 0.941315, 0.33753, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015213, 2005681, 1, -2203.87, 381.916, 186.122, 2.0193, 0, 0, 0.846646, 0.532157, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015013, 2008579, 1, -2204.2, 383.364, 186.028, 4.65866, 0, 0, 0.725844, -0.687859, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015213, 2005681, 1, -2204.2, 383.364, 186.028, 2.0193, 0, 0, 0.846646, 0.532157, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382381, 0.400000);
REPLACE INTO `gameobject` VALUES ( 5015213, 2005681, 1, -2204.2, 383.364, 186.028, 2.0193, 0, 0, 0.846646, 0.532157, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015013, 2008579, 1, -2203.81, 539.131, 136.068, 4.65866, 0, 0, 0.725844, -0.687859, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015013, 2008579, 1, -2203.8, 539.231, 136.068, 4.65866, 0, 0, 0.725844, -0.687859, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015013, 2008579, 1, -2203.85, 539.231, 136.068, 4.65866, 0, 0, 0.725844, -0.687859, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015013, 2008579, 1, -2203.83, 539.231, 136.068, 4.65866, 0, 0, 0.725844, -0.687859, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382381, 0.300000);
REPLACE INTO `gameobject` VALUES ( 5015213, 2005681, 1, -2204.2, 383.364, 186.028, 2.0193, 0, 0, 0.846646, 0.532157, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015214, 2005682, 1, -2337.5, 313.329, 184.871, 0.778379, 0, 0, 0.379439, 0.925217, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015214';
DELETE FROM game_event_gameobject WHERE guid = '5015214';
DELETE FROM gameobject_battleground WHERE guid = '5015214';
REPLACE INTO `gameobject` VALUES ( 5015215, 2005680, 1, -2337.5, 313.329, 184.771, 1.16715, 0, 0, 0.551013, 0.834497, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605167, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5015215, 2005680, 1, -2337.5, 313.329, 184.771, 1.16715, 0, 0, 0.551013, 0.834497, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015216, 2005680, 1, -2328.48, 396.615, 190.018, 4.43128, 0, 0, 0.799195, -0.601072, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605168, 0.920000);
REPLACE INTO `gameobject` VALUES ( 5015216, 2005680, 1, -2328.48, 396.615, 190.018, 4.43128, 0, 0, 0.799195, -0.601072, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015217, 2005681, 1, -2373.95, 356.887, 173.854, 3.01834, 0, 0, 0.998102, 0.0615863, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382385, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5015217, 2005681, 1, -2373.95, 356.887, 173.854, 3.01834, 0, 0, 0.998102, 0.0615863, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382385, 0.500000);
REPLACE INTO `gameobject` VALUES ( 5015217, 2005681, 1, -2373.95, 356.887, 173.854, 3.01834, 0, 0, 0.998102, 0.0615863, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2576945,61488,0,0,0,1,5330.91,-1818.64,1369.57,3.97565,120,120,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 3.000000 where entry = 61488;

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5015218, 2005680, 1, -2376.43, 348.929, 173.817, 3.09217, 0, 0, 0.999695, 0.0247094, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
UPDATE `creature_template` set `scale` = 2.000000 where entry = 61488;
UPDATE `creature_template` set `scale` = 1.500000 where entry = 61488;

-- Changes by TAMMO
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605170, 0.400000);
REPLACE INTO `gameobject` VALUES ( 5015218, 2005680, 1, -2376.43, 348.929, 173.817, 3.09217, 0, 0, 0.999695, 0.0247094, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015219, 2005680, 1, -2384.5, 367.605, 173.798, 4.1179, 0, 0, 0.883199, -0.468998, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015220, 2005681, 1, -2410.7, 347.637, 173.796, 0.341714, 0, 0, 0.170027, 0.985439, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2576946,61345,0,0,0,1,5328.27,-1820.27,1369.16,0.818355,120,120,0,100,100,0,0,0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5015221, 2005680, 1, -2397.04, 351.324, 173.792, 2.84085, 0, 0, 0.988715, 0.149805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382388, 0.700000);
REPLACE INTO `gameobject` VALUES ( 5015220, 2005681, 1, -2410.7, 347.637, 173.796, 0.341714, 0, 0, 0.170027, 0.985439, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605173, 0.500000);
REPLACE INTO `gameobject` VALUES ( 5015221, 2005680, 1, -2397.04, 351.324, 173.792, 2.84085, 0, 0, 0.988715, 0.149805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605173, 0.560000);
REPLACE INTO `gameobject` VALUES ( 5015221, 2005680, 1, -2397.04, 351.324, 173.792, 2.84085, 0, 0, 0.988715, 0.149805, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
UPDATE `creature_template` set `scale` = 1.500000 where entry = 61488;
DELETE FROM creature WHERE guid=2576946;
DELETE FROM creature_addon WHERE guid=2576946;
DELETE FROM creature_movement WHERE id=2576946;
DELETE FROM game_event_creature WHERE guid=2576946;
DELETE FROM game_event_creature_data WHERE guid=2576946;
DELETE FROM creature_battleground WHERE guid=2576946;

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5015222, 2005680, 1, -2439, 364.71, 184.724, 0.978039, 0, 0, 0.46976, 0.882794, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605174, 0.430000);
REPLACE INTO `gameobject` VALUES ( 5015222, 2005680, 1, -2439, 364.71, 184.724, 0.978039, 0, 0, 0.46976, 0.882794, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015223, 2005681, 1, -2466.02, 322.295, 190.522, 2.85749, 0, 0, 0.989928, 0.141572, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605174, 0.200000);
REPLACE INTO `gameobject` VALUES ( 5015222, 2005680, 1, -2439, 364.71, 184.724, 0.978039, 0, 0, 0.46976, 0.882794, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605174, 0.430000);
REPLACE INTO `gameobject` VALUES ( 5015222, 2005680, 1, -2439, 364.71, 184.724, 0.978039, 0, 0, 0.46976, 0.882794, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382391, 0.430000);
REPLACE INTO `gameobject` VALUES ( 5015223, 2005681, 1, -2466.02, 322.295, 190.522, 2.85749, 0, 0, 0.989928, 0.141572, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382391, 0.200000);
REPLACE INTO `gameobject` VALUES ( 5015223, 2005681, 1, -2466.02, 322.295, 190.522, 2.85749, 0, 0, 0.989928, 0.141572, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2576945,61488,0,0,0,1,5330.91,-1818.64,1369.57,3.97565,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2576945,61488,0,0,0,1,5330.91,-1818.64,1369.57,3.97565,300,300,0,100,100,0,0,0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5015224, 2005680, 1, -2438.84, 336.454, 184.87, 5.40691, 0, 0, 0.424256, -0.905542, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015225, 2005680, 1, -2469.32, 392.88, 189.81, 5.7085, 0, 0, 0.283405, -0.959, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605177, 0.120000);
REPLACE INTO `gameobject` VALUES ( 5015225, 2005680, 1, -2469.32, 392.88, 189.81, 5.7085, 0, 0, 0.283405, -0.959, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605177, 0.300000);
REPLACE INTO `gameobject` VALUES ( 5015225, 2005680, 1, -2469.32, 392.88, 189.81, 5.7085, 0, 0, 0.283405, -0.959, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015226, 2005680, 1, -2419.11, 383.858, 184.759, 0.530371, 0, 0, 0.262088, 0.965044, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605178, 0.140000);
REPLACE INTO `gameobject` VALUES ( 5015226, 2005680, 1, -2419.11, 383.858, 184.759, 0.530371, 0, 0, 0.262088, 0.965044, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015227, 2005680, 1, -2382.01, 384.63, 184.849, 2.75644, 0, 0, 0.981515, 0.191387, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605179, 0.180000);
REPLACE INTO `gameobject` VALUES ( 5015227, 2005680, 1, -2382.01, 384.63, 184.849, 2.75644, 0, 0, 0.981515, 0.191387, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015228, 2005680, 1, -2320.94, 392.801, 190.084, 4.16153, 0, 0, 0.87276, -0.48815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605180, 0.124000);
REPLACE INTO `gameobject` VALUES ( 5015228, 2005680, 1, -2320.94, 392.801, 190.084, 4.16153, 0, 0, 0.87276, -0.48815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015229, 2005681, 1, -2257.41, 377.515, 186.677, 4.71917, 0, 0, 0.704704, -0.709501, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382397, 0.100000);
REPLACE INTO `gameobject` VALUES ( 5015229, 2005681, 1, -2257.41, 377.515, 186.677, 4.71917, 0, 0, 0.704704, -0.709501, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015230, 2005681, 1, -2312.3, 316.342, 184.869, 1.54067, 0, 0, 0.696376, 0.717677, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382398, 0.110000);
REPLACE INTO `gameobject` VALUES ( 5015230, 2005681, 1, -2312.3, 316.342, 184.869, 1.54067, 0, 0, 0.696376, 0.717677, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412516382398, 0.140000);
REPLACE INTO `gameobject` VALUES ( 5015230, 2005681, 1, -2312.3, 316.342, 184.869, 1.54067, 0, 0, 0.696376, 0.717677, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015231, 2005680, 1, -2349.57, 332.213, 184.942, 3.73265, 0, 0, 0.956648, -0.291245, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605183, 0.230000);
REPLACE INTO `gameobject` VALUES ( 5015231, 2005680, 1, -2349.57, 332.213, 184.942, 3.73265, 0, 0, 0.956648, -0.291245, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015232, 2005680, 1, -2291.62, 397.272, 195.98, 5.09193, 0, 0, 0.561029, -0.827796, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417412499605184, 0.630000);
REPLACE INTO `gameobject` VALUES ( 5015232, 2005680, 1, -2291.62, 397.272, 195.98, 5.09193, 0, 0, 0.561029, -0.827796, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (888,5492.377930,-3733.479492,1594.157227,2.876272,1,'nordanaar');

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2576947,61234,0,0,0,1,5637.17,-3688.6,1620.97,4.73269,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2576947;
DELETE FROM creature_addon WHERE guid=2576947;
DELETE FROM creature_movement WHERE id=2576947;
DELETE FROM game_event_creature WHERE guid=2576947;
DELETE FROM game_event_creature_data WHERE guid=2576947;
DELETE FROM creature_battleground WHERE guid=2576947;

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2576948,6232,0,0,0,1,13979,-6455.86,218.032,0.808554,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2576948;
DELETE FROM creature_addon WHERE guid=2576948;
DELETE FROM creature_movement WHERE id=2576948;
DELETE FROM game_event_creature WHERE guid=2576948;
DELETE FROM game_event_creature_data WHERE guid=2576948;
DELETE FROM creature_battleground WHERE guid=2576948;
UPDATE `creature_addon` SET `emote_state`=389 WHERE `guid`=2573052;
UPDATE `creature_addon` SET `emote_state`=234 WHERE `guid`=2573052;

-- Changes by WILL
REPLACE INTO `creature` VALUES (2576949,60961,0,0,0,0,-4856.2,602.783,386.641,2.97972,120,120,0,100,100,0,0,0);
