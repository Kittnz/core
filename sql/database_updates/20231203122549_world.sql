
-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017347, 2002219, 0, 4030.42, -2215.16, 9.71239, 1.89979, 0, 0, 0.813353, 0.58177, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417354433662723, 2.000000);
REPLACE INTO `gameobject` VALUES ( 5017347, 2002219, 0, 4030.42, -2215.16, 9.71239, 1.89979, 0, 0, 0.813353, 0.58177, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGU
UPDATE `creature` SET `position_x` = 3296.694580, `position_y` = -1852.319580, `position_z` = 154.524704, `orientation` = 0.269042 WHERE `guid` = 2581306;
UPDATE `creature` SET `position_x` = 3306.236816, `position_y` = -1832.974365, `position_z` = 154.582062, `orientation` = 2.465806 WHERE `guid` = 2581082;

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581314,91757,0,0,0,0,4512.3,-2268.49,18.1591,4.6207,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2581314;
DELETE FROM creature_addon WHERE guid=2581314;
DELETE FROM creature_movement WHERE id=2581314;
DELETE FROM game_event_creature WHERE guid=2581314;
DELETE FROM game_event_creature_data WHERE guid=2581314;
DELETE FROM creature_battleground WHERE guid=2581314;
REPLACE INTO `creature` VALUES (2581315,61773,0,0,0,0,4512.3,-2268.49,18.1591,4.63798,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581316,61773,0,0,0,0,4509.65,-2270.92,18.2428,6.27161,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581316, 1);
REPLACE INTO `creature` VALUES (2581317,61773,0,0,0,0,4513.81,-2270,18.1022,3.75833,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581317, 1);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580920,1, 3940.755371,-2616.148438,30.509138, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580920,2, 3951.198975,-2628.438965,26.608137, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580920,3, 3940.635742,-2615.962891,30.535887, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580920,4, 3924.246094,-2596.441162,26.761917, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580920,5, 3938.930420,-2614.545410,30.664387, 100);
REPLACE INTO `creature` VALUES (2580920,61770,0,0,0,0,3941.25,-2616.44,30.4421,2.34407,120,120,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581318,61770,0,0,0,0,3835.15,-2521.58,36.3916,0.999698,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,1, 3839.657227,-2515.978516,35.833862, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,2, 3845.725586,-2508.233398,34.793446, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,3, 3852.578369,-2498.346680,32.853416, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,4, 3859.969971,-2484.731689,30.500122, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,5, 3867.746094,-2470.971680,28.832731, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,6, 3876.469482,-2456.581543,27.013386, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,7, 3883.711426,-2444.042969,24.055365, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,8, 3893.572510,-2429.102783,17.568148, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,9, 3904.583252,-2415.870605,13.121848, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,10, 3918.310547,-2399.690918,8.996052, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,11, 3909.569824,-2409.647461,11.644614, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,12, 3896.797607,-2425.939209,16.311911, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,13, 3882.226807,-2444.774170,24.512575, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,14, 3869.039795,-2467.481445,28.589680, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,15, 3856.291260,-2490.537842,31.517315, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581318,16, 3835.159912,-2521.739014,36.228764, 100);
REPLACE INTO `creature` VALUES (2581318,61770,0,0,0,0,3835.15,-2521.58,36.3916,0.999698,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581319,61770,0,0,0,0,3530.81,-2190.52,109.392,5.1199,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,1, 3534.174316,-2199.655762,107.750969, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,2, 3538.999268,-2212.593262,104.944527, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,3, 3542.557129,-2225.705322,102.762321, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,4, 3542.896973,-2241.084229,101.473618, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,5, 3538.661865,-2256.873779,100.319763, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,6, 3537.094727,-2264.568604,99.751732, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,7, 3546.937256,-2272.959961,98.986732, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,8, 3556.951416,-2283.002197,97.422783, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,9, 3568.095215,-2294.716064,95.326263, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,10, 3577.659424,-2305.489014,93.578201, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,11, 3587.050049,-2318.827148,90.795876, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,12, 3595.381348,-2331.642578,85.949532, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,13, 3603.290771,-2346.031494,79.791298, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,14, 3606.056396,-2359.827881,78.297615, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,15, 3605.872559,-2375.800049,75.976067, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,16, 3609.149170,-2388.886719,73.302528, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,17, 3615.257812,-2403.559082,70.202621, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,18, 3621.084229,-2415.156738,69.053970, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,19, 3625.291016,-2424.351562,67.799339, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,20, 3625.974609,-2432.442383,67.273163, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,21, 3623.885254,-2421.364746,68.264267, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,22, 3613.291504,-2402.595459,70.466286, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,23, 3609.274414,-2392.619873,72.786354, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,24, 3605.644531,-2379.642090,75.338814, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,25, 3605.281006,-2371.455566,77.121223, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,26, 3605.884033,-2355.169189,78.601624, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,27, 3602.488770,-2344.083984,80.538841, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,28, 3595.970459,-2331.492920,85.885239, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,29, 3587.895508,-2320.035400,90.337318, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,30, 3578.189697,-2306.478027,93.515732, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,31, 3567.637939,-2294.453857,95.422310, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,32, 3556.409912,-2282.757080,97.489998, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,33, 3543.958252,-2270.764404,99.341156, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,34, 3539.677002,-2267.022461,99.605186, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,35, 3536.824219,-2265.916992,99.697968, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,36, 3539.607910,-2257.925781,100.159981, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,37, 3541.731689,-2247.514404,101.010666, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,38, 3542.541504,-2232.614746,102.175041, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,39, 3541.181885,-2220.037109,103.633759, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,40, 3537.221680,-2206.949463,105.960426, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581319,41, 3533.384277,-2197.730225,108.150101, 100);
REPLACE INTO `creature` VALUES (2581319,61770,0,0,0,0,3530.81,-2190.52,109.392,5.1199,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581320,61770,0,0,0,0,3620.77,-2435.19,67.7104,3.35435,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,1, 3612.950928,-2437.590820,67.997993, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,2, 3601.950928,-2440.315186,70.642921, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,3, 3588.194580,-2442.598877,75.062859, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,4, 3579.982422,-2446.795166,76.626907, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,5, 3570.277832,-2452.920898,79.237755, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,6, 3562.156250,-2462.575195,80.826881, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,7, 3559.640869,-2469.860107,81.597816, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,8, 3560.337158,-2481.448486,82.017433, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,9, 3561.763916,-2488.293701,81.548935, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,10, 3565.074219,-2497.302734,80.785645, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,11, 3570.266357,-2509.512939,79.024132, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,12, 3575.946777,-2523.281250,77.151230, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,13, 3581.671631,-2536.028564,75.787323, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,14, 3586.773682,-2548.937256,75.251511, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,15, 3590.584473,-2560.627197,75.086662, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,16, 3594.266846,-2566.980225,74.550720, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,17, 3604.682861,-2580.180176,73.166725, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,18, 3614.162354,-2593.303955,72.358765, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,19, 3608.464111,-2586.124756,72.825188, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,20, 3608.464111,-2586.124756,72.825188, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,21, 3596.129395,-2568.589600,74.294868, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,22, 3584.425781,-2541.856934,75.399559, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,23, 3573.806885,-2518.192139,77.746155, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,24, 3568.881836,-2506.583008,79.500267, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,25, 3561.482910,-2489.180420,81.555527, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,26, 3560.701172,-2469.826416,81.510681, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,27, 3565.706787,-2457.982178,80.203690, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,28, 3572.294922,-2451.946777,78.707802, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,29, 3585.391846,-2444.352783,75.711975, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,30, 3590.349365,-2442.467285,74.426010, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,31, 3597.995850,-2440.999756,72.221275, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,32, 3613.129395,-2437.276123,67.997665, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581320,33, 3617.848389,-2436.095459,67.751724, 100);
REPLACE INTO `creature` VALUES (2581320,61770,0,0,0,0,3620.77,-2435.19,67.7104,3.35435,300,300,0,100,100,2,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,1, 3313.726074,-2504.059082,103.454292, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,2, 3326.700195,-2503.618652,103.598572, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,3, 3339.728027,-2502.566406,103.789307, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,4, 3352.614746,-2501.035400,104.075706, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,5, 3378.257324,-2495.961914,103.873253, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,6, 3387.452637,-2493.605957,103.470093, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,7, 3412.009277,-2484.471924,102.230293, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,8, 3436.472168,-2474.561523,100.389679, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,9, 3448.795898,-2469.450439,98.919464, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,10, 3468.079346,-2461.323975,97.807884, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,11, 3491.481445,-2448.928223,96.514183, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,12, 3510.131836,-2442.128906,94.254257, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,13, 3521.932861,-2440.457520,92.301628, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,14, 3541.392090,-2441.631592,89.440735, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,15, 3317.575928,-2504.224365,103.483727, 100);
REPLACE INTO `creature` VALUES (2580907,61770,0,0,0,0,3305.87,-2505.32,103.32,0.137911,120,120,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2580907;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,1, 3305.870117,-2505.320068,103.320000, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,2, 3311.375732,-2504.531982,103.409401, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,3, 3318.596680,-2503.980469,103.504311, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,4, 3328.602783,-2503.194092,103.636879, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,5, 3338.195312,-2502.476074,103.774567, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,6, 3351.298096,-2501.262939,104.033058, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,7, 3361.739746,-2499.407227,104.277412, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,8, 3372.177002,-2497.059814,104.153496, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,9, 3382.321045,-2494.689209,103.694504, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,10, 3382.321045,-2494.689209,103.694504, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,11, 3403.244385,-2487.555664,102.875252, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,12, 3403.244385,-2487.555664,102.875252, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,13, 3428.565430,-2477.327148,101.037697, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,14, 3440.883545,-2472.468750,99.864471, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,15, 3455.415283,-2466.511230,98.445869, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,16, 3468.119141,-2460.936279,97.778328, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,17, 3479.012207,-2455.561279,97.325638, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,18, 3479.012207,-2455.561279,97.325638, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,19, 3494.352295,-2447.695312,96.198441, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,20, 3519.516602,-2440.579834,92.609352, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,21, 3517.367920,-2440.924072,92.920746, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,22, 3499.344727,-2445.975098,95.620941, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,23, 3488.020020,-2451.128174,96.852928, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,24, 3468.034668,-2461.875244,97.848923, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,25, 3443.457031,-2471.273682,99.515434, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,26, 3431.351074,-2476.042969,100.850006, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,27, 3407.314453,-2486.858398,102.545540, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,28, 3383.779541,-2495.287109,103.558632, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,29, 3370.767090,-2497.867920,104.162018, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,30, 3343.941895,-2501.371582,103.906357, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,31, 3330.389893,-2502.451904,103.692444, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,32, 3310.117188,-2504.175049,103.416222, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,33, 3296.965088,-2507.290039,103.074623, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,34, 3271.227539,-2514.034424,102.927444, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,35, 3267.406494,-2514.975830,103.147797, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,36, 3292.431885,-2509.029785,102.927116, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2580907,37, 3304.602051,-2506.144043,103.256996, 100);
REPLACE INTO `creature` VALUES (2580907,61770,0,0,0,0,3305.87,-2505.32,103.32,0.137911,120,120,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581321,61770,0,0,0,0,3222.8,-2523.61,111.451,1.60289,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,1, 3223.045410,-2517.399658,111.479286, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,2, 3223.369629,-2509.082031,111.521805, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,3, 3223.942139,-2499.325195,111.668175, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,4, 3224.602295,-2489.942383,111.334862, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,5, 3225.933105,-2481.972656,111.186203, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,6, 3223.256592,-2477.715332,111.272034, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,7, 3218.968750,-2472.218750,111.337868, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,8, 3214.107422,-2464.621826,111.424416, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,9, 3210.523926,-2454.844727,111.603065, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,10, 3204.209229,-2447.292969,111.862602, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,11, 3198.571289,-2441.352783,112.114182, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,12, 3190.504150,-2434.503418,112.246346, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,13, 3193.601074,-2437.044434,112.229668, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,14, 3201.163330,-2444.209961,111.992317, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,15, 3206.856201,-2449.640869,111.758034, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,16, 3209.173096,-2453.162109,111.655518, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,17, 3210.580811,-2457.175781,111.580856, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,18, 3212.320557,-2464.002441,111.480484, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,19, 3212.656738,-2469.848145,111.426056, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,20, 3208.802002,-2475.359131,111.498154, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,21, 3207.074219,-2481.736816,111.560768, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,22, 3205.936768,-2489.295410,111.679024, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,23, 3207.482666,-2495.327881,111.745461, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,24, 3211.152100,-2497.843994,111.679718, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,25, 3216.623535,-2500.061035,111.587906, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,26, 3220.182129,-2501.782959,111.610939, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,27, 3221.729980,-2507.650635,111.560486, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,28, 3222.532715,-2514.555176,111.521828, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581321,29, 3222.729004,-2520.751221,111.464058, 100);
REPLACE INTO `creature` VALUES (2581321,61770,0,0,0,0,3222.8,-2523.61,111.451,1.60289,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581322,61773,0,0,0,0,3223.25,-2532.95,112.506,5.49455,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,1, 3225.750977,-2534.231201,112.588326, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,2, 3231.472412,-2537.224365,112.558533, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,3, 3235.561279,-2540.895264,112.661873, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,4, 3235.739502,-2548.034180,112.938446, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,5, 3233.500732,-2551.916260,112.832436, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,6, 3228.435059,-2557.301514,112.603821, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,7, 3222.519287,-2559.860840,112.563705, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,8, 3217.384277,-2559.187256,113.235649, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,9, 3213.903564,-2556.084473,113.439819, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,10, 3210.974609,-2552.979492,113.479797, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,11, 3207.108154,-2548.165527,113.082787, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,12, 3204.509521,-2542.015137,112.130554, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,13, 3204.622070,-2536.980713,112.079109, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,14, 3206.959473,-2531.601562,112.031029, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,15, 3211.399170,-2530.494873,111.888878, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,16, 3215.570312,-2530.557373,111.987877, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581322,17, 3218.484375,-2531.238525,112.263306, 100);
REPLACE INTO `creature` VALUES (2581322,61773,0,0,0,0,3223.25,-2532.95,112.506,5.49455,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581323,61773,0,0,0,0,3161.69,-2439.43,112.245,3.83737,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581324,61773,0,0,0,0,3159.95,-2438.08,112.245,4.42249,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581324,61773,0,0,0,0,3159.95,-2438.08,112.245,4.42249,300,300,3,100,100,1,0,0);
DELETE FROM creature WHERE guid=2581324;
DELETE FROM creature_addon WHERE guid=2581324;
DELETE FROM creature_movement WHERE id=2581324;
DELETE FROM game_event_creature WHERE guid=2581324;
DELETE FROM game_event_creature_data WHERE guid=2581324;
DELETE FROM creature_battleground WHERE guid=2581324;
REPLACE INTO `creature` VALUES (2581325,61773,0,0,0,0,3159.35,-2437.41,112.337,4.57564,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581325, 1);
REPLACE INTO `creature` VALUES (2581326,61770,0,0,0,0,3627.01,-2437.91,66.6701,5.05468,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,1, 3628.910400,-2443.367920,64.929771, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,2, 3631.952637,-2450.788330,63.145401, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,3, 3635.457520,-2456.547852,62.014400, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,4, 3639.777588,-2462.927734,61.822418, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,5, 3645.986816,-2471.270020,62.100754, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,6, 3652.481445,-2478.953613,62.437382, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,7, 3657.885498,-2484.570801,62.454979, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,8, 3664.873535,-2491.022949,61.871166, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,9, 3671.406982,-2494.468018,61.541512, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,10, 3677.395752,-2496.892334,60.767872, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,11, 3685.705322,-2501.012451,59.177452, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,12, 3693.843506,-2504.534912,56.898075, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,13, 3697.850098,-2507.709961,55.484283, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,14, 3703.185303,-2508.906250,53.886692, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,15, 3712.705811,-2509.573486,52.289619, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,16, 3720.395996,-2511.036377,51.305195, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,17, 3729.640381,-2513.104736,50.315109, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,18, 3737.396729,-2513.211914,49.315811, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,19, 3747.282715,-2513.116699,47.531918, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,20, 3757.084473,-2513.077148,46.140484, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,21, 3765.001953,-2513.043457,45.820053, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,22, 3775.714355,-2512.669189,45.203911, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,23, 3782.487793,-2512.010254,44.591049, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,24, 3791.366943,-2511.333008,43.408367, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,25, 3801.079102,-2511.096436,41.636559, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,26, 3809.848633,-2512.321777,39.800236, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,27, 3818.080811,-2514.371338,38.075737, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,28, 3825.609131,-2516.906006,37.120636, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,29, 3831.549561,-2518.905273,36.569881, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,30, 3824.632324,-2516.376465,37.224964, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,31, 3816.406494,-2513.272705,38.444344, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,32, 3808.746582,-2510.885498,40.010578, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,33, 3800.093506,-2510.754883,41.838699, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,34, 3788.326416,-2511.093262,43.890877, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,35, 3775.123047,-2511.998047,45.276577, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,36, 3771.352783,-2512.273926,45.564072, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,37, 3757.806641,-2512.937012,46.091263, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,38, 3734.992920,-2512.946777,49.637707, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,39, 3722.084473,-2510.730225,51.124554, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,40, 3699.296143,-2507.697266,54.906464, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,41, 3693.268311,-2505.108643,57.158485, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,42, 3682.341797,-2499.593018,59.855705, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,43, 3667.226562,-2493.144287,61.638168, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,44, 3648.830322,-2474.275391,62.270397, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,45, 3643.699951,-2468.669678,61.930668, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581326,46, 3631.797607,-2449.931396,63.293888, 100);
REPLACE INTO `creature` VALUES (2581326,61770,0,0,0,0,3627.01,-2437.91,66.6701,5.05468,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2580225,61691,0,0,0,0,3587.72,-2466.03,79.791,4.80282,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580302,61695,0,0,0,0,3595.09,-2490.55,78.0674,4.41355,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580242,61692,0,0,0,0,3546.92,-2498.73,84.1159,6.01566,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580241,61692,0,0,0,0,3529.76,-2501.5,86.3679,5.35985,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580203,61691,0,0,0,0,3501.76,-2515.75,92.6954,0.996887,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580213,61691,0,0,0,0,3448.98,-2561.63,99.1234,3.21172,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580244,61692,0,0,0,0,3434.94,-2550.08,101.482,3.53381,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580161,61690,0,0,0,0,3424.36,-2538.87,101.082,5.66278,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580157,61689,0,0,0,0,3406.85,-2535.3,100.88,4.02909,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580181,61690,0,0,0,0,3394.69,-2527.07,100.861,3.6556,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580162,61690,0,0,0,0,3371.86,-2555.69,102.453,3.21627,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580136,61689,0,0,0,0,3322.15,-2545.59,105.816,3.73455,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580175,61690,0,0,0,0,3320.86,-2571.42,105.036,3.77799,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580214,61691,0,0,0,0,3323.64,-2599.02,110.704,2.59126,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580138,61689,0,0,0,0,3288.78,-2594.02,106.473,4.59848,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580183,61689,0,0,0,0,3285.93,-2609.64,108.763,2.4711,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580139,61689,0,0,0,0,3264.16,-2626.77,111.344,3.07481,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580164,61690,0,0,0,0,3234.49,-2619.64,111.631,3.53043,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580140,61689,0,0,0,0,3221.2,-2609.92,113.153,2.63499,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580193,61689,0,0,0,0,3220.3,-2584.39,112.74,0.421187,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580142,61689,0,0,0,0,3155.65,-2574.62,114.596,2.6939,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580166,61690,0,0,0,0,3121.41,-2560.78,119.346,2.83535,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580192,61689,0,0,0,0,3140.65,-2557.65,113.681,4.90189,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580143,61689,0,0,0,0,3125.04,-2548.48,115.419,2.38759,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580145,61689,0,0,0,0,3098.06,-2489.76,111.574,2.45828,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580167,61690,0,0,0,0,3100.66,-2519.15,112.896,1.91251,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580168,61690,0,0,0,0,3107.69,-2470.52,112.319,1.1978,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580146,61689,0,0,0,0,3086.66,-2452.2,111.154,1.82603,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580147,61689,0,0,0,0,3087.86,-2421.27,113.545,1.17808,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580170,61690,0,0,0,0,3102.07,-2398.06,111.257,1.56693,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580148,61689,0,0,0,0,3119.95,-2401.31,111.821,0.361264,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580190,61689,0,0,0,0,3120.08,-2430.63,112.856,0.0991967,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580189,61689,0,0,0,0,3153.59,-2387.78,112.714,3.20152,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580149,61689,0,0,0,0,3158.03,-2371.98,112.377,0.710766,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580171,61690,0,0,0,0,3175.96,-2361.39,111.01,6.04763,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580171,61690,0,0,0,0,3175.96,-2361.39,111.01,6.04763,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580188,61689,0,0,0,0,3194.69,-2390.7,113.309,3.09157,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580187,61689,0,0,0,0,3241.74,-2388.77,109.676,2.11375,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580151,61689,0,0,0,0,3258.16,-2387.19,105.853,5.76088,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580176,61690,0,0,0,0,3262.31,-2460.79,104.976,2.4657,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580153,61689,0,0,0,0,3276.22,-2469.99,105.318,2.47791,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580173,61690,0,0,0,0,3280.66,-2452.27,105.792,5.81199,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580186,61689,0,0,0,0,3295.27,-2467.59,105.348,0.864964,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580195,61689,0,0,0,0,3298.96,-2539.99,104.296,0.912062,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580136,61689,0,0,0,0,3322.15,-2545.59,105.816,3.73455,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580175,61690,0,0,0,0,3320.86,-2571.42,105.036,3.77799,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580214,61691,0,0,0,0,3323.64,-2599.02,110.704,2.59126,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580139,61689,0,0,0,0,3264.16,-2626.77,111.344,3.07481,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581136,61786,0,0,0,0,3307.87,-2648.93,119.695,2.29054,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580429,61701,0,0,0,0,4077.49,-2669.91,32.0646,1.39831,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581135,61786,0,0,0,0,3331.82,-2649.96,124.853,2.78927,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580396,61700,0,0,0,0,4063.7,-2675.83,33.7689,5.42739,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581129,61786,0,0,0,0,3338.76,-2641.12,125.299,2.49475,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580397,61700,0,0,0,0,4071.97,-2717.84,31.5768,4.36318,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581143,61786,0,0,0,0,3330.19,-2626.82,122.882,2.86074,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580428,61701,0,0,0,0,4065.13,-2715.75,32.4058,1.45329,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581141,61786,0,0,0,0,3348.35,-2617.66,126.092,2.6212,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580398,61700,0,0,0,0,4050,-2750.26,31.0987,3.9587,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580427,61701,0,0,0,0,4035.49,-2731.62,35.0256,0.43227,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581130,61786,0,0,0,0,3364.02,-2604.52,130.107,1.91355,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580804,61716,0,0,0,0,4020.22,-2726.46,37.2557,4.08858,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581137,61786,0,0,0,0,3367.13,-2623.58,132.075,0.0168142,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580399,61700,0,0,0,0,4013.06,-2762.27,33.0675,2.66279,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580426,61701,0,0,0,0,3994.01,-2753.8,34.0008,0.0749135,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581131,61786,0,0,0,0,3386.38,-2611.53,134.23,6.19003,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581142,61786,0,0,0,0,3400.95,-2599.67,134.984,1.47844,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580425,61701,0,0,0,0,3963.33,-2726.77,32.7101,4.67343,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581132,61786,0,0,0,0,3419.6,-2612.92,134.333,0.291692,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581125,61786,0,0,0,0,3402.65,-2631.57,133.362,4.19513,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581140,61786,0,0,0,0,3412.6,-2660.81,131.544,5.10227,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580424,61701,0,0,0,0,3976.98,-2676.03,37.5065,4.72449,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581126,61786,0,0,0,0,3394.93,-2654.88,133.238,1.52085,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580394,61700,0,0,0,0,3998.1,-2634.52,28.9981,5.6905,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581127,61786,0,0,0,0,3388.25,-2662.71,133.727,2.54973,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580805,61716,0,0,0,0,3979.94,-2615.82,30.7713,0.789906,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581128,61786,0,0,0,0,3371.04,-2659.31,132.341,2.9385,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580293,61695,0,0,0,0,3989.39,-2590.9,30.7245,1.9128,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580423,61701,0,0,0,0,4004.05,-2605.55,29.5635,3.75845,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580422,61701,0,0,0,0,4045,-2580.14,25.179,4.64595,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580890,61716,0,0,0,0,4095.41,-2588.65,26.5168,3.09446,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580432,61701,0,0,0,0,4099.72,-2573.34,25.5176,0.420487,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580431,61701,0,0,0,0,4068.26,-2593.15,27.4639,0.915288,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580175,61690,0,0,0,0,3320.86,-2571.42,105.036,3.77799,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580137,61689,0,0,0,0,3305.07,-2562.44,106.08,3.59318,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580422,61701,0,0,0,0,4045,-2580.14,25.179,4.64595,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580195,61689,0,0,0,0,3298.96,-2539.99,104.296,0.912062,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580802,61716,0,0,0,0,4037.71,-2554.09,19.2275,4.65014,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580402,61700,0,0,0,0,4012.13,-2528.36,17.6942,1.71246,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580186,61689,0,0,0,0,3295.27,-2467.59,105.348,0.864964,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580435,61701,0,0,0,0,3988.76,-2530.33,29.528,1.88837,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580173,61690,0,0,0,0,3280.66,-2452.27,105.792,5.81199,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580403,61700,0,0,0,0,3984.3,-2486.56,23.9849,2.05804,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580313,61695,0,0,0,0,4000.49,-2489.88,18.0225,4.2117,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580154,61689,0,0,0,0,3296.76,-2424.4,104.873,1.18593,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580215,61691,0,0,0,0,3310.57,-2407.99,105.532,1.15791,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580177,61690,0,0,0,0,3341.78,-2413.53,104.978,0.0545273,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580420,61701,0,0,0,0,4000.86,-2435.55,10.4479,5.02687,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580404,61700,0,0,0,0,4006.63,-2429.86,10.1926,1.09985,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580155,61689,0,0,0,0,3364.98,-2416.95,105.954,6.00435,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580311,61695,0,0,0,0,3980.98,-2415.44,8.66057,6.14377,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580178,61690,0,0,0,0,3389.93,-2410.95,105.485,0.223388,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580334,61696,0,0,0,0,3964.65,-2396.81,5.31942,0.845394,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580198,61689,0,0,0,0,3406.38,-2417.17,104.566,0.570415,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580980,61774,0,0,0,0,3956.73,-2330.83,14.6512,0.174707,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580336,61696,0,0,0,0,3957.12,-2312.72,15.4549,0.65297,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580216,61691,0,0,0,0,3383.85,-2426.17,106.555,5.63861,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580156,61689,0,0,0,0,3401.01,-2450.18,104.826,5.48991,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580405,61700,0,0,0,0,3989.24,-2360.13,12.5659,1.66926,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580406,61700,0,0,0,0,3983.24,-2295.11,12.0046,1.6889,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580174,61690,0,0,0,0,3420.19,-2468.7,102.28,0.208173,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580419,61701,0,0,0,0,3974.78,-2268.45,14.1065,4.50066,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580251,61693,0,0,0,0,3427.16,-2506.26,99.6331,2.47067,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580786,61715,0,0,0,0,3970.03,-2305.19,14.6139,4.56373,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580787,61715,0,0,0,0,3996.45,-2325.18,12.8736,6.00493,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580201,61689,0,0,0,0,3447.34,-2511.37,100.446,3.61385,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580812,61695,0,0,0,0,4011.3,-2345.23,8.56093,5.44338,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580213,61691,0,0,0,0,3448.98,-2561.63,99.1234,3.21172,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580789,61716,0,0,0,0,4036.38,-2333.38,10.456,5.52191,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580413,61700,0,0,0,0,4069.53,-2311.43,7.9749,1.03706,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580244,61692,0,0,0,0,3434.94,-2550.08,101.482,3.53381,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580312,61695,0,0,0,0,4038.72,-2380.08,8.15201,0.36717,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580526,61704,0,0,0,0,4095.4,-2338.83,1.95548,1.13391,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580526,61704,0,0,0,0,4095.4,-2338.83,1.95548,1.13391,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580203,61691,0,0,0,0,3501.76,-2515.75,92.6954,0.996887,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580471,61703,0,0,0,0,4109.68,-2331.21,1.41097,4.64611,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580243,61692,0,0,0,0,3501.65,-2533.96,91.6464,3.36888,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580473,61703,0,0,0,0,4073.04,-2385.8,0.115978,4.28482,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580523,61704,0,0,0,0,4085.43,-2366.92,0.270749,3.79641,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580474,61703,0,0,0,0,4054.6,-2441.54,0.309542,1.28068,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580525,61704,0,0,0,0,4059.13,-2429.47,0.0807745,3.38408,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580242,61692,0,0,0,0,3546.92,-2498.73,84.1159,6.01566,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580204,61691,0,0,0,0,3511.43,-2481.08,92.7452,1.72338,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580205,61691,0,0,0,0,3498.71,-2428.17,94.9821,2.06896,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580474,61703,0,0,0,0,4054.6,-2441.54,0.309542,1.28068,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580248,61692,0,0,0,0,3455.53,-2340,105.957,1.641,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580254,61693,0,0,0,0,3481.25,-2337.89,100.672,0.978409,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580980,61774,0,0,0,0,3956.73,-2330.83,14.6512,0.174707,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580247,61692,0,0,0,0,3436.66,-2380.28,103.07,0.890943,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580253,61693,0,0,0,0,3454.43,-2380.69,104.166,1.04909,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580810,61695,0,0,0,0,3921.22,-2340.06,13.8975,3.02828,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580811,61695,0,0,0,0,3849.78,-2365.44,33.5474,3.52701,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580335,61696,0,0,0,0,3942.41,-2357.28,9.4899,2.24733,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580220,61691,0,0,0,0,3470.12,-2321.21,108.155,2.91236,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580337,61696,0,0,0,0,3899.84,-2438.06,19.7528,4.23439,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580255,61693,0,0,0,0,3469.98,-2285.16,105.885,2.78483,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581022,61777,0,0,0,0,3458.32,-2264.29,110.256,5.6921,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580338,61696,0,0,0,0,3856.56,-2448.19,30.4416,3.60607,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581023,61777,0,0,0,0,3446.59,-2283.71,113.267,3.09636,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580285,61694,0,0,0,0,3810.14,-2464.6,40.2112,6.28145,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580332,61696,0,0,0,0,3857.69,-2428.59,29.7745,0.668683,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581024,61778,0,0,0,0,3434.81,-2270.13,116.929,1.17213,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580350,61696,0,0,0,0,3834.67,-2536.37,36.0357,5.24926,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580969,61774,0,0,0,0,3449.92,-2253.07,111.49,1.84998,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580286,61694,0,0,0,0,3862.63,-2507.57,30.2431,4.43577,300,300,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581025,61778,0,0,0,0,3400.04,-2268.73,120.147,2.43662,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580419,61701,0,0,0,0,3974.78,-2268.45,14.1065,4.50066,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581013,61777,0,0,0,0,3375.68,-2279.14,114.595,2.87645,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580406,61700,0,0,0,0,3983.24,-2295.11,12.0046,1.6889,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581026,61778,0,0,0,0,3352.41,-2264.05,111.611,2.87645,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581014,61777,0,0,0,0,3336.67,-2244.44,113.752,5.51539,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580998,61775,0,0,0,0,4080.11,-2277.59,7.18957,2.70838,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581027,61778,0,0,0,0,3310.5,-2254.99,112.814,3.35161,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581015,61777,0,0,0,0,3305.88,-2280.45,106.69,4.6004,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580439,61702,0,0,0,0,4111.52,-2301,0.753946,1.47388,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581028,61778,0,0,0,0,3288.38,-2291.33,106.827,2.77828,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580472,61703,0,0,0,0,4114.22,-2327.45,0.590333,5.85562,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581016,61777,0,0,0,0,3300.62,-2314.7,107.578,0.221799,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580471,61703,0,0,0,0,4109.68,-2331.21,1.41097,4.64611,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580438,61702,0,0,0,0,4097.3,-2340.24,1.78153,5.90745,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580526,61704,0,0,0,0,4095.4,-2338.83,1.95548,1.13391,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580470,61703,0,0,0,0,4114.42,-2284.7,2.59987,5.08201,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580527,61704,0,0,0,0,4126.15,-2302.57,-0.600377,0.760846,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580528,61704,0,0,0,0,4103.17,-2246.05,1.59081,2.22169,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580528,61704,0,0,0,0,4103.17,-2246.05,1.59081,2.22169,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580469,61703,0,0,0,0,4106.23,-2243.96,0.956924,4.76393,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581015,61777,0,0,0,0,3305.88,-2280.45,106.69,4.6004,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580440,61702,0,0,0,0,4112.69,-2242.65,0.0687177,1.39927,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580997,61775,0,0,0,0,4076.02,-2236.57,7.03487,4.26188,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581020,61777,0,0,0,0,3324.03,-2304.9,106.637,3.68541,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580764,61715,0,0,0,0,4045.12,-2239.52,10.8075,3.62912,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580779,61715,0,0,0,0,4009.54,-2232.94,9.75649,4.79543,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581021,61777,0,0,0,0,3315.18,-2328.21,114.07,0.638059,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580780,61715,0,0,0,0,4050.36,-2218.31,9.83073,0.668158,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581037,61778,0,0,0,0,3342.85,-2315.6,114.486,0.559517,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580443,61702,0,0,0,0,4100.3,-2200.01,0.839986,6.27267,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580444,61702,0,0,0,0,4101.16,-2196.97,0.775302,3.18998,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581013,61777,0,0,0,0,3375.68,-2279.14,114.595,2.87645,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580468,61703,0,0,0,0,4087.13,-2183.74,2.22652,4.25342,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580467,61703,0,0,0,0,4084.28,-2162.79,0.735224,4.77571,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580466,61703,0,0,0,0,4086.59,-2147.54,0.167819,4.46548,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580476,61703,0,0,0,0,4084.13,-2147.98,0.365726,1.77011,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580446,61702,0,0,0,0,4082.36,-2146,0.53582,1.94119,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580447,61702,0,0,0,0,4079.18,-2139.52,0.300852,0.629578,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581028,61778,0,0,0,0,3288.38,-2291.33,106.827,2.77828,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580800,61716,0,0,0,0,4040.28,-2176.98,10.8389,5.48657,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581017,61777,0,0,0,0,3266.95,-2272.11,108.924,2.73507,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580414,61700,0,0,0,0,4040.67,-2144.04,9.6117,1.68502,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581029,61778,0,0,0,0,3230.31,-2260.69,114.001,2.71544,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580765,61715,0,0,0,0,3981.32,-2219.11,12.0936,2.83194,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581030,61778,0,0,0,0,3214.68,-2233.78,116.677,1.83972,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580785,61715,0,0,0,0,3949.85,-2212.85,17.2003,5.30986,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581018,61777,0,0,0,0,3206.22,-2250.47,116.619,3.11599,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580407,61700,0,0,0,0,3942.68,-2188.53,15.4117,1.9795,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580988,61775,0,0,0,0,3976.15,-2187.49,12.4876,1.92925,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581039,61779,0,0,0,0,3182.67,-2239.26,112.538,5.9552,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581035,61778,0,0,0,0,3152.97,-2246.54,108.396,3.20239,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580412,61700,0,0,0,0,3986.6,-2173.19,11.7743,4.93183,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581019,61777,0,0,0,0,3150.29,-2266.08,108.038,4.56113,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581036,61778,0,0,0,0,3117.5,-2259.2,109.696,5.84918,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581038,61779,0,0,0,0,3130.18,-2265.31,110.093,0.473121,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580418,61701,0,0,0,0,3990.61,-2140.89,9.0434,5.19967,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580799,61716,0,0,0,0,3993.74,-2102.64,9.16726,5.79288,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580766,61715,0,0,0,0,3967.51,-2125.48,10.9696,1.85019,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580782,61715,0,0,0,0,3915.05,-2120.51,10.4609,4.96428,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580782,61715,0,0,0,0,3915.05,-2120.51,10.4609,4.96428,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581030,61778,0,0,0,0,3214.68,-2233.78,116.677,1.83972,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580989,61775,0,0,0,0,3890.18,-2127.22,14.0699,3.59822,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580777,61715,0,0,0,0,3892.45,-2104.71,9.10809,4.92502,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581034,61778,0,0,0,0,3213.18,-2217.81,115.336,3.56367,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581031,61778,0,0,0,0,3248.31,-2202.41,115.545,0.535963,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580790,61716,0,0,0,0,3937.47,-2167.52,15.2361,2.24681,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581041,61779,0,0,0,0,3258.57,-2179.58,115.079,5.42507,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580791,61716,0,0,0,0,3892.62,-2078.33,9.80302,1.65383,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581033,61778,0,0,0,0,3245.48,-2162.42,113.075,4.97739,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580409,61700,0,0,0,0,3898.43,-2056.67,9.34045,1.86169,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581040,61779,0,0,0,0,3236.87,-2167.23,113.629,5.92379,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580411,61700,0,0,0,0,3943.62,-2053.98,5.53515,5.24598,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581032,61778,0,0,0,0,3309.6,-2200.3,113.857,3.26523,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580767,61715,0,0,0,0,3957.97,-2011.23,2.78201,1.40644,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580798,61716,0,0,0,0,3954.46,-1985.48,4.6088,5.37269,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581042,61779,0,0,0,0,3313.3,-2219.2,115.687,2.32275,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580783,61715,0,0,0,0,3965.64,-1974.32,3.72567,1.72451,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580799,61716,0,0,0,0,3993.74,-2102.64,9.16726,5.79288,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580504,61704,0,0,0,0,4059.23,-2089.58,1.46508,4.58889,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580478,61703,0,0,0,0,4067.17,-2090.22,1.00971,1.42846,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580477,61703,0,0,0,0,4070.57,-2115.21,0.977481,1.5502,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580447,61702,0,0,0,0,4079.18,-2139.52,0.300852,0.629578,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580414,61700,0,0,0,0,4040.67,-2144.04,9.6117,1.68502,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580996,61775,0,0,0,0,4027.44,-2119.89,7.84251,3.25657,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580502,61704,0,0,0,0,4040.8,-2043.76,0.933236,5.55493,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580485,61703,0,0,0,0,4033.56,-2027.09,0.902481,2.29632,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580484,61703,0,0,0,0,4039.17,-2016.75,0.20201,2.12353,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580486,61703,0,0,0,0,4030.03,-2010.71,0.861355,0.584153,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580450,61702,0,0,0,0,4026.42,-2006.72,1.05987,1.57991,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580452,61702,0,0,0,0,4019.94,-2003.57,1.4943,4.26597,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580501,61704,0,0,0,0,4021.99,-1987.07,0.121402,5.229,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580767,61715,0,0,0,0,3957.97,-2011.23,2.78201,1.40644,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580221,61691,0,0,0,0,3499.31,-2258.42,105.551,1.05489,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580783,61715,0,0,0,0,3965.64,-1974.32,3.72567,1.72451,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580348,61696,0,0,0,0,3509.24,-2235.29,108.573,3.01482,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580283,61694,0,0,0,0,3508.11,-2216.13,108.693,2.70824,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580499,61704,0,0,0,0,3980.18,-1950.23,1.36525,5.26434,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580305,61695,0,0,0,0,3476.32,-2213.22,110.476,3.01709,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580995,61775,0,0,0,0,3996.4,-2009.38,3.30023,4.60353,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580487,61703,0,0,0,0,3995.92,-1964.57,0.672849,2.30339,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581006,61776,0,0,0,0,3443.27,-2164.78,114.624,5.55466,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580533,61704,0,0,0,0,4007.98,-1977.85,0.680815,3.19165,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581047,61780,0,0,0,0,3421.18,-2155.46,120.865,0.598005,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580453,61702,0,0,0,0,3994,-1931.17,0.623134,1.85872,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581050,61780,0,0,0,0,3431.79,-2135.25,120.855,6.00154,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580498,61704,0,0,0,0,3985.07,-1914.02,1.53533,4.43575,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581048,61780,0,0,0,0,3454.25,-2120.23,118.144,0.782574,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580488,61703,0,0,0,0,3968.26,-1930.31,4.1855,2.14238,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581004,61776,0,0,0,0,3409.24,-2083.87,119.519,4.03884,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580994,61775,0,0,0,0,3952.69,-1920.49,3.01103,4.86271,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581010,61776,0,0,0,0,3397.85,-2051.18,121.481,2.06749,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580768,61715,0,0,0,0,3931.03,-1941.46,5.77424,2.51778,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580489,61703,0,0,0,0,3950.15,-1886.7,0.235902,1.86357,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581049,61780,0,0,0,0,3416.2,-2056.01,121.054,4.89021,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580454,61702,0,0,0,0,3955.87,-1895.82,0.395852,2.62056,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581003,61776,0,0,0,0,3435.81,-2059.68,120.82,3.20632,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581043,61780,0,0,0,0,3470.92,-2062.74,120.782,4.90591,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580497,61704,0,0,0,0,3989.49,-1901.12,-0.312919,5.44106,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581044,61780,0,0,0,0,3511.83,-2027.96,121.241,6.24894,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580498,61704,0,0,0,0,3985.07,-1914.02,1.53533,4.43575,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581002,61776,0,0,0,0,3498.79,-2048.56,121.976,3.63436,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580409,61700,0,0,0,0,3898.43,-2056.67,9.34045,1.86169,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581008,61776,0,0,0,0,3544.2,-2018.75,121.129,0.956144,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581001,61776,0,0,0,0,3553.32,-2035.81,118.734,1.52164,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580990,61775,0,0,0,0,3888.8,-2030.02,9.50812,1.83893,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581045,61780,0,0,0,0,3562.07,-2069.35,117.64,5.12583,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580801,61716,0,0,0,0,3890.83,-2003.71,12.7599,0.546422,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580792,61716,0,0,0,0,3855.66,-1992.2,4.80029,2.1879,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581000,61776,0,0,0,0,3549.6,-2095.49,115.864,0.728388,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580410,61700,0,0,0,0,3844.28,-1969.9,4.60675,2.23632,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581009,61776,0,0,0,0,3570.39,-2118.09,114.263,4.85958,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580809,61706,0,0,0,0,3827.16,-1973.75,4.5628,1.3004,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581046,61780,0,0,0,0,3554.52,-2143.97,114.706,4.58783,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580808,61706,0,0,0,0,3836.41,-1989.33,4.4591,1.06871,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580536,61705,0,0,0,0,3819.37,-1991,9.26511,1.04047,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580535,61705,0,0,0,0,3809.27,-2000.64,11.1179,0.10977,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580807,61706,0,0,0,0,3815.85,-2009.22,10.4064,0.903776,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581011,61776,0,0,0,0,3539.96,-2162.03,114.873,2.15781,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580769,61715,0,0,0,0,3862.5,-1918.84,4.49793,2.96546,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580282,61694,0,0,0,0,3571.25,-2206.91,106.166,1.51443,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580415,61700,0,0,0,0,3876.05,-1906.89,5.02744,2.45863,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580347,61696,0,0,0,0,3563.57,-2238.48,101.399,3.1719,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580784,61715,0,0,0,0,3902.93,-1942.14,5.83106,5.62009,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580455,61702,0,0,0,0,3913.29,-1889.49,2.89885,2.14932,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580345,61696,0,0,0,0,3552.86,-2291.8,97.5888,2.85145,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580494,61704,0,0,0,0,3918.1,-1868.86,1.37125,6.23823,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580237,61692,0,0,0,0,3552.82,-2324.83,93.4248,0.262615,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580493,61704,0,0,0,0,3895.98,-1878.42,2.78801,6.09294,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580993,61775,0,0,0,0,3887.82,-1891.57,4.1142,5.87195,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580256,61693,0,0,0,0,3541.89,-2332.34,93.1055,4.55197,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580489,61703,0,0,0,0,3950.15,-1886.7,0.235902,1.86357,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580258,61693,0,0,0,0,3535.12,-2328.66,93.9213,3.27177,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580454,61702,0,0,0,0,3955.87,-1895.82,0.395852,2.62056,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580257,61693,0,0,0,0,3535.94,-2338.58,92.4218,2.70235,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580994,61775,0,0,0,0,3952.69,-1920.49,3.01103,4.86271,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580236,61691,0,0,0,0,3514.51,-2326.75,94.7407,5.79575,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580488,61703,0,0,0,0,3968.26,-1930.31,4.1855,2.14238,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580219,61691,0,0,0,0,3540.23,-2367.77,90.5279,2.25354,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580240,61692,0,0,0,0,3548.14,-2403.29,86.8568,4.16606,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580207,61691,0,0,0,0,3568.49,-2404.56,82.7077,5.96061,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2581304,61789,0,0,0,0,3697.49,-1915.69,13.0601,0.268936,54069,54069,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580794,61716,0,0,0,0,3738.29,-1911.43,8.09978,3.38171,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580218,61691,0,0,0,0,3537.22,-2413.63,90.3784,6.13734,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580793,61716,0,0,0,0,3781.34,-1917.35,7.76163,2.25073,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580206,61691,0,0,0,0,3522.6,-2396,91.3848,0.411766,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580770,61715,0,0,0,0,3798.87,-1910.8,6.56921,3.00865,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580771,61715,0,0,0,0,3753.69,-1866.1,6.28773,2.27431,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580795,61716,0,0,0,0,3736.46,-1852.42,5.53214,1.5046,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580797,61716,0,0,0,0,3834.55,-1886.18,6.10213,5.04283,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580225,61691,0,0,0,0,3587.72,-2466.03,79.791,4.80282,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580302,61695,0,0,0,0,3595.09,-2490.55,78.0674,4.41355,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580775,61715,0,0,0,0,3832.45,-1860.28,3.27712,4.83471,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580268,61694,0,0,0,0,3607.31,-2546.66,75.1033,5.01637,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580584,61709,0,0,0,0,3845.98,-1839.73,2.13628,1.52584,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580611,61710,0,0,0,0,3851.88,-1833.23,1.77359,2.76541,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580303,61695,0,0,0,0,3629.13,-2534.24,74.4133,0.199881,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580585,61709,0,0,0,0,3831.78,-1822.94,2.53638,1.07031,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580613,61710,0,0,0,0,3829.35,-1792.75,0.323911,4.41475,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580326,61696,0,0,0,0,3636.57,-2560,74.1939,0.180259,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580614,61710,0,0,0,0,3816.78,-1806.23,1.71318,5.02343,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580304,61695,0,0,0,0,3664.83,-2588.46,70.1959,5.45026,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580612,61710,0,0,0,0,3812.76,-1820.84,3.00729,1.04146,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580976,61774,0,0,0,0,3708.97,-2631.63,68.5713,3.56999,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580774,61715,0,0,0,0,3767.04,-1797.94,3.31778,5.28631,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580416,61700,0,0,0,0,3741.92,-1799.81,5.60724,4.45355,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580315,61695,0,0,0,0,3691.43,-2632.76,70.4709,3.52445,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580772,61715,0,0,0,0,3737.7,-1805.71,6.4885,1.56352,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580795,61716,0,0,0,0,3736.46,-1852.42,5.53214,1.5046,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580794,61716,0,0,0,0,3738.29,-1911.43,8.09978,3.38171,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580615,61710,0,0,0,0,3777.73,-1750.9,0.280001,1.76796,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580277,61694,0,0,0,0,3573.56,-2606.9,75.4677,0.764374,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580773,61715,0,0,0,0,3745.33,-1756.37,3.14843,0.652459,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580209,61691,0,0,0,0,3549.02,-2587.31,80.5115,5.07704,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580796,61716,0,0,0,0,3752.1,-1769.61,3.682,6.12275,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580212,61691,0,0,0,0,3486.33,-2597.35,96.9356,2.15929,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580262,61693,0,0,0,0,3501.73,-2621.02,92.5909,4.51662,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580263,61693,0,0,0,0,3497.53,-2628.44,92.5846,5.41197,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580642,61711,0,0,0,0,3842.83,-1667.83,-55.0626,4.07868,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580616,61710,0,0,0,0,3837.44,-1633.23,-55.8842,1.0179,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580276,61694,0,0,0,0,3513.19,-2666.58,85.3377,0.988213,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580601,61709,0,0,0,0,3868.38,-1690.09,-53.1754,1.6687,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580271,61694,0,0,0,0,3530.72,-2703.68,80.2024,3.2453,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580586,61709,0,0,0,0,3911.29,-1674.89,-45.4927,0.779712,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580977,61774,0,0,0,0,3561.57,-2684.95,73.8813,3.35401,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580270,61694,0,0,0,0,3587.26,-2694.95,73.7344,3.98357,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580655,61711,0,0,0,0,3928.12,-1759.81,-44.9264,3.32312,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580609,61710,0,0,0,0,4017.67,-1799.56,-34.674,5.32478,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580654,61711,0,0,0,0,3957.77,-1711.5,-35.1251,3.62157,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580366,61697,0,0,0,0,3572.58,-2757.11,89.2929,1.1788,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580273,61694,0,0,0,0,3586.54,-2781.88,94.8771,1.62439,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580607,61710,0,0,0,0,3991.31,-1708.17,-34.7413,4.77501,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580390,61698,0,0,0,0,3561.42,-2793.97,94.7202,6.08792,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580607,61710,0,0,0,0,3991.31,-1708.17,-34.7413,4.77501,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580274,61694,0,0,0,0,3533.84,-2800.48,95.1916,3.97273,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580607,61710,0,0,0,0,3991.31,-1708.17,-34.7413,4.77501,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580320,61696,0,0,0,0,3495.52,-2801.97,89.8879,1.22559,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580607,61710,0,0,0,0,3991.31,-1708.17,-34.7413,4.77501,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580364,61697,0,0,0,0,3491.97,-2826.93,91.4668,1.00208,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580627,61710,0,0,0,0,3951.35,-1628.55,-42.5507,2.1528,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580588,61709,0,0,0,0,3945.64,-1596.93,-43.3794,0.901449,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580376,61697,0,0,0,0,3473.66,-2846.59,93.199,0.822881,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580275,61694,0,0,0,0,3493.79,-2858.27,98.4315,4.34579,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580363,61697,0,0,0,0,3511.57,-2859.09,97.4795,1.77177,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580591,61709,0,0,0,0,3947.55,-1506.85,-54.2512,5.76699,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580385,61698,0,0,0,0,3523.34,-2861.62,98.144,5.59023,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580632,61710,0,0,0,0,3985.77,-1522.02,-47.305,5.97453,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580644,61711,0,0,0,0,4003.02,-1524.77,-48.0813,3.27993,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580359,61697,0,0,0,0,3519.37,-2887.4,99.6262,4.40207,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580603,61709,0,0,0,0,3971.54,-1553.53,-49.7462,6.04651,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580384,61698,0,0,0,0,3504.43,-2887.99,98.4108,1.86351,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580590,61709,0,0,0,0,3919.99,-1497.42,-52.0802,1.36091,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580618,61710,0,0,0,0,3916.26,-1525.11,-55.4303,0.401364,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580372,61697,0,0,0,0,3542.66,-2887.76,99.6681,1.30589,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580589,61709,0,0,0,0,3937.82,-1553.86,-50.5736,2.21699,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580386,61698,0,0,0,0,3570.49,-2877.26,100.468,0.936744,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580316,61695,0,0,0,0,3592.92,-2866.05,100.507,4.73868,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580643,61711,0,0,0,0,3890.95,-1506.29,-41.7952,1.26931,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580357,61697,0,0,0,0,3582.68,-2873.51,101.444,2.79594,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580617,61710,0,0,0,0,3883.96,-1566.51,-55.3681,0.699816,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580368,61697,0,0,0,0,3637.75,-2870.82,104.754,5.32177,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580602,61709,0,0,0,0,3870.03,-1594.01,-54.5165,1.52733,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580356,61697,0,0,0,0,3615.79,-2879.24,100.159,0.647875,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580355,61697,0,0,0,0,3608.59,-2883.28,100.392,2.35219,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580642,61711,0,0,0,0,3842.83,-1667.83,-55.0626,4.07868,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580601,61709,0,0,0,0,3868.38,-1690.09,-53.1754,1.6687,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580361,61697,0,0,0,0,3613.39,-2892.63,103.88,5.66656,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580379,61698,0,0,0,0,3602.53,-2927.79,102.32,4.80877,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580374,61697,0,0,0,0,3619.35,-2921.19,100.837,4.61635,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580586,61709,0,0,0,0,3911.29,-1674.89,-45.4927,0.779712,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580317,61695,0,0,0,0,3605.88,-2956.75,103.078,4.79758,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580392,61698,0,0,0,0,3637.7,-2952.03,104.346,2.88506,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580380,61698,0,0,0,0,3620.52,-2975.54,104.585,5.15434,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580655,61711,0,0,0,0,3928.12,-1759.81,-44.9264,3.32312,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580369,61697,0,0,0,0,3598.34,-2990.23,108.15,4.58349,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580654,61711,0,0,0,0,3957.77,-1711.5,-35.1251,3.62157,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580388,61698,0,0,0,0,3583.19,-2975.04,106.305,1.21845,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580393,61699,0,0,0,0,3571.07,-2983.81,105.569,2.05097,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580381,61698,0,0,0,0,3558.32,-2969.31,105.352,2.96308,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580318,61695,0,0,0,0,3548.95,-2978.11,105.732,2.12722,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580362,61697,0,0,0,0,3570.31,-3001.64,109.991,4.19787,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580646,61711,0,0,0,0,4083.76,-1494.39,-58.5151,5.12562,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580382,61698,0,0,0,0,3552.21,-2999.1,110.05,4.51424,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580604,61709,0,0,0,0,4052.09,-1583.34,-48.2276,5.36075,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580621,61710,0,0,0,0,4089.94,-1558.78,-40.4934,5.61247,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580383,61698,0,0,0,0,3519.03,-2962.91,107.529,0.355549,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580636,61711,0,0,0,0,4126.3,-1567.33,-30.7389,4.79643,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580354,61697,0,0,0,0,3531.29,-2955.22,105.276,6.15273,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580353,61697,0,0,0,0,3527.52,-2952.06,105.178,1.03587,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580622,61710,0,0,0,0,4126.44,-1606.57,-44.2513,5.07055,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580389,61698,0,0,0,0,3503.07,-2942.92,105.238,2.23162,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580597,61709,0,0,0,0,4096.73,-1597.42,-46.5923,5.43867,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580638,61711,0,0,0,0,4093.78,-1626.69,-43.2011,3.52409,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580319,61695,0,0,0,0,3504.91,-2911.99,99.8419,2.40604,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580391,61698,0,0,0,0,3525.4,-2924.47,103.334,2.3235,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580384,61698,0,0,0,0,3504.43,-2887.99,98.4108,1.86351,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580598,61709,0,0,0,0,4138.82,-1672.15,-39,5.1363,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580375,61697,0,0,0,0,3489.42,-2900.13,99.047,1.34124,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580359,61697,0,0,0,0,3519.37,-2887.4,99.6262,4.40207,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580593,61709,0,0,0,0,4069.49,-1516.32,-51.6379,0.10034,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580646,61711,0,0,0,0,4083.76,-1494.39,-58.5151,5.12562,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580363,61697,0,0,0,0,3511.57,-2859.09,97.4795,1.77177,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580645,61711,0,0,0,0,4074.75,-1454.1,-65.4496,6.20161,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580275,61694,0,0,0,0,3493.79,-2858.27,98.4315,4.34579,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580633,61710,0,0,0,0,4089.36,-1465.13,-64.9431,1.12863,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580596,61709,0,0,0,0,4103.96,-1524.39,-45.9665,3.87575,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580594,61709,0,0,0,0,4124.26,-1498.5,-53.8283,0.795417,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580376,61697,0,0,0,0,3473.66,-2846.59,93.199,0.822881,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580635,61711,0,0,0,0,4120,-1517.24,-46.8332,4.96529,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580595,61709,0,0,0,0,4152.05,-1458.32,-54.959,1.53762,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580363,61697,0,0,0,0,3511.57,-2859.09,97.4795,1.77177,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580648,61711,0,0,0,0,4127.74,-1407.44,-57.3399,2.47097,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580649,61711,0,0,0,0,4086.39,-1388.31,-56.3759,2.89116,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580629,61710,0,0,0,0,3868.09,-1441.56,-50.4461,2.52979,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580272,61694,0,0,0,0,3529.41,-2747.37,85.4229,4.94568,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580322,61696,0,0,0,0,3467.08,-2709.64,93.5154,1.82249,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580276,61694,0,0,0,0,3513.19,-2666.58,85.3377,0.988213,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580628,61710,0,0,0,0,3924.16,-1438.11,-55.2517,0.790132,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580643,61711,0,0,0,0,3890.95,-1506.29,-41.7952,1.26931,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580590,61709,0,0,0,0,3919.99,-1497.42,-52.0802,1.36091,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580618,61710,0,0,0,0,3916.26,-1525.11,-55.4303,0.401364,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580589,61709,0,0,0,0,3937.82,-1553.86,-50.5736,2.21699,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580269,61694,0,0,0,0,3619.03,-2654.78,72.5647,5.17737,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580603,61709,0,0,0,0,3971.54,-1553.53,-49.7462,6.04651,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580315,61695,0,0,0,0,3691.43,-2632.76,70.4709,3.52445,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580644,61711,0,0,0,0,4003.02,-1524.77,-48.0813,3.27993,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580976,61774,0,0,0,0,3708.97,-2631.63,68.5713,3.56999,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580592,61709,0,0,0,0,4005.86,-1535.14,-56.8011,6.15576,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580341,61696,0,0,0,0,3754.06,-2570.98,47.8107,2.36434,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580290,61694,0,0,0,0,3764.4,-2596.3,47.5329,2.25998,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580975,61774,0,0,0,0,3774.31,-2602.87,47.4327,3.49145,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580974,61774,0,0,0,0,3779.18,-2615,48.1229,4.70882,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580296,61695,0,0,0,0,3797.78,-2618.06,46.006,2.81209,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580289,61694,0,0,0,0,3840.09,-2636.31,39.2748,2.56651,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580288,61694,0,0,0,0,3888.98,-2661.85,38.6052,5.37038,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580294,61695,0,0,0,0,3922.06,-2565.69,25.4881,2.47044,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580982,61774,0,0,0,0,3924.34,-2537.45,24.9461,1.95755,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580516,61704,0,0,0,0,4170.37,-1865.03,0.269777,1.06637,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580286,61694,0,0,0,0,3862.63,-2507.57,30.2431,4.43577,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580517,61704,0,0,0,0,4189.33,-1840.13,0.44996,0.638325,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580515,61704,0,0,0,0,4166.82,-1889.46,1.38185,1.47085,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580338,61696,0,0,0,0,3856.56,-2448.19,30.4416,3.60607,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580514,61704,0,0,0,0,4148.29,-1920.11,1.61859,0.732573,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580332,61696,0,0,0,0,3857.69,-2428.59,29.7745,0.668683,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580513,61704,0,0,0,0,4134.42,-1937.22,0.629115,1.29413,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580310,61695,0,0,0,0,3858.49,-2404.36,31.0458,2.79012,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580512,61704,0,0,0,0,4130.52,-1946.37,0.701999,0.936777,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580811,61695,0,0,0,0,3849.78,-2365.44,33.5474,3.52701,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580705,61715,0,0,0,0,4135.65,-1986.76,9.46752,1.44501,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580704,61715,0,0,0,0,4153.94,-2010.9,11.548,2.44246,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580979,61774,0,0,0,0,3827.39,-2362.4,40.8167,1.1918,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580706,61715,0,0,0,0,4203.48,-1948.52,14.3714,6.14168,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580724,61716,0,0,0,0,4189.37,-1903.54,7.52505,4.45698,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580330,61696,0,0,0,0,3746.21,-2405.71,49.4274,5.37715,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580284,61694,0,0,0,0,3719.84,-2410.73,52.9069,5.9535,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580532,61704,0,0,0,0,4061.82,-2013.08,-0.0551573,2.12351,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580457,61702,0,0,0,0,4096.48,-2014.79,0.778565,3.46487,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580299,61695,0,0,0,0,3721.67,-2361.29,50.4697,0.127815,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580456,61702,0,0,0,0,4094.21,-2007.56,0.651014,5.43622,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580481,61703,0,0,0,0,4093.15,-2036.82,-0.478306,0.281779,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580480,61703,0,0,0,0,4069.4,-2059.4,-0.152641,1.02005,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580280,61694,0,0,0,0,3672.17,-2351.56,66.6734,2.06814,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580705,61715,0,0,0,0,4135.65,-1986.76,9.46752,1.44501,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580704,61715,0,0,0,0,4153.94,-2010.9,11.548,2.44246,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580306,61695,0,0,0,0,3616.45,-2306.42,87.8439,5.81311,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580508,61704,0,0,0,0,4145.1,-2080.43,0.792685,0.701158,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580482,61703,0,0,0,0,4149.38,-2104.6,0.247968,5.31618,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580971,61774,0,0,0,0,3635.1,-2298.03,87.5592,6.04401,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580483,61703,0,0,0,0,4156.61,-2114.68,0.280052,4.11844,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580459,61702,0,0,0,0,4137.53,-2071.48,0.518787,3.59446,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580281,61694,0,0,0,0,3612.38,-2279.74,94.9649,1.82466,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580346,61696,0,0,0,0,3598.72,-2229.71,99.8926,6.23495,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580460,61702,0,0,0,0,4181.64,-2125.06,0.259376,5.39303,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580531,61704,0,0,0,0,4138.68,-2150.65,0.00897887,0.823678,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580282,61694,0,0,0,0,3571.25,-2206.91,106.166,1.51443,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580530,61704,0,0,0,0,4112.34,-2165.42,0.00897887,0.297461,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580507,61704,0,0,0,0,4117.44,-2101.75,-0.506366,0.901434,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580506,61704,0,0,0,0,4097.89,-2113.14,-0.446301,6.14397,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580482,61703,0,0,0,0,4149.38,-2104.6,0.247968,5.31618,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580483,61703,0,0,0,0,4156.61,-2114.68,0.280052,4.11844,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580460,61702,0,0,0,0,4181.64,-2125.06,0.259376,5.39303,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580702,61715,0,0,0,0,4229.66,-2115.43,10.3498,2.5053,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580677,61714,0,0,0,0,4249.01,-2099.87,11.2594,1.92351,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580330,61696,0,0,0,0,3746.21,-2405.71,49.4274,5.37715,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580738,61717,0,0,0,0,4195.21,-2074.59,6.47268,2.10391,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580314,61695,0,0,0,0,3788.4,-2429.23,42.967,2.79405,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580703,61715,0,0,0,0,4196.68,-2053.95,14.119,1.70812,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580331,61696,0,0,0,0,3820.21,-2448.97,36.6207,5.70309,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580701,61715,0,0,0,0,4285.49,-2133.95,15.6004,2.51315,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580676,61714,0,0,0,0,4266.13,-2136.32,11.3846,2.47329,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580285,61694,0,0,0,0,3810.14,-2464.6,40.2112,6.28145,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580685,61714,0,0,0,0,4287.13,-2196.82,11.0906,3.32152,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580718,61716,0,0,0,0,4319.58,-2238.29,12.3787,4.93765,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580461,61702,0,0,0,0,4228.11,-2185.47,1.72012,4.04215,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580520,61704,0,0,0,0,4236.08,-2199.74,1.02205,5.21719,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580286,61694,0,0,0,0,3862.63,-2507.57,30.2431,4.43577,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580982,61774,0,0,0,0,3924.34,-2537.45,24.9461,1.95755,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580674,61714,0,0,0,0,4343.97,-2186.3,14.8484,2.61859,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580736,61717,0,0,0,0,4279.06,-2171.99,10.5857,2.41807,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580294,61695,0,0,0,0,3922.06,-2565.69,25.4881,2.47044,300,300,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580675,61714,0,0,0,0,4317.44,-2146.6,20.3831,2.23374,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580293,61695,0,0,0,0,3989.39,-2590.9,30.7245,1.9128,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580401,61700,0,0,0,0,3994.48,-2572.91,28.1423,0.970261,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580701,61715,0,0,0,0,4285.49,-2133.95,15.6004,2.51315,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580422,61701,0,0,0,0,4045,-2580.14,25.179,4.64595,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580677,61714,0,0,0,0,4249.01,-2099.87,11.2594,1.92351,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580716,61716,0,0,0,0,4249.46,-2063.98,10.1986,4.28185,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580802,61716,0,0,0,0,4037.71,-2554.09,19.2275,4.65014,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580678,61714,0,0,0,0,4234.21,-2045.51,12.3508,1.77428,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580421,61701,0,0,0,0,4052.33,-2532.86,19.2733,5.22715,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580679,61714,0,0,0,0,4229.65,-1992.11,18.0504,1.77429,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580706,61715,0,0,0,0,4203.48,-1948.52,14.3714,6.14168,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580402,61700,0,0,0,0,4012.13,-2528.36,17.6942,1.71246,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580724,61716,0,0,0,0,4189.37,-1903.54,7.52505,4.45698,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580707,61715,0,0,0,0,4266.75,-1960,13.5654,0.133375,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580760,61718,0,0,0,0,4288.93,-1943.52,12.8854,1.78661,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580749,61718,0,0,0,0,4297.61,-1937.44,11.5779,3.76583,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580750,61718,0,0,0,0,4290.99,-1967.77,10.2795,5.27771,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580680,61714,0,0,0,0,4276.2,-1938.08,14.1852,0.494088,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580432,61701,0,0,0,0,4099.72,-2573.34,25.5176,0.420487,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580686,61714,0,0,0,0,4181.9,-2004.36,17.254,2.65768,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580704,61715,0,0,0,0,4153.94,-2010.9,11.548,2.44246,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580513,61704,0,0,0,0,4134.42,-1937.22,0.629115,1.29413,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580512,61704,0,0,0,0,4130.52,-1946.37,0.701999,0.936777,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580511,61704,0,0,0,0,4100.5,-1975.05,0.156191,0.441976,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580510,61704,0,0,0,0,4099.56,-1993.57,1.64452,1.4787,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580804,61716,0,0,0,0,4020.22,-2726.46,37.2557,4.08858,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580427,61701,0,0,0,0,4035.49,-2731.62,35.0256,0.43227,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580399,61700,0,0,0,0,4013.06,-2762.27,33.0675,2.66279,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580514,61704,0,0,0,0,4148.29,-1920.11,1.61859,0.732573,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580724,61716,0,0,0,0,4189.37,-1903.54,7.52505,4.45698,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580515,61704,0,0,0,0,4166.82,-1889.46,1.38185,1.47085,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580516,61704,0,0,0,0,4170.37,-1865.03,0.269777,1.06637,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580312,61695,0,0,0,0,4038.72,-2380.08,8.15201,0.36717,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580812,61695,0,0,0,0,4011.3,-2345.23,8.56093,5.44338,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580787,61715,0,0,0,0,3996.45,-2325.18,12.8736,6.00493,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580658,61714,0,0,0,0,4228.44,-1852.35,9.63163,5.81911,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580786,61715,0,0,0,0,3970.03,-2305.19,14.6139,4.56373,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580419,61701,0,0,0,0,3974.78,-2268.45,14.1065,4.50066,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580785,61715,0,0,0,0,3949.85,-2212.85,17.2003,5.30986,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580688,61715,0,0,0,0,4251.86,-1842.37,13.8232,0.945509,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580660,61714,0,0,0,0,4273.67,-1849.23,15.1773,0.945709,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580407,61700,0,0,0,0,3942.68,-2188.53,15.4117,1.9795,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580689,61715,0,0,0,0,4292.6,-1810.55,23.0566,0.313263,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580661,61714,0,0,0,0,4324.62,-1807.29,28.5377,0.246704,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580690,61715,0,0,0,0,4342.91,-1843.91,23.4536,5.18274,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580663,61714,0,0,0,0,4395.48,-1839.46,26.4715,0.525519,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580782,61715,0,0,0,0,3915.05,-2120.51,10.4609,4.96428,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580662,61714,0,0,0,0,4357.47,-1823.62,28.0808,5.8034,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580777,61715,0,0,0,0,3892.45,-2104.71,9.10809,4.92502,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580989,61775,0,0,0,0,3890.18,-2127.22,14.0699,3.59822,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580710,61715,0,0,0,0,4488.6,-1831.33,31.3975,0.460886,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580664,61714,0,0,0,0,4461.34,-1850.85,29.1743,5.41855,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580693,61715,0,0,0,0,4517.49,-1899.96,26.9206,0.772718,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580710,61715,0,0,0,0,4488.6,-1831.33,31.3975,0.460886,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580665,61714,0,0,0,0,4484.23,-1897.81,23.8615,4.58997,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580742,61718,0,0,0,0,4466.75,-1912.58,20.5758,5.4073,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580743,61718,0,0,0,0,4469.7,-1924.53,21.7349,4.34309,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580535,61705,0,0,0,0,3809.27,-2000.64,11.1179,0.10977,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580745,61718,0,0,0,0,4450.25,-1937.8,19.6758,2.79586,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580807,61706,0,0,0,0,3815.85,-2009.22,10.4064,0.903776,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580741,61718,0,0,0,0,4456.88,-1916.5,20.8218,5.56045,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580536,61705,0,0,0,0,3819.37,-1991,9.26511,1.04047,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580808,61706,0,0,0,0,3836.41,-1989.33,4.4591,1.06871,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580410,61700,0,0,0,0,3844.28,-1969.9,4.60675,2.23632,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580743,61718,0,0,0,0,4469.7,-1924.53,21.7349,4.34309,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580742,61718,0,0,0,0,4466.75,-1912.58,20.5758,5.4073,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580666,61714,0,0,0,0,4478.05,-1971.27,14.7848,4.82165,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580667,61714,0,0,0,0,4484.84,-2023.66,8.25931,4.53891,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580730,61717,0,0,0,0,4492.73,-1972.79,16.2801,3.98495,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580694,61715,0,0,0,0,4520.94,-1963.93,17.9384,4.36199,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580537,61705,0,0,0,0,3768.98,-2024.75,15.7741,3.79722,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580695,61715,0,0,0,0,4482.23,-2051.83,6.09329,4.20884,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580668,61714,0,0,0,0,4462.07,-2093.55,7.00125,4.27973,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580551,61706,0,0,0,0,3745.79,-2031.47,17.3378,4.0583,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580669,61714,0,0,0,0,4454.72,-2144.14,8.82998,4.76667,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580719,61716,0,0,0,0,4461.12,-2182.89,9.35542,0.961964,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580670,61714,0,0,0,0,4485.94,-2208.95,5.50741,4.99051,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580538,61705,0,0,0,0,3739.38,-2047.92,20.1663,3.96608,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580698,61715,0,0,0,0,4471.77,-2236.11,9.31491,5.78119,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580671,61714,0,0,0,0,4486.79,-2263.22,15.2181,2.85421,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580549,61706,0,0,0,0,3710.08,-2075.95,25.8203,1.86704,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580699,61715,0,0,0,0,4437.13,-2228.37,10.1375,2.99696,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580550,61706,0,0,0,0,3705.4,-2054.32,27.4352,0.582915,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580699,61715,0,0,0,0,4437.13,-2228.37,10.1375,2.99696,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580557,61706,0,0,0,0,3680.58,-2086.03,26.3066,4.05045,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580698,61715,0,0,0,0,4471.77,-2236.11,9.31491,5.78119,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580672,61714,0,0,0,0,4423.44,-2247.75,6.79925,2.86206,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580539,61705,0,0,0,0,3710.4,-2104.06,28.1977,5.01458,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580734,61717,0,0,0,0,4413.03,-2233.11,9.20849,2.84219,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580553,61706,0,0,0,0,3719.84,-2133.96,27.9087,5.46024,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580700,61715,0,0,0,0,4352.13,-2235.69,10.7055,2.97339,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580556,61706,0,0,0,0,3702.54,-2143.5,27.3773,3.84625,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580762,61718,0,0,0,0,4392.22,-2178.34,12.4566,5.55338,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580555,61706,0,0,0,0,3720.49,-2171.8,27.5625,2.77025,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580674,61714,0,0,0,0,4343.97,-2186.3,14.8484,2.61859,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580554,61706,0,0,0,0,3748.11,-2171.4,27.5849,4.44315,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580735,61717,0,0,0,0,4354.44,-2179.83,15.4265,2.64584,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580685,61714,0,0,0,0,4287.13,-2196.82,11.0906,3.32152,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580462,61702,0,0,0,0,4260.3,-2257.96,2.1655,5.17312,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580521,61704,0,0,0,0,4273.5,-2262.33,1.82252,5.67665,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580564,61706,0,0,0,0,3681.81,-2061.5,27.9796,1.86703,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580578,61707,0,0,0,0,3672.42,-2050.97,29.2004,5.35419,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580522,61704,0,0,0,0,4316.71,-2275.99,0.82782,5.79839,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580565,61706,0,0,0,0,3639.7,-2055.11,34.681,3.45354,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580464,61702,0,0,0,0,4330.35,-2277.91,3.05046,6.05277,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580577,61707,0,0,0,0,3620.14,-2043.21,37.7661,0.288364,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580543,61705,0,0,0,0,3598.57,-2037.59,37.7994,3.14298,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580672,61714,0,0,0,0,4423.44,-2247.75,6.79925,2.86206,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580576,61707,0,0,0,0,3584.08,-2052.97,37.2609,0.720337,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580734,61717,0,0,0,0,4413.03,-2233.11,9.20849,2.84219,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580566,61706,0,0,0,0,3600.67,-2063.14,37.2214,3.80697,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580575,61707,0,0,0,0,3578.46,-2071.41,37.4165,2.76237,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580547,61705,0,0,0,0,3567.94,-2036.51,37.9844,0.539716,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580544,61705,0,0,0,0,3589.79,-2088.73,42.3161,5.06327,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580567,61706,0,0,0,0,3608.21,-2118.71,47.5221,5.28351,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580574,61707,0,0,0,0,3597.51,-2112.42,47.8237,1.9809,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580546,61705,0,0,0,0,3599.12,-2128.19,49.4341,1.24815,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580568,61706,0,0,0,0,3642.73,-2152.1,60.7652,2.62493,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580573,61707,0,0,0,0,3636.8,-2157.94,61.4039,2.28721,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580581,61707,0,0,0,0,3657.47,-2180.36,65.0816,4.76243,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580572,61707,0,0,0,0,3651.91,-2197.09,64.9064,1.36044,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580545,61705,0,0,0,0,3637.8,-2182.48,65.1988,1.73117,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580571,61707,0,0,0,0,3651.02,-2208.76,65.2759,2.3147,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580482,61703,0,0,0,0,4149.38,-2104.6,0.247968,5.31618,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580569,61706,0,0,0,0,3672.31,-2207.4,66.2085,3.07261,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580481,61703,0,0,0,0,4093.15,-2036.82,-0.478306,0.281779,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580582,61707,0,0,0,0,3670.89,-2184.99,66.3256,3.28588,120,120,3,100,100,1,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2580532,61704,0,0,0,0,4061.82,-2013.08,-0.0551573,2.12351,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580511,61704,0,0,0,0,4100.5,-1975.05,0.156191,0.441976,120,120,3,100,100,1,0,0);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2580573,61707,0,0,0,0,3636.8,-2157.94,61.4039,2.28721,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580567,61706,0,0,0,0,3608.21,-2118.71,47.5221,5.28351,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580546,61705,0,0,0,0,3599.12,-2128.19,49.4341,1.24815,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580574,61707,0,0,0,0,3597.51,-2112.42,47.8237,1.9809,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580544,61705,0,0,0,0,3589.79,-2088.73,42.3161,5.06327,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580577,61707,0,0,0,0,3620.14,-2043.21,37.7661,0.288364,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580578,61707,0,0,0,0,3672.42,-2050.97,29.2004,5.35419,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580548,61705,0,0,0,0,3698.02,-2018.87,25.9957,4.95758,120,120,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2580580,61707,0,0,0,0,3685.56,-2020.31,27.9825,5.6173,120,120,3,100,100,1,0,0);
UPDATE `creature` SET `position_x` = 4257.312012, `position_y` = -2668.177734, `position_z` = 3.742282, `orientation` = 4.596920 WHERE `guid` = 2560560;
REPLACE INTO `creature` VALUES (2581327,61770,0,0,0,0,4257.31,-2668.18,3.74228,4.59692,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2560560;
DELETE FROM creature_addon WHERE guid=2560560;
DELETE FROM creature_movement WHERE id=2560560;
DELETE FROM game_event_creature WHERE guid=2560560;
DELETE FROM game_event_creature_data WHERE guid=2560560;
DELETE FROM creature_battleground WHERE guid=2560560;
DELETE FROM creature WHERE guid=2581327;
DELETE FROM creature_addon WHERE guid=2581327;
DELETE FROM creature_movement WHERE id=2581327;
DELETE FROM game_event_creature WHERE guid=2581327;
DELETE FROM game_event_creature_data WHERE guid=2581327;
DELETE FROM creature_battleground WHERE guid=2581327;
DELETE FROM creature WHERE guid=2560559;
DELETE FROM creature_addon WHERE guid=2560559;
DELETE FROM creature_movement WHERE id=2560559;
DELETE FROM game_event_creature WHERE guid=2560559;
DELETE FROM game_event_creature_data WHERE guid=2560559;
DELETE FROM creature_battleground WHERE guid=2560559;
DELETE FROM creature WHERE guid=2560562;
DELETE FROM creature_addon WHERE guid=2560562;
DELETE FROM creature_movement WHERE id=2560562;
DELETE FROM game_event_creature WHERE guid=2560562;
DELETE FROM game_event_creature_data WHERE guid=2560562;
DELETE FROM creature_battleground WHERE guid=2560562;
DELETE FROM creature WHERE guid=2560561;
DELETE FROM creature_addon WHERE guid=2560561;
DELETE FROM creature_movement WHERE id=2560561;
DELETE FROM game_event_creature WHERE guid=2560561;
DELETE FROM game_event_creature_data WHERE guid=2560561;
DELETE FROM creature_battleground WHERE guid=2560561;
UPDATE `creature` SET `position_x` = 4282.177246, `position_y` = -2674.432861, `position_z` = 2.287229, `orientation` = 4.374662 WHERE `guid` = 2560635;
UPDATE `creature` SET `position_x` = 4273.068848, `position_y` = -2677.451660, `position_z` = 2.826757, `orientation` = 1.806410 WHERE `guid` = 2561041;
UPDATE `creature` SET `position_x` = 4270.913574, `position_y` = -2677.851318, `position_z` = 3.016527, `orientation` = 1.786775 WHERE `guid` = 2558667;
UPDATE `creature` SET `position_x` = 4270.913574, `position_y` = -2677.851318, `position_z` = 3.016527, `orientation` = 1.892804 WHERE `guid` = 2558648;
UPDATE `creature` SET `position_x` = 4269.275391, `position_y` = -2676.806641, `position_z` = 2.648034, `orientation` = 2.803866 WHERE `guid` = 2558648;
UPDATE `creature` SET `position_x` = 4267.494141, `position_y` = -2674.864746, `position_z` = 2.648034, `orientation` = 1.837826 WHERE `guid` = 2560558;
UPDATE `creature` SET `position_x` = 4264.423340, `position_y` = -2675.187988, `position_z` = 2.648034, `orientation` = 1.665039 WHERE `guid` = 2558654;
UPDATE `creature` SET `position_x` = 4262.223145, `position_y` = -2675.395996, `position_z` = 2.648034, `orientation` = 1.665039 WHERE `guid` = 2560557;
UPDATE `creature` SET `position_x` = 4259.628906, `position_y` = -2675.510742, `position_z` = 2.990047, `orientation` = 1.684674 WHERE `guid` = 2559541;
UPDATE `creature` SET `position_x` = 4260.542969, `position_y` = -2678.080566, `position_z` = 3.941710, `orientation` = 6.181078 WHERE `guid` = 2559542;
UPDATE `creature` SET `position_x` = 4256.560059, `position_y` = -2673.408203, `position_z` = 2.086018, `orientation` = 4.326756 WHERE `guid` = 2559543;
REPLACE INTO `creature` VALUES (2581328,61771,0,0,0,0,4104.81,-2718.28,23.7892,5.98789,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581329,61771,0,0,0,0,4106.87,-2710.39,23.6632,5.8151,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581330,61771,0,0,0,0,4213.83,-2733.02,9.23899,0.126723,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581331,61771,0,0,0,0,4212.4,-2726.17,9.36255,0.177774,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2560416;
DELETE FROM creature_addon WHERE guid=2560416;
DELETE FROM creature_movement WHERE id=2560416;
DELETE FROM game_event_creature WHERE guid=2560416;
DELETE FROM game_event_creature_data WHERE guid=2560416;
DELETE FROM creature_battleground WHERE guid=2560416;
DELETE FROM creature WHERE guid=2560417;
DELETE FROM creature_addon WHERE guid=2560417;
DELETE FROM creature_movement WHERE id=2560417;
DELETE FROM game_event_creature WHERE guid=2560417;
DELETE FROM game_event_creature_data WHERE guid=2560417;
DELETE FROM creature_battleground WHERE guid=2560417;
REPLACE INTO `creature` VALUES (2581332,61771,0,0,0,0,4218.14,-2679.43,4.83762,5.01975,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581333,61771,0,0,0,0,4230.34,-2677.17,4.47468,4.56422,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2560414;
DELETE FROM creature_addon WHERE guid=2560414;
DELETE FROM creature_movement WHERE id=2560414;
DELETE FROM game_event_creature WHERE guid=2560414;
DELETE FROM game_event_creature_data WHERE guid=2560414;
DELETE FROM creature_battleground WHERE guid=2560414;
DELETE FROM creature WHERE guid=2560415;
DELETE FROM creature_addon WHERE guid=2560415;
DELETE FROM creature_movement WHERE id=2560415;
DELETE FROM game_event_creature WHERE guid=2560415;
DELETE FROM game_event_creature_data WHERE guid=2560415;
DELETE FROM creature_battleground WHERE guid=2560415;
DELETE FROM creature WHERE guid=2560411;
DELETE FROM creature_addon WHERE guid=2560411;
DELETE FROM creature_movement WHERE id=2560411;
DELETE FROM game_event_creature WHERE guid=2560411;
DELETE FROM game_event_creature_data WHERE guid=2560411;
DELETE FROM creature_battleground WHERE guid=2560411;
DELETE FROM creature WHERE guid=2560437;
DELETE FROM creature_addon WHERE guid=2560437;
DELETE FROM creature_movement WHERE id=2560437;
DELETE FROM game_event_creature WHERE guid=2560437;
DELETE FROM game_event_creature_data WHERE guid=2560437;
DELETE FROM creature_battleground WHERE guid=2560437;
REPLACE INTO `creature` VALUES (2581334,61771,0,0,0,0,4263.71,-2786.54,6.24601,0.122788,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581335,61771,0,0,0,0,4262.59,-2770.26,6.44655,0.118861,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2560410;
DELETE FROM creature_addon WHERE guid=2560410;
DELETE FROM creature_movement WHERE id=2560410;
DELETE FROM game_event_creature WHERE guid=2560410;
DELETE FROM game_event_creature_data WHERE guid=2560410;
DELETE FROM creature_battleground WHERE guid=2560410;
REPLACE INTO `creature` VALUES (2581336,61771,0,0,0,0,4315.3,-2853.5,5.90927,2.2355,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581337,61771,0,0,0,0,4308.12,-2858.82,6.07404,2.20801,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581338,61771,0,0,0,0,4408.25,-2763.13,0.905389,1.1972,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581339,61771,0,0,0,0,4319.68,-2864.84,7.10719,5.55222,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,1, 4324.882324,-2869.956787,7.494709, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,2, 4332.389648,-2877.041016,7.527529, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,3, 4342.710938,-2888.322510,7.640082, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,4, 4353.321777,-2900.681152,7.211620, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,5, 4362.204590,-2910.926270,7.453633, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,6, 4369.188965,-2918.977295,7.534451, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,7, 4376.070801,-2917.112793,7.660994, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,8, 4386.601074,-2914.078613,7.244566, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,9, 4395.754883,-2912.449707,7.134915, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,10, 4408.833984,-2913.517334,7.141037, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,11, 4413.695312,-2914.025879,7.197023, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,12, 4417.470703,-2906.708984,7.139420, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,13, 4422.960449,-2894.439941,7.175825, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,14, 4433.546387,-2882.459961,7.497127, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,15, 4438.298340,-2877.745850,7.932684, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,16, 4438.069336,-2870.103027,8.170223, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,17, 4435.948242,-2863.496582,8.668699, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,18, 4432.552246,-2857.427246,8.902566, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,19, 4427.679199,-2852.413086,8.811610, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,20, 4421.266602,-2847.989746,8.196987, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,21, 4414.526855,-2843.901123,7.421694, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,22, 4406.788086,-2840.157959,7.014873, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,23, 4399.223633,-2837.346436,6.610431, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,24, 4393.387695,-2838.136963,6.535049, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,25, 4384.751953,-2839.377686,6.501933, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,26, 4375.301270,-2840.617188,6.496289, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,27, 4365.278809,-2842.359131,6.434352, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,28, 4354.381836,-2844.882812,6.222152, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,29, 4345.234863,-2848.307861,6.122700, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,30, 4334.011230,-2854.608643,6.179968, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,31, 4324.690430,-2860.719482,6.579780, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581339,32, 4321.925293,-2862.808105,7.012593, 100);
REPLACE INTO `creature` VALUES (2581339,61771,0,0,0,0,4319.68,-2864.84,7.10719,5.55222,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581340,61771,0,0,0,0,4395.17,-2889.88,6.47638,4.72362,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581341,61771,0,0,0,0,4385.76,-2890.28,6.55037,4.7786,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581342,61771,0,0,0,0,4439.41,-3126.99,8.81507,5.24041,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581343,61771,0,0,0,0,4432.74,-3131.04,8.84402,5.03227,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581344,61771,0,0,0,0,4434.89,-3128.57,8.84201,5.31895,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581343, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581344, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581342, 45);
REPLACE INTO `creature` VALUES (2581345,61773,0,0,0,0,4440.92,-3163.03,15.0685,1.73752,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581346,61773,0,0,0,0,4443.96,-3162.51,15.0685,1.73752,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581347,61773,0,0,0,0,4447.87,-3161.86,15.0685,1.73752,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 4445.079102, `position_y` = -3161.992432, `position_z` = 14.855755, `orientation` = 1.639348 WHERE `guid` = 2581346;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581346, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581345, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581347, 45);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581347, 44);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581346, 44);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581345, 44);
UPDATE `creature` SET `position_x` = 4446.260742, `position_y` = -3139.117920, `position_z` = 9.667446, `orientation` = 4.906597 WHERE `guid` = 2581342;
UPDATE `creature` SET `position_x` = 4442.362793, `position_y` = -3140.092773, `position_z` = 10.008981, `orientation` = 4.859472 WHERE `guid` = 2581344;
UPDATE `creature` SET `position_x` = 4437.822754, `position_y` = -3141.047119, `position_z` = 9.596040, `orientation` = 5.040107 WHERE `guid` = 2581343;
UPDATE `creature` SET `position_x` = 4443.465820, `position_y` = -3151.348389, `position_z` = 12.512789, `orientation` = 1.647197 WHERE `guid` = 2581346;
UPDATE `creature` SET `position_x` = 4447.151367, `position_y` = -3151.693604, `position_z` = 12.597716, `orientation` = 1.576513 WHERE `guid` = 2581347;
UPDATE `creature` SET `position_x` = 4440.586914, `position_y` = -3151.959961, `position_z` = 12.536819, `orientation` = 1.847476 WHERE `guid` = 2581345;
REPLACE INTO `creature` VALUES (2581348,61773,0,0,0,0,4442.41,-3156.29,13.7064,1.54902,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581349,61773,0,0,0,0,4446.4,-3156.26,13.8004,1.60007,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581348, 44);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581349, 44);
DELETE FROM creature WHERE guid=2581349;
DELETE FROM creature_addon WHERE guid=2581349;
DELETE FROM creature_movement WHERE id=2581349;
DELETE FROM game_event_creature WHERE guid=2581349;
DELETE FROM game_event_creature_data WHERE guid=2581349;
DELETE FROM creature_battleground WHERE guid=2581349;
DELETE FROM creature WHERE guid=2581348;
DELETE FROM creature_addon WHERE guid=2581348;
DELETE FROM creature_movement WHERE id=2581348;
DELETE FROM game_event_creature WHERE guid=2581348;
DELETE FROM game_event_creature_data WHERE guid=2581348;
DELETE FROM creature_battleground WHERE guid=2581348;
REPLACE INTO `creature` VALUES (2581350,61771,0,0,0,0,4339.29,-3043.07,22.9138,0.107803,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581351,61771,0,0,0,0,4338.41,-3036.44,22.919,0.28059,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581352,61771,0,0,0,0,4378.02,-3035.46,11.1748,6.23391,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581353,61771,0,0,0,0,4377.66,-3041.2,11.2306,6.2182,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581354,61771,0,0,0,0,4364.87,-2940.67,7.23226,5.10687,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,1, 4366.554688,-2944.683838,7.165339, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,2, 4369.764160,-2950.910400,7.110387, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,3, 4376.882812,-2960.485596,7.106819, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,4, 4383.914551,-2966.351074,7.105260, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,5, 4392.688477,-2971.031982,7.092951, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,6, 4402.969238,-2971.885010,7.057883, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,7, 4411.305664,-2966.969727,7.054177, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,8, 4416.179199,-2960.941650,7.067576, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,9, 4420.333008,-2953.149902,7.107486, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,10, 4421.649902,-2946.157715,7.125521, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,11, 4421.866211,-2938.848389,7.219890, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,12, 4422.112305,-2943.616455,7.146621, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,13, 4420.348145,-2952.239746,7.108378, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,14, 4416.849609,-2959.003418,7.075539, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,15, 4410.941895,-2965.105225,7.056006, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,16, 4402.450195,-2968.766357,7.059993, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,17, 4394.533203,-2969.845947,7.083178, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,18, 4386.998535,-2968.799316,7.104844, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,19, 4377.921875,-2964.686035,7.106887, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,20, 4373.281738,-2959.502197,7.105821, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,21, 4369.942871,-2953.307373,7.107759, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,22, 4368.033691,-2948.760742,7.116394, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581354,23, 4367.117188,-2946.088623,7.141816, 100);
REPLACE INTO `creature` VALUES (2581354,61771,0,0,0,0,4364.87,-2940.67,7.23226,5.10687,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581355,61771,0,0,0,0,4437.76,-2878.71,7.85525,0.492648,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,1, 4444.295410,-2875.885254,8.422365, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,2, 4451.238281,-2873.069336,8.945224, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,3, 4459.080078,-2868.593994,9.254482, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,4, 4464.482910,-2861.099121,9.129769, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,5, 4468.300781,-2853.966064,9.122785, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,6, 4473.011719,-2847.310303,9.139398, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,7, 4478.777344,-2841.334229,9.116070, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,8, 4485.228027,-2836.633789,9.089876, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,9, 4492.000977,-2831.863281,9.309699, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,10, 4497.744141,-2831.923584,9.705905, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,11, 4506.089844,-2834.037842,10.180566, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,12, 4514.876465,-2838.059814,9.890859, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,13, 4523.461914,-2843.332520,9.424458, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,14, 4529.799805,-2847.389648,9.040073, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,15, 4537.599609,-2852.383301,8.416143, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,16, 4537.599609,-2852.383301,8.416143, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,17, 4550.423828,-2860.474365,7.192097, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,18, 4541.989258,-2855.907227,8.053798, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,19, 4532.020508,-2848.676758,8.861100, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,20, 4532.020508,-2848.676758,8.861100, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,21, 4518.235352,-2839.713623,9.692060, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,22, 4511.124512,-2836.257568,10.079474, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,23, 4501.983398,-2833.188965,10.038874, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,24, 4492.875000,-2832.013428,9.423096, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,25, 4485.603516,-2836.730957,9.089196, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,26, 4477.772461,-2842.572021,9.121360, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,27, 4472.130859,-2848.306152,9.139200, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,28, 4472.130859,-2848.306152,9.139200, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,29, 4462.091797,-2864.165039,9.188516, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,30, 4456.589844,-2869.932861,9.211913, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,31, 4454.482910,-2871.238525,9.130548, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581355,32, 4447.668457,-2874.463623,8.680735, 100);
REPLACE INTO `creature` VALUES (2581355,61771,0,0,0,0,4437.76,-2878.71,7.85525,0.492648,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581356,61771,0,0,0,0,4550.27,-2868.19,6.54074,5.49171,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581357,61771,0,0,0,0,4586.25,-2901.49,4.30559,2.71732,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581358,61771,0,0,0,0,4575.51,-2922.17,4.33678,2.80764,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581359,61771,0,0,0,0,4666.06,-2949.63,3.70232,5.90683,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,1, 4671.296387,-2951.677246,3.698641, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,2, 4684.119629,-2956.690186,3.694015, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,3, 4700.893066,-2963.327393,3.808158, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,4, 4726.350098,-2973.496338,4.122580, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,5, 4751.879395,-2983.499756,4.577477, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,6, 4777.411621,-2993.673340,5.322386, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,7, 4809.595703,-3006.505859,6.831092, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,8, 4789.879883,-2998.089111,5.894032, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,9, 4763.970215,-2987.875244,4.681036, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,10, 4738.289062,-2977.620850,4.329153, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,11, 4699.694336,-2962.512939,3.802670, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581359,12, 4686.811523,-2957.553955,3.694969, 100);
REPLACE INTO `creature` VALUES (2581359,61771,0,0,0,0,4666.06,-2949.63,3.70232,5.90683,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581360,61771,0,0,0,0,4691.59,-2977.38,3.69485,1.68139,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581361,61771,0,0,0,0,4704.72,-2945.68,3.69511,3.77448,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581362,61771,0,0,0,0,4772.02,-2965.2,4.57006,4.29284,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581363,61771,0,0,0,0,4752.34,-3012.85,4.56978,1.23764,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581364,61771,0,0,0,0,4856.94,-2962.53,10.3147,3.97083,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581365,61771,0,0,0,0,4809.52,-3076.11,10.3143,1.38293,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581366,61771,0,0,0,0,4588,-2936.25,3.36796,4.92115,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,1, 4588.787598,-2941.169189,3.380141, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,2, 4589.469238,-2947.448975,3.540930, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,3, 4593.122559,-2954.731445,3.627502, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,4, 4596.510254,-2960.745605,3.634247, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,5, 4601.970703,-2967.676514,3.642823, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,6, 4608.877441,-2972.535400,3.647258, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,7, 4614.595215,-2975.406738,3.649438, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,8, 4619.748535,-2977.457520,3.655698, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,9, 4628.011719,-2978.736328,3.672291, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,10, 4645.136230,-2976.117188,3.683363, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,11, 4653.930176,-2973.415771,3.682422, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,12, 4662.951660,-2968.684814,3.675653, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,13, 4668.696289,-2965.841553,3.674868, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,14, 4668.696289,-2965.841553,3.674868, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,15, 4654.877930,-2972.357666,3.682014, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,16, 4640.743164,-2976.126709,3.683830, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,17, 4626.074219,-2976.526855,3.673254, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,18, 4610.137695,-2973.211914,3.648938, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,19, 4598.292480,-2965.523682,3.634272, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,20, 4590.226562,-2951.998291,3.615705, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581366,21, 4587.814453,-2940.179688,3.311384, 100);
REPLACE INTO `creature` VALUES (2581366,61771,0,0,0,0,4588,-2936.25,3.36796,4.92115,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581367,61771,0,0,0,0,4591.01,-2918.55,4.17819,0.923458,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,1, 4594.539062,-2914.103027,4.066132, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,2, 4600.908691,-2906.519287,3.634137, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,3, 4611.284180,-2896.043701,3.542625, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,4, 4623.569336,-2889.586426,3.631287, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,5, 4641.482910,-2888.316162,3.644164, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,6, 4653.200195,-2892.139160,3.650271, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,7, 4662.462402,-2897.567139,3.667990, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,8, 4670.036621,-2905.242920,3.677440, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,9, 4678.032227,-2921.490479,3.677493, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,10, 4680.234863,-2930.274902,3.672096, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,11, 4674.186523,-2918.080566,3.684489, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,12, 4665.895996,-2905.401123,3.682321, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,13, 4652.249023,-2893.402588,3.654899, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,14, 4640.015137,-2888.875244,3.647323, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,15, 4633.193359,-2888.539551,3.645003, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,16, 4615.732422,-2892.735107,3.623458, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581367,17, 4605.250977,-2899.949219,3.340597, 100);
REPLACE INTO `creature` VALUES (2581367,61771,0,0,0,0,4591.01,-2918.55,4.17819,0.923458,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581368,61771,0,0,0,0,4530.65,-2956.44,5.85227,1.53215,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581369,61771,0,0,0,0,4469.69,-3025.23,8.61176,3.3582,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,1, 4463.126953,-3026.751709,8.514275, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,2, 4453.170898,-3027.970947,8.806698, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,3, 4450.693359,-3027.918945,8.944122, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,4, 4434.351074,-3025.554932,9.585510, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,5, 4427.703613,-3022.771729,10.316106, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,6, 4420.729980,-3017.449951,11.333153, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,7, 4413.926270,-3012.500244,11.117234, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,8, 4408.207520,-3008.484131,10.399310, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,9, 4404.094727,-3001.308838,10.243939, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,10, 4404.094727,-3001.308838,10.243939, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,11, 4402.130371,-2995.054443,10.372566, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,12, 4402.923340,-3004.518555,10.043214, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,13, 4405.189453,-3017.201416,10.092315, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,14, 4408.792969,-3037.029297,10.003353, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,15, 4407.208496,-3046.183838,9.912811, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,16, 4405.311523,-3060.046631,9.874372, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,17, 4409.457520,-3063.354004,9.784581, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,18, 4416.867676,-3069.474609,9.965105, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,19, 4426.121582,-3074.934326,11.089800, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,20, 4415.915527,-3069.465820,9.882108, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,21, 4407.027344,-3063.057861,9.847783, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,22, 4402.738281,-3062.783936,10.007578, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,23, 4398.657227,-3069.096680,10.437778, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,24, 4392.343750,-3081.251953,11.898625, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,25, 4393.896973,-3093.364258,12.329148, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,26, 4394.437988,-3094.462158,12.205232, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,27, 4405.267578,-3100.783691,10.438631, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,28, 4406.449707,-3101.017578,10.317113, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,29, 4410.783203,-3101.213867,9.983442, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,30, 4396.179199,-3096.344238,11.910005, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,31, 4393.669922,-3093.561768,12.337242, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,32, 4392.527832,-3084.417480,12.228905, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,33, 4396.007812,-3073.740479,10.862955, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,34, 4401.091309,-3061.458008,10.034327, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,35, 4408.233887,-3040.240967,9.980771, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,36, 4408.229492,-3033.956299,10.021216, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,37, 4406.243652,-3021.573242,10.199103, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,38, 4405.759277,-3008.376465,10.162051, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,39, 4414.723633,-3013.084717,11.192383, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,40, 4424.864258,-3020.511230,10.686450, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,41, 4434.579590,-3026.218506,9.554254, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,42, 4445.924805,-3028.275146,9.161193, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581369,43, 4460.922363,-3027.170166,8.521937, 100);
REPLACE INTO `creature` VALUES (2581369,61771,0,0,0,0,4469.69,-3025.23,8.61176,3.3582,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581370,61771,0,0,0,0,4350.48,-3042.02,20.2894,0.0280802,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581371,61771,0,0,0,0,4350.28,-3034.96,20.2894,0.0280802,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581372,61771,0,0,0,0,4312.08,-3066.66,22.9231,1.85805,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581373,61771,0,0,0,0,4305.11,-3017.02,22.9238,4.68156,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581374,61771,0,0,0,0,4317.87,-3090.71,36.4835,3.25213,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581375,61771,0,0,0,0,4310.28,-3090.85,36.4835,0.000572205,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581376,61771,0,0,0,0,4286.24,-2835.28,5.28183,0.506368,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581377,61771,0,0,0,0,4461.71,-2852.74,9.11115,5.54548,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581378,61771,0,0,0,0,4534.14,-2795,13.7856,3.72729,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581379,61771,0,0,0,0,4537.21,-2800.83,13.9875,3.62911,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581380,61771,0,0,0,0,4519.26,-2813.18,9.3556,3.73907,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581381,61771,0,0,0,0,4516.22,-2806.73,9.36299,3.73121,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581382,61771,0,0,0,0,4413.47,-2938.35,7.13719,0.192983,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581383,61771,0,0,0,0,4373.27,-2939.4,7.1687,3.21284,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581384,61770,0,0,0,0,4919.52,-3250.17,3.13275,1.15351,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581385,61770,0,0,0,0,4922.16,-3248.59,3.18975,0.607655,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581386,61770,0,0,0,0,4933.74,-3240.81,3.39759,0.552677,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581387,61770,0,0,0,0,4945.83,-3234.24,4.18354,0.489845,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581388,61770,0,0,0,0,4959.94,-3236.23,4.95761,0.77259,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581389,61770,0,0,0,0,4920.13,-3270.7,3.43183,0.588021,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581390,61770,0,0,0,0,4920.13,-3270.7,3.43183,0.588021,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581391,61770,0,0,0,0,4941.27,-3254.55,3.34907,0.713685,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581392,61770,0,0,0,0,4913.28,-3266.56,5.48027,0.603729,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581393,61770,0,0,0,0,5113.15,-3181.72,3.88995,2.50832,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581394,61770,0,0,0,0,5113.15,-3181.72,3.88995,2.418,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581395,61770,0,0,0,0,5098.42,-3168.09,3.81241,2.30412,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581396,61770,0,0,0,0,5078.82,-3144.04,5.51543,2.10384,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2581394;
DELETE FROM creature_addon WHERE guid=2581394;
DELETE FROM creature_movement WHERE id=2581394;
DELETE FROM game_event_creature WHERE guid=2581394;
DELETE FROM game_event_creature_data WHERE guid=2581394;
DELETE FROM creature_battleground WHERE guid=2581394;
REPLACE INTO `creature` VALUES (2581397,61770,0,0,0,0,5125.49,-3170.33,3.98989,2.39444,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581398,61770,0,0,0,0,5125.49,-3170.33,3.98989,2.39444,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581399,61770,0,0,0,0,5105.68,-3153.02,3.91558,2.44549,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581400,61770,0,0,0,0,5095.7,-3145.12,4.59065,2.49261,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581401,80235,0,0,0,0,4331.9,-2877.7,7.60337,5.46377,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581402,80235,0,0,0,0,4338.09,-2882.61,7.56193,5.39701,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581403,80235,0,0,0,0,4335.21,-2881.18,7.61422,2.71487,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581404,80235,0,0,0,0,4336.51,-2878.34,7.61422,3.68877,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581405,80235,0,0,0,0,4336.26,-2882.89,7.64564,2.64419,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581406,80235,0,0,0,0,4333.52,-2881.69,7.70414,2.14153,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581407,80221,0,0,0,0,4233.71,-2779,6.81145,3.42565,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2581407;
DELETE FROM creature_addon WHERE guid=2581407;
DELETE FROM creature_movement WHERE id=2581407;
DELETE FROM game_event_creature WHERE guid=2581407;
DELETE FROM game_event_creature_data WHERE guid=2581407;
DELETE FROM creature_battleground WHERE guid=2581407;
REPLACE INTO `creature` VALUES (2581408,80216,0,0,0,0,4242.45,-2792.7,6.61038,4.45453,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2560412;
DELETE FROM creature_addon WHERE guid=2560412;
DELETE FROM creature_movement WHERE id=2560412;
DELETE FROM game_event_creature WHERE guid=2560412;
DELETE FROM game_event_creature_data WHERE guid=2560412;
DELETE FROM creature_battleground WHERE guid=2560412;
DELETE FROM creature WHERE guid=2560413;
DELETE FROM creature_addon WHERE guid=2560413;
DELETE FROM creature_movement WHERE id=2560413;
DELETE FROM game_event_creature WHERE guid=2560413;
DELETE FROM game_event_creature_data WHERE guid=2560413;
DELETE FROM creature_battleground WHERE guid=2560413;
REPLACE INTO `creature` VALUES (2581409,80216,0,0,0,0,4236.09,-2768.01,6.54055,4.54483,120,120,0,100,100,0,0,0);

-- Changes by DRAGU
DELETE FROM creature WHERE guid=2560550;
DELETE FROM creature_addon WHERE guid=2560550;
DELETE FROM creature_movement WHERE id=2560550;
DELETE FROM game_event_creature WHERE guid=2560550;
DELETE FROM game_event_creature_data WHERE guid=2560550;
DELETE FROM creature_battleground WHERE guid=2560550;

-- Changes by WOJI
DELETE FROM creature WHERE guid=2581401;
DELETE FROM creature_addon WHERE guid=2581401;
DELETE FROM creature_movement WHERE id=2581401;
DELETE FROM game_event_creature WHERE guid=2581401;
DELETE FROM game_event_creature_data WHERE guid=2581401;
DELETE FROM creature_battleground WHERE guid=2581401;
DELETE FROM creature WHERE guid=2581404;
DELETE FROM creature_addon WHERE guid=2581404;
DELETE FROM creature_movement WHERE id=2581404;
DELETE FROM game_event_creature WHERE guid=2581404;
DELETE FROM game_event_creature_data WHERE guid=2581404;
DELETE FROM creature_battleground WHERE guid=2581404;
DELETE FROM creature WHERE guid=2581403;
DELETE FROM creature_addon WHERE guid=2581403;
DELETE FROM creature_movement WHERE id=2581403;
DELETE FROM game_event_creature WHERE guid=2581403;
DELETE FROM game_event_creature_data WHERE guid=2581403;
DELETE FROM creature_battleground WHERE guid=2581403;
DELETE FROM creature WHERE guid=2581406;
DELETE FROM creature_addon WHERE guid=2581406;
DELETE FROM creature_movement WHERE id=2581406;
DELETE FROM game_event_creature WHERE guid=2581406;
DELETE FROM game_event_creature_data WHERE guid=2581406;
DELETE FROM creature_battleground WHERE guid=2581406;
DELETE FROM creature WHERE guid=2581405;
DELETE FROM creature_addon WHERE guid=2581405;
DELETE FROM creature_movement WHERE id=2581405;
DELETE FROM game_event_creature WHERE guid=2581405;
DELETE FROM game_event_creature_data WHERE guid=2581405;
DELETE FROM creature_battleground WHERE guid=2581405;
DELETE FROM creature WHERE guid=2581402;
DELETE FROM creature_addon WHERE guid=2581402;
DELETE FROM creature_movement WHERE id=2581402;
DELETE FROM game_event_creature WHERE guid=2581402;
DELETE FROM game_event_creature_data WHERE guid=2581402;
DELETE FROM creature_battleground WHERE guid=2581402;

-- Changes by DRAGU
DELETE FROM creature WHERE guid=2560422;
DELETE FROM creature_addon WHERE guid=2560422;
DELETE FROM creature_movement WHERE id=2560422;
DELETE FROM game_event_creature WHERE guid=2560422;
DELETE FROM game_event_creature_data WHERE guid=2560422;
DELETE FROM creature_battleground WHERE guid=2560422;

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581410,80235,0,0,0,0,4389.41,-2898.85,7.13405,1.56521,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581411,80235,0,0,0,0,4391.58,-2897.55,7.07306,1.62019,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581412,80235,0,0,0,0,4392.74,-2900.41,7.12152,1.56913,120,120,0,100,100,0,0,0);

-- Changes by DRAGU
UPDATE `creature` SET `position_x` = 4223.920898, `position_y` = -2621.122803, `position_z` = 26.547020, `orientation` = 4.613489 WHERE `guid` = 2560418;

-- Changes by WOJI
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581412, 398);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581410, 398);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581411, 398);
REPLACE INTO `creature` VALUES (2581413,80235,0,0,0,0,4412.5,-2927.1,7.22095,3.93711,120,120,0,100,100,0,0,0);

-- Changes by DRAGU
UPDATE `creature` SET `position_x` = 4247.758789, `position_y` = -2533.606445, `position_z` = 65.089767, `orientation` = 4.339202 WHERE `guid` = 2558663;
UPDATE `creature` SET `position_x` = 4260.679199, `position_y` = -2552.936768, `position_z` = 65.104965, `orientation` = 4.032590 WHERE `guid` = 2558338;

-- Changes by WOJI
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581413, 1);

-- Changes by DRAGU
UPDATE `creature` SET `position_x` = 4260.780273, `position_y` = -2554.395264, `position_z` = 65.092735, `orientation` = 1.648905 WHERE `guid` = 2558339;
UPDATE `creature` SET `position_x` = 4258.996582, `position_y` = -2553.886230, `position_z` = 65.072021, `orientation` = 0.047473 WHERE `guid` = 2558340;
UPDATE `creature` SET `position_x` = 4252.655273, `position_y` = -2574.244873, `position_z` = 64.792732, `orientation` = 2.170409 WHERE `guid` = 2561050;

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581414,80235,0,0,0,0,4410.86,-2957.86,7.07667,2.86504,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581414, 1);
REPLACE INTO `creature` VALUES (2581415,80235,0,0,0,0,4415.53,-3015.07,11.2855,4.77749,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581415, 398);
REPLACE INTO `creature` VALUES (2581416,80235,0,0,0,0,4379.47,-2973.27,7.10686,2.4048,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581417,80235,0,0,0,0,4376.95,-2971.48,7.10734,5.7663,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581417, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581416, 1);
REPLACE INTO `creature` VALUES (2581418,80235,0,0,0,0,4500.97,-2856.13,9.91248,5.66499,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581419,80235,0,0,0,0,4512.59,-2862.75,9.92625,4.1099,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2581418;
DELETE FROM creature_addon WHERE guid=2581418;
DELETE FROM creature_movement WHERE id=2581418;
DELETE FROM game_event_creature WHERE guid=2581418;
DELETE FROM game_event_creature_data WHERE guid=2581418;
DELETE FROM creature_battleground WHERE guid=2581418;
REPLACE INTO `creature` VALUES (2581420,80235,0,0,0,0,4499.9,-2855.17,10.6953,6.0027,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581420, 1);
REPLACE INTO `creature` VALUES (2581421,80235,0,0,0,0,4521.25,-2882.48,10.3298,3.06141,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581421, 1);

-- Changes by DRAGU
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581421, 4);
UPDATE `creature` SET `position_x` = 4520.955078, `position_y` = -2882.484863, `position_z` = 9.878027, `orientation` = 3.128307 WHERE `guid` = 2581421;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581421, 4);
UPDATE `creature` SET `position_x` = 4521.997559, `position_y` = -2882.495850, `position_z` = 9.883510, `orientation` = 3.159401 WHERE `guid` = 2581421;

-- Changes by WOJI
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581421, 1);

-- Changes by DRAGU
UPDATE `creature` SET `position_x` = 4521.526855, `position_y` = -2882.517822, `position_z` = 10.525108, `orientation` = 3.201278 WHERE `guid` = 2581421;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581421, 1);
UPDATE `creature` SET `position_x` = 4521.501465, `position_y` = -2882.491699, `position_z` = 9.883754, `orientation` = 3.040271 WHERE `guid` = 2581421;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581421, 4);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581421, 6);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581421, 5);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581422,80235,0,0,0,0,4518.39,-2880.36,9.86602,5.46471,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581422, 1);
REPLACE INTO `creature` VALUES (2581423,80235,0,0,0,0,4501.9,-2906.37,10.7066,3.4109,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581423, 7);

-- Changes by DRAGU
UPDATE `creature` SET `position_x` = 4502.294922, `position_y` = -2906.158936, `position_z` = 10.706207, `orientation` = 3.417834 WHERE `guid` = 2581423;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581423, 5);

-- Changes by WOJI
REPLACE INTO `creature` VALUES (2581424,80235,0,0,0,0,4508.68,-2816.44,9.15025,3.80752,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,1, 4505.979492,-2818.666748,9.100657, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,2, 4500.533691,-2823.065186,9.307687, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,3, 4492.405762,-2829.712646,9.243965, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,4, 4487.006348,-2834.167236,9.083087, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,5, 4481.669434,-2838.695801,9.101017, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,6, 4476.498047,-2843.411377,9.124115, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,7, 4469.035156,-2849.963379,9.133497, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,8, 4463.826660,-2849.099121,9.651658, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,9, 4459.365723,-2843.709717,10.411277, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,10, 4454.939941,-2838.287598,10.421799, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,11, 4449.764160,-2832.058350,10.408200, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,12, 4449.764160,-2832.058350,10.408200, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,13, 4445.794434,-2837.822754,10.392193, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,14, 4445.497070,-2838.281006,10.389951, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,15, 4448.598633,-2836.660156,10.406411, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,16, 4456.293945,-2833.230957,10.403469, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,17, 4456.426270,-2833.651367,10.403469, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,18, 4457.251465,-2837.052002,10.398745, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,19, 4458.996094,-2841.877197,10.402826, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,20, 4460.731445,-2844.915039,10.421350, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,21, 4465.865234,-2850.450195,9.126207, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,22, 4468.824707,-2850.039307,9.129952, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,23, 4471.998047,-2847.713623,9.137710, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,24, 4475.747559,-2843.895508,9.129823, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581424,25, 4478.424316,-2841.640625,9.118692, 100);
REPLACE INTO `creature` VALUES (2581424,80235,0,0,0,0,4508.68,-2816.44,9.15025,3.80752,300,300,0,100,100,2,0,0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2581425,80235,0,0,0,0,4473.96,-2889.74,10.7065,4.96274,120,120,0,100,100,0,0,0);

-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017348, 2002233, 0, 4446.54, -2829.01, 11.5326, 4.31801, 0, 0, 0.831937, -0.55487, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGU
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581425, 5);

-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017348, 2002233, 0, 4446.54, -2829.01, 11.5326, 3.89389, 0, 0, 0.930086, -0.367341, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017348, 2002233, 0, 4446.54, -2829.41, 11.5326, 3.89389, 0, 0, 0.930086, -0.367341, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017348';
DELETE FROM game_event_gameobject WHERE guid = '5017348';
DELETE FROM gameobject_battleground WHERE guid = '5017348';
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2829.03, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 1.800000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 1.000000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.23, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2829.03, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2829.43, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4448.36, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4448.76, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4449.16, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4449.56, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4449.16, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4448.76, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4448.36, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.56, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.16, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.16, -2829.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.16, -2829.43, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.56, -2829.43, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.56, -2829.03, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.56, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.23, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGU
REPLACE INTO `creature` VALUES (2581426,80235,0,0,0,0,4394.71,-2940.75,8.46312,5.25254,120,120,0,100,100,0,0,0);

-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4448.36, -2828.23, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.96, -2828.23, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.56, -2828.23, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4447.16, -2828.23, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGU
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581426, 4);

-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2828.23, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2827.83, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2828.23, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2828.63, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGU
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581426, 6);

-- Changes by WOJI
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2829.03, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 0.400000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2829.03, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);

-- Changes by DRAGU
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581426, 5);

-- Changes by WOJI
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2829.03, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2829.03, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417382434836229, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5017349, 2003888, 0, 4446.76, -2829.03, 11.5286, 4.34942, 0, 0, 0.82312, -0.567867, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4445.86, -2828.59, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417414579982086, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4445.86, -2828.59, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417414579982086, 1.000000);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4445.86, -2828.59, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417414579982086, 0.800000);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4445.86, -2828.59, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417414579982086, 0.600000);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4445.86, -2828.59, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417414579982086, 0.400000);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4445.86, -2828.59, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417414579982086, 0.200000);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4445.86, -2828.59, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4445.86, -2828.39, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.06, -2828.39, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.06, -2828.59, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.06, -2828.79, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.06, -2828.99, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.06, -2829.19, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.26, -2829.19, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.46, -2829.19, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.26, -2829.19, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.46, -2829.19, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.26, -2829.19, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417414579982086, 0.400000);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.26, -2829.19, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417414579982086, 0.200000);
REPLACE INTO `gameobject` VALUES ( 5017350, 2005804, 0, 4446.26, -2829.19, 11.5339, 2.2092, 0, 0, 0.893285, 0.449491, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017349';
DELETE FROM game_event_gameobject WHERE guid = '5017349';
DELETE FROM gameobject_battleground WHERE guid = '5017349';
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.4, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.2, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.4, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.6, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 1.200000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 1.400000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 1.600000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 1.800000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 2.000000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 2.200000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 2.400000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 2.600000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 2.800000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 3.000000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 3.200000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 3.400000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 3.600000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 5.28481, 0, 0, 0.478712, -0.877972, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 3.400000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 3.600000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `object_scaling` (`fullGuid`, `scale`) VALUES (17370417401174986503, 3.800000);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.77, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.57, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.37, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.37, -2828.8, 11.7354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.37, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.37, -2828.8, 11.3354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017351, 2005005, 0, 4446.37, -2828.8, 11.5354, 2.7951, 0, 0, 0.98503, 0.172381, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2581427,80235,0,0,0,0,4396.79,-2946.22,9.62615,1.71907,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581427, 1);
REPLACE INTO `creature` VALUES (2581428,80235,0,0,0,0,4398.82,-2953.87,9.0857,1.93505,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 4398.868164, `position_y` = -2954.012939, `position_z` = 8.665606, `orientation` = 1.758329 WHERE `guid` = 2581428;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581428, 5);
REPLACE INTO `creature` VALUES (2581429,80235,0,0,0,0,4393.01,-2973.99,7.09066,5.04521,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,1, 4394.346680,-2977.333496,7.085795, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,2, 4399.122070,-2986.682861,8.467499, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,3, 4404.108887,-2995.922119,10.411121, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,4, 4407.726074,-3001.913574,10.342581, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,5, 4411.607910,-3007.739014,10.878862, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,6, 4415.390625,-3014.014160,11.258887, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,7, 4412.975586,-3011.481201,11.053765, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,8, 4408.231445,-3004.811523,10.425599, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,9, 4405.283691,-2998.957031,10.346882, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,10, 4403.329590,-2990.820312,9.691655, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,11, 4403.121094,-2986.024902,8.167440, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,12, 4405.506836,-2978.184082,7.053880, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,13, 4408.167480,-2974.447754,7.043942, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,14, 4412.766602,-2970.272461,7.048621, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,15, 4414.182617,-2968.210449,7.051510, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,16, 4411.817871,-2962.597900,7.059037, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,17, 4409.925293,-2959.525391,7.068942, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,18, 4409.925293,-2959.525391,7.068942, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,19, 4404.051758,-2963.331299,7.065745, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,20, 4401.178711,-2965.125000,7.066960, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,21, 4396.059082,-2964.570312,7.084090, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,22, 4396.124023,-2959.016602,8.459773, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,23, 4395.907715,-2955.523193,8.450198, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,24, 4395.924316,-2950.497070,8.451395, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,25, 4401.196777,-2944.000977,8.433739, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,26, 4400.358887,-2938.095459,8.429567, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,27, 4396.621582,-2934.759521,8.426273, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,28, 4395.608398,-2932.031494,8.460306, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,29, 4394.877930,-2925.070312,7.905665, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,30, 4394.355957,-2920.178467,7.134116, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,31, 4392.127441,-2918.024658,7.134116, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,32, 4382.002441,-2919.925293,7.458954, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,33, 4381.598145,-2921.058594,7.470662, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,34, 4381.412109,-2927.488525,7.485344, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,35, 4382.406738,-2924.132568,7.445991, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,36, 4383.672363,-2921.622559,7.401353, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,37, 4385.164551,-2920.187744,7.336839, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,38, 4389.506348,-2918.078613,7.158502, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,39, 4394.188965,-2917.781494,7.134192, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,40, 4397.687988,-2917.845215,7.134192, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,41, 4403.794922,-2918.150879,7.135282, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,42, 4407.419922,-2919.597900,7.137492, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,43, 4409.995117,-2922.649658,7.160919, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,44, 4410.767578,-2925.247559,7.194186, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,45, 4410.504395,-2926.283447,7.173678, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,46, 4407.635254,-2921.634521,7.140971, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,47, 4404.531250,-2918.604492,7.137805, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,48, 4400.113281,-2917.901611,7.136308, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,49, 4397.215332,-2920.406982,7.134914, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,50, 4396.378418,-2923.230225,7.134914, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,51, 4396.237305,-2926.726562,8.341242, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,52, 4396.117676,-2932.516113,8.445424, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,53, 4397.190918,-2935.341309,8.422164, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,54, 4399.032715,-2937.921631,8.429184, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,55, 4401.408691,-2941.322754,8.431046, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,56, 4402.174316,-2945.824951,8.428041, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,57, 4400.549805,-2947.558838,8.429650, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,58, 4398.629883,-2946.627930,8.438044, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,59, 4398.629883,-2946.627930,8.438044, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,60, 4399.685547,-2949.498779,8.425859, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,61, 4399.114258,-2950.158936,8.424442, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,62, 4395.650391,-2954.843994,8.459751, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,63, 4395.542969,-2955.712158,8.458111, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,64, 4395.312500,-2962.705322,7.285591, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,65, 4395.099609,-2964.768066,7.090137, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581429,66, 4394.264648,-2968.166992,7.087084, 100);
REPLACE INTO `creature` VALUES (2581429,80235,0,0,0,0,4393.01,-2973.99,7.09066,5.04521,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2558316;
DELETE FROM creature_addon WHERE guid=2558316;
DELETE FROM creature_movement WHERE id=2558316;
DELETE FROM game_event_creature WHERE guid=2558316;
DELETE FROM game_event_creature_data WHERE guid=2558316;
DELETE FROM creature_battleground WHERE guid=2558316;
DELETE FROM creature WHERE guid=2558315;
DELETE FROM creature_addon WHERE guid=2558315;
DELETE FROM creature_movement WHERE id=2558315;
DELETE FROM game_event_creature WHERE guid=2558315;
DELETE FROM game_event_creature_data WHERE guid=2558315;
DELETE FROM creature_battleground WHERE guid=2558315;
UPDATE `creature` SET `position_x` = 4363.016113, `position_y` = -2835.970459, `position_z` = 6.166880, `orientation` = 4.897521 WHERE `guid` = 2560672;
UPDATE `creature` SET `position_x` = 4372.794922, `position_y` = -2835.820801, `position_z` = 6.536550, `orientation` = 4.595149 WHERE `guid` = 2560664;
UPDATE `creature` SET `position_x` = 4370.437988, `position_y` = -2833.300049, `position_z` = 6.907559, `orientation` = 4.968222 WHERE `guid` = 2560866;
UPDATE `creature` SET `position_x` = 4367.632324, `position_y` = -2833.735596, `position_z` = 6.482131, `orientation` = 5.160646 WHERE `guid` = 2560872;
UPDATE `creature` SET `position_x` = 4364.725098, `position_y` = -2834.758057, `position_z` = 6.278888, `orientation` = 5.364861 WHERE `guid` = 2560867;
UPDATE `creature` SET `position_x` = 4370.400879, `position_y` = -2834.249268, `position_z` = 6.750859, `orientation` = 4.740472 WHERE `guid` = 2560866;
UPDATE `creature` SET `position_x` = 4368.160645, `position_y` = -2835.150146, `position_z` = 6.375159, `orientation` = 4.771887 WHERE `guid` = 2560872;
DELETE FROM creature WHERE guid=2581429;
DELETE FROM creature_addon WHERE guid=2581429;
DELETE FROM creature_movement WHERE id=2581429;
DELETE FROM game_event_creature WHERE guid=2581429;
DELETE FROM game_event_creature_data WHERE guid=2581429;
DELETE FROM creature_battleground WHERE guid=2581429;
REPLACE INTO `creature` VALUES (2581430,80235,0,0,0,0,4406.23,-2973.51,7.04728,1.88948,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,1, 4402.136230,-2971.243896,7.059221, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,2, 4398.137695,-2968.302246,7.070934, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,3, 4396.063965,-2962.524170,7.374544, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,4, 4395.785156,-2957.403564,8.456011, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,5, 4395.676758,-2953.355469,8.460342, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,6, 4393.244141,-2950.298096,8.425687, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,7, 4391.739258,-2946.185303,8.438174, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,8, 4390.894043,-2941.935547,8.437269, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,9, 4392.716309,-2937.916504,8.432323, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,10, 4395.067383,-2932.832520,8.441312, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,11, 4395.634277,-2927.274170,8.458321, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,12, 4396.090332,-2921.473877,7.134525, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,13, 4397.671875,-2918.873535,7.135078, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,14, 4418.214844,-2927.447510,7.542974, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,15, 4420.137695,-2931.126953,7.499075, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,16, 4422.603516,-2945.598389,7.135839, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,17, 4418.359863,-2958.606201,7.081199, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581430,18, 4411.704102,-2967.716553,7.053339, 100);
REPLACE INTO `creature` VALUES (2581430,80235,0,0,0,0,4406.23,-2973.51,7.04728,1.88948,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2581430;
DELETE FROM creature_addon WHERE guid=2581430;
DELETE FROM creature_movement WHERE id=2581430;
DELETE FROM game_event_creature WHERE guid=2581430;
DELETE FROM game_event_creature_data WHERE guid=2581430;
DELETE FROM creature_battleground WHERE guid=2581430;
REPLACE INTO `creature` VALUES (2581431,80235,0,0,0,0,4395.29,-2967.85,7.08335,1.42611,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,1, 4395.475098,-2965.662354,7.086320, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,2, 4395.800781,-2956.823486,8.455895, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,3, 4396.084473,-2950.578125,8.445234, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,4, 4396.059570,-2949.093262,8.446060, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,5, 4393.126953,-2947.566162,8.437139, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,6, 4390.847168,-2943.693359,8.444099, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,7, 4392.491699,-2938.527100,8.434410, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,8, 4395.516113,-2935.107422,8.456326, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,9, 4396.154297,-2928.474609,8.457841, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,10, 4396.989258,-2917.345215,7.134837, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,11, 4401.692871,-2918.318848,7.136182, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,12, 4413.295410,-2925.011719,7.285710, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,13, 4420.133301,-2949.628418,7.110790, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,14, 4414.972656,-2961.292236,7.065361, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581431,15, 4403.990723,-2969.138916,7.057444, 100);
REPLACE INTO `creature` VALUES (2581431,80235,0,0,0,0,4395.29,-2967.85,7.08335,1.42611,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2581431;
DELETE FROM creature_addon WHERE guid=2581431;
DELETE FROM creature_movement WHERE id=2581431;
DELETE FROM game_event_creature WHERE guid=2581431;
DELETE FROM game_event_creature_data WHERE guid=2581431;
DELETE FROM creature_battleground WHERE guid=2581431;
REPLACE INTO `creature` VALUES (2581432,80235,0,0,0,0,4394.8,-2950.73,8.43184,1.7285,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,1, 4392.527344,-2948.195068,8.433122, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,2, 4389.944824,-2944.153320,8.433270, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,3, 4391.577637,-2938.667480,8.432847, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,4, 4394.938477,-2935.072266,8.436561, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,5, 4395.281738,-2929.595459,8.448812, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,6, 4395.862305,-2920.561523,7.134430, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,7, 4395.787598,-2924.209473,7.507173, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,8, 4395.403809,-2930.365479,8.453705, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,9, 4393.202637,-2936.444580,8.427045, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,10, 4391.184082,-2941.272461,8.438949, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,11, 4390.477051,-2947.038818,8.430817, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581432,12, 4392.765137,-2949.673828,8.428604, 100);
REPLACE INTO `creature` VALUES (2581432,80235,0,0,0,0,4394.8,-2950.73,8.43184,1.7285,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2581432;
DELETE FROM creature_addon WHERE guid=2581432;
DELETE FROM creature_movement WHERE id=2581432;
DELETE FROM game_event_creature WHERE guid=2581432;
DELETE FROM game_event_creature_data WHERE guid=2581432;
DELETE FROM creature_battleground WHERE guid=2581432;
REPLACE INTO `creature` VALUES (2581433,80235,0,0,0,0,4343.75,-2920.79,8.3568,3.79017,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581433, 1);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581433,1, 4448.033691,-2833.440186,10.405420, 100);
REPLACE INTO `creature` VALUES (2581434,80235,0,0,0,0,4447.58,-2833.51,10.4088,1.89972,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581434, 1);
REPLACE INTO `creature` VALUES (2581435,80235,0,0,0,0,4551.83,-2896.2,5.88005,5.85419,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,1, 4559.679688,-2899.518311,5.564504, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,2, 4569.071777,-2903.380615,5.186534, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,3, 4581.486816,-2908.470459,4.663876, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,4, 4590.233887,-2911.054199,4.272454, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,5, 4597.306152,-2906.169922,3.860864, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,6, 4597.306152,-2906.169922,3.860864, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,7, 4592.046875,-2917.675781,4.163201, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,8, 4589.673340,-2927.982666,3.780482, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,9, 4573.830566,-2916.522461,4.672635, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,10, 4570.584961,-2915.721436,4.813510, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,11, 4548.231445,-2913.800049,6.359453, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,12, 4539.852539,-2920.720703,6.723776, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,13, 4540.980957,-2911.580078,6.751341, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581435,14, 4545.133301,-2903.918457,5.921890, 100);
UPDATE `creature` SET `position_x` = 4545.133301, `position_y` = -2903.918457, `position_z` = 5.921890, `orientation` = 1.059326 WHERE `guid` = 2581435;
REPLACE INTO `creature` VALUES (2581435,80235,0,0,0,0,4545.13,-2903.92,5.92189,1.05933,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581436,80235,0,0,0,0,4514.49,-2865.38,9.90575,2.42199,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581436, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581419, 1);
REPLACE INTO `creature` VALUES (2581437,80235,0,0,0,0,4405.61,-2777.85,0.273554,4.50721,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,1, 4404.536133,-2785.409668,0.571695, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,2, 4405.168945,-2789.976318,0.831131, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,3, 4408.018066,-2799.116211,2.372944, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,4, 4410.325195,-2806.713867,3.920456, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,5, 4409.675293,-2814.825195,4.834001, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,6, 4407.386230,-2821.851562,5.035414, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,7, 4404.227539,-2829.155518,5.826406, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,8, 4401.452637,-2834.757812,6.497524, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,9, 4404.214844,-2830.062012,5.905444, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,10, 4407.845215,-2823.551270,5.120000, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,11, 4409.998535,-2817.166260,4.893374, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,12, 4410.635742,-2811.760254,4.684167, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,13, 4410.239258,-2804.526367,3.584332, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,14, 4406.605469,-2796.868652,1.783746, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,15, 4404.019043,-2790.682617,0.910994, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581437,16, 4404.700195,-2783.381836,0.465692, 100);
REPLACE INTO `creature` VALUES (2581437,80235,0,0,0,0,4405.61,-2777.85,0.273554,4.50721,300,300,0,100,100,2,0,0);
DELETE FROM creature WHERE guid=2581437;
DELETE FROM creature_addon WHERE guid=2581437;
DELETE FROM creature_movement WHERE id=2581437;
DELETE FROM game_event_creature WHERE guid=2581437;
DELETE FROM game_event_creature_data WHERE guid=2581437;
DELETE FROM creature_battleground WHERE guid=2581437;
REPLACE INTO `creature` VALUES (2581438,80235,0,0,0,0,4413.33,-2806.64,4.95085,4.45615,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581439,80235,0,0,0,0,4413.82,-2809.68,4.65346,1.92716,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581439, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581438, 1);
DELETE FROM creature WHERE guid=2560430;
DELETE FROM creature_addon WHERE guid=2560430;
DELETE FROM creature_movement WHERE id=2560430;
DELETE FROM game_event_creature WHERE guid=2560430;
DELETE FROM game_event_creature_data WHERE guid=2560430;
DELETE FROM creature_battleground WHERE guid=2560430;
DELETE FROM creature WHERE guid=2560429;
DELETE FROM creature_addon WHERE guid=2560429;
DELETE FROM creature_movement WHERE id=2560429;
DELETE FROM game_event_creature WHERE guid=2560429;
DELETE FROM game_event_creature_data WHERE guid=2560429;
DELETE FROM creature_battleground WHERE guid=2560429;
REPLACE INTO `creature` VALUES (2581440,40013,0,0,0,0,4180.36,-2722.78,18.1109,2.97664,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581440,40013,0,0,0,0,4180.36,-2722.78,18.1109,2.97664,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581441,40013,0,0,0,0,4083.78,-2763.22,23.7448,1.29589,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581441,40013,0,0,0,0,4083.78,-2763.22,23.7448,1.29589,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581442,40013,0,0,0,0,4048.64,-2704.49,33.6162,3.16121,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581442,40013,0,0,0,0,4048.64,-2704.49,33.6162,3.16121,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581443,40013,0,0,0,0,4029.61,-2658.11,32.2969,2.12449,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581443,40013,0,0,0,0,4029.61,-2658.11,32.2969,2.12449,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581444,40013,0,0,0,0,3987.61,-2601.89,30.9719,2.17554,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581444,40013,0,0,0,0,3987.61,-2601.89,30.9719,2.17554,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581445,40013,0,0,0,0,3871.56,-2601.5,36.8178,3.70314,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581445,40013,0,0,0,0,3871.56,-2601.5,36.8178,3.70314,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581446,40013,0,0,0,0,3827.76,-2561.63,38.3099,2.20303,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581446,40013,0,0,0,0,3827.76,-2561.63,38.3099,2.20303,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581447,40013,0,0,0,0,3778.68,-2528.47,44.7381,2.78029,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581447,40013,0,0,0,0,3778.68,-2528.47,44.7381,2.78029,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581448,40013,0,0,0,0,3751.52,-2478.65,47.452,1.39014,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581448,40013,0,0,0,0,3751.52,-2478.65,47.452,1.39014,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581449,40013,0,0,0,0,3823.48,-2388.09,39.6062,0.573325,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581449,40013,0,0,0,0,3823.48,-2388.09,39.6062,0.573325,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581450,40013,0,0,0,0,3947.84,-2398.52,5.18738,4.20187,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581450,40013,0,0,0,0,3947.84,-2398.52,5.18738,4.20187,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581451,40013,0,0,0,0,4010.09,-2559.24,24.2687,2.05772,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581451,40013,0,0,0,0,4010.09,-2559.24,24.2687,2.05772,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581452,40013,0,0,0,0,4050.53,-2579.91,25.5361,0.53797,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581452,40013,0,0,0,0,4050.53,-2579.91,25.5361,0.53797,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581453,40013,0,0,0,0,4096.6,-2576.72,25.945,6.08681,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581453,40013,0,0,0,0,4096.6,-2576.72,25.945,6.08681,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581454,40013,0,0,0,0,4077.5,-2637.33,29.3396,5.34853,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581454,40013,0,0,0,0,4077.5,-2637.33,29.3396,5.34853,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581455,40013,0,0,0,0,4143.81,-2693.06,18.4261,0.149192,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581455,40013,0,0,0,0,4143.81,-2693.06,18.4261,0.149192,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581456,40013,0,0,0,0,4306.07,-2803.94,5.01675,0.266986,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581456,40013,0,0,0,0,4306.07,-2803.94,5.01675,0.266986,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581457,40013,0,0,0,0,4370.33,-2999.78,10.9485,4.70842,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581457,40013,0,0,0,0,4370.33,-2999.78,10.9485,4.70842,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581458,40013,0,0,0,0,4354.44,-3094.8,15.4159,3.86336,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581459,40013,0,0,0,0,4346.36,-3096.98,15.3842,3.63166,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581460,40013,0,0,0,0,4337.23,-3108.07,15.2998,4.60948,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581461,40013,0,0,0,0,4338.75,-3113.05,15.614,5.33597,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581462,40013,0,0,0,0,4346.32,-3124.45,16.5524,5.59122,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581463,40013,0,0,0,0,4354.31,-3127.69,16.3728,0.215172,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581464,40013,0,0,0,0,4372.97,-3124.76,13.7647,2.01766,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581464,40013,0,0,0,0,4372.97,-3124.76,13.7647,2.01766,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581463,40013,0,0,0,0,4354.31,-3127.69,16.3728,0.215172,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581462,40013,0,0,0,0,4346.32,-3124.45,16.5524,5.59122,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581461,40013,0,0,0,0,4338.75,-3113.05,15.614,5.33597,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581460,40013,0,0,0,0,4337.23,-3108.07,15.2998,4.60948,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581459,40013,0,0,0,0,4346.36,-3096.98,15.3842,3.63166,300,300,3,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581458,40013,0,0,0,0,4354.44,-3094.8,15.4159,3.86336,300,300,3,100,100,1,0,0);
UPDATE `creature` SET `position_x` = 4280.537109, `position_y` = -2773.296387, `position_z` = 6.148118, `orientation` = 5.457855 WHERE `guid` = 2560425;
REPLACE INTO `creature` VALUES (2559540,80235,0,0,0,0,4289.1,-2579.37,40.0628,0.537516,367,367,3,100,0,1,0,0);
DELETE FROM creature WHERE guid=2559540;
DELETE FROM creature_addon WHERE guid=2559540;
DELETE FROM creature_movement WHERE id=2559540;
DELETE FROM game_event_creature WHERE guid=2559540;
DELETE FROM game_event_creature_data WHERE guid=2559540;
DELETE FROM creature_battleground WHERE guid=2559540;
DELETE FROM creature WHERE guid=2577125;
DELETE FROM creature_addon WHERE guid=2577125;
DELETE FROM creature_movement WHERE id=2577125;
DELETE FROM game_event_creature WHERE guid=2577125;
DELETE FROM game_event_creature_data WHERE guid=2577125;
DELETE FROM creature_battleground WHERE guid=2577125;
DELETE FROM creature WHERE guid=2577128;
DELETE FROM creature_addon WHERE guid=2577128;
DELETE FROM creature_movement WHERE id=2577128;
DELETE FROM game_event_creature WHERE guid=2577128;
DELETE FROM game_event_creature_data WHERE guid=2577128;
DELETE FROM creature_battleground WHERE guid=2577128;
UPDATE `creature` SET `position_x` = 4040.308838, `position_y` = -2483.555420, `position_z` = 9.520743, `orientation` = 2.638262 WHERE `guid` = 2558657;
UPDATE `creature` SET `position_x` = 3915.330811, `position_y` = -2371.367676, `position_z` = 10.870285, `orientation` = 5.069071 WHERE `guid` = 2558657;
UPDATE `creature` SET `position_x` = 4011.851318, `position_y` = -2435.678223, `position_z` = 9.691645, `orientation` = 2.665743 WHERE `guid` = 2561341;
UPDATE `creature` SET `position_x` = 3905.676025, `position_y` = -2365.789551, `position_z` = 10.830721, `orientation` = 5.595280 WHERE `guid` = 2561341;
UPDATE `creature` SET `position_x` = 4006.668213, `position_y` = -2458.042480, `position_z` = 10.499069, `orientation` = 2.763915 WHERE `guid` = 2558656;
UPDATE `creature` SET `position_x` = 3921.409912, `position_y` = -2366.520508, `position_z` = 10.839957, `orientation` = 3.529678 WHERE `guid` = 2558656;
UPDATE `creature` SET `position_x` = 4225.567871, `position_y` = -2672.716064, `position_z` = 3.443861, `orientation` = 4.656724 WHERE `guid` = 2563293;
UPDATE `creature` SET `position_x` = 4247.667969, `position_y` = -2744.537109, `position_z` = 7.236938, `orientation` = 4.959103 WHERE `guid` = 2558646;
UPDATE `creature` SET `position_x` = 4089.304688, `position_y` = -2809.073975, `position_z` = 24.001293, `orientation` = 0.509820 WHERE `guid` = 2558646;
UPDATE `creature` SET `position_x` = 4254.767090, `position_y` = -2745.476318, `position_z` = 7.446765, `orientation` = 5.523017 WHERE `guid` = 2563293;
UPDATE `creature` SET `position_x` = 4310.281738, `position_y` = -2916.436035, `position_z` = 8.506029, `orientation` = 5.310955 WHERE `guid` = 2563293;
UPDATE `creature` SET `position_x` = 4305.373047, `position_y` = -3048.492432, `position_z` = 22.923353, `orientation` = 0.773715 WHERE `guid` = 2563293;
REPLACE INTO `creature` VALUES (2581465,80208,0,0,0,0,4418.86,-2917.97,7.61449,4.37163,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581466,80208,0,0,0,0,4419.65,-2920.6,7.72465,3.12285,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581467,80208,0,0,0,0,4422.27,-2920.62,7.92212,3.9161,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2581467;
DELETE FROM creature_addon WHERE guid=2581467;
DELETE FROM creature_movement WHERE id=2581467;
DELETE FROM game_event_creature WHERE guid=2581467;
DELETE FROM game_event_creature_data WHERE guid=2581467;
DELETE FROM creature_battleground WHERE guid=2581467;
REPLACE INTO `creature` VALUES (2581468,80208,0,0,0,0,4431.95,-2940.57,7.44681,3.69226,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581468, 1);
REPLACE INTO `creature` VALUES (2581469,80208,0,0,0,0,4411.48,-2948.1,7.10939,5.88351,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581469, 1);
UPDATE `creature` SET `position_x` = 4414.440430, `position_y` = -2969.909424, `position_z` = 7.051713, `orientation` = 0.758785 WHERE `guid` = 2581469;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581469, 1);
REPLACE INTO `creature` VALUES (2581470,80208,0,0,0,0,4386.67,-2959.05,7.1031,4.56404,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 4361.381348, `position_y` = -2942.793213, `position_z` = 7.232049, `orientation` = 0.334668 WHERE `guid` = 2581469;
REPLACE INTO `creature` VALUES (2581471,80208,0,0,0,0,4353.29,-2897.09,7.37734,3.75115,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581471, 1);
DELETE FROM creature WHERE guid=2560438;
DELETE FROM creature_addon WHERE guid=2560438;
DELETE FROM creature_movement WHERE id=2560438;
DELETE FROM game_event_creature WHERE guid=2560438;
DELETE FROM game_event_creature_data WHERE guid=2560438;
DELETE FROM creature_battleground WHERE guid=2560438;
REPLACE INTO `creature` VALUES (2581472,80208,0,0,0,0,4270.31,-2814,4.88563,5.63374,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581473,80208,0,0,0,0,4271.4,-2818.43,4.85321,0.901722,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581474,80208,0,0,0,0,4260.79,-2755.16,7.17592,5.94791,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581475,80208,0,0,0,0,4260.72,-2750.7,7.36749,1.01561,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581475, 1);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581474, 1);
UPDATE `creature` SET `position_x` = 4161.245605, `position_y` = -2745.386719, `position_z` = 18.753096, `orientation` = 3.587780 WHERE `guid` = 2558292;
UPDATE `creature` SET `position_x` = 4098.593750, `position_y` = -2812.175049, `position_z` = 24.010996, `orientation` = 2.574617 WHERE `guid` = 2558292;
REPLACE INTO `creature` VALUES (2581476,80208,0,0,0,0,4165.64,-2705.81,21.8163,0.359794,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581476, 8);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581476, 7);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581476, 6);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581476, 1);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581476, 2);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581476, 3);
UPDATE `creature` SET `position_x` = 4165.901855, `position_y` = -2705.534668, `position_z` = 21.723598, `orientation` = 3.305042 WHERE `guid` = 2581476;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581476, 3);
REPLACE INTO `creature` VALUES (2581477,80208,0,0,0,0,4151.39,-2701.63,21.348,2.28795,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 4151.393066, `position_y` = -2701.628906, `position_z` = 21.347965, `orientation` = 5.684798 WHERE `guid` = 2581477;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581477, 3);
REPLACE INTO `creature` VALUES (2581478,80208,0,0,0,0,4159.18,-2710.81,20.127,2.10337,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581479,80208,0,0,0,0,4160.18,-2711.68,20.127,2.38219,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581480,80208,0,0,0,0,4161.72,-2713.53,20.4189,2.20548,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581481,80208,0,0,0,0,4149.98,-2710.03,20.1137,5.72013,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581481, 1);
REPLACE INTO `creature` VALUES (2581482,80207,0,0,0,0,4160.79,-2712.63,20.1161,2.19369,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2581482;
DELETE FROM creature_addon WHERE guid=2581482;
DELETE FROM creature_movement WHERE id=2581482;
DELETE FROM game_event_creature WHERE guid=2581482;
DELETE FROM game_event_creature_data WHERE guid=2581482;
DELETE FROM creature_battleground WHERE guid=2581482;
REPLACE INTO `creature` VALUES (2581483,80209,0,0,0,0,4161.19,-2712.63,20.1148,2.40967,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581484,80209,0,0,0,0,4152.87,-2713.61,21.3916,3.7959,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581484, 3);
UPDATE `creature` SET `position_x` = 4152.365234, `position_y` = -2714.046387, `position_z` = 21.380142, `orientation` = 3.870513 WHERE `guid` = 2581484;
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581484, 3);
REPLACE INTO `creature` VALUES (2581485,80209,0,0,0,0,4166.43,-2706.17,21.8421,0.257671,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581485, 3);
REPLACE INTO `creature` VALUES (2581486,80209,0,0,0,0,4163.63,-2731.92,17.6055,2.13085,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581487,80209,0,0,0,0,4271.49,-2811.66,4.92041,6.19135,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581488,80209,0,0,0,0,4265.65,-2816.82,4.89528,3.21862,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581488, 3);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581488, 0);
REPLACE INTO `creature` VALUES (2581489,80209,0,0,0,0,4374.85,-2933.19,7.41798,3.20999,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581489, 3);
REPLACE INTO `creature` VALUES (2581490,80209,0,0,0,0,4361.82,-2943.9,7.22149,1.71381,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581491,80209,0,0,0,0,4415.83,-2969.58,7.05345,1.06977,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581491, 1);
REPLACE INTO `creature` VALUES (2581492,80209,0,0,0,0,4428.27,-2942.87,7.27795,0.351142,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581493,80209,0,0,0,0,4418.28,-2919.62,7.6059,0.606397,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581493, 1);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2581465, 1);
REPLACE INTO `creature` VALUES (2581494,80209,0,0,0,0,4471.18,-2843.42,9.13904,5.60938,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581495,80209,0,0,0,0,4455.04,-2915.2,10.7061,0.00520372,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581496,80209,0,0,0,0,4471.67,-2934.21,10.7058,1.3286,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,1, 4469.633301,-2932.376709,10.706055, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,2, 4466.156738,-2929.246582,10.706673, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,3, 4462.005371,-2922.710693,10.706230, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,4, 4460.426758,-2918.307129,10.706131, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,5, 4458.096191,-2910.909668,10.706545, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,6, 4458.087891,-2907.425537,10.707032, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,7, 4460.493652,-2901.737793,10.706910, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,8, 4459.760254,-2897.676514,10.706439, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,9, 4455.423340,-2895.086426,9.230585, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,10, 4445.663086,-2888.813965,8.289009, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,11, 4441.495117,-2884.472900,7.921881, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,12, 4435.444824,-2880.251221,7.679081, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,13, 4432.735840,-2882.583984,7.509381, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,14, 4427.512207,-2888.977295,7.309452, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,15, 4424.082520,-2896.079102,7.031920, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,16, 4417.970215,-2904.970459,7.128541, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,17, 4412.992676,-2917.162354,7.217811, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,18, 4416.339355,-2918.877197,7.450977, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,19, 4412.017090,-2915.373047,7.164423, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,20, 4415.291016,-2912.111816,7.218839, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,21, 4420.249512,-2898.729004,7.101589, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,22, 4423.684082,-2891.502930,7.329491, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,23, 4430.264160,-2885.534424,7.430245, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,24, 4435.769043,-2880.291260,7.686183, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,25, 4441.502930,-2884.126465,7.920742, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,26, 4445.246582,-2889.286377,8.259257, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,27, 4452.745605,-2895.473389,8.861656, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,28, 4456.477539,-2898.366455,10.637317, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,29, 4456.257324,-2905.237549,10.706544, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,30, 4457.733398,-2909.255371,10.706851, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,31, 4458.526367,-2914.244873,10.706558, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,32, 4463.649414,-2927.708984,10.706892, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581496,33, 4468.031250,-2931.584961,10.706770, 100);
REPLACE INTO `creature` VALUES (2581496,80209,0,0,0,0,4471.67,-2934.21,10.7058,1.3286,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581497,80209,0,0,0,0,4409.45,-3101.44,10.0689,4.73409,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 4409.501953, `position_y` = -3102.981934, `position_z` = 10.038260, `orientation` = 1.447203 WHERE `guid` = 2581497;
UPDATE `creature` SET `position_x` = 4282.827148, `position_y` = -2773.390381, `position_z` = 6.388022, `orientation` = 5.137754 WHERE `guid` = 2560635;
UPDATE `creature` SET `position_x` = 4337.164062, `position_y` = -2953.427979, `position_z` = 10.664184, `orientation` = 5.216277 WHERE `guid` = 2560635;
UPDATE `creature` SET `position_x` = 4305.853027, `position_y` = -3050.021729, `position_z` = 22.923283, `orientation` = 1.081163 WHERE `guid` = 2560635;
UPDATE `creature` SET `position_x` = 4363.034180, `position_y` = -2871.363281, `position_z` = 9.590058, `orientation` = 0.398665 WHERE `guid` = 2561041;
UPDATE `creature` SET `position_x` = 4457.178711, `position_y` = -2826.302979, `position_z` = 10.377207, `orientation` = 4.388492 WHERE `guid` = 2561041;
DELETE FROM creature WHERE guid=2558293;
DELETE FROM creature_addon WHERE guid=2558293;
DELETE FROM creature_movement WHERE id=2558293;
DELETE FROM game_event_creature WHERE guid=2558293;
DELETE FROM game_event_creature_data WHERE guid=2558293;
DELETE FROM creature_battleground WHERE guid=2558293;
DELETE FROM creature WHERE guid=2560569;
DELETE FROM creature_addon WHERE guid=2560569;
DELETE FROM creature_movement WHERE id=2560569;
DELETE FROM game_event_creature WHERE guid=2560569;
DELETE FROM game_event_creature_data WHERE guid=2560569;
DELETE FROM creature_battleground WHERE guid=2560569;
UPDATE `creature` SET `position_x` = 4126.174805, `position_y` = -2727.788330, `position_z` = 20.646761, `orientation` = 3.017685 WHERE `guid` = 2558667;
UPDATE `creature` SET `position_x` = 4023.403564, `position_y` = -2634.808350, `position_z` = 29.531752, `orientation` = 2.570008 WHERE `guid` = 2558667;
UPDATE `creature` SET `position_x` = 3889.199219, `position_y` = -2491.325195, `position_z` = 28.711491, `orientation` = 2.460050 WHERE `guid` = 2558667;
UPDATE `creature` SET `position_x` = 3782.464111, `position_y` = -2367.127197, `position_z` = 47.618614, `orientation` = 3.822716 WHERE `guid` = 2558667;
UPDATE `creature` SET `position_x` = 4238.988770, `position_y` = -2770.004150, `position_z` = 6.713279, `orientation` = 4.544494 WHERE `guid` = 2558648;
DELETE FROM creature WHERE guid=2558654;
DELETE FROM creature_addon WHERE guid=2558654;
DELETE FROM creature_movement WHERE id=2558654;
DELETE FROM game_event_creature WHERE guid=2558654;
DELETE FROM game_event_creature_data WHERE guid=2558654;
DELETE FROM creature_battleground WHERE guid=2558654;
REPLACE INTO `creature` VALUES (2581498,80248,0,0,0,0,4344.07,-2927.99,8.33179,1.39506,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2560573;
DELETE FROM creature_addon WHERE guid=2560573;
DELETE FROM creature_movement WHERE id=2560573;
DELETE FROM game_event_creature WHERE guid=2560573;
DELETE FROM game_event_creature_data WHERE guid=2560573;
DELETE FROM creature_battleground WHERE guid=2560573;
DELETE FROM creature WHERE guid=2577969;
DELETE FROM creature_addon WHERE guid=2577969;
DELETE FROM creature_movement WHERE id=2577969;
DELETE FROM game_event_creature WHERE guid=2577969;
DELETE FROM game_event_creature_data WHERE guid=2577969;
DELETE FROM creature_battleground WHERE guid=2577969;
DELETE FROM creature WHERE guid=2558343;
DELETE FROM creature_addon WHERE guid=2558343;
DELETE FROM creature_movement WHERE id=2558343;
DELETE FROM game_event_creature WHERE guid=2558343;
DELETE FROM game_event_creature_data WHERE guid=2558343;
DELETE FROM creature_battleground WHERE guid=2558343;
DELETE FROM creature WHERE guid=2561360;
DELETE FROM creature_addon WHERE guid=2561360;
DELETE FROM creature_movement WHERE id=2561360;
DELETE FROM game_event_creature WHERE guid=2561360;
DELETE FROM game_event_creature_data WHERE guid=2561360;
DELETE FROM creature_battleground WHERE guid=2561360;
REPLACE INTO `creature` VALUES (2581499,6491,0,0,0,0,4285.47,-2863.79,5.42814,1.15723,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581500,6491,0,0,0,0,3131.67,-2522.95,113.323,2.87097,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2581501,6491,0,0,0,0,4474.92,-1843.69,34.151,0.341186,120,120,0,100,100,0,0,0);
REPLACE INTO `gameobject` VALUES ( 5017352, 2001789, 0, 4477.58, -1843.02, 34.2086, 3.96973, 0, 0, 0.915492, -0.402337, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017353, 2008664, 0, 4478.91, -1844.13, 34.1981, 3.51027, 0, 0, 0.983058, -0.183297, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '5017353';
DELETE FROM game_event_gameobject WHERE guid = '5017353';
DELETE FROM gameobject_battleground WHERE guid = '5017353';
REPLACE INTO `gameobject` VALUES ( 5017354, 2001790, 0, 4479.46, -1844.35, 34.2235, 3.76945, 0, 0, 0.951127, -0.308798, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017355, 2002256, 0, 4475.19, -1839.19, 33.8384, 4.15351, 0, 0, 0.87471, -0.484646, 300, 300, 100, 1, 0, 0);
DELETE FROM gameobject WHERE guid = '4005622';
DELETE FROM game_event_gameobject WHERE guid = '4005622';
DELETE FROM gameobject_battleground WHERE guid = '4005622';
DELETE FROM gameobject WHERE guid = '4005937';
DELETE FROM game_event_gameobject WHERE guid = '4005937';
DELETE FROM gameobject_battleground WHERE guid = '4005937';
DELETE FROM gameobject WHERE guid = '4005939';
DELETE FROM game_event_gameobject WHERE guid = '4005939';
DELETE FROM gameobject_battleground WHERE guid = '4005939';
DELETE FROM gameobject WHERE guid = '4005934';
DELETE FROM game_event_gameobject WHERE guid = '4005934';
DELETE FROM gameobject_battleground WHERE guid = '4005934';
DELETE FROM gameobject WHERE guid = '4005929';
DELETE FROM game_event_gameobject WHERE guid = '4005929';
DELETE FROM gameobject_battleground WHERE guid = '4005929';
DELETE FROM gameobject WHERE guid = '4005924';
DELETE FROM game_event_gameobject WHERE guid = '4005924';
DELETE FROM gameobject_battleground WHERE guid = '4005924';
DELETE FROM gameobject WHERE guid = '4005930';
DELETE FROM game_event_gameobject WHERE guid = '4005930';
DELETE FROM gameobject_battleground WHERE guid = '4005930';
DELETE FROM gameobject WHERE guid = '4005927';
DELETE FROM game_event_gameobject WHERE guid = '4005927';
DELETE FROM gameobject_battleground WHERE guid = '4005927';
DELETE FROM gameobject WHERE guid = '4005948';
DELETE FROM game_event_gameobject WHERE guid = '4005948';
DELETE FROM gameobject_battleground WHERE guid = '4005948';
REPLACE INTO `gameobject` VALUES ( 5017356, 2008578, 0, 4266.62, -2843.09, 6.78319, 3.73487, 0, 0, 0.956325, -0.292307, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017356, 2008578, 0, 4266.62, -2843.09, 6.78319, 0.534372, 0, 0, 0.264018, 0.964518, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017357, 2008576, 0, 4273.24, -2845.93, 6.74504, 5.05984, 0, 0, 0.574239, -0.818687, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5017357, 2008576, 0, 4273.24, -2845.93, 6.74504, 1.88682, 0, 0, 0.809566, 0.587029, 300, 300, 100, 1, 0, 0);
REPLACE INTO `creature` VALUES (2581502,61773,0,0,0,0,4440.86,-3179,16.9097,4.79123,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2581502;
DELETE FROM creature_addon WHERE guid=2581502;
DELETE FROM creature_movement WHERE id=2581502;
DELETE FROM game_event_creature WHERE guid=2581502;
DELETE FROM game_event_creature_data WHERE guid=2581502;
DELETE FROM creature_battleground WHERE guid=2581502;
REPLACE INTO `creature` VALUES (2581503,61773,0,0,0,0,4434.57,-3189.48,17.4085,6.11462,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581503, 1);
REPLACE INTO `creature` VALUES (2581504,61773,0,0,0,0,4440.73,-3204.53,18.3087,1.81456,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,1, 4439.895020,-3199.425781,17.820101, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,2, 4439.835449,-3193.232666,17.851759, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,3, 4440.273926,-3189.806396,17.981148, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,4, 4444.375488,-3185.312256,17.723215, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,5, 4441.840820,-3188.540527,18.030735, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,6, 4437.593262,-3191.587402,17.643616, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,7, 4433.645996,-3195.130615,17.100859, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,8, 4428.699707,-3199.515625,17.186287, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,9, 4430.495117,-3200.222168,17.194607, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,10, 4435.103027,-3202.096191,17.298014, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,11, 4438.944824,-3204.936768,17.824266, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,12, 4442.843750,-3207.930908,18.061871, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,13, 4447.774902,-3211.513184,17.523876, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,14, 4450.794922,-3213.680420,17.057598, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,15, 4448.320312,-3211.267822,17.489429, 100);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2581504,16, 4445.587402,-3208.760498,17.979683, 100);
REPLACE INTO `creature` VALUES (2581504,61773,0,0,0,0,4440.73,-3204.53,18.3087,1.81456,300,300,0,100,100,2,0,0);
REPLACE INTO `creature` VALUES (2581505,61773,0,0,0,0,4495.26,-3201,19.9244,0.611332,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581505, 1);
REPLACE INTO `creature` VALUES (2581506,61773,0,0,0,0,4463.51,-3227.8,17.2822,1.82084,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581506, 5);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581506, 3);
REPLACE INTO `creature` VALUES (2581507,61773,0,0,0,0,4464.75,-3227.3,17.2229,2.61409,120,120,0,100,100,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `stand_state`) VALUES (2581507, 1);
REPLACE INTO `creature` VALUES (2581508,883,0,0,0,0,4060.05,-2721.36,33.1985,3.08532,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581509,883,0,0,0,0,3975.45,-2690.03,35.7436,2.57874,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581510,883,0,0,0,0,3899.36,-2670.9,37.7815,3.09317,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581511,883,0,0,0,0,3860.7,-2640.63,35.1402,2.61408,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581512,883,0,0,0,0,3836.64,-2599.33,37.9376,1.85617,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581513,883,0,0,0,0,3807.65,-2551,41.112,2.20567,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581514,883,0,0,0,0,3789.13,-2492.11,43.9032,2.02503,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581515,883,0,0,0,0,3750.75,-2464.39,47.3203,2.64942,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581516,883,0,0,0,0,3735.66,-2430.99,50.966,1.9622,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581517,883,0,0,0,0,3698.45,-2419.1,55.0847,3.16386,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581518,883,0,0,0,0,3643.38,-2414.74,63.949,2.86933,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581519,883,0,0,0,0,3596.08,-2414.25,79.4365,3.26203,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581520,883,0,0,0,0,3559.33,-2425.04,85.5485,3.46624,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581521,883,0,0,0,0,3544.2,-2477.76,85.6726,4.39693,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581522,883,0,0,0,0,3537.45,-2529.83,81.3724,4.57757,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581523,883,0,0,0,0,3540.58,-2574.52,81.3597,4.71109,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581524,883,0,0,0,0,3560.56,-2622.92,75.2335,5.19018,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581525,883,0,0,0,0,3583.01,-2669.35,74.5598,5.30013,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581526,883,0,0,0,0,3623.07,-2703.51,73.1964,5.75566,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581527,883,0,0,0,0,3655.89,-2696.24,76.1506,5.62607,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581528,883,0,0,0,0,3635.47,-2723.18,78.3013,3.74111,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581529,883,0,0,0,0,3613.67,-2779.43,95.4134,5.00953,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581530,883,0,0,0,0,3621.46,-2822.08,97.8405,4.78962,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581531,883,0,0,0,0,3625.47,-2878.46,101.544,4.66396,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581532,883,0,0,0,0,3597.39,-2938.76,104.874,4.36158,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581533,883,0,0,0,0,3558.6,-2983.69,105.714,3.69792,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581534,883,0,0,0,0,3535.81,-2948.8,105.778,1.88757,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581535,883,0,0,0,0,3486.89,-2829.05,91.6135,2.08,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581536,883,0,0,0,0,3489.78,-2770.09,87.9802,1.45953,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581537,883,0,0,0,0,3490.75,-2683.37,89.7635,1.81689,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581538,883,0,0,0,0,3465.21,-2567.81,98.3375,2.02109,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581539,883,0,0,0,0,3406.6,-2555.26,102.023,3.21882,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581540,883,0,0,0,0,3319.35,-2593.1,107.818,4.12596,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581541,883,0,0,0,0,3283.02,-2624.78,112.004,3.50156,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581542,883,0,0,0,0,3202.68,-2612.25,113.351,2.62192,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581543,883,0,0,0,0,3265.35,-2442.11,105.448,0.455004,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581544,883,0,0,0,0,3415.08,-2407.21,104.422,0.430658,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581545,883,0,0,0,0,3455.2,-2355.62,103.411,1.20035,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581546,883,0,0,0,0,3518.66,-2231.98,106.565,1.19642,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581547,883,0,0,0,0,3559.12,-2148,114.494,1.36528,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581548,883,0,0,0,0,3517.73,-2119.93,117.787,2.80649,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581549,883,0,0,0,0,3413.46,-2108.55,115.449,2.42164,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581550,883,0,0,0,0,3401.18,-2074.6,120.978,1.51844,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581551,883,0,0,0,0,3985.96,-2273.11,14.3033,0.239795,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581552,883,0,0,0,0,4032.78,-2247.05,9.19447,1.09195,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581553,883,0,0,0,0,3988.66,-2182.99,9.9194,2.27398,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581554,883,0,0,0,0,3923.1,-2104.11,11.9805,2.36037,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581555,883,0,0,0,0,3892.66,-2033.81,9.56053,1.8852,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581556,883,0,0,0,0,3839.86,-1962.59,5.11449,2.12475,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581557,883,0,0,0,0,3803.8,-1926.83,7.9021,2.35252,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581558,883,0,0,0,0,3754.87,-1819.46,6.71732,1.93626,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581559,883,0,0,0,0,3841.07,-1882.23,6.36232,5.35667,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581560,883,0,0,0,0,3911.32,-1925.52,5.6564,5.608,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581561,883,0,0,0,0,3955.6,-1973.79,5.48128,5.37238,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581562,883,0,0,0,0,4056.38,-2152.48,5.38888,4.93256,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581563,883,0,0,0,0,4034.33,-2470.26,6.61187,4.59483,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581564,883,0,0,0,0,4031.98,-2555.83,19.3333,4.55164,120,120,5,100,100,1,0,0);
REPLACE INTO `creature` VALUES (2581565,883,0,0,0,0,4051.14,-2652.44,33.8358,0.392943,120,120,5,100,100,1,0,0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2581566,61795,0,0,0,1,237.936,-7633.45,87.1098,4.71522,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 257.709412, `position_y` = -7647.862793, `position_z` = 87.581352, `orientation` = 0.635857 WHERE `guid` = 2581566;
DELETE FROM creature WHERE guid=2570752;
DELETE FROM creature_addon WHERE guid=2570752;
DELETE FROM creature_movement WHERE id=2570752;
DELETE FROM game_event_creature WHERE guid=2570752;
DELETE FROM game_event_creature_data WHERE guid=2570752;
DELETE FROM creature_battleground WHERE guid=2570752;
DELETE FROM creature WHERE guid=2570755;
DELETE FROM creature_addon WHERE guid=2570755;
DELETE FROM creature_movement WHERE id=2570755;
DELETE FROM game_event_creature WHERE guid=2570755;
DELETE FROM game_event_creature_data WHERE guid=2570755;
DELETE FROM creature_battleground WHERE guid=2570755;
DELETE FROM creature WHERE guid=2570754;
DELETE FROM creature_addon WHERE guid=2570754;
DELETE FROM creature_movement WHERE id=2570754;
DELETE FROM game_event_creature WHERE guid=2570754;
DELETE FROM game_event_creature_data WHERE guid=2570754;
DELETE FROM creature_battleground WHERE guid=2570754;
DELETE FROM creature WHERE guid=2570756;
DELETE FROM creature_addon WHERE guid=2570756;
DELETE FROM creature_movement WHERE id=2570756;
DELETE FROM game_event_creature WHERE guid=2570756;
DELETE FROM game_event_creature_data WHERE guid=2570756;
DELETE FROM creature_battleground WHERE guid=2570756;
DELETE FROM creature WHERE guid=2570753;
DELETE FROM creature_addon WHERE guid=2570753;
DELETE FROM creature_movement WHERE id=2570753;
DELETE FROM game_event_creature WHERE guid=2570753;
DELETE FROM game_event_creature_data WHERE guid=2570753;
DELETE FROM creature_battleground WHERE guid=2570753;
DELETE FROM creature WHERE guid=2570757;
DELETE FROM creature_addon WHERE guid=2570757;
DELETE FROM creature_movement WHERE id=2570757;
DELETE FROM game_event_creature WHERE guid=2570757;
DELETE FROM game_event_creature_data WHERE guid=2570757;
DELETE FROM creature_battleground WHERE guid=2570757;
DELETE FROM creature WHERE guid=2570761;
DELETE FROM creature_addon WHERE guid=2570761;
DELETE FROM creature_movement WHERE id=2570761;
DELETE FROM game_event_creature WHERE guid=2570761;
DELETE FROM game_event_creature_data WHERE guid=2570761;
DELETE FROM creature_battleground WHERE guid=2570761;
DELETE FROM creature WHERE guid=2570762;
DELETE FROM creature_addon WHERE guid=2570762;
DELETE FROM creature_movement WHERE id=2570762;
DELETE FROM game_event_creature WHERE guid=2570762;
DELETE FROM game_event_creature_data WHERE guid=2570762;
DELETE FROM creature_battleground WHERE guid=2570762;
DELETE FROM creature WHERE guid=2570769;
DELETE FROM creature_addon WHERE guid=2570769;
DELETE FROM creature_movement WHERE id=2570769;
DELETE FROM game_event_creature WHERE guid=2570769;
DELETE FROM game_event_creature_data WHERE guid=2570769;
DELETE FROM creature_battleground WHERE guid=2570769;
DELETE FROM creature WHERE guid=2570758;
DELETE FROM creature_addon WHERE guid=2570758;
DELETE FROM creature_movement WHERE id=2570758;
DELETE FROM game_event_creature WHERE guid=2570758;
DELETE FROM game_event_creature_data WHERE guid=2570758;
DELETE FROM creature_battleground WHERE guid=2570758;
DELETE FROM creature WHERE guid=2570759;
DELETE FROM creature_addon WHERE guid=2570759;
DELETE FROM creature_movement WHERE id=2570759;
DELETE FROM game_event_creature WHERE guid=2570759;
DELETE FROM game_event_creature_data WHERE guid=2570759;
DELETE FROM creature_battleground WHERE guid=2570759;
DELETE FROM creature WHERE guid=2570760;
DELETE FROM creature_addon WHERE guid=2570760;
DELETE FROM creature_movement WHERE id=2570760;
DELETE FROM game_event_creature WHERE guid=2570760;
DELETE FROM game_event_creature_data WHERE guid=2570760;
DELETE FROM creature_battleground WHERE guid=2570760;
DELETE FROM creature WHERE guid=2570766;
DELETE FROM creature_addon WHERE guid=2570766;
DELETE FROM creature_movement WHERE id=2570766;
DELETE FROM game_event_creature WHERE guid=2570766;
DELETE FROM game_event_creature_data WHERE guid=2570766;
DELETE FROM creature_battleground WHERE guid=2570766;
DELETE FROM creature WHERE guid=2570820;
DELETE FROM creature_addon WHERE guid=2570820;
DELETE FROM creature_movement WHERE id=2570820;
DELETE FROM game_event_creature WHERE guid=2570820;
DELETE FROM game_event_creature_data WHERE guid=2570820;
DELETE FROM creature_battleground WHERE guid=2570820;
DELETE FROM creature WHERE guid=2570818;
DELETE FROM creature_addon WHERE guid=2570818;
DELETE FROM creature_movement WHERE id=2570818;
DELETE FROM game_event_creature WHERE guid=2570818;
DELETE FROM game_event_creature_data WHERE guid=2570818;
DELETE FROM creature_battleground WHERE guid=2570818;
DELETE FROM creature WHERE guid=2577558;
DELETE FROM creature_addon WHERE guid=2577558;
DELETE FROM creature_movement WHERE id=2577558;
DELETE FROM game_event_creature WHERE guid=2577558;
DELETE FROM game_event_creature_data WHERE guid=2577558;
DELETE FROM creature_battleground WHERE guid=2577558;
DELETE FROM creature WHERE guid=2570817;
DELETE FROM creature_addon WHERE guid=2570817;
DELETE FROM creature_movement WHERE id=2570817;
DELETE FROM game_event_creature WHERE guid=2570817;
DELETE FROM game_event_creature_data WHERE guid=2570817;
DELETE FROM creature_battleground WHERE guid=2570817;
DELETE FROM creature WHERE guid=2570803;
DELETE FROM creature_addon WHERE guid=2570803;
DELETE FROM creature_movement WHERE id=2570803;
DELETE FROM game_event_creature WHERE guid=2570803;
DELETE FROM game_event_creature_data WHERE guid=2570803;
DELETE FROM creature_battleground WHERE guid=2570803;
DELETE FROM creature WHERE guid=2570832;
DELETE FROM creature_addon WHERE guid=2570832;
DELETE FROM creature_movement WHERE id=2570832;
DELETE FROM game_event_creature WHERE guid=2570832;
DELETE FROM game_event_creature_data WHERE guid=2570832;
DELETE FROM creature_battleground WHERE guid=2570832;
DELETE FROM creature WHERE guid=2577560;
DELETE FROM creature_addon WHERE guid=2577560;
DELETE FROM creature_movement WHERE id=2577560;
DELETE FROM game_event_creature WHERE guid=2577560;
DELETE FROM game_event_creature_data WHERE guid=2577560;
DELETE FROM creature_battleground WHERE guid=2577560;
DELETE FROM creature WHERE guid=2570837;
DELETE FROM creature_addon WHERE guid=2570837;
DELETE FROM creature_movement WHERE id=2570837;
DELETE FROM game_event_creature WHERE guid=2570837;
DELETE FROM game_event_creature_data WHERE guid=2570837;
DELETE FROM creature_battleground WHERE guid=2570837;
DELETE FROM creature WHERE guid=2570831;
DELETE FROM creature_addon WHERE guid=2570831;
DELETE FROM creature_movement WHERE id=2570831;
DELETE FROM game_event_creature WHERE guid=2570831;
DELETE FROM game_event_creature_data WHERE guid=2570831;
DELETE FROM creature_battleground WHERE guid=2570831;
DELETE FROM creature WHERE guid=2570834;
DELETE FROM creature_addon WHERE guid=2570834;
DELETE FROM creature_movement WHERE id=2570834;
DELETE FROM game_event_creature WHERE guid=2570834;
DELETE FROM game_event_creature_data WHERE guid=2570834;
DELETE FROM creature_battleground WHERE guid=2570834;
DELETE FROM creature WHERE guid=2570833;
DELETE FROM creature_addon WHERE guid=2570833;
DELETE FROM creature_movement WHERE id=2570833;
DELETE FROM game_event_creature WHERE guid=2570833;
DELETE FROM game_event_creature_data WHERE guid=2570833;
DELETE FROM creature_battleground WHERE guid=2570833;
DELETE FROM creature WHERE guid=2570826;
DELETE FROM creature_addon WHERE guid=2570826;
DELETE FROM creature_movement WHERE id=2570826;
DELETE FROM game_event_creature WHERE guid=2570826;
DELETE FROM game_event_creature_data WHERE guid=2570826;
DELETE FROM creature_battleground WHERE guid=2570826;
DELETE FROM creature WHERE guid=2570830;
DELETE FROM creature_addon WHERE guid=2570830;
DELETE FROM creature_movement WHERE id=2570830;
DELETE FROM game_event_creature WHERE guid=2570830;
DELETE FROM game_event_creature_data WHERE guid=2570830;
DELETE FROM creature_battleground WHERE guid=2570830;
DELETE FROM creature WHERE guid=2570835;
DELETE FROM creature_addon WHERE guid=2570835;
DELETE FROM creature_movement WHERE id=2570835;
DELETE FROM game_event_creature WHERE guid=2570835;
DELETE FROM game_event_creature_data WHERE guid=2570835;
DELETE FROM creature_battleground WHERE guid=2570835;
DELETE FROM creature WHERE guid=2570745;
DELETE FROM creature_addon WHERE guid=2570745;
DELETE FROM creature_movement WHERE id=2570745;
DELETE FROM game_event_creature WHERE guid=2570745;
DELETE FROM game_event_creature_data WHERE guid=2570745;
DELETE FROM creature_battleground WHERE guid=2570745;
DELETE FROM creature WHERE guid=2570747;
DELETE FROM creature_addon WHERE guid=2570747;
DELETE FROM creature_movement WHERE id=2570747;
DELETE FROM game_event_creature WHERE guid=2570747;
DELETE FROM game_event_creature_data WHERE guid=2570747;
DELETE FROM creature_battleground WHERE guid=2570747;
DELETE FROM creature WHERE guid=2570748;
DELETE FROM creature_addon WHERE guid=2570748;
DELETE FROM creature_movement WHERE id=2570748;
DELETE FROM game_event_creature WHERE guid=2570748;
DELETE FROM game_event_creature_data WHERE guid=2570748;
DELETE FROM creature_battleground WHERE guid=2570748;
DELETE FROM creature WHERE guid=2570750;
DELETE FROM creature_addon WHERE guid=2570750;
DELETE FROM creature_movement WHERE id=2570750;
DELETE FROM game_event_creature WHERE guid=2570750;
DELETE FROM game_event_creature_data WHERE guid=2570750;
DELETE FROM creature_battleground WHERE guid=2570750;
DELETE FROM creature WHERE guid=2570749;
DELETE FROM creature_addon WHERE guid=2570749;
DELETE FROM creature_movement WHERE id=2570749;
DELETE FROM game_event_creature WHERE guid=2570749;
DELETE FROM game_event_creature_data WHERE guid=2570749;
DELETE FROM creature_battleground WHERE guid=2570749;

-- Changes by WILLBERG
REPLACE INTO `creature` VALUES (2581567,7559,0,0,0,0,4594.04,-2904.43,4.01265,2.38285,120,120,0,100,100,0,0,0);
