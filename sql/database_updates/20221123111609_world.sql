
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2573746,61133,0,0,0,1,-4569.98,-3221.23,34.9228,5.55084,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-8907.752930', position_y = '-6539.927734', position_z = '12.283902', orientation = '2.231135' WHERE guid = '2573046';

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2573747,103,0,0,0,813,-2696.97,1143.9,52.1155,5.71896,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2573747;
DELETE FROM creature_addon WHERE guid=2573747;
DELETE FROM creature_movement WHERE id=2573747;
DELETE FROM game_event_creature WHERE guid=2573747;
DELETE FROM game_event_creature_data WHERE guid=2573747;
DELETE FROM creature_battleground WHERE guid=2573747;
