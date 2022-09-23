
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2572388,60979,0,0,0,1,365.913,-557.779,85.9125,5.5871,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572389,60980,0,0,0,1,364.402,-559.733,85.92,5.7324,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572390,60981,0,0,0,1,363.538,-562.178,85.9202,5.8502,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572391,60982,0,0,0,1,362.013,-564.467,85.9221,5.78758,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572392,60983,0,0,0,1,360.727,-566.227,85.9221,5.80128,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572393,60984,0,0,0,1,362.987,-553.396,85.9224,0.971868,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572394,60985,0,0,0,1,360.321,-551.906,85.9224,0.95616,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572393;
DELETE FROM creature_addon WHERE guid=2572393;
DELETE FROM creature_movement WHERE id=2572393;
DELETE FROM game_event_creature WHERE guid=2572393;
DELETE FROM game_event_creature_data WHERE guid=2572393;
DELETE FROM creature_battleground WHERE guid=2572393;
DELETE FROM creature WHERE guid=2572394;
DELETE FROM creature_addon WHERE guid=2572394;
DELETE FROM creature_movement WHERE id=2572394;
DELETE FROM game_event_creature WHERE guid=2572394;
DELETE FROM game_event_creature_data WHERE guid=2572394;
DELETE FROM creature_battleground WHERE guid=2572394;
REPLACE INTO `creature` VALUES (2572395,61013,0,0,0,0,-8150.54,1222.02,8.58368,3.70957,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572395;
DELETE FROM creature_addon WHERE guid=2572395;
DELETE FROM creature_movement WHERE id=2572395;
DELETE FROM game_event_creature WHERE guid=2572395;
DELETE FROM game_event_creature_data WHERE guid=2572395;
DELETE FROM creature_battleground WHERE guid=2572395;
REPLACE INTO `creature` VALUES (2572396,61016,0,0,0,0,-8389.56,1338.6,5.23035,0.621734,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572396;
DELETE FROM creature_addon WHERE guid=2572396;
DELETE FROM creature_movement WHERE id=2572396;
DELETE FROM game_event_creature WHERE guid=2572396;
DELETE FROM game_event_creature_data WHERE guid=2572396;
DELETE FROM creature_battleground WHERE guid=2572396;
REPLACE INTO `creature` VALUES (2572397,61015,0,0,0,0,-8390.42,1340.82,5.23035,6.02647,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572397;
DELETE FROM creature_addon WHERE guid=2572397;
DELETE FROM creature_movement WHERE id=2572397;
DELETE FROM game_event_creature WHERE guid=2572397;
DELETE FROM game_event_creature_data WHERE guid=2572397;
DELETE FROM creature_battleground WHERE guid=2572397;
REPLACE INTO `creature` VALUES (2572398,61014,0,0,0,0,-8388.2,1341.88,5.23035,4.00721,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572398,61014,0,0,0,0,-8388.2,1341.88,5.23035,4.00721,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2572399,61017,0,0,0,0,-8547.25,385.978,108.386,3.57208,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572400,61013,0,0,0,0,-8611.27,397.084,102.925,3.54097,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572401,61015,0,0,0,0,-8952.93,996.667,122.026,4.13486,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572401;
DELETE FROM creature_addon WHERE guid=2572401;
DELETE FROM creature_movement WHERE id=2572401;
DELETE FROM game_event_creature WHERE guid=2572401;
DELETE FROM game_event_creature_data WHERE guid=2572401;
DELETE FROM creature_battleground WHERE guid=2572401;
REPLACE INTO `creature` VALUES (2572402,61016,0,0,0,0,-8952.83,996.653,122.026,4.12815,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572403,61015,0,0,0,0,-8833.14,977.341,98.3433,5.40757,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572403,61015,0,0,0,0,-8833.14,977.341,98.3433,5.40757,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2572403;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,1, -8833.141602,977.340881,98.343307, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,2, -8825.148438,966.941284,99.362625, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,3, -8815.197266,954.303528,100.757927, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,4, -8802.238281,937.782104,101.239822, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,5, -8782.295898,913.419128,100.047966, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,6, -8761.265625,890.420776,101.608139, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,7, -8753.399414,889.385376,101.911255, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,8, -8730.298828,897.487244,100.855911, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,9, -8711.399414,912.169189,101.241447, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,10, -8726.076172,931.509094,100.537392, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,11, -8739.546875,947.178589,101.250725, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,12, -8756.715820,965.182007,99.374352, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,13, -8767.627930,969.264404,99.833458, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,14, -8792.339844,951.403564,100.774170, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,15, -8804.786133,942.312134,101.241432, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,16, -8815.728516,955.133728,100.674042, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,17, -8826.783203,946.913269,103.140953, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,18, -8838.374023,938.294189,105.355789, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,19, -8847.861328,931.239136,102.671631, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,20, -8850.759766,929.083740,102.036606, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,21, -8835.054688,904.574463,97.815910, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,22, -8823.043945,887.761658,98.453697, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,23, -8824.411133,876.368347,98.761848, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,24, -8831.215820,862.100769,98.918365, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,25, -8838.991211,854.607300,98.782310, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,26, -8842.933594,839.250854,99.044510, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,27, -8837.189453,832.061035,99.102394, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,28, -8824.907227,831.995422,98.914978, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,29, -8822.704102,847.734619,99.112221, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,30, -8830.218750,883.955078,98.391289, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,31, -8836.909180,905.830627,97.802361, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,32, -8848.128906,922.792053,101.722054, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,33, -8848.830078,930.278992,102.518608, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,34, -8832.553711,942.971313,104.642433, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,35, -8818.352539,954.562378,100.583015, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2572403,36, -8824.531250,966.071045,99.458054, 100);
REPLACE INTO `creature` VALUES (2572403,61015,0,0,0,0,-8833.14,977.341,98.3433,5.40757,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2572404,60988,0,0,0,1,892.128,-809.074,168.456,1.64182,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572405,60989,0,0,0,1,894.391,-808.59,168.39,1.70146,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572406,60990,0,0,0,1,896.219,-808.38,168.329,1.78899,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572407,60991,0,0,0,1,897.923,-808.503,168.244,1.78598,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572408,60992,0,0,0,1,899.538,-808.194,168.135,1.79311,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572409,60993,0,0,0,1,899.028,-805.941,167.898,1.79311,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572410,60993,0,0,0,1,897.154,-806.663,168.091,1.73769,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572410;
DELETE FROM creature_addon WHERE guid=2572410;
DELETE FROM creature_movement WHERE id=2572410;
DELETE FROM game_event_creature WHERE guid=2572410;
DELETE FROM game_event_creature_data WHERE guid=2572410;
DELETE FROM creature_battleground WHERE guid=2572410;
REPLACE INTO `creature` VALUES (2572411,60994,0,0,0,1,897.154,-806.663,168.091,1.73769,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572412,60995,0,0,0,1,895.282,-807.352,168.3,1.78089,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572413,60996,0,0,0,1,893.631,-807.589,168.388,1.75497,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572414,60997,0,0,0,1,891.912,-807.794,168.45,1.87633,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572415,60998,0,0,0,1,891.681,-805.732,168.399,1.79779,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572416,60999,0,0,0,1,893.207,-805.23,168.295,1.80344,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572417,60991,0,0,0,1,894.887,-805.224,168.121,1.80369,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572417;
DELETE FROM creature_addon WHERE guid=2572417;
DELETE FROM creature_movement WHERE id=2572417;
DELETE FROM game_event_creature WHERE guid=2572417;
DELETE FROM game_event_creature_data WHERE guid=2572417;
DELETE FROM creature_battleground WHERE guid=2572417;
REPLACE INTO `creature` VALUES (2572418,61000,0,0,0,1,894.565,-805.266,168.158,1.7889,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572419,61001,0,0,0,1,896.506,-804.906,167.953,1.78497,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572420,61002,0,0,0,1,898.61,-804.323,167.744,1.68993,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572421,61003,0,0,0,1,898.362,-802.577,167.761,1.79204,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572422,61004,0,0,0,1,896.388,-803.35,167.892,1.74884,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572423,61005,0,0,0,1,894.51,-804.092,168.056,1.72675,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572424,61006,0,0,0,1,892.908,-804.106,168.222,1.82493,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572425,61007,0,0,0,1,891.018,-804.529,168.415,1.78566,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572425;
DELETE FROM creature_addon WHERE guid=2572425;
DELETE FROM creature_movement WHERE id=2572425;
DELETE FROM game_event_creature WHERE guid=2572425;
DELETE FROM game_event_creature_data WHERE guid=2572425;
DELETE FROM creature_battleground WHERE guid=2572425;
REPLACE INTO `creature` VALUES (2572426,61009,0,0,0,0,-4704.06,-886.165,501.957,5.88215,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572427,61010,0,0,0,0,-4693.76,-871.61,510.561,4.40899,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572428,61011,0,0,0,0,-4691.76,-873.11,510.561,2.44471,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572427;
DELETE FROM creature_addon WHERE guid=2572427;
DELETE FROM creature_movement WHERE id=2572427;
DELETE FROM game_event_creature WHERE guid=2572427;
DELETE FROM game_event_creature_data WHERE guid=2572427;
DELETE FROM creature_battleground WHERE guid=2572427;
DELETE FROM creature WHERE guid=2572428;
DELETE FROM creature_addon WHERE guid=2572428;
DELETE FROM creature_movement WHERE id=2572428;
DELETE FROM game_event_creature WHERE guid=2572428;
DELETE FROM game_event_creature_data WHERE guid=2572428;
DELETE FROM creature_battleground WHERE guid=2572428;
REPLACE INTO `creature` VALUES (2572429,61007,0,0,0,0,-4693.96,-871.892,510.561,4.35715,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572430,61008,0,0,0,0,-4702.62,-875.47,508.62,5.40094,25,25,0,100,100,0,0,0);
UPDATE `creature_template` set `scale` = 1.000000 where entry = 61008;
DELETE FROM creature WHERE guid=2572430;
DELETE FROM creature_addon WHERE guid=2572430;
DELETE FROM creature_movement WHERE id=2572430;
DELETE FROM game_event_creature WHERE guid=2572430;
DELETE FROM game_event_creature_data WHERE guid=2572430;
DELETE FROM creature_battleground WHERE guid=2572430;
REPLACE INTO `creature` VALUES (2572431,61008,0,0,0,0,-4709.54,-871.037,501.957,5.08588,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572432,61005,0,0,0,0,-4684.71,-884.828,501.67,4.44207,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572432;
DELETE FROM creature_addon WHERE guid=2572432;
DELETE FROM creature_movement WHERE id=2572432;
DELETE FROM game_event_creature WHERE guid=2572432;
DELETE FROM game_event_creature_data WHERE guid=2572432;
DELETE FROM creature_battleground WHERE guid=2572432;
REPLACE INTO `creature` VALUES (2572433,61008,0,0,0,0,-4684.71,-884.828,501.67,4.44207,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572431;
DELETE FROM creature_addon WHERE guid=2572431;
DELETE FROM creature_movement WHERE id=2572431;
DELETE FROM game_event_creature WHERE guid=2572431;
DELETE FROM game_event_creature_data WHERE guid=2572431;
DELETE FROM creature_battleground WHERE guid=2572431;
REPLACE INTO `creature` VALUES (2572434,60925,0,0,0,0,-4703.16,-875.455,508.62,5.73876,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572055;
DELETE FROM creature_addon WHERE guid=2572055;
DELETE FROM creature_movement WHERE id=2572055;
DELETE FROM game_event_creature WHERE guid=2572055;
DELETE FROM game_event_creature_data WHERE guid=2572055;
DELETE FROM creature_battleground WHERE guid=2572055;
REPLACE INTO `creature` VALUES (2572435,61010,0,0,0,0,-4708.51,-868.578,508.621,3.62839,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572429;
DELETE FROM creature_addon WHERE guid=2572429;
DELETE FROM creature_movement WHERE id=2572429;
DELETE FROM game_event_creature WHERE guid=2572429;
DELETE FROM game_event_creature_data WHERE guid=2572429;
DELETE FROM creature_battleground WHERE guid=2572429;
REPLACE INTO `creature` VALUES (2572436,61011,0,0,0,0,-4680.06,-864.241,503.89,0.156975,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572437,61012,0,0,0,0,-4677.4,-863.828,503.89,3.27501,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572438,61012,0,0,0,0,-4678,-863.994,503.89,3.26872,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572437;
DELETE FROM creature_addon WHERE guid=2572437;
DELETE FROM creature_movement WHERE id=2572437;
DELETE FROM game_event_creature WHERE guid=2572437;
DELETE FROM game_event_creature_data WHERE guid=2572437;
DELETE FROM creature_battleground WHERE guid=2572437;
REPLACE INTO `creature` VALUES (2572439,61007,0,0,0,0,-4686.14,-867.222,503.892,4.25675,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572439;
DELETE FROM creature_addon WHERE guid=2572439;
DELETE FROM creature_movement WHERE id=2572439;
DELETE FROM game_event_creature WHERE guid=2572439;
DELETE FROM game_event_creature_data WHERE guid=2572439;
DELETE FROM creature_battleground WHERE guid=2572439;
REPLACE INTO `creature` VALUES (2572440,61007,0,0,0,0,-4685.22,-863.081,510.559,4.58303,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572441,60987,0,0,0,0,-4696.62,-883.347,501.674,5.19486,25,25,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2572442,60986,0,0,0,0,-4695.24,-882.253,501.672,5.27262,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572441;
DELETE FROM creature_addon WHERE guid=2572441;
DELETE FROM creature_movement WHERE id=2572441;
DELETE FROM game_event_creature WHERE guid=2572441;
DELETE FROM game_event_creature_data WHERE guid=2572441;
DELETE FROM creature_battleground WHERE guid=2572441;
DELETE FROM creature WHERE guid=2572442;
DELETE FROM creature_addon WHERE guid=2572442;
DELETE FROM creature_movement WHERE id=2572442;
DELETE FROM game_event_creature WHERE guid=2572442;
DELETE FROM game_event_creature_data WHERE guid=2572442;
DELETE FROM creature_battleground WHERE guid=2572442;
REPLACE INTO `creature` VALUES (2572443,60985,0,0,0,0,-4693,-882.697,501.669,4.89163,25,25,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2572443;
DELETE FROM creature_addon WHERE guid=2572443;
DELETE FROM creature_movement WHERE id=2572443;
DELETE FROM game_event_creature WHERE guid=2572443;
DELETE FROM game_event_creature_data WHERE guid=2572443;
DELETE FROM creature_battleground WHERE guid=2572443;
REPLACE INTO `creature` VALUES (2572444,60979,0,0,0,0,-4690.12,-896.029,501.669,4.85236,25,25,0,100,100,0,0,0);
