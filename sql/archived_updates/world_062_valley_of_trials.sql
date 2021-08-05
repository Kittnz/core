DELETE FROM `creature_equip_template` WHERE `entry`=15618 AND `patch`=0;
INSERT INTO `creature_equip_template` VALUES (15618, 0, 0, 0, 5260);

DELETE FROM `creature_equip_template` WHERE `entry`=15616 AND `patch`=0;
INSERT INTO `creature_equip_template` VALUES (15616, 0, 2183, 10612, 0);



-- Creature Templates
DELETE FROM `creature_template` WHERE `entry`=160100 AND `patch`=7;
INSERT INTO `creature_template` VALUES (160100, 7, 4927, 0, 0, 0, 'Den Trainee', '', 0, 1, 3, 150260, 150260, 0, 0, 4610, 85, 0, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 1, 1, 0, 1, 1, 4000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 15616, 0, 0, 0, 0, 0, 'npc_den_recruit');
DELETE FROM `creature_template` WHERE `entry`=160101 AND `patch`=7;
INSERT INTO `creature_template` VALUES (160101, 7, 4927, 0, 0, 0, 'Den Trainee', '', 0, 1, 3, 150260, 150260, 0, 0, 4610, 40, 0, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 1, 1, 0, 1, 1, 4000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 15616, 0, 0, 0, 0, 0, 'npc_den_recruit');
DELETE FROM `creature_template` WHERE `entry`=160102 AND `patch`=6;
INSERT INTO `creature_template` VALUES (160102, 6, 15387, 0, 0, 0, 'Den Commander', NULL, 0, 60, 60, 3052, 3052, 0, 0, 4800, 1074, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 246, 334, 0, 272, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 15350, 0, 0, 0, 0, 524290, 'npc_den_commander');
DELETE FROM `creature_template` WHERE `entry`=160103 AND `patch`=7;
INSERT INTO `creature_template` VALUES (160103, 7, 4927, 0, 0, 0, 'Den Trainee', '', 0, 1, 3, 150260, 150260, 0, 0, 4610, 40, 0, 1.1, 1.14286, 0, 1, 5, 0, 0, 1, 1, 1, 0, 1, 1, 4000, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 15618, 0, 0, 0, 0, 0, 'npc_den_recruit');
DELETE FROM `creature_template` WHERE `entry`=160104 AND `patch`=7;
INSERT INTO `creature_template` VALUES (160104, 7, 4927, 0, 0, 0, 'Invis Target', '', 0, 1, 3, 150260, 150260, 0, 0, 4610, 85, 0, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 1, 1, 0, 1, 1, 4000, 6000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 32898, '');
DELETE FROM `creature_template` WHERE `entry`=160105 AND `patch`=6;
INSERT INTO `creature_template` VALUES (160105, 6, 15731, 0, 0, 0, 'Den Archer Commander', NULL, 0, 60, 60, 3052, 3052, 0, 0, 4800, 1074, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 246, 334, 0, 272, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 15618, 0, 0, 0, 0, 524290, 'npc_den_commander');



-- Creature Locations
DELETE FROM `creature` WHERE `guid`=2561822;
INSERT INTO `creature` VALUES (2561822, 160100, 0, 0, 0, 1, 0, 15616, -567.465, -4289.81, 39.3466, 1.4357, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561825;
INSERT INTO `creature` VALUES (2561825, 160100, 0, 0, 0, 1, 0, 15616, -576.89, -4306.04, 39.2009, 1.07928, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561812;
INSERT INTO `creature` VALUES (2561812, 160100, 0, 0, 0, 1, 0, 15616, -568.288, -4294.66, 39.5366, 3.84072, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561807;
INSERT INTO `creature` VALUES (2561807, 160100, 0, 0, 0, 1, 0, 15616, -573.223, -4298.62, 39.4236, 0.7172, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561826;
INSERT INTO `creature` VALUES (2561826, 160101, 0, 0, 0, 1, 0, 15616, -575.806, -4302.63, 39.1582, 4.38345, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561808;
INSERT INTO `creature` VALUES (2561808, 160101, 0, 0, 0, 1, 0, 15616, -571.656, -4297.26, 39.551, 3.9122, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561821;
INSERT INTO `creature` VALUES (2561821, 160101, 0, 0, 0, 1, 0, 15616, -567.062, -4287.25, 38.8516, 4.51525, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561804;
INSERT INTO `creature` VALUES (2561804, 160101, 0, 0, 0, 1, 0, 15616, -568.102, -4292.8, 39.6064, 1.15859, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561802;
INSERT INTO `creature` VALUES (2561802, 160102, 0, 0, 0, 1, 0, 15350, -570.849, -4288.16, 39.0928, 4.1266, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561833;
INSERT INTO `creature` VALUES (2561833, 160103, 0, 0, 0, 1, 0, 15618, -575.205, -4317.28, 40.4282, 6.28108, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561834;
INSERT INTO `creature` VALUES (2561834, 160103, 0, 0, 0, 1, 0, 15618, -575.198, -4313.78, 39.9985, 6.28108, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561836;
INSERT INTO `creature` VALUES (2561836, 160104, 0, 0, 0, 1, 0, 0, -562.8, -4313.6, 39.3705, 6.16486, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561831;
INSERT INTO `creature` VALUES (2561831, 160104, 0, 0, 0, 1, 0, 0, -562.737, -4317.31, 39.0985, 6.28252, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);
DELETE FROM `creature` WHERE `guid`=2561837;
INSERT INTO `creature` VALUES (2561837, 160105, 0, 0, 0, 1, 0, 15618, -572.226, -4321.16, 40.1845, 1.53137, 25, 25, 0, 100, 100, 0, 0, 0, 0, 10);



-- Gob locations
DELETE FROM `gameobject` WHERE `guid`=4010278;
INSERT INTO `gameobject` VALUES (4010278, 18075, 1, -555.692, -4303.26, 37.3584, 2.92776, 0, 0, 0.99429, 0.106714, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010276;
INSERT INTO `gameobject` VALUES (4010276, 164767, 1, -552.24, -4299.15, 36.869, 2.80131, 0, 0, 0.985561, 0.169323, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010275;
INSERT INTO `gameobject` VALUES (4010275, 2003566, 1, -557.404, -4305.55, 37.6277, 2.8288, 0, 0, 0.987795, 0.155762, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010274;
INSERT INTO `gameobject` VALUES (4010274, 180352, 1, -558.371, -4305.37, 37.6756, 1.30512, 0, 0, 0.607223, 0.794531, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010273;
INSERT INTO `gameobject` VALUES (4010273, 180352, 1, -551.647, -4296.59, 36.5652, 4.14198, 0, 0, 0.87749, -0.479595, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010272;
INSERT INTO `gameobject` VALUES (4010272, 180352, 1, -554.66, -4295.03, 36.8571, 0.0987517, 0, 0, 0.0493558, 0.998781, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010271;
INSERT INTO `gameobject` VALUES (4010271, 180352, 1, -554.64, -4306.33, 37.6178, 1.43393, 0, 0, 0.6571, 0.753804, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010267;
INSERT INTO `gameobject` VALUES (4010267, 2003566, 1, -555.742, -4305.8, 37.5937, 2.92069, 0, 0, 0.993906, 0.110228, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010265;
INSERT INTO `gameobject` VALUES (4010265, 2003884, 1, -554.041, -4297.87, 37.8427, 2.75104, 0, 0, 0.980994, 0.194039, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010263;
INSERT INTO `gameobject` VALUES (4010263, 1000232, 1, -553.889, -4299.14, 37.8428, 2.34734, 0, 0, 0.922177, 0.386769, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010262;
INSERT INTO `gameobject` VALUES (4010262, 180888, 1, -553.932, -4298.97, 37.1299, 2.7636, 0, 0, 0.982194, 0.187872, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010260;
INSERT INTO `gameobject` VALUES (4010260, 2003990, 1, -555.011, -4300.39, 36.5, 2.80522, 0, 0, 0.98589, 0.167392, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010257;
INSERT INTO `gameobject` VALUES (4010257, 180350, 1, -559.847, -4282.57, 37.3934, 0.0131636, 0, 0, 0.00658176, 0.999978, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010256;
INSERT INTO `gameobject` VALUES (4010256, 180333, 1, -570.212, -4300.39, 41.3171, 1.91068, 0, 0, 0.816511, 0.57733, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010255;
INSERT INTO `gameobject` VALUES (4010255, 180332, 1, -570.496, -4300.95, 41.3171, 2.56099, 0, 0, 0.958158, 0.28624, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010254;
INSERT INTO `gameobject` VALUES (4010254, 180332, 1, -569.646, -4300.85, 41.3169, 2.80604, 0, 0, 0.985958, 0.166992, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010251;
INSERT INTO `gameobject` VALUES (4010251, 183991, 1, -570.885, -4301.59, 39.396, 2.45105, 0, 0, 0.940984, 0.338452, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010249;
INSERT INTO `gameobject` VALUES (4010249, 183991, 1, -569.345, -4299.62, 39.3742, 2.45498, 0, 0, 0.941646, 0.336604, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010247;
INSERT INTO `gameobject` VALUES (4010247, 2003813, 1, -559.599, -4316.24, 40.6, 3.12651, 0, 0, 0.999972, 0.00754035, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010246;
INSERT INTO `gameobject` VALUES (4010246, 2003813, 1, -559.687, -4317.34, 38.7102, 1.40885, 0, 0, 0.647594, 0.761986, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010245;
INSERT INTO `gameobject` VALUES (4010245, 2003813, 1, -559.401, -4315.08, 38.7, 4.55044, 0, 0, 0.761985, -0.647595, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010244;
INSERT INTO `gameobject` VALUES (4010244, 2004583, 1, -561.827, -4317.32, 38.8638, 3.02178, 0, 0, 0.998206, 0.0598723, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010243;
INSERT INTO `gameobject` VALUES (4010243, 2004583, 1, -561.096, -4314, 39.1577, 3.02178, 0, 0, 0.998206, 0.0598723, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010241;
INSERT INTO `gameobject` VALUES (4010241, 1000096, 1, -561.275, -4281.79, 38.0259, 0.923169, 0, 0, 0.445367, 0.895348, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010240;
INSERT INTO `gameobject` VALUES (4010240, 2003813, 1, -561.073, -4287.15, 37.7663, 1.56092, 0, 0, 0.703605, 0.710591, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010239;
INSERT INTO `gameobject` VALUES (4010239, 2003813, 1, -570.018, -4300.77, 39.3649, 4.27761, 0, 0, 0.842974, -0.537955, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010238;
INSERT INTO `gameobject` VALUES (4010238, 1000096, 1, -561.056, -4281.53, 37.518, 5.71881, 0, 0, 0.278456, -0.960449, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010237;
INSERT INTO `gameobject` VALUES (4010237, 2004747, 1, -559.417, -4284.14, 37.3279, 2.62797, 0, 0, 0.967205, 0.253997, 300, 300, 100, 1, 0, 0, 0, 10);
DELETE FROM `gameobject` WHERE `guid`=4010236;
INSERT INTO `gameobject` VALUES (4010236, 2004506, 1, -561.96, -4284.29, 37.5829, 4.908, 0, 0, 0.634679, -0.772776, 300, 300, 100, 1, 0, 0, 0, 10);
