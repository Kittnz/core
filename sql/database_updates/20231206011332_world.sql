
-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017460, 2003278, 0, 4313.51, -3040.56, 22.4574, 2.2156, 0, 0, 0.894718, 0.446632, 300, 300, 100, 1, 0, 0);
UPDATE `creature` SET `position_x` = 4311.998535, `position_y` = -3040.729492, `position_z` = 22.923153, `orientation` = 3.953319 WHERE `guid` = 2581910;
REPLACE INTO `gameobject` VALUES ( 5017460, 2003278, 0, 4314.51, -3040.56, 22.4574, 2.2156, 0, 0, 0.894718, 0.446632, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017460, 2003278, 0, 4313.51, -3040.56, 22.4574, 2.2156, 0, 0, 0.894718, 0.446632, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017460, 2003278, 0, 4312.51, -3040.56, 22.4574, 2.2156, 0, 0, 0.894718, 0.446632, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017460, 2003278, 0, 4312.71, -3040.56, 22.4574, 2.2156, 0, 0, 0.894718, 0.446632, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017460, 2003278, 0, 4312.51, -3040.56, 22.4574, 2.2156, 0, 0, 0.894718, 0.446632, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017460, 2003278, 0, 4312.31, -3040.56, 22.4574, 2.2156, 0, 0, 0.894718, 0.446632, 300, 300, 100, 1, 0, 0);
UPDATE `creature` SET `position_x` = 4312.302734, `position_y` = -3040.532227, `position_z` = 23.589949, `orientation` = 3.474220 WHERE `guid` = 2581910;
DELETE FROM gameobject WHERE guid = '5017460';
DELETE FROM game_event_gameobject WHERE guid = '5017460';
DELETE FROM gameobject_battleground WHERE guid = '5017460';
UPDATE `creature` SET `position_x` = 3309.260986, `position_y` = -2508.207275, `position_z` = 103.189705, `orientation` = 3.319462 WHERE `guid` = 2581878;
UPDATE `creature_addon` SET `emote_state`=0 WHERE `guid`=2581878;
UPDATE `creature` SET `position_x` = 3311.405518, `position_y` = -2507.876465, `position_z` = 103.456474, `orientation` = 3.048499 WHERE `guid` = 2581878;
REPLACE INTO `creature` VALUES (2581923,61770,0,0,0,0,3409.69,-2816.47,100.611,3.44117,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581924,61770,0,0,0,0,3409.72,-2810.19,101.226,3.68857,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581925,61770,0,0,0,0,3407.41,-2806.4,101.226,3.68857,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581926,61770,0,0,0,0,3403.02,-2803.03,101.848,4.56036,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581926, 43);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581926, 27);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581926, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581925, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581924, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581923, 45);
