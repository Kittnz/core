
-- Changes by SHANG
DELETE FROM creature WHERE guid=2579343;
DELETE FROM creature_addon WHERE guid=2579343;
DELETE FROM creature_movement WHERE id=2579343;
DELETE FROM game_event_creature WHERE guid=2579343;
DELETE FROM game_event_creature_data WHERE guid=2579343;
DELETE FROM creature_battleground WHERE guid=2579343;
DELETE FROM creature WHERE guid=2579338;
DELETE FROM creature_addon WHERE guid=2579338;
DELETE FROM creature_movement WHERE id=2579338;
DELETE FROM game_event_creature WHERE guid=2579338;
DELETE FROM game_event_creature_data WHERE guid=2579338;
DELETE FROM creature_battleground WHERE guid=2579338;
REPLACE INTO `creature` VALUES (2579987,61664,0,0,0,1,-76.7944,-7928.87,36.2717,4.7288,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579988,61663,0,0,0,1,-80.6609,-7947.2,36.3148,3.13759,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579989,61664,0,0,0,1,-54.6553,-7946.64,36.5285,0.186058,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579989,61664,0,0,0,1,-54.6553,-7946.64,36.5285,0.186058,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2579990,61663,0,0,0,1,-45.684,-7928.05,37.2631,5.56447,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579991,61664,0,0,0,1,-43.4062,-7918.23,36.8277,2.22181,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579992,61663,0,0,0,1,-16.1544,-7960.25,36.2902,4.64428,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579992,61663,0,0,0,1,-16.1544,-7960.25,36.2902,4.64428,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2579993,61664,0,0,0,1,-32.8473,-7967.35,36.5523,3.36486,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579994,61663,0,0,0,1,-42.2022,-7960.23,36.5827,0.604973,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579995,61663,0,0,0,1,-37.5581,-7961.69,36.7315,1.95114,120,120,0,100,100,0,0,0);
REPLACE INTO `gameobject` VALUES ( 5016910, 182059, 1, -38.8917, -7958.42, 36.7498, 4.6105, 0, 0, 0.742196, -0.670183, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016910';
DELETE FROM game_event_gameobject WHERE guid = '5016910';
DELETE FROM gameobject_battleground WHERE guid = '5016910';
REPLACE INTO `gameobject` VALUES ( 5016911, 181851, 1, -38.8995, -7958.49, 36.748, 4.6105, 0, 0, 0.742196, -0.670183, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016912, 181870, 1, -11.3552, -7932.04, 36.5512, 0.935544, 0, 0, 0.450899, 0.892575, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2579996,61664,0,0,0,1,-7.71826,-7929.47,36.6064,3.74334,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579997,61663,0,0,0,1,-11.9009,-7926.91,36.407,4.99684,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579998,61664,0,0,0,1,-14.2582,-7902.21,37.4411,2.06809,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579998,61664,0,0,0,1,-14.2582,-7902.21,37.4411,2.06809,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2579999,61664,0,0,0,1,-63.8988,-7897.82,36.2497,3.10283,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2579999,61664,0,0,0,1,-63.8988,-7897.82,36.2497,3.10283,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580000,61663,0,0,0,1,-106.959,-7908.43,34.3125,3.42013,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580000,61663,0,0,0,1,-106.959,-7908.43,34.3125,3.42013,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580001,61664,0,0,0,1,-63.1436,-7975.22,47.9327,0.0389945,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580001,61664,0,0,0,1,-63.1436,-7975.22,47.9327,0.0389945,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580002,61664,0,0,0,1,20.1431,-7933.55,36.5071,0.459066,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580002,61664,0,0,0,1,20.1431,-7933.55,36.5071,0.459066,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580003,61663,0,0,0,1,84.9031,-7913.77,41.934,2.29297,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580003,61663,0,0,0,1,84.9031,-7913.77,41.934,2.29297,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580004,61663,0,0,0,1,67.3086,-7961.52,36.5059,3.94859,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580004,61663,0,0,0,1,67.3086,-7961.52,36.5059,3.94859,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580005,61664,0,0,0,1,106.312,-7951.57,36.8733,0.571378,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2580005;
DELETE FROM creature_addon WHERE guid=2580005;
DELETE FROM creature_movement WHERE id=2580005;
DELETE FROM game_event_creature WHERE guid=2580005;
DELETE FROM game_event_creature_data WHERE guid=2580005;
DELETE FROM creature_battleground WHERE guid=2580005;
REPLACE INTO `creature` VALUES (2580006,61663,0,0,0,1,106.312,-7951.57,36.8733,0.571378,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580006,61663,0,0,0,1,106.312,-7951.57,36.8733,0.571378,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580007,61663,0,0,0,1,150.839,-7904.36,42.5162,0.237583,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580007,61663,0,0,0,1,150.839,-7904.36,42.5162,0.237583,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580008,61666,0,0,0,1,168.893,-7929.56,42.8979,6.17519,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580008,61666,0,0,0,1,168.893,-7929.56,42.8979,6.17519,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580009,61663,0,0,0,1,172.785,-7908.39,44.1556,1.5001,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580009,61663,0,0,0,1,172.785,-7908.39,44.1556,1.5001,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580010,61663,0,0,0,1,157.859,-7963.03,39.9797,5.38667,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580010,61663,0,0,0,1,157.859,-7963.03,39.9797,5.38667,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580011,61663,0,0,0,1,183.307,-7992.94,38.7475,6.0464,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580011,61663,0,0,0,1,183.307,-7992.94,38.7475,6.0464,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580012,61663,0,0,0,1,218.684,-7947.24,37.9688,1.07562,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580012,61663,0,0,0,1,218.684,-7947.24,37.9688,1.07562,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580013,61666,0,0,0,1,249.409,-7906.6,40.706,0.46222,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580013,61666,0,0,0,1,249.409,-7906.6,40.706,0.46222,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580014,61663,0,0,0,1,274.321,-7946.75,36.8973,5.2343,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580014,61663,0,0,0,1,274.321,-7946.75,36.8973,5.2343,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580015,61665,0,0,0,1,302.425,-7894.73,38.8323,3.08624,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580015,61665,0,0,0,1,302.425,-7894.73,38.8323,3.08624,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580016,61666,0,0,0,1,269.387,-7879.02,43.7878,2.37781,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580016,61666,0,0,0,1,269.387,-7879.02,43.7878,2.37781,300,300,8,100,100,1,0,0);
DELETE FROM creature WHERE guid=2579351;
DELETE FROM creature_addon WHERE guid=2579351;
DELETE FROM creature_movement WHERE id=2579351;
DELETE FROM game_event_creature WHERE guid=2579351;
DELETE FROM game_event_creature_data WHERE guid=2579351;
DELETE FROM creature_battleground WHERE guid=2579351;
DELETE FROM creature WHERE guid=2579352;
DELETE FROM creature_addon WHERE guid=2579352;
DELETE FROM creature_movement WHERE id=2579352;
DELETE FROM game_event_creature WHERE guid=2579352;
DELETE FROM game_event_creature_data WHERE guid=2579352;
DELETE FROM creature_battleground WHERE guid=2579352;
DELETE FROM creature WHERE guid=2579355;
DELETE FROM creature_addon WHERE guid=2579355;
DELETE FROM creature_movement WHERE id=2579355;
DELETE FROM game_event_creature WHERE guid=2579355;
DELETE FROM game_event_creature_data WHERE guid=2579355;
DELETE FROM creature_battleground WHERE guid=2579355;
DELETE FROM creature WHERE guid=2579354;
DELETE FROM creature_addon WHERE guid=2579354;
DELETE FROM creature_movement WHERE id=2579354;
DELETE FROM game_event_creature WHERE guid=2579354;
DELETE FROM game_event_creature_data WHERE guid=2579354;
DELETE FROM creature_battleground WHERE guid=2579354;
DELETE FROM creature WHERE guid=2579353;
DELETE FROM creature_addon WHERE guid=2579353;
DELETE FROM creature_movement WHERE id=2579353;
DELETE FROM game_event_creature WHERE guid=2579353;
DELETE FROM game_event_creature_data WHERE guid=2579353;
DELETE FROM creature_battleground WHERE guid=2579353;
REPLACE INTO `creature` VALUES (2580017,61665,0,0,0,1,324.752,-7917.49,39.4069,0.0679488,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580017,61665,0,0,0,1,324.752,-7917.49,39.4069,0.0679488,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580018,61663,0,0,0,1,333.918,-7874.38,42.0261,1.63325,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580018,61663,0,0,0,1,333.918,-7874.38,42.0261,1.63325,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580019,61665,0,0,0,1,366.53,-7889.21,41.7499,4.09862,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580020,61663,0,0,0,1,359.987,-7890.67,41.5366,5.81077,120,120,0,100,100,0,0,0);
REPLACE INTO `gameobject` VALUES ( 5016913, 181870, 1, 363.666, -7893.1, 41.2826, 1.88378, 0, 0, 0.808671, 0.58826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2580021,61666,0,0,0,1,364.708,-7896.67,41.1115,1.90342,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580022,61663,0,0,0,1,406.874,-7910.3,40.7406,0.176329,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580022,61663,0,0,0,1,406.874,-7910.3,40.7406,0.176329,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580023,61665,0,0,0,1,427.809,-7868.92,41.4168,1.16829,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580023,61665,0,0,0,1,427.809,-7868.92,41.4168,1.16829,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580024,61665,0,0,0,1,386.319,-7839.64,40.8353,3.57296,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580025,61666,0,0,0,1,359.663,-7828.17,41.9009,5.56237,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580026,61663,0,0,0,1,355.365,-7839.12,41.3659,3.58709,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580026,61663,0,0,0,1,355.365,-7839.12,41.3659,3.58709,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580027,61666,0,0,0,1,336.412,-7805.98,42.7292,1.9621,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580027,61666,0,0,0,1,336.412,-7805.98,42.7292,1.9621,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580028,61666,0,0,0,1,338.195,-7949.89,38.3995,0.827984,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580029,61665,0,0,0,1,325.708,-7988.87,38.0631,4.08503,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580029,61665,0,0,0,1,325.708,-7988.87,38.0631,4.08503,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580030,61663,0,0,0,1,329.608,-7956.59,38.4207,1.36049,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580031,61665,0,0,0,1,250.715,-7857.1,43.9121,2.94386,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580031,61665,0,0,0,1,250.715,-7857.1,43.9121,2.94386,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580032,61666,0,0,0,1,224.767,-7839.32,42.0726,1.34164,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580032,61666,0,0,0,1,224.767,-7839.32,42.0726,1.34164,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580033,61665,0,0,0,1,223.536,-7813.04,42.2711,3.0923,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580033,61665,0,0,0,1,223.536,-7813.04,42.2711,3.0923,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580034,61666,0,0,0,1,194.228,-7821.17,41.2478,3.58553,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580034,61666,0,0,0,1,194.228,-7821.17,41.2478,3.58553,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580035,61666,0,0,0,1,168.666,-7810.14,42.275,3.2321,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580035,61666,0,0,0,1,168.666,-7810.14,42.275,3.2321,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580036,61665,0,0,0,1,152.365,-7792.05,42.689,1.8553,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580036,61665,0,0,0,1,152.365,-7792.05,42.689,1.8553,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580037,61666,0,0,0,1,156.625,-7757.38,45.4635,0.225595,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580037,61666,0,0,0,1,156.625,-7757.38,45.4635,0.225595,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580038,61665,0,0,0,1,184.853,-7742.31,27.5917,6.18677,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580038,61665,0,0,0,1,184.853,-7742.31,27.5917,6.18677,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580039,61666,0,0,0,1,266.911,-7766.77,37.0922,5.41472,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580039,61666,0,0,0,1,266.911,-7766.77,37.0922,5.41472,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580040,61665,0,0,0,1,137.211,-7740.31,33.0109,3.28606,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580040,61665,0,0,0,1,137.211,-7740.31,33.0109,3.28606,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580041,61665,0,0,0,1,111.647,-7706.13,41.8197,2.01136,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580041,61665,0,0,0,1,111.647,-7706.13,41.8197,2.01136,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580041,61665,0,0,0,1,111.647,-7706.13,41.8197,2.01136,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580042,61666,0,0,0,1,130.761,-7685.36,41.7259,5.88169,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580042,61666,0,0,0,1,130.761,-7685.36,41.7259,5.88169,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580043,61665,0,0,0,1,171.701,-7698.5,46.6585,4.56174,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580043,61665,0,0,0,1,171.701,-7698.5,46.6585,4.56174,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580044,61665,0,0,0,1,156.496,-7717.34,46.4307,4.1494,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580044,61665,0,0,0,1,156.496,-7717.34,46.4307,4.1494,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580045,61666,0,0,0,1,182.673,-7714.78,45.374,6.15923,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580045,61666,0,0,0,1,182.673,-7714.78,45.374,6.15923,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580046,61665,0,0,0,1,207.319,-7684.29,41.5132,0.736059,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580046,61665,0,0,0,1,207.319,-7684.29,41.5132,0.736059,300,300,4,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580047,61666,0,0,0,1,236.596,-7703.18,36.074,5.58781,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580047,61666,0,0,0,1,236.596,-7703.18,36.074,5.58781,300,300,8,100,100,1,0,0);
