
-- Changes by TAMMO
DELETE FROM creature WHERE guid=2576362;
DELETE FROM creature_addon WHERE guid=2576362;
DELETE FROM creature_movement WHERE id=2576362;
DELETE FROM game_event_creature WHERE guid=2576362;
DELETE FROM game_event_creature_data WHERE guid=2576362;
DELETE FROM creature_battleground WHERE guid=2576362;
REPLACE INTO `creature` VALUES (2576420,61480,0,0,0,1,-2310.94,338.043,184.925,4.66013,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2576420;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,1, -2310.939941,338.042999,184.925003, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,2, -2322.757568,338.463470,184.929825, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,3, -2342.063232,348.524261,184.862259, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,4, -2372.971436,386.168274,184.807419, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,5, -2364.052734,388.053680,184.831558, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576420,6, -2336.409668,343.601471,184.877258, 100);
REPLACE INTO `creature` VALUES (2576420,61480,0,0,0,1,-2310.94,338.043,184.925,4.66013,300,300,4,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2576411,61480,0,0,0,1,-2271.94,369.048,183.731,5.2429,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2576411;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576411,1, -2271.939941,369.048004,183.731003, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576411,2, -2298.126221,349.287201,184.966019, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2576411,3, -2286.826416,368.439667,183.985275, 100);
REPLACE INTO `creature` VALUES (2576411,61480,0,0,0,1,-2271.94,369.048,183.731,5.2429,300,300,4,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2105.66,836.157,165.819,0.0657732,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2105.66,836.157,165.819,0.0657732,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577123;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,1, -2105.664551,836.156860,165.819244, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,2, -2077.113770,839.761047,160.426987, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,3, -2058.528809,844.545471,161.871033, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,4, -2040.376099,846.717468,154.298447, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,5, -2024.367798,858.892639,154.954147, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,6, -2012.669922,868.080994,150.958801, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,7, -1996.298340,875.197510,147.679291, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,8, -1995.726807,873.613281,147.669632, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,9, -2012.371460,865.996704,151.150055, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,10, -2023.084839,858.419800,154.749634, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,11, -2041.518311,846.157288,154.638748, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,12, -2058.988037,843.966064,161.914032, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,13, -2072.395508,840.566040,160.600159, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,14, -2082.652588,838.486206,161.565018, 100);
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2105.66,836.157,165.819,0.0657732,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = -2058.685547, `position_y` = 844.108887, `position_z` = 161.911575, `orientation` = 0.179654 WHERE `guid` = 2577123;
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2058.69,844.109,161.912,0.179654,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577123;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,1, -2058.685547,844.108887,161.911575, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,2, -2040.503906,848.065857,154.197784, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,3, -2016.646729,863.336731,152.179596, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,4, -1995.153687,873.869995,147.554916, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,5, -2014.158691,866.850342,151.440384, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,6, -2028.117920,854.169983,155.016968, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577123,7, -2042.128174,845.676514,154.894012, 100);
REPLACE INTO `creature` VALUES (2577123,61477,0,0,0,1,-2058.69,844.109,161.912,0.179654,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = 4250.143066, `position_y` = -2737.343506, `position_z` = 7.106559, `orientation` = 5.743947 WHERE `guid` = 2558342;
REPLACE INTO `creature` VALUES (2560424,40013,0,0,0,0,4247.03,-2704.86,6.68264,4.01845,143,143,0,100,0,0,0,0);
DELETE FROM creature_movement WHERE id=2560424;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,1, 4247.029785,-2704.860107,6.682640, 100);
REPLACE INTO `creature` VALUES (2560424,40013,0,0,0,0,4247.03,-2704.86,6.68264,4.01845,143,143,0,100,0,2,0,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,2, 4254.899414,-2697.345947,6.887248, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,3, 4271.760254,-2694.312744,5.483411, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,4, 4274.933105,-2702.884521,5.449792, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560424,5, 4250.871094,-2703.482910,6.880307, 100);
REPLACE INTO `creature` VALUES (2560425,40019,0,0,0,0,4280.84,-2699.17,6.27102,4.08207,147,147,0,100,0,0,0,0);
DELETE FROM creature_movement WHERE id=2560425;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,1, 4280.839844,-2699.169922,6.271020, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,2, 4280.537598,-2699.413818,6.224945, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,3, 4283.192383,-2719.054688,7.024815, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,4, 4286.504883,-2750.307617,7.921516, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,5, 4274.611328,-2747.649902,8.497016, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,6, 4269.018555,-2732.091064,8.866570, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,7, 4280.585938,-2720.164795,6.855968, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560425,8, 4281.210449,-2704.526611,6.169866, 100);
REPLACE INTO `creature` VALUES (2560425,40019,0,0,0,0,4280.84,-2699.17,6.27102,4.08207,147,147,0,100,0,2,0,0);
