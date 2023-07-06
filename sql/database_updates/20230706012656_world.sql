
-- Changes by VOJI
DELETE FROM creature WHERE guid=2568918;
DELETE FROM creature_addon WHERE guid=2568918;
DELETE FROM creature_movement WHERE id=2568918;
DELETE FROM game_event_creature WHERE guid=2568918;
DELETE FROM game_event_creature_data WHERE guid=2568918;
DELETE FROM creature_battleground WHERE guid=2568918;

-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2577969,80216,0,0,0,0,4317.7,-2859.2,3.45551,5.50519,120,120,0,100,100,0,0,0);
