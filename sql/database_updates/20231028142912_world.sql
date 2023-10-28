-- Pathing for Splintertree Guard Entry: 12903
-- https://www.youtube.com/live/4uDKl_r7OIw?si=cs2WtZKzu2B3ZnWM&t=232
SET @NPC := 32623;
UPDATE `creature` SET `wander_distance`=0,`movement_type`=2,`position_x`=2305.6536,`position_y`=-2550.2715,`position_z`=100.70346 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`wander_distance`,`script_id`) VALUES
(@NPC,1,2305.6536,-2550.2715,100.70346,100,0,0,0),
(@NPC,2,2320.4414,-2544.7986,100.68983,100,0,0,0),
(@NPC,3,2336.4138,-2536.1184,101.829575,100,0,0,0),
(@NPC,4,2348.8645,-2534.3699,102.11692,100,0,0,0),
(@NPC,5,2342.5828,-2526.8362,103.06633,100,0,0,0),
(@NPC,6,2324.8792,-2520.156,103.037346,100,0,0,0),
(@NPC,7,2316.6108,-2524.2607,102.05329,100,0,0,0),
(@NPC,8,2305.7375,-2532.9563,100.88463,100,0,0,0),
(@NPC,9,2285.1802,-2527.936,97.85593,100,0,0,0),
(@NPC,10,2262.4934,-2518.56,98.617035,100,0,0,0),
(@NPC,11,2264.2805,-2529.6611,94.087814,100,0,0,0),
(@NPC,12,2252.7747,-2533.5344,91.64225,100,0,0,0),
(@NPC,13,2240.312,-2532.841,89.443016,100,0,0,0),
(@NPC,14,2245.8562,-2550.6584,89.95945,100,0,0,0),
(@NPC,15,2273.6265,-2542.931,94.59833,100,0,0,0),
(@NPC,16,2282.1138,-2548.865,97.44248,100,0,0,0),
(@NPC,17,2279.5781,-2563.7222,103.19528,100,0,0,0),
(@NPC,18,2293.5852,-2547.6506,99.13072,100,0,0,0);
-- 0x204CB000200C99C000007400019C65F2 .go xyz 2305.6536 -2550.2715 100.70346

-- Pathing for Splintertree Guard Entry: 12903
SET @NPC := 32620;
UPDATE `creature` SET `wander_distance`=0,`movement_type`=2,`position_x`=2389.056,`position_y`=-2524.0889,`position_z`=111.42044 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`wander_distance`,`script_id`) VALUES
(@NPC,1,2389.056,-2524.0889,111.42044,100,0,0,0),
(@NPC,2,2369.499,-2529.2454,107.823845,100,0,0,0),
(@NPC,3,2353.0435,-2531.489,102.14075,100,0,0,0),
(@NPC,4,2333.2283,-2537.964,101.37258,100,0,0,0),
(@NPC,5,2311.78,-2535.9263,100.4012,100,0,0,0),
(@NPC,6,2290.931,-2541.0503,97.81742,100,0,0,0),
(@NPC,7,2259.7087,-2539.0344,91.77838,100,0,0,0),
(@NPC,8,2211.571,-2538.0688,83.18335,100,0,0,0),
(@NPC,9,2187.3528,-2517.154,81.10344,100,0,0,0),
(@NPC,10,2150.718,-2495.4524,79.76278,100,0,0,0),
(@NPC,11,2126.2083,-2481.109,80.54295,100,0,0,0),
(@NPC,12,2103.798,-2462.6853,82.396904,100,0,0,0),
(@NPC,13,2077.4724,-2436.4202,85.90849,100,0,0,0),
(@NPC,14,2041.5533,-2409.3213,87.79275,100,0,0,0),
(@NPC,15,2077.4724,-2436.4202,85.90849,100,0,0,0),
(@NPC,16,2103.669,-2462.58,82.39989,100,0,0,0),
(@NPC,17,2126.2083,-2481.109,80.54295,100,0,0,0),
(@NPC,18,2150.718,-2495.4524,79.76278,100,0,0,0),
(@NPC,19,2187.3528,-2517.154,81.10344,100,0,0,0),
(@NPC,20,2211.571,-2538.0688,83.18335,100,0,0,0),
(@NPC,21,2259.7087,-2539.0344,91.77838,100,0,0,0),
(@NPC,22,2290.931,-2541.0503,97.81742,100,0,0,0),
(@NPC,23,2311.78,-2535.9263,100.4012,100,0,0,0),
(@NPC,24,2333.2283,-2537.964,101.37258,100,0,0,0),
(@NPC,25,2353.0435,-2531.489,102.14075,100,0,0,0),
(@NPC,26,2369.499,-2529.2454,107.823845,100,0,0,0);
-- 0x204CB000200C99C000007400001C65F2 .go xyz 2389.056 -2524.0889 111.42044
