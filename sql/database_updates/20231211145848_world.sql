
-- Changes by SHANG
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (909,3321.969971,-2447.813721,107.181198,3.472816,0,'highelf');
REPLACE INTO `creature` VALUES (2582199,81030,0,0,0,1,-255.141,-7146.49,15.8751,1.89213,120,120,5,100,100,2,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2582200,50514,0,0,0,1,1869.03,-4664.03,34.6025,2.5148,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2582201,50514,0,0,0,1,1872.11,-4661.72,34.3805,2.16923,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582201;
DELETE FROM creature_addon WHERE guid=2582201;
DELETE FROM creature_movement WHERE id=2582201;
DELETE FROM game_event_creature WHERE guid=2582201;
DELETE FROM game_event_creature_data WHERE guid=2582201;
DELETE FROM creature_battleground WHERE guid=2582201;
DELETE FROM creature WHERE guid=2582200;
DELETE FROM creature_addon WHERE guid=2582200;
DELETE FROM creature_movement WHERE id=2582200;
DELETE FROM game_event_creature WHERE guid=2582200;
DELETE FROM game_event_creature_data WHERE guid=2582200;
DELETE FROM creature_battleground WHERE guid=2582200;
