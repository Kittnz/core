
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577216,61249,0,0,0,0,-2013.63,1719.9,75.2633,4.12938,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577217,61250,0,0,0,0,-2026.38,1719.55,75.7074,6.02611,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577218,61248,0,0,0,0,-2007.93,1720.15,79.9966,2.751,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577219,61248,0,0,0,0,-2024.2,1720.23,80.0282,5.57451,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577220,61250,0,0,0,0,-2020.95,1717.87,80.0276,2.31196,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577221,6491,0,0,0,0,-1765.49,1607.01,58.1575,2.40259,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577222,61386,0,0,0,0,-1681.03,2019.17,54.7005,2.15155,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577223,61385,0,0,0,0,-1663.47,2035.2,54.6969,6.28274,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -1662.813721, `position_y` = 2036.130127, `position_z` = 54.696880, `orientation` = 0.015263 WHERE `guid` = 2577223;
DELETE FROM creature WHERE guid=2574926;
DELETE FROM creature_addon WHERE guid=2574926;
DELETE FROM creature_movement WHERE id=2574926;
DELETE FROM game_event_creature WHERE guid=2574926;
DELETE FROM game_event_creature_data WHERE guid=2574926;
DELETE FROM creature_battleground WHERE guid=2574926;
DELETE FROM creature WHERE guid=2574930;
DELETE FROM creature_addon WHERE guid=2574930;
DELETE FROM creature_movement WHERE id=2574930;
DELETE FROM game_event_creature WHERE guid=2574930;
DELETE FROM game_event_creature_data WHERE guid=2574930;
DELETE FROM creature_battleground WHERE guid=2574930;
UPDATE `creature` SET `position_x` = -1670.628906, `position_y` = 2026.543823, `position_z` = 54.073593, `orientation` = 2.783012 WHERE `guid` = 2574912;
DELETE FROM creature WHERE guid=2574918;
DELETE FROM creature_addon WHERE guid=2574918;
DELETE FROM creature_movement WHERE id=2574918;
DELETE FROM game_event_creature WHERE guid=2574918;
DELETE FROM game_event_creature_data WHERE guid=2574918;
DELETE FROM creature_battleground WHERE guid=2574918;
UPDATE `creature` SET `position_x` = -1649.660034, `position_y` = 2033.697632, `position_z` = 54.683804, `orientation` = 1.641161 WHERE `guid` = 2574922;
UPDATE `creature` SET `position_x` = -1663.050903, `position_y` = 2036.115234, `position_z` = 54.696693, `orientation` = 0.063051 WHERE `guid` = 2574923;
UPDATE `creature` SET `position_x` = -1659.604004, `position_y` = 2034.012695, `position_z` = 54.696663, `orientation` = 3.196791 WHERE `guid` = 2577223;
UPDATE `creature` SET `position_x` = -1669.242554, `position_y` = 2038.262695, `position_z` = 61.554634, `orientation` = 2.471234 WHERE `guid` = 2574920;
UPDATE `creature` SET `position_x` = -1683.695068, `position_y` = 2023.573120, `position_z` = 61.554836, `orientation` = 5.631638 WHERE `guid` = 2574924;
UPDATE `creature` SET `position_x` = -1677.941528, `position_y` = 2036.336914, `position_z` = 54.073818, `orientation` = 5.299973 WHERE `guid` = 2574933;
UPDATE `creature` SET `position_x` = -1678.872070, `position_y` = 2039.496216, `position_z` = 61.554676, `orientation` = 4.719167 WHERE `guid` = 2574921;
UPDATE `creature_template` set `scale` = 1.000000 where entry = 61381;
