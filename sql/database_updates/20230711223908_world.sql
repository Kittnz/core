
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2578264,61604,0,0,0,0,-6960.16,-1577.41,243.165,4.99547,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578264;
DELETE FROM creature_addon WHERE guid=2578264;
DELETE FROM creature_movement WHERE id=2578264;
DELETE FROM game_event_creature WHERE guid=2578264;
DELETE FROM game_event_creature_data WHERE guid=2578264;
DELETE FROM creature_battleground WHERE guid=2578264;
REPLACE INTO `creature` VALUES (2578265,61605,0,0,0,0,-6960.51,-1576.2,243.023,4.99547,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578265;
DELETE FROM creature_addon WHERE guid=2578265;
DELETE FROM creature_movement WHERE id=2578265;
DELETE FROM game_event_creature WHERE guid=2578265;
DELETE FROM game_event_creature_data WHERE guid=2578265;
DELETE FROM creature_battleground WHERE guid=2578265;
REPLACE INTO `creature` VALUES (2578266,61604,0,0,0,815,-940.481,2948.79,133.919,5.68331,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578267,61604,0,0,0,815,-935.756,2930.43,133.921,2.48673,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578268,61605,0,0,0,815,-947.452,2927.15,133.921,0.966982,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578268,61605,0,0,0,815,-947.452,2927.15,133.921,0.966982,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2578268;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2578268,1, -947.452026,2927.152832,133.920700, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2578268,2, -942.875549,2933.567627,133.920700, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2578268,3, -937.928223,2940.784424,133.911835, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2578268,4, -930.972839,2950.868408,133.910339, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2578268,5, -935.450134,2944.465088,133.911057, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2578268,6, -940.603577,2937.059326,133.911057, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2578268,7, -944.017639,2932.109619,133.921204, 100);
REPLACE INTO `creature` VALUES (2578268,61605,0,0,0,815,-947.452,2927.15,133.921,0.966982,300,300,0,100,100,2,0,0);
