
-- Changes by SHANG
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (858,-1993.319458,2605.962646,62.311344,1.126615,1,'gelkis');
REPLACE INTO `creature` VALUES (2572892,80941,0,0,0,1,-1744.57,965.584,91.699,1.70433,3600,3600,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572892;
DELETE FROM creature_addon WHERE guid=2572892;
DELETE FROM creature_movement WHERE id=2572892;
DELETE FROM game_event_creature WHERE guid=2572892;
DELETE FROM game_event_creature_data WHERE guid=2572892;
DELETE FROM creature_battleground WHERE guid=2572892;
REPLACE INTO `creature` VALUES (2572893,61044,0,0,0,1,-1984.37,2600.42,61.9304,2.69063,3600,3600,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572894,61045,0,0,0,1,-1992.93,2629.19,61.1402,4.40015,3600,3600,0,100,100,0,0,0);
