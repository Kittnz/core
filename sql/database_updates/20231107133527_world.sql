
-- Changes by WILLBERG
REPLACE INTO `creature` VALUES (2580111,7559,0,0,0,0,-5638.71,-503.06,398.272,2.00501,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580112,7559,0,0,0,0,-5641.65,-502.625,396.668,1.52592,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580113,7559,0,0,0,0,-5639.49,-500.555,396.669,3.71718,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580114,7559,0,0,0,0,-5641.57,-494.185,397.765,4.54931,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580115,7559,0,0,0,0,-5641.57,-494.185,397.765,4.54931,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2580115;
DELETE FROM creature_addon WHERE guid=2580115;
DELETE FROM creature_movement WHERE id=2580115;
DELETE FROM game_event_creature WHERE guid=2580115;
DELETE FROM game_event_creature_data WHERE guid=2580115;
DELETE FROM creature_battleground WHERE guid=2580115;
DELETE FROM creature WHERE guid=2580114;
DELETE FROM creature_addon WHERE guid=2580114;
DELETE FROM creature_movement WHERE id=2580114;
DELETE FROM game_event_creature WHERE guid=2580114;
DELETE FROM game_event_creature_data WHERE guid=2580114;
DELETE FROM creature_battleground WHERE guid=2580114;
REPLACE INTO `creature` VALUES (2580116,7559,0,0,0,0,-5641.66,-506.346,397.019,0.372955,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2580117,7559,0,0,0,0,-5641.6,-505.856,396.938,1.3979,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2580117;
DELETE FROM creature_addon WHERE guid=2580117;
DELETE FROM creature_movement WHERE id=2580117;
DELETE FROM game_event_creature WHERE guid=2580117;
DELETE FROM game_event_creature_data WHERE guid=2580117;
DELETE FROM creature_battleground WHERE guid=2580117;

-- Changes by WILL2
DELETE FROM creature WHERE guid=2580113;
DELETE FROM creature_addon WHERE guid=2580113;
DELETE FROM creature_movement WHERE id=2580113;
DELETE FROM game_event_creature WHERE guid=2580113;
DELETE FROM game_event_creature_data WHERE guid=2580113;
DELETE FROM creature_battleground WHERE guid=2580113;

-- Changes by WILL
DELETE FROM creature WHERE guid=2580112;
DELETE FROM creature_addon WHERE guid=2580112;
DELETE FROM creature_movement WHERE id=2580112;
DELETE FROM game_event_creature WHERE guid=2580112;
DELETE FROM game_event_creature_data WHERE guid=2580112;
DELETE FROM creature_battleground WHERE guid=2580112;

-- Changes by WILLBERG
DELETE FROM creature WHERE guid=2580111;
DELETE FROM creature_addon WHERE guid=2580111;
DELETE FROM creature_movement WHERE id=2580111;
DELETE FROM game_event_creature WHERE guid=2580111;
DELETE FROM game_event_creature_data WHERE guid=2580111;
DELETE FROM creature_battleground WHERE guid=2580111;
DELETE FROM creature WHERE guid=2580116;
DELETE FROM creature_addon WHERE guid=2580116;
DELETE FROM creature_movement WHERE id=2580116;
DELETE FROM game_event_creature WHERE guid=2580116;
DELETE FROM game_event_creature_data WHERE guid=2580116;
DELETE FROM creature_battleground WHERE guid=2580116;
REPLACE INTO `creature` VALUES (2580118,7559,0,0,0,1,-442.072,-2656.37,95.7537,5.52197,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2580118;
DELETE FROM creature_addon WHERE guid=2580118;
DELETE FROM creature_movement WHERE id=2580118;
DELETE FROM game_event_creature WHERE guid=2580118;
DELETE FROM game_event_creature_data WHERE guid=2580118;
DELETE FROM creature_battleground WHERE guid=2580118;
