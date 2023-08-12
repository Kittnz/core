
-- Changes by JOE
DELETE FROM creature WHERE guid=2572289;
DELETE FROM creature_addon WHERE guid=2572289;
DELETE FROM creature_movement WHERE id=2572289;
DELETE FROM game_event_creature WHERE guid=2572289;
DELETE FROM game_event_creature_data WHERE guid=2572289;
DELETE FROM creature_battleground WHERE guid=2572289;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2578665,50041,0,0,0,532,-11110.7,-1962.05,74.3892,5.87804,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = -10932.880859, `position_y` = -1992.220215, `position_z` = 92.182457, `orientation` = 5.953417 WHERE `guid` = 2574312;
