
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2582250,61891,0,0,0,0,-4118.95,-3714.1,200.092,1.9429,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2582250;
DELETE FROM creature_addon WHERE guid=2582250;
DELETE FROM creature_movement WHERE id=2582250;
DELETE FROM game_event_creature WHERE guid=2582250;
DELETE FROM game_event_creature_data WHERE guid=2582250;
DELETE FROM creature_battleground WHERE guid=2582250;
