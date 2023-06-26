
-- Changes by GURKY
REPLACE INTO `gameobject` VALUES ( 48639, 86492, 1, 6402.14, 742.217, -17.8918, -2.30383, 0, 0, -0.913545, 0.406738, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 48637, 86492, 1, 6392.69, 725.449, -16.9098, 2.46091, 0, 0, 0.942641, 0.333807, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 48874, 86492, 1, 6316.11, 754.744, -12.4295, 0.820303, 0, 0, 0.398748, 0.91706, 180, 180, 0, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 48793, 86492, 1, 6305.36, 801.79, -13.3798, 5.34071, 0, 0, -0.45399, 0.891007, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 48793, 86492, 1, 6305.36, 801.79, -12.8798, 5.34071, 0, 0, -0.45399, 0.891007, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 48796, 86492, 1, 6309.78, 845.92, -13.0739, 0.698131, 0, 0, 0.34202, 0.939693, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 48875, 86492, 1, 6375.59, 871.36, -36.1744, 4.86947, 0, 0, -0.649447, 0.760406, 180, 180, 0, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 48875, 86492, 1, 6375.59, 871.36, -36.6744, 4.86947, 0, 0, -0.649447, 0.760406, 180, 180, 0, 1, 0, 0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2577578,61570,0,0,0,0,-2182.27,2411.45,22.7381,1.79524,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577579,61569,0,0,0,0,-2124.4,2395.35,26.2717,5.74658,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577579;
DELETE FROM creature_addon WHERE guid=2577579;
DELETE FROM creature_movement WHERE id=2577579;
DELETE FROM game_event_creature WHERE guid=2577579;
DELETE FROM game_event_creature_data WHERE guid=2577579;
DELETE FROM creature_battleground WHERE guid=2577579;
REPLACE INTO `creature` VALUES (2577580,61569,0,0,0,0,2975.36,-1583.91,184.408,0.790272,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577580,61569,0,0,0,0,2975.36,-1583.91,184.408,0.790272,300,300,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2577581,61568,0,0,0,1,16226.2,16257,13.2022,1.65007,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577581;
DELETE FROM creature_addon WHERE guid=2577581;
DELETE FROM creature_movement WHERE id=2577581;
DELETE FROM game_event_creature WHERE guid=2577581;
DELETE FROM game_event_creature_data WHERE guid=2577581;
DELETE FROM creature_battleground WHERE guid=2577581;
REPLACE INTO `creature` VALUES (2577582,61517,0,0,0,0,-11188.1,-1856.8,74.5566,0.106189,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577582;
DELETE FROM creature_addon WHERE guid=2577582;
DELETE FROM creature_movement WHERE id=2577582;
DELETE FROM game_event_creature WHERE guid=2577582;
DELETE FROM game_event_creature_data WHERE guid=2577582;
DELETE FROM creature_battleground WHERE guid=2577582;
REPLACE INTO `creature` VALUES (2577583,61518,0,0,0,0,-11188.1,-1856.8,74.5566,0.106189,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577583;
DELETE FROM creature_addon WHERE guid=2577583;
DELETE FROM creature_movement WHERE id=2577583;
DELETE FROM game_event_creature WHERE guid=2577583;
DELETE FROM game_event_creature_data WHERE guid=2577583;
DELETE FROM creature_battleground WHERE guid=2577583;
REPLACE INTO `creature` VALUES (2577584,61567,0,0,0,0,-11188.1,-1856.8,74.5566,0.106189,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577584;
DELETE FROM creature_addon WHERE guid=2577584;
DELETE FROM creature_movement WHERE id=2577584;
DELETE FROM game_event_creature WHERE guid=2577584;
DELETE FROM game_event_creature_data WHERE guid=2577584;
DELETE FROM creature_battleground WHERE guid=2577584;
REPLACE INTO `creature` VALUES (2577585,61568,0,0,0,0,-11188.1,-1856.8,74.5566,0.106189,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2577586,61571,0,0,0,0,-11181.6,-1857.08,73.8618,2.7467,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577586;
DELETE FROM creature_addon WHERE guid=2577586;
DELETE FROM creature_movement WHERE id=2577586;
DELETE FROM game_event_creature WHERE guid=2577586;
DELETE FROM game_event_creature_data WHERE guid=2577586;
DELETE FROM creature_battleground WHERE guid=2577586;
REPLACE INTO `creature` VALUES (2577587,61572,0,0,0,0,-11181.6,-1857.08,73.8618,2.7467,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577587;
DELETE FROM creature_addon WHERE guid=2577587;
DELETE FROM creature_movement WHERE id=2577587;
DELETE FROM game_event_creature WHERE guid=2577587;
DELETE FROM game_event_creature_data WHERE guid=2577587;
DELETE FROM creature_battleground WHERE guid=2577587;
REPLACE INTO `creature` VALUES (2577588,61572,0,0,0,0,-11180.2,-1857.65,73.8618,2.7467,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2577588;
DELETE FROM creature_addon WHERE guid=2577588;
DELETE FROM creature_movement WHERE id=2577588;
DELETE FROM game_event_creature WHERE guid=2577588;
DELETE FROM game_event_creature_data WHERE guid=2577588;
DELETE FROM creature_battleground WHERE guid=2577588;
REPLACE INTO `creature` VALUES (2577589,61572,0,0,0,0,2296.96,-5309.07,81.9968,1.97149,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 2304.522705, `position_y` = -5350.202637, `position_z` = 91.574257, `orientation` = 2.168211 WHERE `guid` = 69678;
