
-- Changes by WOJI
UPDATE `creature` SET `position_x` = 4170.503418, `position_y` = -2734.417480, `position_z` = 17.465210, `orientation` = 3.077512 WHERE `guid` = 2560633;
UPDATE `creature` SET `position_x` = 4037.865967, `position_y` = -2685.478271, `position_z` = 32.855663, `orientation` = 2.743709 WHERE `guid` = 2560633;
UPDATE `creature` SET `position_x` = 3878.085205, `position_y` = -2558.053955, `position_z` = 32.796642, `orientation` = 2.504163 WHERE `guid` = 2560633;
UPDATE `creature` SET `position_x` = 3692.862549, `position_y` = -2505.974609, `position_z` = 57.405933, `orientation` = 2.955767 WHERE `guid` = 2560633;
UPDATE `creature` SET `position_x` = 3511.822998, `position_y` = -2522.034912, `position_z` = 90.930656, `orientation` = 3.250291 WHERE `guid` = 2560633;
UPDATE `creature` SET `position_x` = 3295.399658, `position_y` = -2480.927979, `position_z` = 104.546249, `orientation` = 2.845811 WHERE `guid` = 2560633;
UPDATE `creature` SET `position_x` = 3212.622070, `position_y` = -2467.866943, `position_z` = 111.438339, `orientation` = 6.132705 WHERE `guid` = 2560633;
UPDATE `creature` SET `position_x` = 3208.969727, `position_y` = -2466.961670, `position_z` = 111.551178, `orientation` = 5.818549 WHERE `guid` = 2560633;
REPLACE INTO `creature` VALUES (2580890,3571,0,0,0,0,3430.75,-2814.99,94.1233,1.44386,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2580890;
DELETE FROM creature_addon WHERE guid=2580890;
DELETE FROM creature_movement WHERE id=2580890;
DELETE FROM game_event_creature WHERE guid=2580890;
DELETE FROM game_event_creature_data WHERE guid=2580890;
DELETE FROM creature_battleground WHERE guid=2580890;
