
-- Changes by TAMO
UPDATE creature SET position_x = '-14348.996094', position_y = '241.521729', position_z = '47.909149', orientation = '1.021041' WHERE guid = '2572928';
REPLACE INTO `gameobject` VALUES ( 5011192, 1772005, 1, -1366.84, -2975.27, 94.5256, 1.42862, 0, 0, 0.655095, 0.755547, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5011192';
DELETE FROM game_event_gameobject WHERE guid = '5011192';
DELETE FROM gameobject_battleground WHERE guid = '5011192';
REPLACE INTO `gameobject` VALUES ( 5011193, 1772005, 1, -1367.64, -2975.33, 94.494, 1.2951, 0, 0, 0.603234, 0.797565, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011194, 1772005, 1, -1259.93, -2960.37, 90.0044, 5.40116, 0, 0, 0.426856, -0.90432, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011195, 1772005, 1, -1222.65, -3030.23, 91.8735, 2.45749, 0, 0, 0.942069, 0.335419, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011196, 1772005, 1, -1174.34, -3129.75, 94.5564, 5.38232, 0, 0, 0.435353, -0.90026, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011197, 1772005, 1, -1309.51, -3069.76, 89.8256, 2.48577, 0, 0, 0.946718, 0.322065, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011198, 1772005, 1, -1221.99, -2953.13, 89.9324, 0.446879, 0, 0, 0.221585, 0.975141, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011199, 1772005, 1, -1324.79, -2771.16, 93.3947, 5.7169, 0, 0, 0.279375, -0.960182, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011200, 1772004, 1, -1083.42, -2309.97, 93.3287, 3.74477, 0, 0, 0.954866, -0.297036, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011201, 1772004, 1, -1129.6, -2268.71, 82.6558, 0.874131, 0, 0, 0.423283, 0.905998, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5011201';
DELETE FROM game_event_gameobject WHERE guid = '5011201';
DELETE FROM gameobject_battleground WHERE guid = '5011201';
REPLACE INTO `gameobject` VALUES ( 5011202, 1772004, 1, -1129.75, -2268.48, 82.6362, 0.882774, 0, 0, 0.427194, 0.90416, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011203, 1772004, 1, -1133.33, -2193.2, 80.9035, 2.85805, 0, 0, 0.989967, 0.141297, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011204, 1772004, 1, -1084.3, -2004.61, 81.9319, 0.0109832, 0, 0, 0.00549158, 0.999985, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011205, 1772004, 1, -871.675, -2122.91, 93.326, 2.77087, 0, 0, 0.98287, 0.184303, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011206, 1772003, 1, -39.7978, -2025.16, 93.7621, 1.03357, 0, 0, 0.494088, 0.869412, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011207, 1772003, 1, -13.5263, -1946.89, 91.671, 0.800308, 0, 0, 0.38956, 0.921001, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011208, 1772003, 1, 84.7974, -1869.74, 95.8301, 4.1516, 0, 0, 0.875173, -0.48381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011209, 1772003, 1, 161.012, -1892.82, 93.3134, 4.83882, 0, 0, 0.661022, -0.750366, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011210, 1772003, 1, -117.35, -1837.39, 92.8691, 1.32024, 0, 0, 0.613212, 0.789919, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011211, 1772003, 1, -99.3344, -1957.25, 94.1543, 0.535626, 0, 0, 0.264623, 0.964352, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
DELETE FROM creature WHERE guid=2572943;
DELETE FROM creature_addon WHERE guid=2572943;
DELETE FROM creature_movement WHERE id=2572943;
DELETE FROM game_event_creature WHERE guid=2572943;
DELETE FROM game_event_creature_data WHERE guid=2572943;
DELETE FROM creature_battleground WHERE guid=2572943;

-- Changes by TAMO
REPLACE INTO `gameobject` VALUES ( 5011212, 1772003, 1, 206.013, -1816.21, 95.3431, 3.05598, 0, 0, 0.999084, 0.0427953, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2572944,5088,0,0,0,1,-3693.95,-2674.27,51.949,4.06671,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572945,61056,0,0,0,1,-3696.68,-2677.84,51.7844,0.879558,120,120,5,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2572946,4972,0,0,0,1,-3693.6,-2678.77,51.1487,1.67438,120,120,5,100,100,2,0,0);
DELETE FROM creature WHERE guid=2572946;
DELETE FROM creature_addon WHERE guid=2572946;
DELETE FROM creature_movement WHERE id=2572946;
DELETE FROM game_event_creature WHERE guid=2572946;
DELETE FROM game_event_creature_data WHERE guid=2572946;
DELETE FROM creature_battleground WHERE guid=2572946;
DELETE FROM creature WHERE guid=2572944;
DELETE FROM creature_addon WHERE guid=2572944;
DELETE FROM creature_movement WHERE id=2572944;
DELETE FROM game_event_creature WHERE guid=2572944;
DELETE FROM game_event_creature_data WHERE guid=2572944;
DELETE FROM creature_battleground WHERE guid=2572944;
REPLACE INTO `creature` VALUES (2572947,5088,0,0,0,1,-3693.08,-2674.33,51.7977,3.85209,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=73320;
DELETE FROM creature_addon WHERE guid=73320;
DELETE FROM creature_movement WHERE id=73320;
DELETE FROM game_event_creature WHERE guid=73320;
DELETE FROM game_event_creature_data WHERE guid=73320;
DELETE FROM creature_battleground WHERE guid=73320;
REPLACE INTO `gameobject` VALUES ( 5011213, 2010923, 1, -3095, -2679.38, 35.331, 5.70798, 0, 0, 0.283656, -0.958926, 300, 300, 100, 1, 0, 0);
DELETE FROM creature WHERE guid=74202;
DELETE FROM creature_addon WHERE guid=74202;
DELETE FROM creature_movement WHERE id=74202;
DELETE FROM game_event_creature WHERE guid=74202;
DELETE FROM game_event_creature_data WHERE guid=74202;
DELETE FROM creature_battleground WHERE guid=74202;
DELETE FROM creature WHERE guid=74203;
DELETE FROM creature_addon WHERE guid=74203;
DELETE FROM creature_movement WHERE id=74203;
DELETE FROM game_event_creature WHERE guid=74203;
DELETE FROM game_event_creature_data WHERE guid=74203;
DELETE FROM creature_battleground WHERE guid=74203;
UPDATE creature SET position_x = '-4433.210449', position_y = '-3189.188477', position_z = '33.575539', orientation = '0.384923' WHERE guid = '31634';
DELETE FROM creature WHERE guid=74393;
DELETE FROM creature_addon WHERE guid=74393;
DELETE FROM creature_movement WHERE id=74393;
DELETE FROM game_event_creature WHERE guid=74393;
DELETE FROM game_event_creature_data WHERE guid=74393;
DELETE FROM creature_battleground WHERE guid=74393;

-- Changes by COUN
REPLACE INTO `creature` VALUES (2572948,61070,0,0,0,0,529.613,-1484.1,46.8101,1.761,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572949,61071,0,0,0,0,521.076,-1443.88,50.4735,4.94973,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '540.159912', position_y = '-1499.017944', position_z = '47.977745', orientation = '0.125017' WHERE guid = '2572949';
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 544.027, -1498.66, 48.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 544.027, -1498.66, 49.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 544.027, -1498.66, 50.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 544.027, -1498.66, 51.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 544.027, -1498.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 544.027, -1499.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 545.027, -1499.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 544.027, -1499.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 543.027, -1499.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 543.027, -1500.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 543.027, -1499.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 543.027, -1498.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 544.027, -1498.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 543.027, -1498.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 542.027, -1498.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 541.827, -1498.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 541.627, -1498.66, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 541.627, -1498.46, 52.0407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 541.627, -1498.46, 52.2407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 541.627, -1498.26, 52.2407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011214, 2000056, 0, 541.627, -1498.06, 52.2407, 4.2634, 0, 0, 0.846774, -0.531953, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011215, 181130, 0, 543.049, -1498.8, 48.0646, 0.956055, 0, 0, 0.460029, 0.887904, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011215, 181130, 0, 543.049, -1498.8, 48.0646, 1.47442, 0, 0, 0.672224, 0.740348, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5011215';
DELETE FROM game_event_gameobject WHERE guid = '5011215';
DELETE FROM gameobject_battleground WHERE guid = '5011215';
REPLACE INTO `gameobject` VALUES ( 5011216, 181130, 0, 540.818, -1497.54, 47.812, 1.4862, 0, 0, 0.676573, 0.736375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011216, 181130, 0, 540.818, -1497.54, 47.612, 1.4862, 0, 0, 0.676573, 0.736375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011216, 181130, 0, 540.818, -1497.54, 47.412, 1.4862, 0, 0, 0.676573, 0.736375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011217, 179887, 0, 543.289, -1498.39, 48.012, 2.01791, 0, 0, 0.846277, 0.532744, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.61, 47.5352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.61, 47.5352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.61, 47.5352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.61, 47.3352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.61, 47.3352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.81, 47.3352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.61, 47.3352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.41, 47.3352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.21, 47.3352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011218, 2003148, 0, 537.859, -1496.01, 47.3352, 0.863379, 0, 0, 0.418406, 0.90826, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011219, 2004644, 0, 538.119, -1494.58, 47.3284, 1.41978, 0, 0, 0.65175, 0.758434, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5011219';
DELETE FROM game_event_gameobject WHERE guid = '5011219';
DELETE FROM gameobject_battleground WHERE guid = '5011219';
REPLACE INTO `gameobject` VALUES ( 5011220, 2004644, 0, 544.032, -1500.18, 48.2369, 2.10229, 0, 0, 0.867992, 0.496578, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5011220';
DELETE FROM game_event_gameobject WHERE guid = '5011220';
DELETE FROM gameobject_battleground WHERE guid = '5011220';
REPLACE INTO `gameobject` VALUES ( 5011221, 2004643, 0, 538.411, -1494.03, 47.2835, 0.834654, 0, 0, 0.405318, 0.914176, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011221, 2004643, 0, 538.411, -1494.23, 47.2835, 0.834654, 0, 0, 0.405318, 0.914176, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5011222, 2001593, 0, 536.019, -1493.36, 47.0626, 4.31397, 0, 0, 0.833055, -0.553189, 300, 300, 100, 1, 0, 0);
UPDATE creature SET position_x = '541.627991', position_y = '-1499.507812', position_z = '48.149422', orientation = '0.508719' WHERE guid = '2572949';
