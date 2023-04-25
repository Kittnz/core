
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2575768,7944,0,0,0,0,-4847.99,604.3,386.64,3.65797,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575769,6569,0,0,0,0,-4848.82,605.848,386.64,3.69724,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575770,7950,0,0,0,0,-4849.6,607.298,386.64,3.69724,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575771,6169,0,0,0,0,-4850.55,608.904,386.64,3.6972,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575772,7937,0,0,0,0,-4848.46,611.486,386.64,3.76789,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575773,11028,0,0,0,0,-4852.38,611.027,386.64,3.65322,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575774,11029,0,0,0,0,-4853.51,612.538,386.64,3.65322,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575775,80940,0,0,0,0,-4854.61,613.96,386.64,3.71206,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575776,4081,0,0,0,0,-4852.72,615.175,386.64,3.71206,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2575777,11027,0,0,0,0,-4851.93,611.387,386.64,3.73877,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2575777;
DELETE FROM creature_addon WHERE guid=2575777;
DELETE FROM creature_movement WHERE id=2575777;
DELETE FROM game_event_creature WHERE guid=2575777;
DELETE FROM game_event_creature_data WHERE guid=2575777;
DELETE FROM creature_battleground WHERE guid=2575777;
DELETE FROM creature WHERE guid=2575773;
DELETE FROM creature_addon WHERE guid=2575773;
DELETE FROM creature_movement WHERE id=2575773;
DELETE FROM game_event_creature WHERE guid=2575773;
DELETE FROM game_event_creature_data WHERE guid=2575773;
DELETE FROM creature_battleground WHERE guid=2575773;

-- Changes by DRAGUNOVI
REPLACE INTO `creature` VALUES (2575778,5174,0,0,0,0,-4852.17,610.968,386.64,3.72696,120,120,0,100,100,0,0,0);

-- Changes by SHANG
UPDATE `creature` SET `position_x` = -4851.314941, `position_y` = 609.854553, `position_z` = 386.639343, `orientation` = 3.705773 WHERE `guid` = 2575772;
REPLACE INTO `gameobject` VALUES ( 5014371, 2002945, 0, -4803.47, 632.074, 378.472, 3.63588, 0, 0, 0.969616, -0.244633, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014372, 2002972, 0, -4802.81, 632.269, 379.67, 3.2903, 0, 0, 0.997237, -0.0742854, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014373, 2002980, 0, -4804.2, 632.292, 379.67, 5.48263, 0, 0, 0.389676, -0.920952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014374, 2002983, 0, -4804.21, 632.3, 379.921, 5.48263, 0, 0, 0.389676, -0.920952, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014374';
DELETE FROM game_event_gameobject WHERE guid = '5014374';
DELETE FROM gameobject_battleground WHERE guid = '5014374';

-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5014375, 2002978, 0, -4803.01, 631.425, 379.67, 3.47011, 0, 0, 0.986539, -0.163523, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014375';
DELETE FROM game_event_gameobject WHERE guid = '5014375';
DELETE FROM gameobject_battleground WHERE guid = '5014375';

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5014376, 2002926, 0, -4804.21, 632.3, 379.921, 5.48263, 0, 0, 0.389676, -0.920952, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014377, 2002940, 0, -4801.63, 633.114, 378.471, 3.6175, 0, 0, 0.971822, -0.235716, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014378, 2002941, 0, -4805.86, 631.185, 378.472, 0.673039, 0, 0, 0.330204, 0.94391, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014379, 2002944, 0, -4800.21, 651.25, 378.472, 3.77537, 0, 0, 0.95021, -0.31161, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014379, 2002944, 0, -4800.21, 651.25, 378.472, 5.54408, 0, 0, 0.361197, -0.93249, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014379, 2002944, 0, -4800.21, 651.25, 378.472, 5.44355, 0, 0, 0.407593, -0.913164, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014379, 2002944, 0, -4800.21, 651.25, 378.472, 5.34616, 0, 0, 0.451558, -0.892242, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014380, 2003003, 0, -4800.42, 651.444, 379.552, 5.72787, 0, 0, 0.274105, -0.9617, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014381, 2003004, 0, -4799.62, 651.26, 379.553, 4.09221, 0, 0, 0.889153, -0.457611, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014382, 2002928, 0, -4799.9, 650.634, 379.552, 2.25343, 0, 0, 0.903005, 0.42963, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014383, 2002940, 0, -4802.31, 650.737, 378.471, 0.0802292, 0, 0, 0.0401038, 0.999196, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014384, 3000228, 0, -4815.09, 642.378, 378.472, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014384';
DELETE FROM game_event_gameobject WHERE guid = '5014384';
DELETE FROM gameobject_battleground WHERE guid = '5014384';
REPLACE INTO `gameobject` VALUES ( 5014385, 2002677, 0, -4815.25, 642.301, 378.471, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5014386, 23305, 0, -4793.91, 642.036, 378.471, 3.80497, 0, 0, 0.945494, -0.32564, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5014385, 2002677, 0, -4815.25, 642.101, 378.471, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014385, 2002677, 0, -4815.05, 642.101, 378.471, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014385, 2002677, 0, -4814.85, 642.101, 378.471, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014385, 2002677, 0, -4814.85, 642.301, 378.471, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014385, 2002677, 0, -4814.85, 642.501, 378.471, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417362117624689, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5014385, 2002677, 0, -4814.85, 642.501, 378.471, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5014387, 179887, 0, -4795.15, 644.055, 378.471, 3.7068, 0, 0, 0.960333, -0.278856, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417362117624689, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5014385, 2002677, 0, -4814.85, 642.501, 378.471, 0.443085, 0, 0, 0.219735, 0.97556, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5014387, 179887, 0, -4795.15, 644.055, 378.471, 5.23754, 0, 0, 0.499328, -0.866413, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5014388, 2002677, 0, -4813.65, 643.479, 378.471, 4.54421, 0, 0, 0.763999, -0.645218, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014389, 2002677, 0, -4813.46, 641.993, 378.471, 2.71212, 0, 0, 0.977032, 0.213092, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014390, 2002972, 0, -4814.51, 642.566, 380.484, 5.16413, 0, 0, 0.530788, -0.847505, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014391, 2002966, 0, -4797.47, 637.116, 378.472, 2.11181, 0, 0, 0.870346, 0.492441, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014391';
DELETE FROM game_event_gameobject WHERE guid = '5014391';
DELETE FROM gameobject_battleground WHERE guid = '5014391';
REPLACE INTO `gameobject` VALUES ( 5014392, 2002978, 0, -4813.96, 645.131, 379.372, 4.00069, 0, 0, 0.909154, -0.416461, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014393, 2002990, 0, -4796.11, 636.941, 378.472, 3.56793, 0, 0, 0.977365, -0.21156, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014393';
DELETE FROM game_event_gameobject WHERE guid = '5014393';
DELETE FROM gameobject_battleground WHERE guid = '5014393';
REPLACE INTO `gameobject` VALUES ( 5014394, 2002990, 0, -4807.01, 633.57, 378.472, 3.71402, 0, 0, 0.95932, -0.282322, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -4798.316406, `position_y` = 648.577637, `position_z` = 378.471619, `orientation` = 3.734254 WHERE `guid` = 2575768;

-- Changes by SHANG
DELETE FROM gameobject WHERE guid = '5014394';
DELETE FROM game_event_gameobject WHERE guid = '5014394';
DELETE FROM gameobject_battleground WHERE guid = '5014394';
REPLACE INTO `gameobject` VALUES ( 5014395, 2002992, 0, -4798.08, 636.541, 378.471, 0.622692, 0, 0, 0.30634, 0.951922, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014395';
DELETE FROM game_event_gameobject WHERE guid = '5014395';
DELETE FROM gameobject_battleground WHERE guid = '5014395';
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 378.472, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 378.672, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 378.872, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 379.072, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 379.272, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 379.472, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 379.672, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 379.872, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 380.072, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 380.272, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 380.472, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 380.672, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 380.872, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 381.072, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 381.272, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 381.472, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014396, 2002992, 0, -4792.01, 639.982, 381.672, 5.72778, 0, 0, 0.274149, -0.961687, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014396';
DELETE FROM game_event_gameobject WHERE guid = '5014396';
DELETE FROM gameobject_battleground WHERE guid = '5014396';
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4792.79, 639.028, 378.471, 5.31701, 0, 0, 0.464515, -0.885565, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4792.79, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4792.59, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4792.39, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4792.19, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.99, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.79, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.59, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.39, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -4852.371094, `position_y` = 612.295288, `position_z` = 386.639832, `orientation` = 3.717570 WHERE `guid` = 2575768;

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.39, 638.828, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.39, 639.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.39, 639.228, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.39, 639.428, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.39, 639.628, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.39, 639.828, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014397, 2002991, 0, -4791.39, 640.028, 378.471, 5.26203, 0, 0, 0.488682, -0.872462, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -4797.059570, `position_y` = 646.757874, `position_z` = 378.471466, `orientation` = 3.812604 WHERE `guid` = 2575774;
UPDATE `creature` SET `position_x` = -4804.148438, `position_y` = 649.675903, `position_z` = 378.471466, `orientation` = 5.234955 WHERE `guid` = 2575778;

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5014398, 2009755, 0, -4808.48, 646.462, 378.472, 3.69694, 0, 0, 0.961696, -0.274118, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014398';
DELETE FROM game_event_gameobject WHERE guid = '5014398';
DELETE FROM gameobject_battleground WHERE guid = '5014398';
REPLACE INTO `gameobject` VALUES ( 5014399, 2002954, 0, -4808.48, 646.462, 378.472, 3.69694, 0, 0, 0.961696, -0.274118, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014399, 2002954, 0, -4808.48, 646.462, 378.472, 2.17719, 0, 0, 0.885977, 0.46373, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014399';
DELETE FROM game_event_gameobject WHERE guid = '5014399';
DELETE FROM gameobject_battleground WHERE guid = '5014399';
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.87, 645.406, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.67, 645.406, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.47, 645.406, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.27, 645.406, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 645.406, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 645.606, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 645.806, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 646.006, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 646.206, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 646.006, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 645.806, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 645.606, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 645.406, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 645.206, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014400, 2002951, 0, -4810.07, 645.006, 378.471, 2.15756, 0, 0, 0.881381, 0.472405, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014401, 2002948, 0, -4806.59, 648.054, 378.472, 2.6445, 0, 0, 0.969271, 0.245995, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014401';
DELETE FROM game_event_gameobject WHERE guid = '5014401';
DELETE FROM gameobject_battleground WHERE guid = '5014401';
REPLACE INTO `gameobject` VALUES ( 5014402, 2002952, 0, -4807.26, 647.904, 378.471, 2.79059, 0, 0, 0.984639, 0.174604, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014402, 2002952, 0, -4807.26, 647.904, 378.471, 6.05548, 0, 0, 0.113604, -0.993526, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014402';
DELETE FROM game_event_gameobject WHERE guid = '5014402';
DELETE FROM gameobject_battleground WHERE guid = '5014402';
REPLACE INTO `gameobject` VALUES ( 5014403, 2002949, 0, -4807.39, 647.292, 378.471, 3.74327, 0, 0, 0.955088, -0.296322, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014403, 2002949, 0, -4807.39, 647.292, 378.471, 4.90017, 0, 0, 0.637699, -0.770285, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014403';
DELETE FROM game_event_gameobject WHERE guid = '5014403';
DELETE FROM gameobject_battleground WHERE guid = '5014403';
REPLACE INTO `gameobject` VALUES ( 5014404, 2004970, 0, -4807.33, 646.9, 378.472, 5.33214, 0, 0, 0.457804, -0.889053, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014405, 2004968, 0, -4798.15, 648.268, 378.472, 0.619746, 0, 0, 0.304938, 0.952372, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -4800.713379, `position_y` = 642.840881, `position_z` = 378.472046, `orientation` = 3.724628 WHERE `guid` = 2575774;

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5014406, 2004968, 0, -4796.89, 646.291, 378.472, 0.615824, 0, 0, 0.30307, 0.952968, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014406';
DELETE FROM game_event_gameobject WHERE guid = '5014406';
DELETE FROM gameobject_battleground WHERE guid = '5014406';
REPLACE INTO `gameobject` VALUES ( 5014407, 2004968, 0, -4796.64, 646.26, 378.472, 0.595766, 0, 0, 0.293497, 0.95596, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014407';
DELETE FROM game_event_gameobject WHERE guid = '5014407';
DELETE FROM gameobject_battleground WHERE guid = '5014407';
REPLACE INTO `gameobject` VALUES ( 5014408, 2004968, 0, -4796.7, 646.22, 378.472, 0.595766, 0, 0, 0.293497, 0.95596, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014408';
DELETE FROM game_event_gameobject WHERE guid = '5014408';
DELETE FROM gameobject_battleground WHERE guid = '5014408';
REPLACE INTO `gameobject` VALUES ( 5014409, 2004968, 0, -4796.64, 646.263, 378.472, 0.595766, 0, 0, 0.293497, 0.95596, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014409';
DELETE FROM game_event_gameobject WHERE guid = '5014409';
DELETE FROM gameobject_battleground WHERE guid = '5014409';
REPLACE INTO `gameobject` VALUES ( 5014410, 2004968, 0, -4796.75, 646.185, 378.472, 0.595766, 0, 0, 0.293497, 0.95596, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014411, 2002677, 0, -4795.97, 637.739, 378.471, 0.651255, 0, 0, 0.319903, 0.94745, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014412, 2002677, 0, -4794.95, 636.975, 378.471, 1.45753, 0, 0, 0.66595, 0.745996, 300, 300, 100, 1, 0, 0);
UPDATE `creature` SET `position_x` = -4870.399902, `position_y` = 572.324890, `position_z` = 378.472687, `orientation` = 1.527665 WHERE `guid` = 2575776;
UPDATE `creature` SET `position_x` = -4872.920410, `position_y` = 574.462280, `position_z` = 378.472351, `orientation` = 1.360658 WHERE `guid` = 2575776;

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -4869.299805, `position_y` = 572.815613, `position_z` = 378.471710, `orientation` = 1.154551 WHERE `guid` = 2575771;

-- Changes by SHANG
UPDATE `creature` SET `position_x` = -4855.514160, `position_y` = 599.107788, `position_z` = 386.640442, `orientation` = 1.410439 WHERE `guid` = 2575768;

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -4866.302246, `position_y` = 573.160339, `position_z` = 378.471741, `orientation` = 1.775970 WHERE `guid` = 2575771;
REPLACE INTO `gameobject` VALUES ( 5014413, 23305, 0, -4864.12, 573.614, 378.472, 1.82859, 0, 0, 0.792133, 0.610348, 300, 300, 100, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5014414, 2002969, 0, -4858.34, 599.476, 386.64, 0.621112, 0, 0, 0.305588, 0.952164, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014415, 2002969, 0, -4863.47, 607.347, 386.64, 0.583412, 0, 0, 0.287587, 0.957755, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014416, 2002969, 0, -4841.16, 611.081, 386.64, 3.69752, 0, 0, 0.961616, -0.274399, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014417, 2002969, 0, -4846.49, 618.986, 386.641, 3.76035, 0, 0, 0.952522, -0.304469, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014418, 2002718, 0, -4851.42, 599.758, 386.64, 2.83358, 0, 0, 0.988164, 0.1534, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014418';
DELETE FROM game_event_gameobject WHERE guid = '5014418';
DELETE FROM gameobject_battleground WHERE guid = '5014418';
REPLACE INTO `gameobject` VALUES ( 5014419, 2002719, 0, -4851.05, 600.578, 386.641, 3.09668, 0, 0, 0.999748, 0.0224536, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014420, 2002718, 0, -4849.27, 601.841, 386.641, 3.74071, 0, 0, 0.955467, -0.295098, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014421, 2002720, 0, -4846.99, 603.396, 386.641, 3.74071, 0, 0, 0.955467, -0.295098, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014421';
DELETE FROM game_event_gameobject WHERE guid = '5014421';
DELETE FROM gameobject_battleground WHERE guid = '5014421';
DELETE FROM gameobject WHERE guid = '5014419';
DELETE FROM game_event_gameobject WHERE guid = '5014419';
DELETE FROM gameobject_battleground WHERE guid = '5014419';
DELETE FROM gameobject WHERE guid = '5014420';
DELETE FROM game_event_gameobject WHERE guid = '5014420';
DELETE FROM gameobject_battleground WHERE guid = '5014420';
REPLACE INTO `gameobject` VALUES ( 5014422, 2004413, 0, -4850.28, 603.43, 386.64, 5.22204, 0, 0, 0.506028, -0.862517, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014422';
DELETE FROM game_event_gameobject WHERE guid = '5014422';
DELETE FROM gameobject_battleground WHERE guid = '5014422';
REPLACE INTO `gameobject` VALUES ( 5014423, 2006096, 0, -4850.91, 604.547, 386.64, 4.73195, 0, 0, 0.700157, -0.713988, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014423';
DELETE FROM game_event_gameobject WHERE guid = '5014423';
DELETE FROM gameobject_battleground WHERE guid = '5014423';
UPDATE `creature` SET `position_x` = -4856.901367, `position_y` = 616.818604, `position_z` = 386.639893, `orientation` = 5.305717 WHERE `guid` = 2575770;
UPDATE `creature` SET `position_x` = -4909.390625, `position_y` = 613.451660, `position_z` = 384.860168, `orientation` = 5.211473 WHERE `guid` = 2575769;

-- Changes by DRAGUNOVI
UPDATE `creature` SET `position_x` = -4909.540527, `position_y` = 613.348206, `position_z` = 384.859924, `orientation` = 4.533097 WHERE `guid` = 2575769;

-- Changes by SHANG
UPDATE `creature` SET `position_x` = -4875.452637, `position_y` = 597.120056, `position_z` = 378.473694, `orientation` = 3.727501 WHERE `guid` = 2575769;

-- Changes by DRAGUNOVI
REPLACE INTO `gameobject` VALUES ( 5014424, 2004429, 0, -4828.03, 669.005, 384.86, 4.26373, 0, 0, 0.846686, -0.532093, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5014424';
DELETE FROM game_event_gameobject WHERE guid = '5014424';
DELETE FROM gameobject_battleground WHERE guid = '5014424';

-- Changes by SHANG
REPLACE INTO `gameobject` VALUES ( 5014425, 2006097, 0, -4822.97, 668.535, 384.861, 3.89583, 0, 0, 0.929729, -0.368244, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014425, 2006097, 0, -4822.97, 668.535, 384.861, 3.33113, 0, 0, 0.995513, -0.0946276, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014425, 2006097, 0, -4822.97, 668.535, 384.861, 2.93843, 0, 0, 0.994845, 0.101406, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417419495703449, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5014425, 2006097, 0, -4822.97, 668.535, 384.861, 2.93843, 0, 0, 0.994845, 0.101406, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417419495703449, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5014425, 2006097, 0, -4822.97, 668.535, 384.861, 2.93843, 0, 0, 0.994845, 0.101406, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014426, 2006097, 0, -4826.36, 669.599, 384.86, 2.92606, 0, 0, 0.994199, 0.107559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014427, 2006097, 0, -4830.64, 670.535, 384.861, 2.92606, 0, 0, 0.994199, 0.107559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5014428, 2006097, 0, -4835.55, 671.611, 384.86, 2.92606, 0, 0, 0.994199, 0.107559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417419495703450, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5014426, 2006097, 0, -4826.36, 669.599, 384.86, 2.92606, 0, 0, 0.994199, 0.107559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417419495703450, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5014426, 2006097, 0, -4826.36, 669.599, 384.86, 2.92606, 0, 0, 0.994199, 0.107559, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417419495703449, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5014425, 2006097, 0, -4822.97, 668.535, 384.861, 2.93843, 0, 0, 0.994845, 0.101406, 300, 300, 100, 1, 0, 0);
