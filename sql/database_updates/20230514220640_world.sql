
-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2577136,80216,0,0,0,0,-8535.8,555.79,102.734,4.60828,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577136,80216,0,0,0,0,-8535.8,555.79,102.734,4.60828,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577136;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,1, -8535.804688,555.789856,102.733910, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,2, -8534.705078,565.372803,101.812721, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,3, -8539.035156,568.779053,101.399506, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,4, -8533.913086,581.414551,101.399506, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,5, -8525.980469,593.448669,101.399506, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,6, -8532.341797,600.718262,102.877373, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,7, -8534.773438,607.252258,102.877373, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,8, -8533.146484,608.661682,102.877373, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,9, -8534.986328,607.634033,102.877373, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,10, -8539.637695,609.581360,102.877373, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,11, -8547.917969,620.745850,101.589996, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,12, -8538.248047,608.641235,102.877419, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,13, -8527.694336,594.983032,101.399422, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,14, -8539.373047,571.387390,101.399422, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,15, -8532.382812,568.680359,101.812698, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,16, -8533.943359,565.307251,101.812698, 100);
REPLACE INTO `creature` VALUES (2577136,80216,0,0,0,0,-8535.8,555.79,102.734,4.60828,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = -8539.582031, `position_y` = 569.289673, `position_z` = 101.399139, `orientation` = 1.187092 WHERE `guid` = 2577136;
REPLACE INTO `creature` VALUES (2577136,80216,0,0,0,0,-8539.58,569.29,101.399,1.18709,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577136;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,1, -8539.582031,569.289673,101.399139, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,2, -8535.752930,578.436768,101.399139, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,3, -8524.303711,594.821472,101.399139, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,4, -8532.007812,582.653564,101.399139, 100);
REPLACE INTO `creature` VALUES (2577136,80216,0,0,0,0,-8539.58,569.29,101.399,1.18709,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = -8527.176758, `position_y` = 594.630249, `position_z` = 101.399231, `orientation` = 2.296079 WHERE `guid` = 2577136;
REPLACE INTO `creature` VALUES (2577136,80216,0,0,0,0,-8527.18,594.63,101.399,2.29608,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577136;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,1, -8527.176758,594.630249,101.399231, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,2, -8533.598633,602.555786,102.877464, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,3, -8543.661133,614.898926,102.877464, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,4, -8547.749023,620.465332,101.608688, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,5, -8540.184570,610.923340,102.875534, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577136,6, -8532.521484,601.546448,102.878357, 100);
REPLACE INTO `creature` VALUES (2577136,80216,0,0,0,0,-8527.18,594.63,101.399,2.29608,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2577136;
DELETE FROM creature_addon WHERE guid=2577136;
DELETE FROM creature_movement WHERE id=2577136;
DELETE FROM game_event_creature WHERE guid=2577136;
DELETE FROM game_event_creature_data WHERE guid=2577136;
DELETE FROM creature_battleground WHERE guid=2577136;
REPLACE INTO `creature` VALUES (2577137,80216,0,0,0,0,-5649.71,-4285.5,407.813,2.16173,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577137,80216,0,0,0,0,-5649.71,-4285.5,407.813,2.16173,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577137;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577137,1, -5649.714355,-4285.500000,407.812622, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577137,2, -5644.320312,-4293.474121,407.812866, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577137,3, -5633.961914,-4308.913086,404.615143, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577137,4, -5622.001953,-4315.125488,400.669189, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577137,5, -5609.256348,-4308.059570,399.527283, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577137,6, -5593.380859,-4289.434082,392.810333, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577137,7, -5605.079102,-4306.608398,400.312866, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577137,8, -5626.680176,-4315.516602,401.270508, 100);
REPLACE INTO `creature` VALUES (2577137,80216,0,0,0,0,-5649.71,-4285.5,407.813,2.16173,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2577138,80236,0,0,0,0,-5675.47,-4290.1,407.826,3.87076,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577138,80236,0,0,0,0,-5675.47,-4290.1,407.826,3.87076,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577138;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,1, -5675.467773,-4290.097168,407.825958, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,2, -5673.393066,-4287.077637,407.826202, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,3, -5674.645996,-4283.954590,407.826782, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,4, -5669.956055,-4288.321289,407.821625, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,5, -5670.284668,-4281.678711,407.826630, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,6, -5665.126465,-4284.051758,407.821045, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,7, -5662.048340,-4273.931152,407.769379, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,8, -5665.591309,-4272.531738,407.750488, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,9, -5653.021973,-4265.524902,407.784241, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,10, -5641.593262,-4268.679688,407.820618, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,11, -5638.087402,-4267.466797,407.821625, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,12, -5636.118164,-4263.837891,407.825989, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,13, -5624.789551,-4255.354980,407.826141, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,14, -5633.566406,-4262.534668,407.826141, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,15, -5637.952148,-4266.924805,407.822723, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,16, -5644.015137,-4270.388672,407.819550, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,17, -5649.027832,-4274.090332,407.820282, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,18, -5648.235840,-4276.019043,407.814972, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,19, -5645.979004,-4276.077637,407.823761, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,20, -5649.085449,-4276.519531,407.815125, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,21, -5644.332520,-4283.008789,407.812744, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,22, -5642.893066,-4282.104004,407.812744, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,23, -5644.840820,-4283.666016,407.812744, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,24, -5648.735840,-4277.921875,407.813171, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,25, -5657.091797,-4286.155273,407.812622, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,26, -5662.420410,-4280.601074,407.822784, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577138,27, -5667.910156,-4286.608887,407.819519, 100);
REPLACE INTO `creature` VALUES (2577138,80236,0,0,0,0,-5675.47,-4290.1,407.826,3.87076,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = -5625.474609, `position_y` = -4259.588379, `position_z` = 407.827118, `orientation` = 2.627467 WHERE `guid` = 2560352;
UPDATE `creature` SET `position_x` = -5625.365234, `position_y` = -4261.245117, `position_z` = 407.826202, `orientation` = 2.255969 WHERE `guid` = 2560352;
REPLACE INTO `creature` VALUES (2560440,40012,0,0,0,0,-5660.41,-4261.51,407.026,2.43048,100,100,0,100,0,0,0,0);
DELETE FROM creature_movement WHERE id=2560440;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,1, -5660.410156,-4261.509766,407.026001, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,2, -5667.878906,-4250.286621,407.011932, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,3, -5676.567383,-4254.661621,407.010468, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,4, -5669.113770,-4257.805664,407.018097, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,5, -5660.404785,-4270.501953,407.742279, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,6, -5668.892090,-4281.444336,407.826111, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,7, -5689.733887,-4295.329102,407.826111, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,8, -5654.144043,-4270.873535,407.793152, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,9, -5644.218750,-4266.090820,407.826691, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,10, -5622.396973,-4250.983398,407.826691, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,11, -5619.158691,-4252.111328,407.826691, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,12, -5616.684082,-4255.438477,407.826691, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,13, -5619.009766,-4250.733887,407.826691, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,14, -5625.512207,-4253.121094,407.826691, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,15, -5653.469238,-4270.155273,407.790497, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2560440,16, -5658.615723,-4265.937988,407.655396, 100);
REPLACE INTO `creature` VALUES (2560440,40012,0,0,0,0,-5660.41,-4261.51,407.026,2.43048,100,100,0,100,0,2,0,0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417375085402654, 0.900000);
REPLACE INTO `gameobject` VALUES ( 4004382, 2003450, 0, -5672.14, -4260.88, 407.02, 5.28868, 0, 0, 0.477013, -0.878896, 25, 25, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 4004635, 2010662, 0, -5671.26, -4261.61, 408.245, 5.0795, 0, 0, 0.566164, -0.824293, 25, 25, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 4004587, 2003602, 0, -5671.72, -4259.27, 408.234, 4.80966, 0, 0, 0.671895, -0.740646, 25, 25, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 4004587, 2003602, 0, -5671.67, -4259.56, 408.244, 4.80966, 0, 0, 0.671895, -0.740646, 25, 25, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 4004635, 2010662, 0, -5671.31, -4261.52, 408.255, 5.0795, 0, 0, 0.566164, -0.824293, 25, 25, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015473, 2009787, 0, -5678.35, -4290.96, 407.827, 5.54755, 0, 0, 0.359581, -0.933114, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417481403631537, 0.700000);
REPLACE INTO `gameobject` VALUES ( 5015473, 2009787, 0, -5678.35, -4290.96, 407.827, 5.54755, 0, 0, 0.359581, -0.933114, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417481403631537, 0.500000);
REPLACE INTO `gameobject` VALUES ( 5015473, 2009787, 0, -5678.35, -4290.96, 407.827, 5.54755, 0, 0, 0.359581, -0.933114, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015474, 2009787, 0, -5639.32, -4283.26, 407.832, 2.47114, 0, 0, 0.944336, 0.328983, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015475, 2009787, 0, -5639.47, -4282.69, 407.832, 6.10282, 0, 0, 0.0900605, -0.995936, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2577139,1423,0,0,0,0,-8216.59,1205.11,5.89564,5.99689,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577139,1423,0,0,0,0,-8216.59,1205.11,5.89564,5.99689,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577139;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,1, -8216.593750,1205.112427,5.895637, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,2, -8240.081055,1213.704712,5.188414, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,3, -8266.074219,1213.270142,5.239752, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,4, -8323.599609,1213.158081,5.245920, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,5, -8368.112305,1213.071411,5.159893, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,6, -8387.679688,1207.817261,5.169814, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,7, -8448.256836,1205.222900,5.257820, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,8, -8460.436523,1207.838989,5.198277, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,9, -8443.615234,1203.975952,5.330557, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,10, -8423.554688,1205.633301,5.339296, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,11, -8384.318359,1208.892212,5.193213, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,12, -8360.060547,1205.927002,5.366877, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,13, -8331.590820,1213.136597,5.216332, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,14, -8315.670898,1205.054565,5.481170, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,15, -8278.705078,1214.545654,5.213444, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577139,16, -8238.416016,1213.030396,5.198034, 100);
REPLACE INTO `creature` VALUES (2577139,1423,0,0,0,0,-8216.59,1205.11,5.89564,5.99689,300,300,0,100,100,2,0,0);
UPDATE `creature` SET `position_x` = -8259.606445, `position_y` = 1209.951782, `position_z` = 5.338626, `orientation` = 5.590849 WHERE `guid` = 2568661;
REPLACE INTO `creature` VALUES (2577140,1976,0,0,0,0,-8631.5,944.399,99.4649,3.78914,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577140,1976,0,0,0,0,-8631.5,944.399,99.4649,3.78914,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577140;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,1, -8631.498047,944.399475,99.464890, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,2, -8606.625977,965.471619,99.444855, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,3, -8573.250977,991.233337,96.299568, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,4, -8565.897461,986.116699,96.305664, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,5, -8545.973633,982.444092,95.849823, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,6, -8527.733398,964.677612,96.142487, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,7, -8509.085938,959.282166,96.022675, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,8, -8497.613281,961.501770,95.990952, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,9, -8488.658203,968.278503,95.880737, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,10, -8467.266602,985.341125,79.010605, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,11, -8471.189453,992.420105,79.071762, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,12, -8485.331055,982.364868,72.737877, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,13, -8505.662109,1006.994690,59.479027, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,14, -8485.816406,1026.505981,59.775230, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,15, -8464.372070,1027.921753,59.509361, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,16, -8457.663086,1032.381348,59.473961, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,17, -8415.942383,1065.504639,31.630281, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,18, -8459.541992,1032.132324,59.473530, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,19, -8483.143555,1024.843140,59.683231, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,20, -8506.166992,1010.068420,59.478680, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,21, -8485.022461,982.982117,72.737816, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,22, -8471.074219,994.047363,79.084724, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,23, -8468.221680,985.295349,79.009491, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,24, -8488.000000,968.564697,95.898018, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,25, -8504.447266,959.396973,96.039772, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,26, -8526.956055,963.523987,96.142288, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,27, -8548.785156,984.002563,95.884674, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,28, -8560.784180,978.888794,96.412376, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,29, -8571.142578,991.622803,96.249847, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577140,30, -8595.997070,972.446472,98.421646, 100);
REPLACE INTO `creature` VALUES (2577140,1976,0,0,0,0,-8631.5,944.399,99.4649,3.78914,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2577141,1976,0,0,0,0,-8510.72,982.11,59.4771,2.06756,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577141,1976,0,0,0,0,-8510.72,982.11,59.4771,2.06756,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577141;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,1, -8510.718750,982.110413,59.477108, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,2, -8517.993164,1003.283691,59.412189, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,3, -8535.013672,1029.142578,59.722347, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,4, -8552.045898,1035.590210,59.354931, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,5, -8582.733398,1067.536621,37.708298, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,6, -8592.580078,1082.612915,34.597736, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,7, -8580.771484,1119.643066,17.944504, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,8, -8573.212891,1133.500610,17.944504, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,9, -8572.657227,1156.886475,17.945158, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,10, -8575.605469,1126.403809,17.945436, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,11, -8594.302734,1087.029785,33.748638, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,12, -8551.219727,1036.812988,59.382465, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,13, -8535.963867,1032.765259,59.690872, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577141,14, -8518.697266,1008.377808,59.588009, 100);
REPLACE INTO `creature` VALUES (2577141,1976,0,0,0,0,-8510.72,982.11,59.4771,2.06756,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2577142,80236,0,0,0,0,-8420.82,1028.94,68.3842,0.734729,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577142,80236,0,0,0,0,-8420.82,1028.94,68.3842,0.734729,300,300,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2577142;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,1, -8420.815430,1028.937134,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,2, -8422.008789,1037.030518,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,3, -8420.577148,1044.241211,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,4, -8415.830078,1049.238647,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,5, -8407.679688,1051.246582,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,6, -8398.588867,1047.594604,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,7, -8394.713867,1040.813721,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,8, -8395.667969,1032.623779,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,9, -8398.991211,1026.692261,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,10, -8406.701172,1023.908752,68.384216, 100);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation) VALUES (2577142,11, -8415.847656,1023.890686,68.384216, 100);
REPLACE INTO `creature` VALUES (2577142,80236,0,0,0,0,-8420.82,1028.94,68.3842,0.734729,300,300,0,100,100,2,0,0);
REPLACE INTO `gameobject` VALUES ( 5015476, 2004092, 0, -4919.29, 600.021, 384.86, 1.37754, 0, 0, 0.63559, 0.772027, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015477, 2004092, 0, -4920.9, 600.01, 384.861, 1.18059, 0, 0, 0.556605, 0.830777, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5015477, 2004092, 0, -4920.79, 600.393, 384.861, 1.18059, 0, 0, 0.556605, 0.830777, 300, 300, 100, 1, 0, 0);

-- Changes by TORTA
REPLACE INTO `creature` VALUES (2577143,61437,0,0,0,0,-4853.22,608.502,386.64,0.551307,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577143;
DELETE FROM creature_addon WHERE guid=2577143;
DELETE FROM creature_movement WHERE id=2577143;
DELETE FROM game_event_creature WHERE guid=2577143;
DELETE FROM game_event_creature_data WHERE guid=2577143;
DELETE FROM creature_battleground WHERE guid=2577143;
REPLACE INTO `creature` VALUES (2577144,721,0,0,0,0,-4853.27,608.485,386.64,0.588613,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2577144;
DELETE FROM creature_addon WHERE guid=2577144;
DELETE FROM creature_movement WHERE id=2577144;
DELETE FROM game_event_creature WHERE guid=2577144;
DELETE FROM game_event_creature_data WHERE guid=2577144;
DELETE FROM creature_battleground WHERE guid=2577144;
REPLACE INTO `creature` VALUES (2577145,5741,0,0,0,0,-4853.27,608.485,386.64,0.588613,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577145;
DELETE FROM creature_addon WHERE guid=2577145;
DELETE FROM creature_movement WHERE id=2577145;
DELETE FROM game_event_creature WHERE guid=2577145;
DELETE FROM game_event_creature_data WHERE guid=2577145;
DELETE FROM creature_battleground WHERE guid=2577145;
REPLACE INTO `creature` VALUES (2577146,7559,0,0,0,0,-4853.27,608.485,386.64,0.588613,120,120,0,100,100,0,0,0);
