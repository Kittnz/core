
-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2578854,14025,0,0,0,1,-8639.66,-4315.42,-208.652,0.491332,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578854;
DELETE FROM creature_addon WHERE guid=2578854;
DELETE FROM creature_movement WHERE id=2578854;
DELETE FROM game_event_creature WHERE guid=2578854;
DELETE FROM game_event_creature_data WHERE guid=2578854;
DELETE FROM creature_battleground WHERE guid=2578854;
REPLACE INTO `creature` VALUES (2578855,7546,0,0,0,1,-8639.51,-4315.02,-208.698,0.491332,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578342;
DELETE FROM creature_addon WHERE guid=2578342;
DELETE FROM creature_movement WHERE id=2578342;
DELETE FROM game_event_creature WHERE guid=2578342;
DELETE FROM game_event_creature_data WHERE guid=2578342;
DELETE FROM creature_battleground WHERE guid=2578342;
