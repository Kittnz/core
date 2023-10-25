
-- Changes by SHANG
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (907,-275.597687,-7474.586426,73.191582,2.514761,1,'blackstone');

-- Changes by TORTA
DELETE FROM creature WHERE guid=2555783;
DELETE FROM creature_addon WHERE guid=2555783;
DELETE FROM creature_movement WHERE id=2555783;
DELETE FROM game_event_creature WHERE guid=2555783;
DELETE FROM game_event_creature_data WHERE guid=2555783;
DELETE FROM creature_battleground WHERE guid=2555783;
