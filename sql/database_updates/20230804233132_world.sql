
-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2578574,6015,0,0,0,451,4520.1,-188.166,268.231,5.28538,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 4519.444824, `position_y` = -188.878021, `position_z` = 268.185394, `orientation` = 5.411837 WHERE `guid` = 2578574;
REPLACE INTO `creature` VALUES (2578575,41000,0,0,0,451,4311,-80.3928,269.116,0.0106578,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578576,40025,0,0,0,451,4321.14,-84.5049,267.966,0.0219481,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578577,40025,0,0,0,451,4320.83,-76.1996,267.966,0.00231361,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 4321.050781, `position_y` = -76.194679, `position_z` = 267.966003, `orientation` = 0.021949 WHERE `guid` = 2578577;
UPDATE `creature` SET `position_x` = 4321.128418, `position_y` = -76.192978, `position_z` = 267.966003, `orientation` = 0.021949 WHERE `guid` = 2578577;
UPDATE `creature` SET `position_x` = 4321.508789, `position_y` = -76.104645, `position_z` = 267.966003, `orientation` = 0.029805 WHERE `guid` = 2578577;
UPDATE `creature` SET `position_x` = 4321.391113, `position_y` = -76.107086, `position_z` = 267.966003, `orientation` = 0.033732 WHERE `guid` = 2578577;
UPDATE `creature` SET `position_x` = 4321.273438, `position_y` = -76.110588, `position_z` = 267.966003, `orientation` = 0.029805 WHERE `guid` = 2578577;
UPDATE `creature` SET `position_x` = 4321.323242, `position_y` = -84.544746, `position_z` = 267.966003, `orientation` = 6.277647 WHERE `guid` = 2578576;
REPLACE INTO `gameobject` VALUES ( 5016580, 2020058, 451, 4313.68, -87.8349, 267.966, 4.28745, 0, 0, 0.840317, -0.542095, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016581, 2020058, 451, 4325.65, -74.286, 267.966, 4.05733, 0, 0, 0.896997, -0.442036, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016582, 2020059, 451, 4305.01, -72.7651, 267.966, 5.71295, 0, 0, 0.281272, -0.959628, 300, 300, 100, 1, 0, 0);
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (899,4325.692871,-80.279953,267.966003,3.150976,451,'tamamoshrine');
REPLACE INTO `creature` VALUES (2578578,4950,0,0,0,1,16228.6,16268.7,13.1373,4.35576,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578578;
DELETE FROM creature_addon WHERE guid=2578578;
DELETE FROM creature_movement WHERE id=2578578;
DELETE FROM game_event_creature WHERE guid=2578578;
DELETE FROM game_event_creature_data WHERE guid=2578578;
DELETE FROM creature_battleground WHERE guid=2578578;
