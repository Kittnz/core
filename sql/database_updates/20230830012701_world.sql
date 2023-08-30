
-- Changes by DRAGUNOVI
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578770, 1);
REPLACE INTO `creature` VALUES (2578770,61643,0,0,0,0,-1342.07,1183.02,126.912,4.81836,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2578770, 0);
REPLACE INTO `creature` VALUES (2578770,61643,0,0,0,0,-1342.07,1183.02,126.912,4.81836,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2561853,10814,0,0,0,229,33.5571,-294.378,110.948,6.21954,7200,7200,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 29.022751, `position_y` = -294.337555, `position_z` = 110.943710, `orientation` = 3.047149 WHERE `guid` = 2561853;
UPDATE `creature` SET `position_x` = 30.198141, `position_y` = -294.283508, `position_z` = 110.944817, `orientation` = 3.212090 WHERE `guid` = 2561853;

-- Changes by VOJI
UPDATE `creature_addon` SET `stand_state`=1 WHERE `guid`=2578712;
