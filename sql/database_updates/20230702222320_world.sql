
-- Changes by VOJI
REPLACE INTO `creature` VALUES (2577923,61550,0,0,0,0,-1422.66,1945.8,54.1587,3.36825,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577923;
DELETE FROM creature_addon WHERE guid=2577923;
DELETE FROM creature_movement WHERE id=2577923;
DELETE FROM game_event_creature WHERE guid=2577923;
DELETE FROM game_event_creature_data WHERE guid=2577923;
DELETE FROM creature_battleground WHERE guid=2577923;
REPLACE INTO `gameobject` VALUES ( 5015800, 2005865, 1, -5262.08, -263.165, 36.2808, 1.70883, 0, 0, 0.754186, 0.656661, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015800';
DELETE FROM game_event_gameobject WHERE guid = '5015800';
DELETE FROM gameobject_battleground WHERE guid = '5015800';
REPLACE INTO `gameobject` VALUES ( 5015801, 2005955, 1, -5263, -262.384, 34.0536, 1.56353, 0, 0, 0.704532, 0.709672, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015801';
DELETE FROM game_event_gameobject WHERE guid = '5015801';
DELETE FROM gameobject_battleground WHERE guid = '5015801';
REPLACE INTO `gameobject` VALUES ( 5015802, 2006141, 1, -5260.1, -257.562, 33.7062, 2.20363, 0, 0, 0.892029, 0.451979, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417420233902330, 2.000000);
REPLACE INTO `gameobject` VALUES ( 5015802, 2006141, 1, -5260.1, -257.562, 33.7062, 2.20363, 0, 0, 0.892029, 0.451979, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417420233902330, 1.000000);
REPLACE INTO `gameobject` VALUES ( 5015802, 2006141, 1, -5260.1, -257.562, 33.7062, 2.20363, 0, 0, 0.892029, 0.451979, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417420233902330, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5015802, 2006141, 1, -5260.1, -257.562, 33.7062, 2.20363, 0, 0, 0.892029, 0.451979, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015803, 2006141, 1, -5263.85, -253.462, 33.7441, 4.90539, 0, 0, 0.635685, -0.771948, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417420233902331, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5015803, 2006141, 1, -5263.85, -253.462, 33.7441, 4.90539, 0, 0, 0.635685, -0.771948, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.87, -252.287, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.87, -252.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.87, -252.287, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.87, -252.087, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.87, -251.887, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.87, -251.687, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.87, -251.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.67, -251.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.47, -251.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.27, -251.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.47, -251.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.27, -251.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5260.07, -251.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.87, -251.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.87, -251.687, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.87, -251.887, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.87, -252.087, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.87, -252.287, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.87, -252.487, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.87, -252.687, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.87, -252.887, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.67, -252.887, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.47, -252.887, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.27, -252.887, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.27, -252.887, 33.7621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015804, 2006141, 1, -5259.27, -252.887, 33.5621, 5.25097, 0, 0, 0.4935, -0.869746, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -258.738, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -258.938, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -259.138, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -259.338, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -259.538, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -259.738, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -259.138, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -258.538, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -257.938, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -257.338, 34.7364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015806, 2005957, 1, -5259.95, -257.895, 34.7076, 4.33205, 0, 0, 0.82802, -0.560699, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015806, 2005957, 1, -5259.95, -257.895, 34.7076, 4.55982, 0, 0, 0.758941, -0.65116, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015806, 2005957, 1, -5259.95, -257.895, 34.7076, 3.42099, 0, 0, 0.990258, -0.139245, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015806, 2005957, 1, -5259.95, -257.495, 34.7076, 3.42099, 0, 0, 0.990258, -0.139245, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015806, 2005957, 1, -5260.35, -257.495, 34.7076, 3.42099, 0, 0, 0.990258, -0.139245, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015806, 2005957, 1, -5260.35, -257.895, 34.7076, 3.42099, 0, 0, 0.990258, -0.139245, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015806, 2005957, 1, -5260.35, -258.295, 34.7076, 3.42099, 0, 0, 0.990258, -0.139245, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015806, 2005957, 1, -5260.35, -258.295, 34.3076, 3.42099, 0, 0, 0.990258, -0.139245, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015805, 2005957, 1, -5260.23, -257.338, 34.3364, 1.44964, 0, 0, 0.663001, 0.748618, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015807, 2005957, 1, -5259.02, -252.813, 33.9843, 3.99669, 0, 0, 0.909985, -0.414641, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015808, 2005957, 1, -5264.46, -252.307, 34.6726, 4.97843, 0, 0, 0.607077, -0.794643, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5015808';
DELETE FROM game_event_gameobject WHERE guid = '5015808';
DELETE FROM gameobject_battleground WHERE guid = '5015808';
REPLACE INTO `gameobject` VALUES ( 5015809, 2005957, 1, -5263.64, -253.702, 34.1838, 3.52545, 0, 0, 0.981638, -0.190752, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015809, 2005957, 1, -5263.64, -253.702, 34.1838, 4.5072, 0, 0, 0.775808, -0.630969, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015810, 2005957, 1, -5264.34, -253.96, 34.3532, 4.38939, 0, 0, 0.811608, -0.584202, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015810, 2005957, 1, -5264.34, -253.96, 34.3532, 4.04773, 0, 0, 0.899107, -0.437728, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015810, 2005957, 1, -5264.34, -253.96, 34.3532, 3.71787, 0, 0, 0.958775, -0.284167, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577924,20115,0,0,0,1,5383.06,-3698.38,1593.44,5.90658,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577924;
DELETE FROM creature_addon WHERE guid=2577924;
DELETE FROM creature_movement WHERE id=2577924;
DELETE FROM game_event_creature WHERE guid=2577924;
DELETE FROM game_event_creature_data WHERE guid=2577924;
DELETE FROM creature_battleground WHERE guid=2577924;
REPLACE INTO `gameobject` VALUES ( 5015574, 2020036, 1, 5371, -3700.07, 1594.55, 4.86566, 0, 0, 0.650894, -0.759168, 0, 0, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2577925,65105,0,0,0,1,5302.57,-3526.89,1591.6,5.55237,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577925;
DELETE FROM creature_addon WHERE guid=2577925;
DELETE FROM creature_movement WHERE id=2577925;
DELETE FROM game_event_creature WHERE guid=2577925;
DELETE FROM game_event_creature_data WHERE guid=2577925;
DELETE FROM creature_battleground WHERE guid=2577925;
REPLACE INTO `creature` VALUES (2577926,61226,0,0,0,532,-10893.5,-1758.96,90.477,4.60134,120,120,0,100,100,0,0,0);
