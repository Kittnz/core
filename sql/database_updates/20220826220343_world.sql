
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2572202,60897,0,0,0,1,-1621.16,-4921.6,15.3782,1.93596,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572204,60941,0,0,0,1,-3665.48,-3458.77,38.2179,5.2296,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572204,60941,0,0,0,1,-3665.48,-3458.77,38.2179,5.2296,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572204,60941,0,0,0,1,-3665.48,-3458.77,38.2179,5.2296,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572205,60939,0,0,0,1,-3646.18,-3422.61,37.1957,2.1246,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572206,60940,0,0,0,1,-3644.41,-3418.13,37.1918,3.42533,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572207,60939,0,0,0,1,-3634.31,-3424.43,37.1967,0.47144,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572207,60939,0,0,0,1,-3634.31,-3424.43,37.1967,0.47144,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572208,60940,0,0,0,1,-3652.06,-3445.82,37.1806,4.69609,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572208,60940,0,0,0,1,-3652.06,-3445.82,37.1806,4.69609,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572209,60940,0,0,0,1,-3667.88,-3386.71,36.6192,1.68173,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572210,60939,0,0,0,1,-3685.89,-3388.99,37.2034,2.01002,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572211,60939,0,0,0,1,-3696.69,-3401.41,37.1866,4.03704,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572211,60939,0,0,0,1,-3696.69,-3401.41,37.1866,4.03704,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572212,60940,0,0,0,1,-3716.72,-3416.8,36.5954,4.35827,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572212,60940,0,0,0,1,-3716.72,-3416.8,36.5954,4.35827,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572213,60939,0,0,0,1,-3715.61,-3444.42,36.9414,5.69423,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572213,60939,0,0,0,1,-3715.61,-3444.42,36.9414,5.69423,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572214,60940,0,0,0,1,-3673,-3475.87,39.5863,5.48061,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572214,60940,0,0,0,1,-3673,-3475.87,39.5863,5.48061,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572215,60939,0,0,0,1,-3710.28,-3469.47,37.2867,1.96263,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572215,60939,0,0,0,1,-3710.28,-3469.47,37.2867,1.96263,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572216,60940,0,0,0,1,-3696.54,-3468.4,38.194,4.47119,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572217,60939,0,0,0,1,-3699.6,-3461.12,38.1971,5.53226,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572218,60939,0,0,0,1,-3693.18,-3437.96,37.4727,2.36868,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572218,60939,0,0,0,1,-3693.18,-3437.96,37.4727,2.36868,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572219,60940,0,0,0,1,-3674.58,-3419.86,37.3402,0.771963,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572219,60940,0,0,0,1,-3674.58,-3419.86,37.3402,0.771963,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572220,60939,0,0,0,1,-3737.12,-3455.18,40.6902,5.26694,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572220,60939,0,0,0,1,-3737.12,-3455.18,40.6902,5.26694,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572221,60940,0,0,0,1,-3762.25,-3454.33,38.6336,2.24315,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572221,60940,0,0,0,1,-3762.25,-3454.33,38.6336,2.24315,300,300,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2572093;
DELETE FROM creature_addon WHERE guid=2572093;
DELETE FROM creature_movement WHERE id=2572093;
DELETE FROM game_event_creature WHERE guid=2572093;
DELETE FROM game_event_creature_data WHERE guid=2572093;
DELETE FROM creature_battleground WHERE guid=2572093;
DELETE FROM creature WHERE guid=2572092;
DELETE FROM creature_addon WHERE guid=2572092;
DELETE FROM creature_movement WHERE id=2572092;
DELETE FROM game_event_creature WHERE guid=2572092;
DELETE FROM game_event_creature_data WHERE guid=2572092;
DELETE FROM creature_battleground WHERE guid=2572092;
UPDATE creature SET position_x = '-3817.568604', position_y = '-3403.351318', position_z = '38.359112', orientation = '3.369416' WHERE guid = '2572091';
DELETE FROM creature WHERE guid=73955;
DELETE FROM creature_addon WHERE guid=73955;
DELETE FROM creature_movement WHERE id=73955;
DELETE FROM game_event_creature WHERE guid=73955;
DELETE FROM game_event_creature_data WHERE guid=73955;
DELETE FROM creature_battleground WHERE guid=73955;
REPLACE INTO `creature` VALUES (2572222,60939,0,0,0,1,-3809.69,-3387.49,39.2141,1.57164,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572222,60939,0,0,0,1,-3809.69,-3387.49,39.2141,1.57164,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572223,60940,0,0,0,1,-3780.63,-3405.6,37.6576,5.49627,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572223,60940,0,0,0,1,-3780.63,-3405.6,37.6576,5.49627,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572224,60940,0,0,0,1,-3749.3,-3431.97,39.1981,2.32169,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572225,60940,0,0,0,1,-3741.75,-3419.77,37.1167,3.18462,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572226,60939,0,0,0,1,-3738.19,-3424.58,36.9649,2.9757,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572226,60939,0,0,0,1,-3738.19,-3424.58,36.9649,2.9757,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2572226;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,1, -3738.194824,-3424.584473,36.964870, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,2, -3752.210449,-3421.621338,37.546917, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,3, -3760.068604,-3420.402588,37.894867, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,4, -3774.885010,-3421.285889,37.889847, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,5, -3797.177002,-3422.188721,37.966866, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,6, -3813.009766,-3418.528076,37.746044, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,7, -3831.882812,-3411.346436,37.840950, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,8, -3836.944336,-3411.297119,37.784588, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,9, -3824.238770,-3414.585693,37.900509, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,10, -3810.607910,-3420.588379,37.799072, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,11, -3793.813721,-3422.417480,37.963161, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,12, -3759.096924,-3420.613525,37.886978, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572226,13, -3746.650635,-3423.513184,37.291138, 100);
REPLACE INTO `creature` VALUES (2572226,60939,0,0,0,1,-3738.19,-3424.58,36.9649,2.9757,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2572227,60939,0,0,0,1,-3626.49,-3375.36,41.9308,5.9288,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572227,60939,0,0,0,1,-3626.49,-3375.36,41.9308,5.9288,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572228,60940,0,0,0,1,-3607.28,-3401.09,37.0408,4.74207,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572228,60940,0,0,0,1,-3607.28,-3401.09,37.0408,4.74207,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572229,60939,0,0,0,1,-3651.06,-3418.86,37.1505,6.11965,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572230,60939,0,0,0,1,-3658.49,-3396.33,37.1829,3.14928,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572231,60946,0,0,0,0,-8832.39,635.773,94.3848,2.28096,25,25,0,100,100,0,0,0);
