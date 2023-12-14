
-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017673, 2020087, 0, 4314.45, -3090.64, 36.4831, 4.79108, 0, 0, 0.678744, -0.734375, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017674, 2020086, 0, 4309.97, -3045.79, 147.838, 1.71216, 0, 0, 0.755281, 0.655402, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017674';
DELETE FROM game_event_gameobject WHERE guid = '5017674';
DELETE FROM gameobject_battleground WHERE guid = '5017674';
REPLACE INTO `gameobject` VALUES ( 5017675, 2020086, 0, 4306.05, -3043.15, 147.844, 3.33795, 0, 0, 0.995184, -0.0980194, 300, 300, 100, 1, 0, 0);
UPDATE `creature` SET `position_x` = 4291.625488, `position_y` = -2097.460938, `position_z` = 16.458199, `orientation` = 4.877319 WHERE `guid` = 2582220;

-- Changes by VOLCA
REPLACE INTO `creature` VALUES (2582221,521,0,0,0,1,-207.873,-920.006,20.0747,4.60933,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2582222,1131,0,0,0,1,-207.935,-922.841,19.4685,1.48133,120,120,5,100,100,1,0,0);
UPDATE `creature_template` set `scale` = 0.500000 where entry = 521;
UPDATE `creature_template` set `scale` = 1.000000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.800000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
UPDATE `creature_template` set `scale` = 0.700000 where entry = 521;
REPLACE INTO `creature` VALUES (2582223,521,0,0,0,0,-11831.3,3165.75,19.42,5.5534,120,120,5,100,100,1,0,0);
