
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

-- Changes by VOJI
REPLACE INTO `gameobject` VALUES ( 5016583, 2005518, 1, 2972.51, -3301.93, 154.934, 1.58723, 0, 0, 0.712894, 0.701272, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2578579,17266,0,0,0,451,4516.56,-190.791,268.157,5.67211,120,120,0,100,100,0,0,0);

-- Changes by VOJI
REPLACE INTO `gameobject` VALUES ( 5016583, 2005518, 1, 2972.51, -3302.93, 154.934, 1.58723, 0, 0, 0.712894, 0.701272, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016583, 2005518, 1, 2972.51, -3303.93, 154.934, 1.58723, 0, 0, 0.712894, 0.701272, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016583, 2005518, 1, 2972.51, -3304.93, 154.934, 1.58723, 0, 0, 0.712894, 0.701272, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016583, 2005518, 1, 2972.51, -3305.93, 154.934, 1.58723, 0, 0, 0.712894, 0.701272, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2578580,50141,0,0,0,451,4518.82,-192.932,268.078,1.63673,120,120,5,100,100,1,0,0);

-- Changes by VOJI
DELETE FROM gameobject WHERE guid = '5016583';
DELETE FROM game_event_gameobject WHERE guid = '5016583';
DELETE FROM gameobject_battleground WHERE guid = '5016583';

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2578581,50141,0,0,0,451,4522.37,-191.718,268.207,2.71823,120,120,5,100,100,1,0,0);

-- Changes by VOJI
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3301.6, 155.333, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2578582,50141,0,0,0,451,4512.29,-177.987,269.784,5.55116,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578583,50141,0,0,0,451,4528.73,-185.105,269.225,0.335328,120,120,5,100,100,1,0,0);

-- Changes by VOJI
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3302.8, 155.333, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3301.6, 155.333, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3301.6, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2578581,50141,0,0,0,451,4522.37,-191.718,268.207,2.71823,300,300,0.5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578583,50141,0,0,0,451,4528.73,-185.105,269.225,0.335328,300,300,0.5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578580,50141,0,0,0,451,4518.82,-192.932,268.078,1.63673,300,300,0.5,100,100,1,0,0);

-- Changes by VOJI
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2973.32, -3301.6, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2973.32, -3302.8, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2973.32, -3301.6, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2973.32, -3300.4, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3300.4, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3299.2, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3300.4, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3301.4, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3300.4, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3300.6, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3300.8, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3300.6, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3300.8, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3301, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5016584, 2005519, 1, 2972.12, -3301.2, 154.133, 1.65006, 0, 0, 0.734568, 0.678535, 300, 300, 100, 1, 0, 0);

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2578584,50035,0,0,0,451,4524.4,-167.547,270.816,4.31651,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578585,16547,0,0,0,451,4527.18,-168.401,270.815,3.88612,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578586,50141,0,0,0,451,4542.2,-206.572,269.24,1.35714,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578587,50141,0,0,0,451,4514.16,-209.104,269.134,2.8596,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578581,50141,0,0,0,451,4522.37,-191.718,268.207,2.71823,300,300,1,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578588,50141,0,0,0,451,4499.12,-194.197,270.138,0.777515,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2578581,50141,0,0,0,451,4522.37,-191.718,268.207,2.71823,300,300,2,100,100,1,0,0);
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (900,4530.012695,-217.672668,268.565125,1.874711,451,'theturtlefarm');
REPLACE INTO `gameobject` VALUES ( 5016585, 2004971, 1, 6786.64, -4660.39, 725.026, 3.85807, 0, 0, 0.936515, -0.350627, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5016585';
DELETE FROM game_event_gameobject WHERE guid = '5016585';
DELETE FROM gameobject_battleground WHERE guid = '5016585';
REPLACE INTO `gameobject` VALUES ( 5016586, 2004970, 1, 6786.62, -4660.41, 725.027, 3.82666, 0, 0, 0.941907, -0.335873, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417400587783178, 0.700000);
REPLACE INTO `gameobject` VALUES ( 5016586, 2004970, 1, 6786.62, -4660.41, 725.027, 3.82666, 0, 0, 0.941907, -0.335873, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417400587783178, 0.650000);
REPLACE INTO `gameobject` VALUES ( 5016586, 2004970, 1, 6786.62, -4660.41, 725.027, 3.82666, 0, 0, 0.941907, -0.335873, 300, 300, 100, 1, 0, 0);
