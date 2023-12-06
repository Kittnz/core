
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
