
-- Changes by DRAGU
DELETE FROM creature WHERE guid=2583544;
DELETE FROM creature_addon WHERE guid=2583544;
DELETE FROM creature_movement WHERE id=2583544;
DELETE FROM game_event_creature WHERE guid=2583544;
DELETE FROM game_event_creature_data WHERE guid=2583544;
DELETE FROM creature_battleground WHERE guid=2583544;
DELETE FROM creature WHERE guid=2583543;
DELETE FROM creature_addon WHERE guid=2583543;
DELETE FROM creature_movement WHERE id=2583543;
DELETE FROM game_event_creature WHERE guid=2583543;
DELETE FROM game_event_creature_data WHERE guid=2583543;
DELETE FROM creature_battleground WHERE guid=2583543;
DELETE FROM creature WHERE guid=2582981;
DELETE FROM creature_addon WHERE guid=2582981;
DELETE FROM creature_movement WHERE id=2582981;
DELETE FROM game_event_creature WHERE guid=2582981;
DELETE FROM game_event_creature_data WHERE guid=2582981;
DELETE FROM creature_battleground WHERE guid=2582981;

-- Changes by AKALIX
REPLACE INTO `gameobject` VALUES ( 5019638, 3000309, 1, 16271.6, 16256, 21.7382, 2.10682, 0, 0, 0.869114, 0.494612, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGU
DELETE FROM `game_tele` WHERE `name` = 'dragonmawretreat';
DELETE FROM `game_tele` WHERE `name` = 'dragonmawretreatentrance';
DELETE FROM `game_tele` WHERE `name` = 'properdragonmawentrance';
DELETE FROM `game_tele` WHERE `name` = 'grimreachesbunker';
DELETE FROM `game_tele` WHERE `name` = 'grimreachespresidential';
DELETE FROM `game_tele` WHERE `name` = 'grimreachesbridge';
DELETE FROM `game_tele` WHERE `name` = 'tamamohouseinterior';
DELETE FROM `game_tele` WHERE `name` = 'tamamoshrine';
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7803.69, -6742.52, -0.0014, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7804.69, -6742.52, -0.0014, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7804.69, -6742.52, 1.9986, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7804.69, -6742.52, -0.0014, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7804.69, -6740.52, -0.0014, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7807.69, -6740.52, -0.0014, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7810.69, -6740.52, -0.0014, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7813.69, -6740.52, -0.0014, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012965, 180712, 1, -7816.69, -6740.52, -0.0014, 1.71343, 0, 0, 0.755695, 0.654924, 3032, 3032, 100, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5019639, 2005618, 451, 15722.5, 16547.9, 48.6117, 4.75465, 0, 0, 0.692008, -0.72189, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417411459422199, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5019639, 2005618, 451, 15722.5, 16547.9, 48.6117, 4.75465, 0, 0, 0.692008, -0.72189, 300, 300, 100, 1, 0, 0);

-- Changes by MEFLOR
REPLACE INTO `gameobject` VALUES ( 5019640, 181598, 1, 16259.7, 16242.8, 27.4457, 5.90142, 0, 0, 0.189725, -0.981837, 300, 300, 100, 1, 0, 0);

-- Changes by QA_NONNO
REPLACE INTO `creature` VALUES (2583662,7105,0,0,0,0,-11790.9,-2432.57,-15.557,1.00393,120,120,5,100,100,1,0,0);
