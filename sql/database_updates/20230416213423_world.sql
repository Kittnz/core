
-- Changes by SHANG
DELETE FROM creature WHERE guid=2574100;
DELETE FROM creature_addon WHERE guid=2574100;
DELETE FROM creature_movement WHERE id=2574100;
DELETE FROM game_event_creature WHERE guid=2574100;
DELETE FROM game_event_creature_data WHERE guid=2574100;
DELETE FROM creature_battleground WHERE guid=2574100;
REPLACE INTO `gameobject` VALUES ( 5013752, 179395, 532, -11124.5, -1937.78, 49.3346, 3.36991, 0, 0, 0.993491, -0.113911, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2575745,61319,0,0,0,532,-11125.2,-1936.38,49.3216,5.28706,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2575745, 28);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2575745, 173);
DELETE FROM creature WHERE guid=2574103;
DELETE FROM creature_addon WHERE guid=2574103;
DELETE FROM creature_movement WHERE id=2574103;
DELETE FROM game_event_creature WHERE guid=2574103;
DELETE FROM game_event_creature_data WHERE guid=2574103;
DELETE FROM creature_battleground WHERE guid=2574103;

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2575746,61375,0,0,0,0,-1181.5,2738.73,33.3837,3.6798,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -1181.517944, `position_y` = 2738.848389, `position_z` = 33.383587, `orientation` = 3.698652 WHERE `guid` = 2575746;
REPLACE INTO `creature` VALUES (2575747,61374,0,0,0,0,1605.63,241.093,-62.0785,0.169809,120,120,0,100,100,0,0,0);
REPLACE INTO `gameobject` VALUES ( 5013753, 2003608, 1, -2211.84, 764.169, 154.613, 5.70591, 0, 0, 0.284645, -0.958633, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417377737212153, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5013753, 2003608, 1, -2211.84, 764.169, 154.613, 5.70591, 0, 0, 0.284645, -0.958633, 300, 300, 100, 1, 0, 0);

-- Changes by TORTA
DELETE FROM creature WHERE guid=2572287;
DELETE FROM creature_addon WHERE guid=2572287;
DELETE FROM creature_movement WHERE id=2572287;
DELETE FROM game_event_creature WHERE guid=2572287;
DELETE FROM game_event_creature_data WHERE guid=2572287;
DELETE FROM creature_battleground WHERE guid=2572287;

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013754, 2000408, 1, -2209, 763.263, 154.613, 5.7, 0, 0, 0.287476, -0.957788, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417324050120954, 0.700000);
REPLACE INTO `gameobject` VALUES ( 5013754, 2000408, 1, -2209, 763.263, 154.613, 5.7, 0, 0, 0.287476, -0.957788, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013755, 2003609, 1, -2212.6, 766.807, 154.612, 1.76612, 0, 0, 0.772683, 0.634791, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417377753989371, 0.400000);
REPLACE INTO `gameobject` VALUES ( 5013755, 2003609, 1, -2212.6, 766.807, 154.612, 1.76612, 0, 0, 0.772683, 0.634791, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417377753989371, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5013755, 2003609, 1, -2212.6, 766.807, 154.612, 1.76612, 0, 0, 0.772683, 0.634791, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013756, 2010645, 1, -2219.41, 785.512, 154.612, 5.61679, 0, 0, 0.327066, -0.945002, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013757, 2008760, 1, -2211.07, 785.149, 154.612, 4.44576, 0, 0, 0.794822, -0.606842, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013758, 2008759, 1, -2221.97, 776.53, 155.056, 2.70609, 0, 0, 0.976386, 0.216034, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013759, 2008761, 1, -2206.68, 777.731, 154.645, 0.908313, 0, 0, 0.438705, 0.898631, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
DELETE FROM gameobject WHERE guid = '5013758';
DELETE FROM game_event_gameobject WHERE guid = '5013758';
DELETE FROM gameobject_battleground WHERE guid = '5013758';
DELETE FROM gameobject WHERE guid = '5013759';
DELETE FROM game_event_gameobject WHERE guid = '5013759';
DELETE FROM gameobject_battleground WHERE guid = '5013759';
REPLACE INTO `gameobject` VALUES ( 5013760, 2002787, 1, -2217.57, 774.337, 154.623, 0.474147, 0, 0, 0.234859, 0.97203, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013761, 2000408, 1, -2207.29, 753.791, 154.612, 5.0803, 0, 0, 0.565831, -0.824521, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417324050120954, 1.000000);
REPLACE INTO `gameobject` VALUES ( 5013754, 2000408, 1, -2209, 763.263, 154.613, 5.7, 0, 0, 0.287476, -0.957788, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013754';
DELETE FROM game_event_gameobject WHERE guid = '5013754';
DELETE FROM gameobject_battleground WHERE guid = '5013754';
REPLACE INTO `gameobject` VALUES ( 5013762, 2000408, 1, -2220.28, 731.69, 154.438, 0.0026803, 0, 0, 0.00134015, 0.999999, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013763, 2000408, 1, -2189.08, 729.278, 154.542, 3.05234, 0, 0, 0.999004, 0.0446103, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013764, 2000408, 1, -2196.83, 759.456, 154.841, 1.19203, 0, 0, 0.56135, 0.827578, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013765, 2000408, 1, -2215.4, 700.152, 145.235, 0.135661, 0, 0, 0.0677784, 0.9977, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013766, 2000408, 1, -2203.42, 667.65, 137.813, 1.82424, 0, 0, 0.790803, 0.612071, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013767, 2000408, 1, -2192.91, 704.872, 147.262, 5.54544, 0, 0, 0.360564, -0.932735, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013768, 2000408, 1, -2168.17, 764.427, 155.121, 1.82265, 0, 0, 0.790315, 0.612701, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013769, 2000408, 1, -2189.3, 773.212, 168.547, 4.26047, 0, 0, 0.847553, -0.530711, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
DELETE FROM gameobject WHERE guid = '5013761';
DELETE FROM game_event_gameobject WHERE guid = '5013761';
DELETE FROM gameobject_battleground WHERE guid = '5013761';
DELETE FROM gameobject WHERE guid = '5013764';
DELETE FROM game_event_gameobject WHERE guid = '5013764';
DELETE FROM gameobject_battleground WHERE guid = '5013764';
REPLACE INTO `gameobject` VALUES ( 5013770, 2000408, 1, -2193.64, 743.264, 154.61, 1.94678, 0, 0, 0.826797, 0.5625, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013770, 2000408, 1, -2190.59, 744.114, 154.61, 1.94678, 0, 0, 0.826797, 0.5625, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013770';
DELETE FROM game_event_gameobject WHERE guid = '5013770';
DELETE FROM gameobject_battleground WHERE guid = '5013770';
REPLACE INTO `gameobject` VALUES ( 5013765, 2000408, 1, -2215.44, 700.171, 144.588, 0.135661, 0, 0, 0.0677784, 0.9977, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013765, 2000408, 1, -2215.44, 700.171, 144.688, 0.135661, 0, 0, 0.0677784, 0.9977, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013767, 2000408, 1, -2193.22, 704.804, 146.579, 5.54544, 0, 0, 0.360564, -0.932735, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013767, 2000408, 1, -2189.3, 729.052, 154.008, 5.54544, 0, 0, 0.360564, -0.932735, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013767, 2000408, 1, -2192.9, 704.298, 146.574, 5.54544, 0, 0, 0.360564, -0.932735, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013771, 3000658, 1, -2194.5, 756.149, 154.637, 4.95247, 0, 0, 0.617342, -0.786695, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013768, 2000408, 1, -2168.47, 764.288, 154.419, 1.82265, 0, 0, 0.790315, 0.612701, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013766, 2000408, 1, -2204.28, 667.635, 136.982, 1.82424, 0, 0, 0.790803, 0.612071, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013772, 2000408, 1, -2232.74, 659.852, 135.994, 5.83247, 0, 0, 0.223457, -0.974714, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013773, 2000408, 1, -2212.02, 626.775, 149.588, 1.63685, 0, 0, 0.730069, 0.683374, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013774, 2000408, 1, -2256.52, 621.899, 136.222, 0.928402, 0, 0, 0.447708, 0.89418, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013774, 2000408, 1, -2255.82, 621.392, 135.528, 0.928402, 0, 0, 0.447708, 0.89418, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013775, 2000408, 1, -2226.38, 713.619, 166.207, 6.17526, 0, 0, 0.0539376, -0.998544, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013775, 2000408, 1, -2227.06, 713.723, 165.542, 6.17526, 0, 0, 0.0539376, -0.998544, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2575748,80945,0,0,0,1,-2199.85,759.005,154.738,4.35895,120,120,0,100,100,0,0,0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013776, 2000408, 1, -2224.53, 764.325, 155.494, 2.73904, 0, 0, 0.979813, 0.199918, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013776, 2000408, 1, -2224.25, 764.209, 154.749, 2.73904, 0, 0, 0.979813, 0.199918, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013777, 2010645, 1, -2199.12, 760.895, 154.88, 4.36917, 0, 0, 0.817473, -0.575967, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013778, 2010645, 1, -2220.57, 746.36, 154.612, 0.11858, 0, 0, 0.0592552, 0.998243, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
DELETE FROM gameobject WHERE guid = '5013760';
DELETE FROM game_event_gameobject WHERE guid = '5013760';
DELETE FROM gameobject_battleground WHERE guid = '5013760';

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013777, 2010645, 1, -2199.07, 760.772, 154.373, 4.36917, 0, 0, 0.817473, -0.575967, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013779, 2008791, 1, -2207.26, 747.211, 154.612, 5.03913, 0, 0, 0.582683, -0.812699, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013780, 2008792, 1, -2204.33, 748.458, 154.612, 4.63308, 0, 0, 0.734583, -0.678519, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013779';
DELETE FROM game_event_gameobject WHERE guid = '5013779';
DELETE FROM gameobject_battleground WHERE guid = '5013779';

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013781, 2010645, 1, -2213.05, 646.956, 132.095, 1.88726, 0, 0, 0.809695, 0.586851, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013781, 2010645, 1, -2212.98, 647.088, 131.893, 1.88726, 0, 0, 0.809695, 0.586851, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013782, 2003619, 1, -2190.26, 737.829, 154.612, 2.64602, 0, 0, 0.969458, 0.245258, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013782';
DELETE FROM game_event_gameobject WHERE guid = '5013782';
DELETE FROM gameobject_battleground WHERE guid = '5013782';
REPLACE INTO `gameobject` VALUES ( 5013783, 2003619, 1, -2205.17, 744.969, 154.611, 2.88715, 0, 0, 0.991918, 0.12688, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013784, 2008760, 1, -2188.06, 737.273, 154.612, 1.89166, 0, 0, 0.810983, 0.58507, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013785, 2010645, 1, -2216.21, 753.066, 154.612, 4.91781, 0, 0, 0.630881, -0.77588, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013785';
DELETE FROM game_event_gameobject WHERE guid = '5013785';
DELETE FROM gameobject_battleground WHERE guid = '5013785';
DELETE FROM gameobject WHERE guid = '5013784';
DELETE FROM game_event_gameobject WHERE guid = '5013784';
DELETE FROM gameobject_battleground WHERE guid = '5013784';
REPLACE INTO `gameobject` VALUES ( 5013786, 2008760, 1, -2187.51, 734.405, 154.611, 2.35664, 0, 0, 0.923964, 0.382478, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013787, 2003610, 1, -2211.01, 752.622, 154.613, 5.76958, 0, 0, 0.25399, -0.967207, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013788, 3000658, 1, -2216.88, 801.262, 179.131, 1.69477, 0, 0, 0.74955, 0.661947, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013788';
DELETE FROM game_event_gameobject WHERE guid = '5013788';
DELETE FROM gameobject_battleground WHERE guid = '5013788';
REPLACE INTO `gameobject` VALUES ( 5013789, 3000658, 1, -2217.03, 802.123, 179.788, 4.87956, 0, 0, 0.645603, -0.763673, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013787, 2003610, 1, -2211.01, 752.622, 154.613, 4.80669, 0, 0, 0.672994, -0.739648, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013789, 3000658, 1, -2217.03, 802.123, 179.788, 4.80669, 0, 0, 0.672994, -0.739648, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013789, 3000658, 1, -2217.03, 802.123, 179.788, 4.80669, 0, 0, 0.672994, -0.739648, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013790, 3000658, 1, -2217.32, 690.797, 152.24, 5.93825, 0, 0, 0.171616, -0.985164, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013789, 3000658, 1, -2217.03, 802.123, 179.788, 4.95198, 0, 0, 0.617533, -0.786545, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
DELETE FROM gameobject WHERE guid = '5013790';
DELETE FROM game_event_gameobject WHERE guid = '5013790';
DELETE FROM gameobject_battleground WHERE guid = '5013790';

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013789, 3000658, 1, -2217.03, 802.123, 179.788, 4.82239, 0, 0, 0.667164, -0.744911, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013789, 3000658, 1, -2217.03, 802.123, 179.788, 4.84596, 0, 0, 0.658343, -0.752718, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013791, 3000658, 1, -2217.27, 690.777, 149.152, 5.91469, 0, 0, 0.183209, -0.983074, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.79, 640.823, 142.385, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013791, 3000658, 1, -2217.38, 690.748, 154.83, 5.91469, 0, 0, 0.183209, -0.983074, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013791, 3000658, 1, -2217.38, 690.748, 153.33, 5.91469, 0, 0, 0.183209, -0.983074, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013791, 3000658, 1, -2217.38, 690.748, 151.83, 5.91469, 0, 0, 0.183209, -0.983074, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013791, 3000658, 1, -2217.38, 690.748, 151.33, 5.91469, 0, 0, 0.183209, -0.983074, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013791, 3000658, 1, -2217.38, 690.748, 150.83, 5.91469, 0, 0, 0.183209, -0.983074, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013791, 3000658, 1, -2217.38, 690.748, 150.33, 5.91469, 0, 0, 0.183209, -0.983074, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2241.74, 642.908, 148.271, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.57, 642.454, 144.699, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.57, 642.454, 143.699, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2242.77, 642.831, 142.652, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 149.065, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 146.065, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 144.065, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013793, 3000658, 1, -2149.5, 776.328, 163.254, 2.45108, 0, 0, 0.940988, 0.33844, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 143.565, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 143.065, 6.23277, 0, 0, 0.0252069, -0.999682, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013793, 3000658, 1, -2149.12, 776.01, 163.754, 2.45108, 0, 0, 0.940988, 0.33844, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 143.065, 0.0913326, 0, 0, 0.0456504, 0.998957, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 143.065, 0.0834786, 0, 0, 0.0417272, 0.999129, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013793, 3000658, 1, -2148.73, 775.691, 164.254, 2.45108, 0, 0, 0.940988, 0.33844, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 143.065, 0.0876822, 0, 0, 0.0438271, 0.999039, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013792, 3000658, 1, -2243.51, 642.544, 143.065, 0.0641203, 0, 0, 0.0320546, 0.999486, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013793, 3000658, 1, -2148.89, 775.819, 165.254, 2.45108, 0, 0, 0.940988, 0.33844, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013793, 3000658, 1, -2148.89, 775.819, 165.054, 2.45108, 0, 0, 0.940988, 0.33844, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013793, 3000658, 1, -2148.35, 776.515, 165.054, 2.45108, 0, 0, 0.940988, 0.33844, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013793, 3000658, 1, -2148.55, 776.34, 165.68, 2.45108, 0, 0, 0.940988, 0.33844, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013793, 3000658, 1, -2148.55, 776.34, 164.68, 2.45108, 0, 0, 0.940988, 0.33844, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013794, 2003610, 1, -2186.54, 733.206, 154.612, 5.51256, 0, 0, 0.37585, -0.926681, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013794, 2003610, 1, -2187.42, 734.095, 154.611, 5.51256, 0, 0, 0.37585, -0.926681, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013794, 2003610, 1, -2186.78, 733.498, 154.129, 5.51256, 0, 0, 0.37585, -0.926681, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013795, 2010443, 1, -2187.59, 732.695, 155.405, 2.38074, 0, 0, 0.928506, 0.371316, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `gameobject` VALUES ( 5013796, 2009787, 1, -2202.75, 746.5, 154.61, 2.99916, 0, 0, 0.997465, 0.0711578, 300, 300, 100, 1, 0, 0);

-- Changes by ALISAIE
REPLACE INTO `gameobject` VALUES ( 5013797, 2009778, 1, -2187.58, 732.709, 155.506, 4.01042, 0, 0, 0.907118, -0.420877, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5013795';
DELETE FROM game_event_gameobject WHERE guid = '5013795';
DELETE FROM gameobject_battleground WHERE guid = '5013795';
DELETE FROM gameobject WHERE guid = '5013797';
DELETE FROM game_event_gameobject WHERE guid = '5013797';
DELETE FROM gameobject_battleground WHERE guid = '5013797';
