
-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2581151,61768,0,0,0,0,2442,-2990.8,196.352,5.48599,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581151,61768,0,0,0,0,2442,-2990.8,196.352,5.48599,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581151,61768,0,0,0,0,2442,-2990.8,196.352,5.48599,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581152,61768,0,0,0,0,2459.82,-2996.55,195.884,4.93857,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 2452.052979, `position_y` = -3002.250977, `position_z` = 196.127701, `orientation` = 0.064143 WHERE `guid` = 2581152;
REPLACE INTO `creature` VALUES (2581153,61764,0,0,0,0,2445.41,-2967.49,193.642,5.05928,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581154,61768,0,0,0,0,2450.13,-2977.28,192.643,2.49005,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581155,61768,0,0,0,0,2474.07,-3013.43,195.51,5.35753,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581156,61768,0,0,0,0,2494.6,-3013.49,195.175,0.691478,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581157,61768,0,0,0,0,2523.7,-2991.46,199.1,1.71093,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 2525.218018, `position_y` = -2993.415039, `position_z` = 199.366791, `orientation` = 2.083992 WHERE `guid` = 2581157;
REPLACE INTO `creature` VALUES (2581158,61768,0,0,0,0,2524.2,-2985.75,199.357,4.12996,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581158,61768,0,0,0,0,2524.2,-2985.75,199.357,4.12996,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2581158;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581158,1, 2524.204590,-2985.745361,199.356598, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581158,2, 2517.250977,-2995.843262,198.052429, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581158,3, 2489.200928,-3021.566162,195.043945, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581158,4, 2474.570068,-3016.853271,195.083725, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581158,5, 2467.643799,-3000.968262,196.067825, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581158,6, 2475.665283,-3020.723389,194.880432, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581158,7, 2493.269775,-3019.434570,194.967453, 100);
REPLACE INTO `creature` VALUES (2581158,61768,0,0,0,0,2524.2,-2985.75,199.357,4.12996,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = 2497.301025, `position_y` = -3007.763184, `position_z` = 195.789612, `orientation` = 5.386244 WHERE `guid` = 2581156;
UPDATE `creature` SET `position_x` = 2477.630371, `position_y` = -3025.504639, `position_z` = 195.191010, `orientation` = 1.482816 WHERE `guid` = 2581155;
REPLACE INTO `creature` VALUES (2581159,61767,0,0,0,0,2529.89,-2853.27,199.695,1.40348,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 2530.817627, `position_y` = -2859.031006, `position_z` = 201.473740, `orientation` = 1.456281 WHERE `guid` = 2581159;
REPLACE INTO `creature` VALUES (2581160,61767,0,0,0,0,2518.62,-2859.16,201.979,1.62784,120,120,0,100,100,0,0,0);
