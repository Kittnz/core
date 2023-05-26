
-- Changes by VOJI
DELETE FROM creature WHERE guid=16102;
DELETE FROM creature_addon WHERE guid=16102;
DELETE FROM creature_movement WHERE id=16102;
DELETE FROM game_event_creature WHERE guid=16102;
DELETE FROM game_event_creature_data WHERE guid=16102;
DELETE FROM creature_battleground WHERE guid=16102;
DELETE FROM creature WHERE guid=15488;
DELETE FROM creature_addon WHERE guid=15488;
DELETE FROM creature_movement WHERE id=15488;
DELETE FROM game_event_creature WHERE guid=15488;
DELETE FROM game_event_creature_data WHERE guid=15488;
DELETE FROM creature_battleground WHERE guid=15488;

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577320,61538,0,0,0,0,-2021.73,1137.85,35.123,3.77085,120,120,0,100,100,0,0,0);
