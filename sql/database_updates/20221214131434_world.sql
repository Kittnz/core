
-- Changes by TAMMO
REPLACE INTO `creature` VALUES (2573899,61168,0,0,0,813,-2698.04,1149.67,51.648,0.300979,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2573899;
DELETE FROM creature_addon WHERE guid=2573899;
DELETE FROM creature_movement WHERE id=2573899;
DELETE FROM game_event_creature WHERE guid=2573899;
DELETE FROM game_event_creature_data WHERE guid=2573899;
DELETE FROM creature_battleground WHERE guid=2573899;
REPLACE INTO `creature` VALUES (2573900,61173,0,0,0,813,-2602.96,1132.84,60.5027,3.48891,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2601.066895', position_y = '1133.522705', position_z = '60.566963', orientation = '3.459958' WHERE guid = '2573900';
UPDATE creature SET position_x = '-2601.033691', position_y = '1133.423096', position_z = '60.566963', orientation = '3.463885' WHERE guid = '2573900';
REPLACE INTO `creature` VALUES (2573901,61181,0,0,0,813,-2696.97,1146.24,52.0028,4.97894,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573902,61182,0,0,0,813,-2698.19,1143.92,52.076,0.409494,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573903,61187,0,0,0,813,-2696.03,1143.92,52.1331,2.25282,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573904,61185,0,0,0,813,-2698.58,1129.18,52.135,0.996969,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573905,61180,0,0,0,813,-2699.01,1131.27,52.1664,5.3143,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2699.131348', position_y = '1130.942017', position_z = '52.153145', orientation = '5.948121' WHERE guid = '2573905';
UPDATE creature SET position_x = '-2699.072998', position_y = '1131.119995', position_z = '56.160065', orientation = '6.076928' WHERE guid = '2573905';
UPDATE creature SET position_x = '-2698.098633', position_y = '1130.866333', position_z = '59.936947', orientation = '6.010161' WHERE guid = '2573905';
UPDATE creature SET position_x = '-2698.985107', position_y = '1130.755005', position_z = '52.156471', orientation = '5.970713' WHERE guid = '2573905';
REPLACE INTO `creature` VALUES (2573906,61184,0,0,0,813,-2696.99,1129.73,52.2237,3.05689,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2697.218994', position_y = '1129.952271', position_z = '52.219719', orientation = '3.179410' WHERE guid = '2573906';
REPLACE INTO `gameobject` VALUES ( 5012228, 24610, 813, -2678.88, 1147.59, 51.829, 5.45941, 0, 0, 0.400339, -0.916367, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5012228';
DELETE FROM game_event_gameobject WHERE guid = '5012228';
DELETE FROM gameobject_battleground WHERE guid = '5012228';
REPLACE INTO `gameobject` VALUES ( 5012229, 24574, 813, -2678.8, 1147.23, 51.8457, 5.50261, 0, 0, 0.380456, -0.924799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012229, 24574, 813, -2678.8, 1147.23, 51.8457, 5.50261, 0, 0, 0.380456, -0.924799, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2573907,61184,0,0,0,813,-2678.67,1147.08,51.8588,5.5662,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2573907;
DELETE FROM creature_addon WHERE guid=2573907;
DELETE FROM creature_movement WHERE id=2573907;
DELETE FROM game_event_creature WHERE guid=2573907;
DELETE FROM game_event_creature_data WHERE guid=2573907;
DELETE FROM creature_battleground WHERE guid=2573907;
REPLACE INTO `creature` VALUES (2573908,61189,0,0,0,813,-2678.67,1147.08,51.8588,5.5662,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2678.765137', position_y = '1145.950928', position_z = '51.908161', orientation = '5.936963' WHERE guid = '2573908';
REPLACE INTO `gameobject` VALUES ( 5012230, 2008643, 813, -2679.54, 1146.3, 53.0589, 5.55919, 0, 0, 0.354143, -0.935191, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5012230';
DELETE FROM game_event_gameobject WHERE guid = '5012230';
DELETE FROM gameobject_battleground WHERE guid = '5012230';
REPLACE INTO `gameobject` VALUES ( 5012231, 2008644, 813, -2679.64, 1146.22, 53.061, 4.96229, 0, 0, 0.613472, -0.789716, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5012231';
DELETE FROM game_event_gameobject WHERE guid = '5012231';
DELETE FROM gameobject_battleground WHERE guid = '5012231';
REPLACE INTO `gameobject` VALUES ( 5012232, 2008644, 813, -2679.31, 1145.25, 52.9499, 5.87099, 0, 0, 0.20464, -0.978837, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5012232';
DELETE FROM game_event_gameobject WHERE guid = '5012232';
DELETE FROM gameobject_battleground WHERE guid = '5012232';
REPLACE INTO `gameobject` VALUES ( 5012233, 2008644, 813, -2679.41, 1145.36, 52.9503, 2.36262, 0, 0, 0.925104, 0.379714, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2573909,61186,0,0,0,813,-2690.79,1149.51,51.948,4.01499,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2687.208984', position_y = '1146.516479', position_z = '52.108257', orientation = '4.172073' WHERE guid = '2573909';
REPLACE INTO `creature` VALUES (2573910,61178,0,0,0,813,-2689.14,1147.08,52.1034,5.30855,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573911,61179,0,0,0,813,-2688.8,1145.28,52.1689,0.856908,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2688.967285', position_y = '1146.943848', position_z = '52.109180', orientation = '5.105917' WHERE guid = '2573901';
UPDATE creature SET position_x = '-2697.182617', position_y = '1146.009277', position_z = '52.003220', orientation = '4.717143' WHERE guid = '2573910';
UPDATE creature SET position_x = '-2688.694824', position_y = '1146.610107', position_z = '52.122860', orientation = '4.957479' WHERE guid = '2573901';
UPDATE creature SET position_x = '-2688.902588', position_y = '1146.803223', position_z = '52.115025', orientation = '5.303053' WHERE guid = '2573901';
REPLACE INTO `creature` VALUES (2573912,61188,0,0,0,813,-2687.22,1145.38,52.1622,2.80942,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2687.311768', position_y = '1146.618530', position_z = '52.102905', orientation = '3.932538' WHERE guid = '2573909';
REPLACE INTO `gameobject` VALUES ( 5012234, 2000001, 813, -2679.69, 1146.27, 53.0634, 2.70756, 0, 0, 0.976545, 0.215315, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012234, 2000001, 813, -2679.69, 1146.27, 53.0634, 2.70756, 0, 0, 0.976545, 0.215315, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012234, 2000001, 813, 2679.68, 1146.27, 52, 2.70756, 0, 0, 0.976545, 0.215315, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012234, 2000001, 813, 2679.68, 1146.27, 53, 2.70756, 0, 0, 0.976545, 0.215315, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012234, 2000001, 813, -2679.68, 1146.27, 53, 2.70756, 0, 0, 0.976545, 0.215315, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012234, 2000001, 813, -2679.68, 1146.27, 52.999, 2.70756, 0, 0, 0.976545, 0.215315, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012234, 2000001, 813, -2679.68, 1146.27, 52.99, 2.70756, 0, 0, 0.976545, 0.215315, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2573913,61127,0,0,0,813,-2674.17,1134.56,51.9993,1.67022,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2573914,61128,0,0,0,813,-2674.17,1134.56,51.9993,1.67022,120,120,0,100,100,0,0,0);
UPDATE creature SET position_x = '-2675.135742', position_y = '1133.993530', position_z = '52.045647', orientation = '1.387481' WHERE guid = '2573914';
DELETE FROM creature WHERE guid=2573914;
DELETE FROM creature_addon WHERE guid=2573914;
DELETE FROM creature_movement WHERE id=2573914;
DELETE FROM game_event_creature WHERE guid=2573914;
DELETE FROM game_event_creature_data WHERE guid=2573914;
DELETE FROM creature_battleground WHERE guid=2573914;
DELETE FROM creature WHERE guid=2573913;
DELETE FROM creature_addon WHERE guid=2573913;
DELETE FROM creature_movement WHERE id=2573913;
DELETE FROM game_event_creature WHERE guid=2573913;
DELETE FROM game_event_creature_data WHERE guid=2573913;
DELETE FROM creature_battleground WHERE guid=2573913;
REPLACE INTO `gameobject` VALUES ( 5012235, 2010445, 813, -2679.77, 1146.8, 53.0725, 0.561238, 0, 0, 0.276951, 0.960884, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012235, 2010445, 813, -2679.77, 1146.8, 53.0725, 0.561238, 0, 0, 0.276951, 0.960884, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5012235, 2010445, 813, -2679.77, 1146.8, 53.0725, 0.561238, 0, 0, 0.276951, 0.960884, 300, 300, 100, 1, 0, 0);

-- Changes by JOE
UPDATE creature SET position_x = '-4315.030762', position_y = '-4320.056641', position_z = '-1.266435', orientation = '3.484372' WHERE guid = '74532';
UPDATE creature SET position_x = '-4320.511230', position_y = '-4322.395020', position_z = '-11.332396', orientation = '3.612392' WHERE guid = '74532';
UPDATE creature SET position_x = '-4269.042969', position_y = '-4361.571777', position_z = '-6.636335', orientation = '3.179639' WHERE guid = '74531';
UPDATE creature SET position_x = '-4366.259277', position_y = '-4453.036621', position_z = '6.240515', orientation = '3.659527' WHERE guid = '2572566';

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2571976,60918,0,0,0,0,-7206.99,-3869.38,336.571,5.11774,25,25,5,100,100,1,0,0);
