
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2572379,60917,0,0,0,0,-8169.88,1220.17,8.21004,3.22876,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572379;
DELETE FROM creature_addon WHERE guid=2572379;
DELETE FROM creature_movement WHERE id=2572379;
DELETE FROM game_event_creature WHERE guid=2572379;
DELETE FROM game_event_creature_data WHERE guid=2572379;
DELETE FROM creature_battleground WHERE guid=2572379;

-- Changes by COUN
REPLACE INTO `gameobject` VALUES ( 5010089, 2002232, 1, -1621.52, -4891.53, 16.0884, 2.33416, 0, 0, 0.919607, 0.392839, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010089';
DELETE FROM game_event_gameobject WHERE guid = '5010089';
DELETE FROM gameobject_battleground WHERE guid = '5010089';
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1619.19, -4889.68, 16.0886, 2.2831, 0, 0, 0.90928, 0.416184, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1619.19, -4889.68, 16.0886, 5.43255, 0, 0, 0.412611, -0.910907, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1619.19, -4888.68, 16.0886, 5.43255, 0, 0, 0.412611, -0.910907, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1618.99, -4888.68, 16.0886, 5.43255, 0, 0, 0.412611, -0.910907, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1619.19, -4888.68, 16.0886, 5.43255, 0, 0, 0.412611, -0.910907, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1619.39, -4888.68, 16.0886, 5.43255, 0, 0, 0.412611, -0.910907, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1619.39, -4888.88, 16.0886, 5.43255, 0, 0, 0.412611, -0.910907, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1619.59, -4888.88, 16.0886, 5.43255, 0, 0, 0.412611, -0.910907, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010090, 2002397, 1, -1619.59, -4889.08, 16.0886, 5.43255, 0, 0, 0.412611, -0.910907, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010091, 2004023, 1, -1619.8, -4888.07, 16.9679, 6.07578, 0, 0, 0.103515, -0.994628, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010092, 2003226, 1, -1616, -4888.05, 16.0888, 2.31294, 0, 0, 0.915388, 0.402574, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010093, 2003225, 1, -1616.11, -4887.93, 16.8852, 2.36321, 0, 0, 0.925215, 0.379443, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010093, 2003225, 1, -1616.11, -4887.93, 16.8852, 2.5517, 0, 0, 0.956818, 0.290688, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010094, 2003224, 1, -1616.7, -4886.7, 16.0884, 6.18338, 0, 0, 0.049884, -0.998755, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010094, 2003224, 1, -1616.7, -4886.5, 16.0884, 6.18338, 0, 0, 0.049884, -0.998755, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010094';
DELETE FROM game_event_gameobject WHERE guid = '5010094';
DELETE FROM gameobject_battleground WHERE guid = '5010094';
DELETE FROM gameobject WHERE guid = '5010092';
DELETE FROM game_event_gameobject WHERE guid = '5010092';
DELETE FROM gameobject_battleground WHERE guid = '5010092';
DELETE FROM gameobject WHERE guid = '5010093';
DELETE FROM game_event_gameobject WHERE guid = '5010093';
DELETE FROM gameobject_battleground WHERE guid = '5010093';
REPLACE INTO `gameobject` VALUES ( 5010095, 2003223, 1, -1619.67, -4881.73, 16.09, 3.87823, 0, 0, 0.932933, -0.360049, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010096, 2003225, 1, -1619.68, -4881.78, 16.8858, 4.37146, 0, 0, 0.81681, -0.576906, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010097, 2003224, 1, -1621.31, -4882.33, 16.0862, 3.07399, 0, 0, 0.999429, 0.0337969, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010098, 2004203, 1, -1622.77, -4880.9, 16.0861, 0.729572, 0, 0, 0.356749, 0.9342, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010099, 2004203, 1, -1621.85, -4880.89, 16.0868, 1.62493, 0, 0, 0.725983, 0.687712, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010099, 2004203, 1, -1621.65, -4880.89, 16.0868, 1.62493, 0, 0, 0.725983, 0.687712, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010099, 2004203, 1, -1621.85, -4880.89, 16.0868, 1.62493, 0, 0, 0.725983, 0.687712, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010099, 2004203, 1, -1621.85, -4881.09, 16.0868, 1.62493, 0, 0, 0.725983, 0.687712, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010099, 2004203, 1, -1622.05, -4881.09, 16.0868, 1.62493, 0, 0, 0.725983, 0.687712, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010099, 2004203, 1, -1621.85, -4881.09, 16.0868, 1.62493, 0, 0, 0.725983, 0.687712, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010099, 2004203, 1, -1621.65, -4881.09, 16.0868, 1.62493, 0, 0, 0.725983, 0.687712, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010100, 2004205, 1, -1622.98, -4881.89, 16.0857, 1.01232, 0, 0, 0.48482, 0.874614, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010100, 2004205, 1, -1622.98, -4881.69, 16.0857, 1.01232, 0, 0, 0.48482, 0.874614, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010100, 2004205, 1, -1622.98, -4881.89, 16.0857, 1.01232, 0, 0, 0.48482, 0.874614, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010100, 2004205, 1, -1622.98, -4881.89, 16.0857, 1.01232, 0, 0, 0.48482, 0.874614, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4883.68, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4883.48, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4883.28, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4883.08, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4882.88, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4882.68, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4882.48, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4882.28, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4882.08, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4881.88, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.94, -4881.88, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.74, -4881.88, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.54, -4881.88, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.34, -4881.88, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.34, -4881.68, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.34, -4881.48, 16.0889, 1.29349, 0, 0, 0.602591, 0.79805, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.34, -4881.48, 16.0889, 4.48299, 0, 0, 0.783387, -0.621534, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010101, 2004206, 1, -1622.34, -4881.68, 16.0889, 4.48299, 0, 0, 0.783387, -0.621534, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010102, 2003528, 1, -1622.85, -4892.29, 16.0838, 3.8641, 0, 0, 0.935455, -0.353447, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010102, 2003528, 1, -1622.65, -4892.29, 16.0838, 3.8641, 0, 0, 0.935455, -0.353447, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010102, 2003528, 1, -1622.85, -4892.29, 16.0838, 3.8641, 0, 0, 0.935455, -0.353447, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010102, 2003528, 1, -1623.05, -4892.29, 16.0838, 3.8641, 0, 0, 0.935455, -0.353447, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010102, 2003528, 1, -1622.85, -4892.29, 16.0838, 3.8641, 0, 0, 0.935455, -0.353447, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010102, 2003528, 1, -1623.05, -4892.29, 16.0838, 3.8641, 0, 0, 0.935455, -0.353447, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010102, 2003528, 1, -1623.25, -4892.29, 16.0838, 3.8641, 0, 0, 0.935455, -0.353447, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010102, 2003528, 1, -1623.25, -4892.09, 16.0838, 3.8641, 0, 0, 0.935455, -0.353447, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010103, 101770, 1, -1624.58, -4890.78, 16.0896, 0.781419, 0, 0, 0.380845, 0.924639, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010103, 101770, 1, -1624.58, -4890.58, 16.0896, 0.781419, 0, 0, 0.380845, 0.924639, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010104, 2004239, 1, -1623.47, -4892.56, 17.2123, 5.40742, 0, 0, 0.424024, -0.905651, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010105, 2003424, 1, -1623.25, -4891.63, 17.212, 5.25427, 0, 0, 0.492064, -0.870559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010105, 2003424, 1, -1623.25, -4891.43, 17.212, 5.25427, 0, 0, 0.492064, -0.870559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010105, 2003424, 1, -1623.05, -4891.43, 17.212, 5.25427, 0, 0, 0.492064, -0.870559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010105, 2003424, 1, -1623.25, -4891.43, 17.212, 5.25427, 0, 0, 0.492064, -0.870559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010105, 2003424, 1, -1623.45, -4891.43, 17.212, 5.25427, 0, 0, 0.492064, -0.870559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010105, 2003424, 1, -1623.65, -4891.43, 17.212, 5.25427, 0, 0, 0.492064, -0.870559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010105, 2003424, 1, -1623.65, -4891.63, 17.212, 5.25427, 0, 0, 0.492064, -0.870559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010106, 2003294, 1, -1623.64, -4891.64, 17.212, 1.08223, 0, 0, 0.515094, 0.857134, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010107, 2003197, 1, -1622.85, -4892.75, 17.212, 4.13508, 0, 0, 0.879139, -0.476565, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010107, 2003197, 1, -1622.85, -4892.55, 17.212, 4.13508, 0, 0, 0.879139, -0.476565, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010104, 2004239, 1, -1623.47, -4892.56, 17.2123, 5.40742, 0, 0, 0.424024, -0.905651, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010104, 2004239, 1, -1623.47, -4892.56, 17.2123, 5.40742, 0, 0, 0.424024, -0.905651, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010108, 2004234, 1, -1623.71, -4892.44, 17.2118, 5.06184, 0, 0, 0.573417, -0.819264, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010108, 2004234, 1, -1623.71, -4892.24, 17.2118, 5.06184, 0, 0, 0.573417, -0.819264, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010108, 2004234, 1, -1623.71, -4892.44, 17.2118, 5.06184, 0, 0, 0.573417, -0.819264, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010108, 2004234, 1, -1623.51, -4892.44, 17.2118, 5.06184, 0, 0, 0.573417, -0.819264, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010108, 2004234, 1, -1623.51, -4892.64, 17.2118, 5.06184, 0, 0, 0.573417, -0.819264, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010108, 2004234, 1, -1623.31, -4892.64, 17.2118, 5.06184, 0, 0, 0.573417, -0.819264, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010109, 2003391, 1, -1623.85, -4892.29, 17.2115, 5.00687, 0, 0, 0.595719, -0.803193, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010110, 2003195, 1, -1622.64, -4891.87, 17.2115, 5.62025, 0, 0, 0.325429, -0.945567, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010110, 2003195, 1, -1622.44, -4891.87, 17.2115, 5.62025, 0, 0, 0.325429, -0.945567, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010110, 2003195, 1, -1622.44, -4891.67, 17.2115, 5.62025, 0, 0, 0.325429, -0.945567, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010110, 2003195, 1, -1622.64, -4891.67, 17.2115, 5.62025, 0, 0, 0.325429, -0.945567, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010110, 2003195, 1, -1622.44, -4891.67, 17.2115, 5.62025, 0, 0, 0.325429, -0.945567, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010110, 2003195, 1, -1622.44, -4891.87, 17.2115, 5.62025, 0, 0, 0.325429, -0.945567, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010110, 2003195, 1, -1622.44, -4892.07, 17.2115, 5.62025, 0, 0, 0.325429, -0.945567, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010111, 2003196, 1, -1621.47, -4893.28, 16.096, 6.05222, 0, 0, 0.115225, -0.993339, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010111, 2003196, 1, -1621.47, -4893.08, 16.096, 6.05222, 0, 0, 0.115225, -0.993339, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010111, 2003196, 1, -1621.47, -4893.28, 16.096, 6.05222, 0, 0, 0.115225, -0.993339, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010111, 2003196, 1, -1621.47, -4893.48, 16.096, 6.05222, 0, 0, 0.115225, -0.993339, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010111, 2003196, 1, -1621.47, -4893.68, 16.096, 6.05222, 0, 0, 0.115225, -0.993339, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010112, 2003434, 1, -1621.53, -4890.7, 16.0898, 5.43176, 0, 0, 0.412969, -0.910745, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1622.04, -4885.81, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1622.04, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1621.84, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1621.64, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1621.44, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1621.64, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1621.84, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1622.04, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1622.24, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1622.44, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1622.64, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1622.84, -4885.61, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1622.84, -4885.81, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1623.04, -4885.81, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1623.24, -4885.81, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010113, 2003433, 1, -1623.44, -4885.81, 16.0883, 3.69839, 0, 0, 0.961497, -0.274815, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010114, 2003194, 1, -1627.74, -4885.33, 16.0906, 5.43491, 0, 0, 0.411537, -0.911393, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010114, 2003194, 1, -1627.74, -4885.13, 16.0906, 5.43491, 0, 0, 0.411537, -0.911393, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010115, 2004643, 1, -1616.56, -4888.84, 16.0899, 5.03357, 0, 0, 0.58494, -0.811077, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010116, 2004888, 1, -1615.99, -4887.36, 16.0887, 5.35952, 0, 0, 0.445591, -0.895237, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010116';
DELETE FROM game_event_gameobject WHERE guid = '5010116';
DELETE FROM gameobject_battleground WHERE guid = '5010116';
REPLACE INTO `gameobject` VALUES ( 5010117, 2004644, 1, -1615.9, -4887.77, 16.0885, 5.64068, 0, 0, 0.315754, -0.948841, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010117, 2004644, 1, -1615.9, -4887.77, 16.0885, 4.5105, 0, 0, 0.774765, -0.632249, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010117, 2004644, 1, -1615.9, -4887.57, 16.0885, 4.5105, 0, 0, 0.774765, -0.632249, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010117, 2004644, 1, -1615.7, -4887.57, 16.0885, 4.5105, 0, 0, 0.774765, -0.632249, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010117, 2004644, 1, -1615.9, -4887.57, 16.0885, 4.5105, 0, 0, 0.774765, -0.632249, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010117, 2004644, 1, -1616.1, -4887.57, 16.0885, 4.5105, 0, 0, 0.774765, -0.632249, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010117, 2004644, 1, -1616.3, -4887.57, 16.0885, 4.5105, 0, 0, 0.774765, -0.632249, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010117, 2004644, 1, -1616.5, -4887.57, 16.0885, 4.5105, 0, 0, 0.774765, -0.632249, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1618.03, -4884.39, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1618.03, -4884.19, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1618.03, -4883.99, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1617.83, -4883.99, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1617.63, -4883.99, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1617.43, -4883.99, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1617.23, -4883.99, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1617.03, -4883.99, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.83, -4883.99, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.83, -4883.79, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.83, -4883.59, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.83, -4883.39, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.63, -4883.39, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.63, -4883.19, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.63, -4882.99, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.63, -4882.79, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.63, -4882.59, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.43, -4882.59, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010118, 22773, 1, -1616.23, -4882.59, 16.0893, 0.691098, 0, 0, 0.338713, 0.94089, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.27, -4883.01, 16.0886, 5.50087, 0, 0, 0.381258, -0.924469, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.27, -4883.01, 16.0886, 5.50087, 0, 0, 0.381258, -0.924469, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.27, -4883.01, 16.0886, 5.50087, 0, 0, 0.381258, -0.924469, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.27, -4882.81, 16.0886, 5.50087, 0, 0, 0.381258, -0.924469, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.27, -4882.81, 16.0886, 5.46945, 0, 0, 0.395734, -0.918365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.27, -4882.61, 16.0886, 5.46945, 0, 0, 0.395734, -0.918365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.07, -4882.61, 16.0886, 5.46945, 0, 0, 0.395734, -0.918365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.27, -4882.61, 16.0886, 5.46945, 0, 0, 0.395734, -0.918365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.47, -4882.61, 16.0886, 5.46945, 0, 0, 0.395734, -0.918365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010119, 2003413, 1, -1625.67, -4882.61, 16.0886, 5.46945, 0, 0, 0.395734, -0.918365, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.18, -4976.43, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.18, -4976.43, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.18, -4976.23, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.18, -4976.43, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.18, -4976.63, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1687.98, -4976.63, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.18, -4976.63, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.38, -4976.63, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.58, -4976.63, 15.997, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010120, 2003864, 1, -1688.58, -4976.63, 16.197, 0.401258, 0, 0, 0.199286, 0.979941, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010120';
DELETE FROM game_event_gameobject WHERE guid = '5010120';
DELETE FROM gameobject_battleground WHERE guid = '5010120';
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.33, -4982.84, 15.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.53, -4982.84, 15.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.73, -4982.84, 15.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.73, -4982.84, 15.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.73, -4982.84, 16.1907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.73, -4982.84, 16.3907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.73, -4982.84, 16.5907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.73, -4982.84, 16.7907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.73, -4982.84, 16.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.53, -4982.84, 16.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.53, -4982.64, 16.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.53, -4982.84, 16.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.53, -4983.04, 16.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.53, -4983.24, 16.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010121, 2003864, 1, -1685.53, -4983.44, 16.9907, 0.420893, 0, 0, 0.208897, 0.977938, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010122, 1000258, 1, -1687.82, -4977.25, 15.9916, 0.429518, 0, 0, 0.213112, 0.977028, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010122, 1000258, 1, -1687.82, -4977.25, 15.9916, 1.89821, 0, 0, 0.812895, 0.58241, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010122, 1000258, 1, -1687.82, -4977.05, 15.9916, 1.89821, 0, 0, 0.812895, 0.58241, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010122, 1000258, 1, -1687.82, -4976.85, 15.9916, 1.89821, 0, 0, 0.812895, 0.58241, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010122, 1000258, 1, -1687.62, -4976.85, 15.9916, 1.89821, 0, 0, 0.812895, 0.58241, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010122, 1000258, 1, -1687.62, -4976.85, 15.9916, 1.92963, 0, 0, 0.821943, 0.56957, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010122, 1000258, 1, -1687.62, -4976.85, 15.9916, 1.98068, 0, 0, 0.836212, 0.548406, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010122, 1000258, 1, -1687.42, -4976.85, 15.9916, 1.98068, 0, 0, 0.836212, 0.548406, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010123, 1000257, 1, -1686.41, -4975.59, 15.9923, 5.03195, 0, 0, 0.585599, -0.810601, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010123, 1000257, 1, -1686.21, -4975.59, 15.9923, 5.03195, 0, 0, 0.585599, -0.810601, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010123, 1000257, 1, -1686.01, -4975.59, 15.9923, 5.03195, 0, 0, 0.585599, -0.810601, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010124, 2003148, 1, -1685.52, -4973.5, 15.974, 2.38751, 0, 0, 0.929759, 0.368169, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010125, 2003148, 1, -1684.58, -4974.26, 15.9922, 3.43916, 0, 0, 0.988952, -0.148237, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010126, 2003181, 1, -1676.27, -4979.21, 15.9885, 3.5185, 0, 0, 0.982295, -0.187338, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010126, 2003181, 1, -1676.07, -4979.21, 15.9885, 3.5185, 0, 0, 0.982295, -0.187338, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010127, 2003181, 1, -1676.41, -4977.99, 15.9876, 3.54206, 0, 0, 0.98002, -0.198898, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010127, 2003181, 1, -1676.21, -4977.99, 15.9876, 3.54206, 0, 0, 0.98002, -0.198898, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010127, 2003181, 1, -1676.41, -4977.99, 15.9876, 3.54206, 0, 0, 0.98002, -0.198898, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010127, 2003181, 1, -1676.61, -4977.99, 15.9876, 3.54206, 0, 0, 0.98002, -0.198898, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010128, 2003181, 1, -1676.23, -4978.57, 16.7882, 3.54206, 0, 0, 0.98002, -0.198898, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010128';
DELETE FROM game_event_gameobject WHERE guid = '5010128';
DELETE FROM gameobject_battleground WHERE guid = '5010128';
REPLACE INTO `gameobject` VALUES ( 5010129, 2003181, 1, -1676.25, -4978.8, 17.0732, 3.47923, 0, 0, 0.985784, -0.168017, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010129, 2003181, 1, -1676.25, -4979, 17.0732, 3.47923, 0, 0, 0.985784, -0.168017, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010129, 2003181, 1, -1676.25, -4978.8, 17.0732, 3.47923, 0, 0, 0.985784, -0.168017, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010129, 2003181, 1, -1676.25, -4978.6, 17.0732, 3.47923, 0, 0, 0.985784, -0.168017, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010129, 2003181, 1, -1676.25, -4978.6, 16.8732, 3.47923, 0, 0, 0.985784, -0.168017, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010130, 2002392, 1, -1676.8, -4976.7, 15.9921, 5.07829, 0, 0, 0.56666, -0.823952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010130, 2002392, 1, -1676.8, -4976.5, 15.9921, 5.07829, 0, 0, 0.56666, -0.823952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010130, 2002392, 1, -1676.8, -4976.7, 15.9921, 5.07829, 0, 0, 0.56666, -0.823952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010130, 2002392, 1, -1676.8, -4976.9, 15.9921, 5.07829, 0, 0, 0.56666, -0.823952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010130, 2002392, 1, -1676.6, -4976.9, 15.9921, 5.07829, 0, 0, 0.56666, -0.823952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010130, 2002392, 1, -1676.8, -4976.9, 15.9921, 5.07829, 0, 0, 0.56666, -0.823952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010130, 2002392, 1, -1677, -4976.9, 15.9921, 5.07829, 0, 0, 0.56666, -0.823952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010130, 2002392, 1, -1677.2, -4976.9, 15.9921, 5.07829, 0, 0, 0.56666, -0.823952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010131, 2003229, 1, -1677.89, -4974.84, 15.9905, 3.56955, 0, 0, 0.977194, -0.21235, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010131';
DELETE FROM game_event_gameobject WHERE guid = '5010131';
DELETE FROM gameobject_battleground WHERE guid = '5010131';
REPLACE INTO `gameobject` VALUES ( 5010132, 2003230, 1, -1677.89, -4974.84, 15.9905, 3.56955, 0, 0, 0.977194, -0.21235, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.58, -4973.33, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.38, -4973.33, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.58, -4973.33, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.78, -4973.33, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.78, -4973.53, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.58, -4973.53, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.58, -4973.73, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.58, -4973.93, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.58, -4973.73, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010133, 2003230, 1, -1678.58, -4973.53, 15.9922, 5.06181, 0, 0, 0.573433, -0.819253, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010134, 2003230, 1, -1678.09, -4974.32, 17.234, 5.32109, 0, 0, 0.46271, -0.88651, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010135, 2003228, 1, -1678.86, -4975.48, 15.9907, 0.589058, 0, 0, 0.290289, 0.956939, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010135';
DELETE FROM game_event_gameobject WHERE guid = '5010135';
DELETE FROM gameobject_battleground WHERE guid = '5010135';
REPLACE INTO `gameobject` VALUES ( 5010136, 2003229, 1, -1678.86, -4975.48, 15.9907, 0.589058, 0, 0, 0.290289, 0.956939, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010137, 2003231, 1, -1677.99, -4981.18, 15.9899, 5.11217, 0, 0, 0.552622, -0.833432, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010138, 2003231, 1, -1686.43, -4979.22, 15.9907, 3.42906, 0, 0, 0.989688, -0.143238, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010138, 2003231, 1, -1686.43, -4979.02, 15.9907, 3.42906, 0, 0, 0.989688, -0.143238, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010138, 2003231, 1, -1686.43, -4979.22, 15.9907, 3.42906, 0, 0, 0.989688, -0.143238, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010138, 2003231, 1, -1686.43, -4979.42, 15.9907, 3.42906, 0, 0, 0.989688, -0.143238, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010138, 2003231, 1, -1686.63, -4979.42, 15.9907, 3.42906, 0, 0, 0.989688, -0.143238, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010138, 2003231, 1, -1686.43, -4979.42, 15.9907, 3.42906, 0, 0, 0.989688, -0.143238, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010138, 2003231, 1, -1686.23, -4979.42, 15.9907, 3.42906, 0, 0, 0.989688, -0.143238, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010138, 2003231, 1, -1686.03, -4979.42, 15.9907, 3.42906, 0, 0, 0.989688, -0.143238, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010139, 2003232, 1, -1685.55, -4981.39, 15.991, 0.579633, 0, 0, 0.285776, 0.958296, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010139';
DELETE FROM game_event_gameobject WHERE guid = '5010139';
DELETE FROM gameobject_battleground WHERE guid = '5010139';
REPLACE INTO `gameobject` VALUES ( 5010140, 2003229, 1, -1685.31, -4981.27, 15.9912, 3.25627, 0, 0, 0.998357, -0.0573056, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010140, 2003229, 1, -1685.31, -4981.27, 15.9912, 3.25627, 0, 0, 0.998357, -0.0573056, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010140, 2003229, 1, -1685.31, -4981.27, 15.9912, 3.25627, 0, 0, 0.998357, -0.0573056, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5010141, 2003229, 1, -1685.29, -4981.23, 16.8617, 3.64975, 0, 0, 0.967895, -0.251354, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5010141';
DELETE FROM game_event_gameobject WHERE guid = '5010141';
DELETE FROM gameobject_battleground WHERE guid = '5010141';
REPLACE INTO `gameobject` VALUES ( 5010142, 2003229, 1, -1685.35, -4981.26, 16.862, 3.64975, 0, 0, 0.967895, -0.251354, 300, 300, 100, 1, 0, 0);
