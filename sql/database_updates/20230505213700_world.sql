
-- Changes by SHANG
DELETE FROM creature WHERE guid=6458;
DELETE FROM creature_addon WHERE guid=6458;
DELETE FROM creature_movement WHERE id=6458;
DELETE FROM game_event_creature WHERE guid=6458;
DELETE FROM game_event_creature_data WHERE guid=6458;
DELETE FROM creature_battleground WHERE guid=6458;
REPLACE INTO `creature` VALUES (2576426,61480,0,0,0,1,2467.4,-632.234,115.055,5.01008,120,120,0,100,100,0,0,0);
