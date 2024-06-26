
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
