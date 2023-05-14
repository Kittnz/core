
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
