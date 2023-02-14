
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2574460,1853,0,0,0,1,16226.2,16257,13.2022,1.65007,120,120,5,100,100,1,1,200);
DELETE FROM creature WHERE guid=2574460;
DELETE FROM creature_addon WHERE guid=2574460;
DELETE FROM creature_movement WHERE id=2574460;
DELETE FROM game_event_creature WHERE guid=2574460;
DELETE FROM game_event_creature_data WHERE guid=2574460;
DELETE FROM creature_battleground WHERE guid=2574460;
