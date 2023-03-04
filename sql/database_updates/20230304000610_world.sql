
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2574583,61251,0,0,0,0,-1518.55,1350.56,69.9016,4.13905,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574583;
DELETE FROM creature_addon WHERE guid=2574583;
DELETE FROM creature_movement WHERE id=2574583;
DELETE FROM game_event_creature WHERE guid=2574583;
DELETE FROM game_event_creature_data WHERE guid=2574583;
DELETE FROM creature_battleground WHERE guid=2574583;
