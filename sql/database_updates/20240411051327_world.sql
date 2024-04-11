
-- Changes by SHANG
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (921,-11048.212891,-1985.837036,101.574295,2.196399,814,'karaforty');

-- Changes by DRAGU
DELETE FROM creature WHERE guid=2582882;
DELETE FROM creature_addon WHERE guid=2582882;
DELETE FROM creature_movement WHERE id=2582882;
DELETE FROM game_event_creature WHERE guid=2582882;
DELETE FROM game_event_creature_data WHERE guid=2582882;
DELETE FROM creature_battleground WHERE guid=2582882;
