
-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2581311,61794,0,0,0,1,318.677,-7628,87.1681,2.75431,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581312,61793,0,0,0,1,-149.114,-7874.69,35.9685,5.20328,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581313,61792,0,0,0,1,-592.492,-6869.34,-12.0088,5.71434,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581314,60960,0,0,0,1,-472.175,-7125.86,35.4183,5.15502,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2581314;
DELETE FROM creature_addon WHERE guid=2581314;
DELETE FROM creature_movement WHERE id=2581314;
DELETE FROM game_event_creature WHERE guid=2581314;
DELETE FROM game_event_creature_data WHERE guid=2581314;
DELETE FROM creature_battleground WHERE guid=2581314;
