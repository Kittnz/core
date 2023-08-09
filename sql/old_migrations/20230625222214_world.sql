
-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5015582, 2020040, 532, -11006, -1965.01, 48.5283, 4.60083, 0, 0, 0.745429, -0.666585, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015583, 2020041, 329, 3710.21, -3383.27, 132.844, 2.80145, 0, 0, 0.985572, 0.169254, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2577555,61571,0,0,0,532,-11064.8,-1966.53,53.1187,3.00408,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577556,65102,0,0,0,451,15689.6,16571.4,48.6117,5.45993,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577556;
DELETE FROM creature_addon WHERE guid=2577556;
DELETE FROM creature_movement WHERE id=2577556;
DELETE FROM game_event_creature WHERE guid=2577556;
DELETE FROM game_event_creature_data WHERE guid=2577556;
DELETE FROM creature_battleground WHERE guid=2577556;
REPLACE INTO `gameobject` VALUES ( 5015584, 2004927, 807, 3322.71, 3041.9, 25.4688, 3.04985, 0, 0, 0.998948, 0.0458532, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015584';
DELETE FROM game_event_gameobject WHERE guid = '5015584';
DELETE FROM gameobject_battleground WHERE guid = '5015584';
REPLACE INTO `gameobject` VALUES ( 5015585, 2011035, 815, -957.767, 2939.41, 198.288, 2.65666, 0, 0, 0.970749, 0.240098, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015585';
DELETE FROM game_event_gameobject WHERE guid = '5015585';
DELETE FROM gameobject_battleground WHERE guid = '5015585';
DELETE FROM creature WHERE guid=2570521;
DELETE FROM creature_addon WHERE guid=2570521;
DELETE FROM creature_movement WHERE id=2570521;
DELETE FROM game_event_creature WHERE guid=2570521;
DELETE FROM game_event_creature_data WHERE guid=2570521;
DELETE FROM creature_battleground WHERE guid=2570521;
DELETE FROM creature WHERE guid=2570520;
DELETE FROM creature_addon WHERE guid=2570520;
DELETE FROM creature_movement WHERE id=2570520;
DELETE FROM game_event_creature WHERE guid=2570520;
DELETE FROM game_event_creature_data WHERE guid=2570520;
DELETE FROM creature_battleground WHERE guid=2570520;
REPLACE INTO `creature` VALUES (2577557,61212,0,0,0,807,3061.78,3168.31,25.8609,4.15401,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 3115.598877, `position_y` = 3241.952881, `position_z` = 29.339977, `orientation` = 5.392585 WHERE `guid` = 2570818;
REPLACE INTO `creature` VALUES (2577558,61212,0,0,0,807,3119.95,3242.53,29.2654,4.87422,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 3119.728027, `position_y` = 3244.697998, `position_z` = 29.262503, `orientation` = 4.830240 WHERE `guid` = 2577558;
REPLACE INTO `creature` VALUES (2577559,61212,0,0,0,807,3223.86,3051.93,21.5881,5.1389,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577560,61212,0,0,0,807,3279.12,2952.94,26.6753,5.93215,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577561,61212,0,0,0,807,3147.73,2962.61,25.6056,6.13713,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577562,61211,0,0,0,807,3152.33,2957.44,25.2202,1.44595,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577562;
DELETE FROM creature_addon WHERE guid=2577562;
DELETE FROM creature_movement WHERE id=2577562;
DELETE FROM game_event_creature WHERE guid=2577562;
DELETE FROM game_event_creature_data WHERE guid=2577562;
DELETE FROM creature_battleground WHERE guid=2577562;
REPLACE INTO `creature` VALUES (2577563,60746,0,0,0,807,3152.33,2957.44,25.2202,1.44595,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577564,60743,0,0,0,807,3155.57,2963.29,25.4656,3.45893,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577565,60746,0,0,0,807,3151.4,2966.01,25.4426,5.00459,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577566,60742,0,0,0,807,3158.94,2957.42,24.5769,5.40907,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577567,60742,0,0,0,807,3147.22,2956.4,26.1484,3.18639,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577568,60742,0,0,0,807,3144.58,2969.25,24.4323,1.76168,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577569,60742,0,0,0,807,3153.32,2969.63,24.7991,5.98084,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577570,60742,0,0,0,807,3161.83,2963.75,24.1374,5.89444,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577571,60742,0,0,0,807,3151.75,3022.04,25.2795,2.34208,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577572,60742,0,0,0,807,3154.82,3024.78,25.3601,3.21387,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577573,60742,0,0,0,807,3147.82,3026.01,25.2372,2.96883,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577574,60742,0,0,0,807,3141.89,3019.92,24.4566,5.06663,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577575,60742,0,0,0,807,3141.36,3029.4,24.8647,6.26043,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577576,60742,0,0,0,807,3147.56,3031.59,25.3407,0.345598,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577576,60742,0,0,0,807,3147.56,3031.59,25.3407,0.345598,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577572,60742,0,0,0,807,3154.82,3024.78,25.3601,3.21387,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577571,60742,0,0,0,807,3151.75,3022.04,25.2795,2.34208,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577573,60742,0,0,0,807,3147.82,3026.01,25.2372,2.96883,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577574,60742,0,0,0,807,3141.89,3019.92,24.4566,5.06663,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577575,60742,0,0,0,807,3141.36,3029.4,24.8647,6.26043,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577577,60742,0,0,0,807,3147.8,3032.47,25.2769,4.19798,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577577,60742,0,0,0,807,3147.8,3032.47,25.2769,4.19798,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570799,60742,0,0,0,807,3233.97,3030.45,21.5896,2.38,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570795,60742,0,0,0,807,3215.41,3035.75,21.5895,0.33639,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570796,60742,0,0,0,807,3218.06,3045.13,21.5895,4.64902,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570797,60742,0,0,0,807,3220.61,3052.52,21.5881,4.99066,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570792,60742,0,0,0,807,3229.95,3046.94,21.5894,4.33564,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570801,60742,0,0,0,807,3234.79,3046.93,21.5881,3.51474,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570798,60742,0,0,0,807,3236.24,3041.89,21.5881,6.08865,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570800,60742,0,0,0,807,3240.51,3037,21.5931,5.23083,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570793,60742,0,0,0,807,3232.14,3037.53,21.5895,0.0669988,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570799,60742,0,0,0,807,3233.97,3030.45,21.5896,2.38,604800,604800,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2570794,60742,0,0,0,807,3224.79,3030.76,21.5895,3.02245,604800,604800,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2574457;
DELETE FROM creature_addon WHERE guid=2574457;
DELETE FROM creature_movement WHERE id=2574457;
DELETE FROM game_event_creature WHERE guid=2574457;
DELETE FROM game_event_creature_data WHERE guid=2574457;
DELETE FROM creature_battleground WHERE guid=2574457;
DELETE FROM creature WHERE guid=2570524;
DELETE FROM creature_addon WHERE guid=2570524;
DELETE FROM creature_movement WHERE id=2570524;
DELETE FROM game_event_creature WHERE guid=2570524;
DELETE FROM game_event_creature_data WHERE guid=2570524;
DELETE FROM creature_battleground WHERE guid=2570524;
DELETE FROM creature WHERE guid=2570522;
DELETE FROM creature_addon WHERE guid=2570522;
DELETE FROM creature_movement WHERE id=2570522;
DELETE FROM game_event_creature WHERE guid=2570522;
DELETE FROM game_event_creature_data WHERE guid=2570522;
DELETE FROM creature_battleground WHERE guid=2570522;
DELETE FROM creature WHERE guid=2570523;
DELETE FROM creature_addon WHERE guid=2570523;
DELETE FROM creature_movement WHERE id=2570523;
DELETE FROM game_event_creature WHERE guid=2570523;
DELETE FROM game_event_creature_data WHERE guid=2570523;
DELETE FROM creature_battleground WHERE guid=2570523;
REPLACE INTO `gameobject` VALUES ( 5015586, 2010866, 807, 2739.36, 2948.61, 28.4873, 0.3558, 0, 0, 0.176963, 0.984217, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015586, 2010866, 807, 2739.36, 2948.61, 27.4873, 0.3558, 0, 0, 0.176963, 0.984217, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015586, 2010866, 807, 2739.36, 2948.61, 26.4873, 0.3558, 0, 0, 0.176963, 0.984217, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015586, 2010866, 807, 2739.36, 2948.61, 25.4873, 0.3558, 0, 0, 0.176963, 0.984217, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015586';
DELETE FROM game_event_gameobject WHERE guid = '5015586';
DELETE FROM gameobject_battleground WHERE guid = '5015586';
REPLACE INTO `gameobject` VALUES ( 5015587, 180322, 807, 2738.43, 2956.32, 26.303, 0.821443, 0, 0, 0.399271, 0.916833, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015587, 180322, 807, 2738.43, 2956.32, 25.303, 0.821443, 0, 0, 0.399271, 0.916833, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015587';
DELETE FROM game_event_gameobject WHERE guid = '5015587';
DELETE FROM gameobject_battleground WHERE guid = '5015587';
REPLACE INTO `gameobject` VALUES ( 5015588, 2010866, 807, 2736.65, 2959.12, 25.8727, 0.378479, 0, 0, 0.188112, 0.982148, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015588';
DELETE FROM game_event_gameobject WHERE guid = '5015588';
DELETE FROM gameobject_battleground WHERE guid = '5015588';
REPLACE INTO `gameobject` VALUES ( 5015589, 2010866, 807, 2733.94, 2979.82, 21.489, 0.492031, 0, 0, 0.243541, 0.96989, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015589';
DELETE FROM game_event_gameobject WHERE guid = '5015589';
DELETE FROM gameobject_battleground WHERE guid = '5015589';
REPLACE INTO `gameobject` VALUES ( 5015590, 180322, 807, 2735.82, 2956.86, 25.9576, 0.122103, 0, 0, 0.0610138, 0.998137, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015591, 180322, 807, 2741.45, 2942.83, 28.2444, 1.08869, 0, 0, 0.517859, 0.855466, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015591';
DELETE FROM game_event_gameobject WHERE guid = '5015591';
DELETE FROM gameobject_battleground WHERE guid = '5015591';
REPLACE INTO `gameobject` VALUES ( 5015592, 180322, 807, 2744.98, 2942.55, 27.5583, 1.2017, 0, 0, 0.565345, 0.824854, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015593, 180322, 807, 2712.29, 3046.63, 24.9889, 0.200319, 0, 0, 0.099992, 0.994988, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015593';
DELETE FROM game_event_gameobject WHERE guid = '5015593';
DELETE FROM gameobject_battleground WHERE guid = '5015593';
REPLACE INTO `gameobject` VALUES ( 5015594, 180322, 807, 2712.32, 3048.22, 22.0428, 3.53902, 0, 0, 0.980321, -0.197411, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015594';
DELETE FROM game_event_gameobject WHERE guid = '5015594';
DELETE FROM gameobject_battleground WHERE guid = '5015594';
REPLACE INTO `gameobject` VALUES ( 5015595, 180322, 807, 2714.05, 3039.27, 25.0374, 3.46519, 0, 0, 0.986939, -0.161095, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015595';
DELETE FROM game_event_gameobject WHERE guid = '5015595';
DELETE FROM gameobject_battleground WHERE guid = '5015595';
REPLACE INTO `gameobject` VALUES ( 5015596, 180322, 807, 2714.39, 3038.56, 25.0991, 1.88262, 0, 0, 0.808331, 0.588728, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015596';
DELETE FROM game_event_gameobject WHERE guid = '5015596';
DELETE FROM gameobject_battleground WHERE guid = '5015596';
REPLACE INTO `gameobject` VALUES ( 5015597, 180322, 807, 2708.65, 3049.72, 24.4611, 0.339874, 0, 0, 0.16912, 0.985595, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015598, 180322, 807, 2713.55, 3035.03, 25.1447, 0.160014, 0, 0, 0.0799216, 0.996801, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015598';
DELETE FROM game_event_gameobject WHERE guid = '5015598';
DELETE FROM gameobject_battleground WHERE guid = '5015598';
DELETE FROM gameobject WHERE guid = '5015597';
DELETE FROM game_event_gameobject WHERE guid = '5015597';
DELETE FROM gameobject_battleground WHERE guid = '5015597';
REPLACE INTO `gameobject` VALUES ( 5015599, 2010866, 807, 2708.69, 3049.68, 24.4731, 0.667381, 0, 0, 0.327532, 0.94484, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015599';
DELETE FROM game_event_gameobject WHERE guid = '5015599';
DELETE FROM gameobject_battleground WHERE guid = '5015599';
REPLACE INTO `gameobject` VALUES ( 5015600, 2010866, 807, 2708.53, 3049.9, 24.426, 0.272326, 0, 0, 0.135743, 0.990744, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015600';
DELETE FROM game_event_gameobject WHERE guid = '5015600';
DELETE FROM gameobject_battleground WHERE guid = '5015600';
REPLACE INTO `gameobject` VALUES ( 5015601, 2010866, 807, 2708.47, 3049.72, 24.456, 0.26448, 0, 0, 0.131855, 0.991269, 300, 300, 100, 1, 0, 0);
