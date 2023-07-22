
-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5016117, 2002439, 0, 1814.46, 281.4, 70.3997, 3.13783, 0, 0, 0.999998, 0.00188072, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417358124649013, 0.500000);
REPLACE INTO `gameobject` VALUES ( 5016117, 2002439, 0, 1814.46, 281.4, 70.3997, 3.13783, 0, 0, 0.999998, 0.00188072, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016117';
DELETE FROM game_event_gameobject WHERE guid = '5016117';
DELETE FROM gameobject_battleground WHERE guid = '5016117';
REPLACE INTO `gameobject` VALUES ( 5016118, 2002270, 0, 1816.44, 281.436, 70.3997, 2.97368, 0, 0, 0.996478, 0.0838568, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016119, 2004205, 0, 1815.8, 281.458, 71.5161, 3.57608, 0, 0, 0.976495, -0.215541, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016120, 2004206, 0, 1815.44, 282.432, 71.5161, 6.26764, 0, 0, 0.00777037, -0.99997, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016120';
DELETE FROM game_event_gameobject WHERE guid = '5016120';
DELETE FROM gameobject_battleground WHERE guid = '5016120';
REPLACE INTO `creature` VALUES (2578339,61612,0,0,0,0,1811.14,280.368,70.3997,3.43393,120,120,0,100,100,0,0,0);
DELETE FROM gameobject WHERE guid = '5016119';
DELETE FROM game_event_gameobject WHERE guid = '5016119';
DELETE FROM gameobject_battleground WHERE guid = '5016119';
DELETE FROM gameobject WHERE guid = '5016118';
DELETE FROM game_event_gameobject WHERE guid = '5016118';
DELETE FROM gameobject_battleground WHERE guid = '5016118';
UPDATE `creature` SET `position_x` = 1831.011230, `position_y` = 262.943298, `position_z` = 59.723091, `orientation` = 4.558619 WHERE `guid` = 2578339;
REPLACE INTO `creature` VALUES (2578340,61611,0,0,0,0,-8807.07,639.634,94.229,3.73963,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -8801.180664, `position_y` = 630.401489, `position_z` = 94.228958, `orientation` = 2.911036 WHERE `guid` = 2555926;
DELETE FROM creature WHERE guid=2578339;
DELETE FROM creature_addon WHERE guid=2578339;
DELETE FROM creature_movement WHERE id=2578339;
DELETE FROM game_event_creature WHERE guid=2578339;
DELETE FROM game_event_creature_data WHERE guid=2578339;
DELETE FROM creature_battleground WHERE guid=2578339;
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (894,1493.349487,-4414.166504,22.999720,0.087162,1,'orgrimmarentrance');
REPLACE INTO `gameobject` VALUES ( 5016121, 2001716, 1, 1592.54, -4329.02, 2.18831, 0.392686, 0, 0, 0.195084, 0.980787, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417345994721849, 0.700000);
REPLACE INTO `gameobject` VALUES ( 5016121, 2001716, 1, 1592.54, -4329.02, 2.18831, 0.392686, 0, 0, 0.195084, 0.980787, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417345994721849, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5016121, 2001716, 1, 1592.54, -4329.02, 2.18831, 0.392686, 0, 0, 0.195084, 0.980787, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016121, 2001716, 1, 1592.54, -4329.02, 2.18831, 0.570969, 0, 0, 0.281622, 0.959525, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2578341,61612,0,0,0,1,1593.41,-4330.78,2.13043,5.2111,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578342,2714,0,0,0,1,1592.02,-4332.25,2.03154,0.507348,120,120,0,100,100,0,0,0);
REPLACE INTO `gameobject` VALUES ( 5016122, 2004643, 1, 1594.72, -4330.56, 2.1911, 2.76066, 0, 0, 0.981916, 0.189319, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016123, 2004643, 0, -8807.03, 638.071, 94.2293, 1.61042, 0, 0, 0.720976, 0.69296, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5016124, 2040, 1, 13869.6, -6574.43, 34.4888, 0.0475197, 0, 0, 0.0237576, 0.999718, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016125, 2040, 1, 13936.8, -6530.65, 26.1553, 4.62326, 0, 0, 0.737908, -0.674902, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016126, 2040, 1, 13935.1, -6486.82, 25.9824, 3.48445, 0, 0, 0.985342, -0.17059, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016127, 2040, 1, 14040.9, -6476.73, 27.1832, 0.221099, 0, 0, 0.110325, 0.993896, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016128, 2040, 1, 13843.9, -6323.09, 8.75407, 2.90166, 0, 0, 0.992813, 0.119677, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016128, 2040, 1, 13842.9, -6323.09, 8.75407, 2.90166, 0, 0, 0.992813, 0.119677, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016128, 2040, 1, 13843.9, -6323.09, 8.75407, 2.90166, 0, 0, 0.992813, 0.119677, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016128, 2040, 1, 13843.3, -6323.09, 8.75407, 2.90166, 0, 0, 0.992813, 0.119677, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016128, 2040, 1, 13843.5, -6323.09, 8.75407, 2.90166, 0, 0, 0.992813, 0.119677, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016129, 2040, 1, 13912.6, -6265.48, 32.2176, 3.00298, 0, 0, 0.997599, 0.0692521, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016130, 2044, 1, 13859.4, -6581.41, 29.7, 0.417438, 0, 0, 0.207207, 0.978297, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016131, 2044, 1, 13787.5, -6387.4, 28.2907, 1.45574, 0, 0, 0.665279, 0.746595, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016132, 2044, 1, 13953.3, -6435.28, 235.794, 0.221867, 0, 0, 0.110706, 0.993853, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016132, 2044, 1, 13953.3, -6435.28, 235.594, 0.221867, 0, 0, 0.110706, 0.993853, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016133, 2040, 0, -7115.8, -3936.23, 335.403, 4.73154, 0, 0, 0.700304, -0.713845, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016134, 2040, 0, -7081.46, -3959.04, 333.366, 0.141661, 0, 0, 0.0707713, 0.997493, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016134';
DELETE FROM game_event_gameobject WHERE guid = '5016134';
DELETE FROM gameobject_battleground WHERE guid = '5016134';
REPLACE INTO `gameobject` VALUES ( 5016135, 2040, 0, -7082.62, -3952.51, 333.675, 0.125167, 0, 0, 0.0625426, 0.998042, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016136, 2040, 0, -7106.69, -3954.73, 334.221, 2.65337, 0, 0, 0.970353, 0.241693, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016137, 1735, 0, -6928.41, -3758.24, 318.049, 1.30722, 0, 0, 0.608055, 0.793895, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016137, 1735, 0, -6928.41, -3758.24, 317.849, 1.30722, 0, 0, 0.608055, 0.793895, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016138, 2046, 0, -6900.68, -3790.66, 316.05, 4.83136, 0, 0, 0.66382, -0.747892, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016138, 2046, 0, -6900.68, -3790.66, 315.85, 4.83136, 0, 0, 0.66382, -0.747892, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016139, 142140, 0, -6593.77, -3947.16, 356.092, 5.1546, 0, 0, 0.53482, -0.844966, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016139, 142140, 0, -6593.77, -3947.16, 355.892, 5.1546, 0, 0, 0.53482, -0.844966, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016139';
DELETE FROM game_event_gameobject WHERE guid = '5016139';
DELETE FROM gameobject_battleground WHERE guid = '5016139';
REPLACE INTO `gameobject` VALUES ( 5016140, 2043, 0, -6593.96, -3946.97, 356.099, 5.61562, 0, 0, 0.327617, -0.944811, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016140, 2043, 0, -6593.96, -3946.97, 355.899, 5.61562, 0, 0, 0.327617, -0.944811, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016141, 2046, 0, -6648.92, -3981.97, 362.75, 3.1524, 0, 0, 0.999985, -0.00540306, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016141, 2046, 0, -6648.92, -3981.97, 362.55, 3.1524, 0, 0, 0.999985, -0.00540306, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016142, 1735, 0, -6491.46, -2750.33, 316.85, 0.63051, 0, 0, 0.310059, 0.950717, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016143, 142140, 0, -6515.35, -2785.36, 321.334, 0.874774, 0, 0, 0.423574, 0.905862, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016143, 142140, 0, -6515.35, -2785.36, 321.134, 0.874774, 0, 0, 0.423574, 0.905862, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016144, 142140, 0, -6439.11, -2862.61, 347.01, 4.88735, 0, 0, 0.642623, -0.766183, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016144, 142140, 0, -6439.11, -2862.61, 346.81, 4.88735, 0, 0, 0.642623, -0.766183, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016145, 142140, 0, -6341.44, -2799.2, 349.635, 2.16831, 0, 0, 0.88391, 0.467658, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016145, 142140, 0, -6341.44, -2799.2, 349.435, 2.16831, 0, 0, 0.88391, 0.467658, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016146, 142140, 0, -6521.55, -2704.25, 346.225, 1.96018, 0, 0, 0.830549, 0.556946, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016146, 142140, 0, -6521.55, -2704.25, 346.025, 1.96018, 0, 0, 0.830549, 0.556946, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016143';
DELETE FROM game_event_gameobject WHERE guid = '5016143';
DELETE FROM gameobject_battleground WHERE guid = '5016143';
REPLACE INTO `gameobject` VALUES ( 5016147, 2043, 0, -6515.24, -2785.35, 321.263, 1.17399, 0, 0, 0.553861, 0.832609, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016147, 2043, 0, -6515.24, -2785.35, 321.063, 1.17399, 0, 0, 0.553861, 0.832609, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016148, 1735, 0, -6453.89, -2896.7, 346.848, 2.23037, 0, 0, 0.897992, 0.440011, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016149, 2046, 0, -6323.81, -2901.1, 396.173, 4.94298, 0, 0, 0.621067, -0.783758, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016149, 2046, 0, -6323.81, -2901.1, 395.973, 4.94298, 0, 0, 0.621067, -0.783758, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016150, 142140, 0, -6400.58, -2998.28, 401.536, 4.36332, 0, 0, 0.819152, -0.573576, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016150, 142140, 0, -6400.58, -2998.28, 401.336, 4.36332, 0, 0, 0.819152, -0.573576, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016151, 1735, 0, -6292.46, -3224.27, 336.475, 1.77445, 0, 0, 0.775324, 0.631564, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016151, 1735, 0, -6292.46, -3224.27, 336.275, 1.77445, 0, 0, 0.775324, 0.631564, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016151, 1735, 0, -6292.46, -3224.27, 336.075, 1.77445, 0, 0, 0.775324, 0.631564, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016151, 1735, 0, -6292.46, -3224.27, 335.875, 1.77445, 0, 0, 0.775324, 0.631564, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016152, 1734, 0, -6177.75, -3177.32, 311.666, 0.628697, 0, 0, 0.309197, 0.950998, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016152, 1734, 0, -6177.75, -3177.32, 311.466, 0.628697, 0, 0, 0.309197, 0.950998, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016153, 1735, 0, -6186.48, -3247.29, 342.739, 0.850929, 0, 0, 0.412744, 0.910847, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016153, 1735, 0, -6186.48, -3247.29, 342.539, 0.850929, 0, 0, 0.412744, 0.910847, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016154, 142140, 0, -6174.42, -3586.95, 315.577, 4.78572, 0, 0, 0.680709, -0.732554, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016154, 142140, 0, -6174.42, -3586.95, 315.377, 4.78572, 0, 0, 0.680709, -0.732554, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016155, 1735, 0, -6172.34, -3627.34, 322.846, 1.96459, 0, 0, 0.831774, 0.555115, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016155, 1735, 0, -6172.34, -3627.34, 322.646, 1.96459, 0, 0, 0.831774, 0.555115, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016156, 2043, 1, -2462.71, -3229.35, 43.2604, 2.80606, 0, 0, 0.98596, 0.166982, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016156, 2043, 1, -2462.71, -3229.35, 43.0604, 2.80606, 0, 0, 0.98596, 0.166982, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '12566';
DELETE FROM game_event_gameobject WHERE guid = '12566';
DELETE FROM gameobject_battleground WHERE guid = '12566';
REPLACE INTO `gameobject` VALUES ( 5016157, 2046, 1, -2487.25, -3077.66, 41.142, 1.08212, 0, 0, 0.515047, 0.857162, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016157, 2046, 1, -2487.25, -3077.66, 40.542, 1.08212, 0, 0, 0.515047, 0.857162, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016157, 2046, 1, -2487.25, -3077.66, 40.942, 1.08212, 0, 0, 0.515047, 0.857162, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016158, 2046, 1, -2610.16, -3332.37, 44.8009, 2.79117, 0, 0, 0.984689, 0.174318, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016158, 2046, 1, -2610.16, -3332.37, 44.4009, 2.79117, 0, 0, 0.984689, 0.174318, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016159, 2042, 1, -3648.45, -3467.9, 37.2774, 3.64463, 0, 0, 0.968536, -0.248875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016159, 2042, 1, -3648.45, -3467.9, 36.8774, 3.64463, 0, 0, 0.968536, -0.248875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016159, 2042, 1, -3648.45, -3467.9, 37.0774, 3.64463, 0, 0, 0.968536, -0.248875, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016160, 2857, 0, -584.75, -2472.01, 202.752, 2.65964, 0, 0, 0.971105, 0.238653, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016161, 1623, 0, -612.903, -2476.86, 202.752, 3.37808, 0, 0, 0.993017, -0.117968, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016162, 2042, 0, -551.34, -2514.71, 202.752, 1.91488, 0, 0, 0.81772, 0.575616, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016163, 2046, 0, -625.032, -2604.37, 212.203, 1.05331, 0, 0, 0.502646, 0.864492, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016163, 2046, 0, -625.032, -2604.37, 212.003, 1.05331, 0, 0, 0.502646, 0.864492, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016164, 1735, 0, -472.155, -2373.61, 216.709, 3.78259, 0, 0, 0.949078, -0.315041, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016164, 1735, 0, -472.155, -2373.61, 216.509, 3.78259, 0, 0, 0.949078, -0.315041, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016165, 1623, 0, -518.86, -2276.06, 259.314, 5.02509, 0, 0, 0.588375, -0.808588, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016166, 2043, 0, -328.116, -2497.08, 243.077, 3.32312, 0, 0, 0.995884, -0.0906369, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016166, 2043, 0, -328.116, -2497.08, 242.877, 3.32312, 0, 0, 0.995884, -0.0906369, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
DELETE FROM creature WHERE guid=18027;
DELETE FROM creature_addon WHERE guid=18027;
DELETE FROM creature_movement WHERE id=18027;
DELETE FROM game_event_creature WHERE guid=18027;
DELETE FROM game_event_creature_data WHERE guid=18027;
DELETE FROM creature_battleground WHERE guid=18027;
DELETE FROM creature WHERE guid=18415;
DELETE FROM creature_addon WHERE guid=18415;
DELETE FROM creature_movement WHERE id=18415;
DELETE FROM game_event_creature WHERE guid=18415;
DELETE FROM game_event_creature_data WHERE guid=18415;
DELETE FROM creature_battleground WHERE guid=18415;
DELETE FROM creature WHERE guid=17926;
DELETE FROM creature_addon WHERE guid=17926;
DELETE FROM creature_movement WHERE id=17926;
DELETE FROM game_event_creature WHERE guid=17926;
DELETE FROM game_event_creature_data WHERE guid=17926;
DELETE FROM creature_battleground WHERE guid=17926;
DELETE FROM creature WHERE guid=18414;
DELETE FROM creature_addon WHERE guid=18414;
DELETE FROM creature_movement WHERE id=18414;
DELETE FROM game_event_creature WHERE guid=18414;
DELETE FROM game_event_creature_data WHERE guid=18414;
DELETE FROM creature_battleground WHERE guid=18414;
DELETE FROM creature WHERE guid=17930;
DELETE FROM creature_addon WHERE guid=17930;
DELETE FROM creature_movement WHERE id=17930;
DELETE FROM game_event_creature WHERE guid=17930;
DELETE FROM game_event_creature_data WHERE guid=17930;
DELETE FROM creature_battleground WHERE guid=17930;

-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5016167, 1621, 1, 180.024, -324.36, 54.9606, 1.44357, 0, 0, 0.660726, 0.750627, 300, 300, 100, 1, 0, 0);
