
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

-- Changes by DRAGU
UPDATE `creature_addon` SET `emote_state`=0 WHERE `guid`=2577599;

-- Changes by QA_NONNO
REPLACE INTO `creature` VALUES (2583663,7105,0,0,0,1,5407.53,-3445.65,1560.58,0.211672,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2583664,17252,0,0,0,1,5427.27,-3449.23,1559.48,0.660827,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583663;
DELETE FROM creature_addon WHERE guid=2583663;
DELETE FROM creature_movement WHERE id=2583663;
DELETE FROM game_event_creature WHERE guid=2583663;
DELETE FROM game_event_creature_data WHERE guid=2583663;
DELETE FROM creature_battleground WHERE guid=2583663;
DELETE FROM creature WHERE guid=2583664;
DELETE FROM creature_addon WHERE guid=2583664;
DELETE FROM creature_movement WHERE id=2583664;
DELETE FROM game_event_creature WHERE guid=2583664;
DELETE FROM game_event_creature_data WHERE guid=2583664;
DELETE FROM creature_battleground WHERE guid=2583664;
DELETE FROM creature WHERE guid=2583662;
DELETE FROM creature_addon WHERE guid=2583662;
DELETE FROM creature_movement WHERE id=2583662;
DELETE FROM game_event_creature WHERE guid=2583662;
DELETE FROM game_event_creature_data WHERE guid=2583662;
DELETE FROM creature_battleground WHERE guid=2583662;
REPLACE INTO `creature` VALUES (2583665,8680,0,0,0,1,1280.28,-4989.54,2.28959,3.37952,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583665;
DELETE FROM creature_addon WHERE guid=2583665;
DELETE FROM creature_movement WHERE id=2583665;
DELETE FROM game_event_creature WHERE guid=2583665;
DELETE FROM game_event_creature_data WHERE guid=2583665;
DELETE FROM creature_battleground WHERE guid=2583665;
REPLACE INTO `creature` VALUES (2583666,11437,0,0,0,1,1289.93,-4987.28,2.30562,3.46592,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583666;
DELETE FROM creature_addon WHERE guid=2583666;
DELETE FROM creature_movement WHERE id=2583666;
DELETE FROM game_event_creature WHERE guid=2583666;
DELETE FROM game_event_creature_data WHERE guid=2583666;
DELETE FROM creature_battleground WHERE guid=2583666;
REPLACE INTO `creature` VALUES (2583667,14668,0,0,0,1,1291.96,-4986.48,2.32038,3.51697,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583667;
DELETE FROM creature_addon WHERE guid=2583667;
DELETE FROM creature_movement WHERE id=2583667;
DELETE FROM game_event_creature WHERE guid=2583667;
DELETE FROM game_event_creature_data WHERE guid=2583667;
DELETE FROM creature_battleground WHERE guid=2583667;
REPLACE INTO `creature` VALUES (2583668,17252,0,0,0,1,1303.18,-5002.98,0.650191,0.470416,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583668;
DELETE FROM creature_addon WHERE guid=2583668;
DELETE FROM creature_movement WHERE id=2583668;
DELETE FROM game_event_creature WHERE guid=2583668;
DELETE FROM game_event_creature_data WHERE guid=2583668;
DELETE FROM creature_battleground WHERE guid=2583668;
REPLACE INTO `creature` VALUES (2583669,22220,0,0,0,1,16228.2,16258.1,13.4112,3.22087,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583669;
DELETE FROM creature_addon WHERE guid=2583669;
DELETE FROM creature_movement WHERE id=2583669;
DELETE FROM game_event_creature WHERE guid=2583669;
DELETE FROM game_event_creature_data WHERE guid=2583669;
DELETE FROM creature_battleground WHERE guid=2583669;
REPLACE INTO `creature` VALUES (2583670,61138,0,0,0,1,16226.7,16257.4,13.2725,0.464119,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583670;
DELETE FROM creature_addon WHERE guid=2583670;
DELETE FROM creature_movement WHERE id=2583670;
DELETE FROM game_event_creature WHERE guid=2583670;
DELETE FROM game_event_creature_data WHERE guid=2583670;
DELETE FROM creature_battleground WHERE guid=2583670;
REPLACE INTO `creature` VALUES (2583671,6115,0,0,0,1,16288.8,16314.3,11.6437,2.81258,120,120,5,100,100,1,0,0);
