
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2574460,1853,0,0,0,1,16226.2,16257,13.2022,1.65007,120,120,5,100,100,1,1,200);
DELETE FROM creature WHERE guid=2574460;
DELETE FROM creature_addon WHERE guid=2574460;
DELETE FROM creature_movement WHERE id=2574460;
DELETE FROM game_event_creature WHERE guid=2574460;
DELETE FROM game_event_creature_data WHERE guid=2574460;
DELETE FROM creature_battleground WHERE guid=2574460;

-- Changes by DRAGUNOVI
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2574072, 1);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2574072, 0);
DELETE FROM creature WHERE guid=2574447;
DELETE FROM creature_addon WHERE guid=2574447;
DELETE FROM creature_movement WHERE id=2574447;
DELETE FROM game_event_creature WHERE guid=2574447;
DELETE FROM game_event_creature_data WHERE guid=2574447;
DELETE FROM creature_battleground WHERE guid=2574447;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574214, 233);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574082, 233);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574213, 233);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574078, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574079, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574105, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574100, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574103, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574115, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574114, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574093, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574094, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574095, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574096, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574212, 313);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574122, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574119, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574223, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574223, 234);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574223, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574224, 69);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574233, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574232, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574234, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574235, 1);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2574461,11382,0,0,0,0,-7967.04,-1643.59,133.203,4.87214,120,120,5,100,100,1,1,200);
DELETE FROM creature_movement WHERE id=2574239;

-- Changes by DRAGUNOVI
UPDATE `creature` SET `movement_type`=0 WHERE `guid`=2574239;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2574239, 69);

-- Changes by GHEOR
DELETE FROM `game_tele` WHERE `name` = 'gheoremeralddream';
REPLACE INTO `gameobject` VALUES ( 5012981, 2004752, 1, -4665.82, -1697.45, 93.1768, 6.02025, 0, 0, 0.131092, -0.99137, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012982, 2004751, 1, -4668.85, -1690.65, 94.0517, 0.395221, 0, 0, 0.196327, 0.980539, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012982, 2004751, 1, -4668.85, -1690.65, 94.0517, 3.80385, 0, 0, 0.945676, -0.32511, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012982, 2004751, 1, -4668.85, -1690.65, 94.0517, 3.4355, 0, 0, 0.989222, -0.146425, 300, 300, 100, 1, 0, 0);
