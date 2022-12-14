
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
