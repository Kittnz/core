
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577523,4705,0,0,0,1,-1653.86,1923.07,63.7216,5.60662,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577523,4705,0,0,0,1,-1653.86,1923.07,63.7216,5.60662,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577524,4705,0,0,0,1,-1831.17,1895.75,60.3955,4.88483,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577525,4706,0,0,0,1,-2046.18,1806.96,63.3114,4.06802,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577525;
DELETE FROM creature_addon WHERE guid=2577525;
DELETE FROM creature_movement WHERE id=2577525;
DELETE FROM game_event_creature WHERE guid=2577525;
DELETE FROM game_event_creature_data WHERE guid=2577525;
DELETE FROM creature_battleground WHERE guid=2577525;
REPLACE INTO `creature` VALUES (2577526,4668,0,0,0,1,-2046.18,1806.96,63.3114,4.06802,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577527,4668,0,0,0,1,-2013.83,2040.74,66.6504,2.82317,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577528,4705,0,0,0,1,-2051.24,2074.85,65.3064,1.71026,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577529,4668,0,0,0,1,-1918.87,2051.92,65.0263,2.04074,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577530,4668,0,0,0,1,-1596.2,1949.5,61.2268,1.42734,120,120,5,100,100,1,0,0);

-- Changes by VOJI
DELETE FROM creature WHERE guid=2576421;
DELETE FROM creature_addon WHERE guid=2576421;
DELETE FROM creature_movement WHERE id=2576421;
DELETE FROM game_event_creature WHERE guid=2576421;
DELETE FROM game_event_creature_data WHERE guid=2576421;
DELETE FROM creature_battleground WHERE guid=2576421;
DELETE FROM creature WHERE guid=2576414;
DELETE FROM creature_addon WHERE guid=2576414;
DELETE FROM creature_movement WHERE id=2576414;
DELETE FROM game_event_creature WHERE guid=2576414;
DELETE FROM game_event_creature_data WHERE guid=2576414;
DELETE FROM creature_battleground WHERE guid=2576414;
DELETE FROM creature WHERE guid=2576419;
DELETE FROM creature_addon WHERE guid=2576419;
DELETE FROM creature_movement WHERE id=2576419;
DELETE FROM game_event_creature WHERE guid=2576419;
DELETE FROM game_event_creature_data WHERE guid=2576419;
DELETE FROM creature_battleground WHERE guid=2576419;
DELETE FROM creature WHERE guid=2576418;
DELETE FROM creature_addon WHERE guid=2576418;
DELETE FROM creature_movement WHERE id=2576418;
DELETE FROM game_event_creature WHERE guid=2576418;
DELETE FROM game_event_creature_data WHERE guid=2576418;
DELETE FROM creature_battleground WHERE guid=2576418;
DELETE FROM creature WHERE guid=2576415;
DELETE FROM creature_addon WHERE guid=2576415;
DELETE FROM creature_movement WHERE id=2576415;
DELETE FROM game_event_creature WHERE guid=2576415;
DELETE FROM game_event_creature_data WHERE guid=2576415;
DELETE FROM creature_battleground WHERE guid=2576415;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577531,16474,0,0,0,0,-1367.76,1215.17,125.692,1.55388,120,120,5,100,100,1,0,0);
