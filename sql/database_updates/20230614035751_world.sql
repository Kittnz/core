
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577476,10987,0,0,0,0,-1168.27,1504.88,70.9742,2.50661,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577476;
DELETE FROM creature_addon WHERE guid=2577476;
DELETE FROM creature_movement WHERE id=2577476;
DELETE FROM game_event_creature WHERE guid=2577476;
DELETE FROM game_event_creature_data WHERE guid=2577476;
DELETE FROM creature_battleground WHERE guid=2577476;

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -1426.187500, `position_y` = 1575.896484, `position_z` = 142.726318, `orientation` = 2.417884 WHERE `guid` = 2576370;
