
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2574456,61201,0,0,0,532,-10978.1,-1982.82,79.9742,5.31452,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574456;
DELETE FROM creature_addon WHERE guid=2574456;
DELETE FROM creature_movement WHERE id=2574456;
DELETE FROM game_event_creature WHERE guid=2574456;
DELETE FROM game_event_creature_data WHERE guid=2574456;
DELETE FROM creature_battleground WHERE guid=2574456;
REPLACE INTO `creature` VALUES (2574457,61212,0,0,0,807,2781.49,3038.23,26.5155,4.86166,120,120,0,100,100,0,0,0);

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2574458,40000,0,0,0,0,2938.3,1265.06,14.1203,1.5804,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574458;
DELETE FROM creature_addon WHERE guid=2574458;
DELETE FROM creature_movement WHERE id=2574458;
DELETE FROM game_event_creature WHERE guid=2574458;
DELETE FROM game_event_creature_data WHERE guid=2574458;
DELETE FROM creature_battleground WHERE guid=2574458;
REPLACE INTO `creature` VALUES (2574459,80258,0,0,0,0,2937.95,1265.42,14.1646,1.96132,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2574460,40000,0,0,0,0,2937.86,1265.46,14.1796,1.54034,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574460;
DELETE FROM creature_addon WHERE guid=2574460;
DELETE FROM creature_movement WHERE id=2574460;
DELETE FROM game_event_creature WHERE guid=2574460;
DELETE FROM game_event_creature_data WHERE guid=2574460;
DELETE FROM creature_battleground WHERE guid=2574460;
REPLACE INTO `gameobject` VALUES ( 5012981, 2010652, 0, 2929.84, 1297.51, 3.05967, 1.21922, 0, 0, 0.572546, 0.819872, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5012981';
DELETE FROM game_event_gameobject WHERE guid = '5012981';
DELETE FROM gameobject_battleground WHERE guid = '5012981';
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (872,-1223.229004,2724.196289,32.392223,5.903499,0,'blackthornecamp');
