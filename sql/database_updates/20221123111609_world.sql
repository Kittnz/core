
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573746,61133,0,0,0,1,-4569.98,-3221.23,34.9228,5.55084,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-8907.752930', position_y = '-6539.927734', position_z = '12.283902', orientation = '2.231135' WHERE guid = '2573046';

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2573747,103,0,0,0,813,-2696.97,1143.9,52.1155,5.71896,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2573747;
DELETE FROM creature_addon WHERE guid=2573747;
DELETE FROM creature_movement WHERE id=2573747;
DELETE FROM game_event_creature WHERE guid=2573747;
DELETE FROM game_event_creature_data WHERE guid=2573747;
DELETE FROM creature_battleground WHERE guid=2573747;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573748,61126,0,0,0,1,-7562.36,-6812.07,35.0161,1.50757,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573749,9940,0,0,0,1,-7568.78,-6816.44,33.2324,3.53129,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573750,9940,0,0,0,1,-7572.53,-6812.95,33.6285,0.373992,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2573749;
DELETE FROM creature_addon WHERE guid=2573749;
DELETE FROM creature_movement WHERE id=2573749;
DELETE FROM game_event_creature WHERE guid=2573749;
DELETE FROM game_event_creature_data WHERE guid=2573749;
DELETE FROM creature_battleground WHERE guid=2573749;

-- Changes by TAMMO
UPDATE creature SET position_x = '-2646.614502', position_y = '1117.787231', position_z = '54.921082', orientation = '5.030933' WHERE guid = '2573719';
REPLACE INTO `creature` VALUES (2573751,103,0,0,0,813,-2691.49,1041.48,63.4937,1.34192,120,120,0,100,100,0,0,0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573752,61073,0,0,0,1,-7698.94,-6851.9,7.50359,3.9359,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573752,61073,0,0,0,1,-7698.94,-6851.9,7.50359,3.9359,300,300,8,100,100,1,0,0);

-- Changes by TAMMO
DELETE FROM creature WHERE guid=2573751;
DELETE FROM creature_addon WHERE guid=2573751;
DELETE FROM creature_movement WHERE id=2573751;
DELETE FROM game_event_creature WHERE guid=2573751;
DELETE FROM game_event_creature_data WHERE guid=2573751;
DELETE FROM creature_battleground WHERE guid=2573751;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573753,61086,0,0,0,1,-7657.41,-6852.82,3.01734,0.475432,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573753,61086,0,0,0,1,-7657.41,-6852.82,3.01734,0.475432,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573754,61087,0,0,0,1,-7591.1,-6893.79,2.46626,5.55696,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573754,61087,0,0,0,1,-7591.1,-6893.79,2.46626,5.55696,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573755,61086,0,0,0,1,-7516.71,-6892.77,3.23643,1.34016,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573755,61086,0,0,0,1,-7516.71,-6892.77,3.23643,1.34016,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573756,61086,0,0,0,1,-7460.71,-6839.26,5.36247,0.203687,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573756,61086,0,0,0,1,-7460.71,-6839.26,5.36247,0.203687,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573757,61075,0,0,0,1,-7485.6,-6874.71,3.62522,4.33584,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573757,61075,0,0,0,1,-7485.6,-6874.71,3.62522,4.33584,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573758,61075,0,0,0,1,-7559.83,-6881.27,3.66316,2.6488,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573758,61075,0,0,0,1,-7559.83,-6881.27,3.66316,2.6488,300,300,6,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573759,61075,0,0,0,1,-7680.78,-6836.79,3.7255,2.44382,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573759,61075,0,0,0,1,-7680.78,-6836.79,3.7255,2.44382,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573760,61075,0,0,0,1,-7467.06,-6754.67,2.24356,2.33936,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573760,61075,0,0,0,1,-7467.06,-6754.67,2.24356,2.33936,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573487,61073,0,0,0,1,-7534.17,-6660.18,0.421241,4.89351,120,120,6,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573761,61073,0,0,0,1,-7793.34,-6684.94,0.917996,4.44894,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573761,61073,0,0,0,1,-7793.34,-6684.94,0.917996,4.44894,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573762,61075,0,0,0,1,-7785.31,-6748.54,0.326912,5.52022,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573762,61075,0,0,0,1,-7785.31,-6748.54,0.326912,5.52022,300,300,8,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2573763,61075,0,0,0,1,-7640.6,-6570.01,3.73112,0.455182,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573763,61075,0,0,0,1,-7640.6,-6570.01,3.73112,0.455182,300,300,6,100,100,1,0,0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.89, -6815.91, 33.3345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.89, -6815.91, 33.3345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.89, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.69, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.49, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.29, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.09, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.89, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.69, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.49, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.29, -6815.91, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.29, -6815.71, 33.1345, 3.14358, 0, 0, 1, -0.000995799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.29, -6815.71, 33.1345, 0.827281, 0, 0, 0.401946, 0.915664, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.29, -6815.71, 33.1345, 3.06959, 0, 0, 0.999352, 0.0359921, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.29, -6815.71, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.09, -6815.71, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6815.71, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6815.51, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6815.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6815.11, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6814.91, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6814.71, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6814.51, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6814.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6814.11, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6813.91, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6813.71, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6813.51, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6813.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6813.11, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6812.91, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6812.71, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6812.51, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6812.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6812.11, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6811.91, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6811.71, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6811.51, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6811.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6811.11, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6810.91, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6810.71, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6810.51, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.69, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7567.89, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.09, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.29, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.49, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.69, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7568.89, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.09, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.29, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.49, -6810.31, 33.1345, 1.41633, 0, 0, 0.65044, 0.759558, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.49, -6810.31, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.49, -6810.11, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.29, -6810.11, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.09, -6810.11, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.29, -6810.11, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.49, -6810.11, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.69, -6810.11, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7569.89, -6810.11, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7570.09, -6810.11, 33.1345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012002, 2004560, 1, -7570.09, -6810.11, 32.9345, 1.6331, 0, 0, 0.728786, 0.684741, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012003, 2003436, 1, -7574.48, -6805.11, 29.3284, 5.87727, 0, 0, 0.201568, -0.979475, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5012003';
DELETE FROM game_event_gameobject WHERE guid = '5012003';
DELETE FROM gameobject_battleground WHERE guid = '5012003';
REPLACE INTO `gameobject` VALUES ( 5012004, 2005319, 1, -7575.86, -6807.41, 30.8267, 0.088881, 0, 0, 0.0444259, 0.999013, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012004, 2005319, 1, -7575.86, -6807.41, 30.8267, 0.088881, 0, 0, 0.0444259, 0.999013, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012004, 2005319, 1, -7575.86, -6807.41, 30.8267, 0.088881, 0, 0, 0.0444259, 0.999013, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012004, 2005319, 1, -7575.86, -6807.41, 30.8267, 0.088881, 0, 0, 0.0444259, 0.999013, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012004, 2005319, 1, -7575.86, -6807.41, 30.8267, 0.088881, 0, 0, 0.0444259, 0.999013, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5012004';
DELETE FROM game_event_gameobject WHERE guid = '5012004';
DELETE FROM gameobject_battleground WHERE guid = '5012004';
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7573.06, -6808.01, 31.5782, 6.06576, 0, 0, 0.108496, -0.994097, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7573.06, -6808.01, 31.5782, 6.06576, 0, 0, 0.108496, -0.994097, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7573.06, -6808.01, 31.5782, 6.06576, 0, 0, 0.108496, -0.994097, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7573.06, -6808.01, 31.5782, 6.06576, 0, 0, 0.108496, -0.994097, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7573.06, -6808.01, 31.5782, 6.06576, 0, 0, 0.108496, -0.994097, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7573.06, -6808.01, 31.5782, 6.05948, 0, 0, 0.111618, -0.993751, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7573.06, -6808.01, 31.5782, 4.61828, 0, 0, 0.739583, -0.673065, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7573.06, -6808.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.86, -6808.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.66, -6808.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.46, -6808.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.26, -6808.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.26, -6808.21, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.26, -6808.41, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.26, -6808.61, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.26, -6808.81, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.26, -6809.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.46, -6809.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.66, -6809.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.86, -6809.01, 31.5782, 4.27192, 0, 0, 0.8445, -0.535556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012005, 2005319, 1, -7572.86, -6809.01, 31.5782, 4.31199, 0, 0, 0.833602, -0.552365, 300, 300, 100, 1, 0, 0);
