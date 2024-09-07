-- Add back previously removed Stitched Golem spawns. It should be safe now.
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`) VALUES 
(91931, 8545, 0, 2455.05, -3648.15, 178.205, 2.4217, 345, 345, 10, 100, 0, 1),
(92324, 8545, 0, 2147.63, -3558.4, 145.358, 4.955, 345, 345, 5, 100, 0, 1),
(92513, 8545, 0, 2086.57, -3488.72, 116.702, 1.02451, 345, 345, 10, 100, 0, 1),
(92665, 8545, 0, 2789.03, -5532.77, 162.954, 3.05433, 345, 345, 0, 100, 0, 0),
(92670, 8545, 0, 2783.5, -5516.94, 162.954, 3.82227, 345, 345, 0, 100, 0, 0),
(92671, 8545, 0, 2750.63, -5546.38, 162.954, 0.767945, 345, 345, 0, 100, 0, 0),
(92707, 8545, 0, 2285.7, -3552.82, 152.321, 5.37943, 345, 345, 0, 100, 0, 2);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES 
(92707, 1, 2277.94, -3547.44, 150.735, 0, 0, 0, 0),
(92707, 2, 2266.36, -3535.26, 146.832, 0, 0, 0, 0),
(92707, 3, 2257.84, -3526.66, 142.593, 0, 0, 0, 0),
(92707, 4, 2244.48, -3516.48, 137.09, 0, 0, 0, 0),
(92707, 5, 2229.18, -3507.58, 132.385, 0, 0, 0, 0),
(92707, 6, 2215.41, -3499.79, 128.43, 0, 0, 0, 0),
(92707, 7, 2230.01, -3508.09, 132.638, 0, 0, 0, 0),
(92707, 8, 2242.75, -3513.91, 136.598, 0, 0, 0, 0),
(92707, 9, 2257.48, -3521.99, 141.238, 0, 0, 0, 0),
(92707, 10, 2268.67, -3530.33, 146.309, 0, 0, 0, 0),
(92707, 11, 2271.63, -3546.73, 150.115, 0, 0, 0, 0),
(92707, 12, 2282.88, -3559.21, 153.433, 0, 0, 0, 0),
(92707, 13, 2291.6, -3570.16, 156.266, 0, 0, 0, 0),
(92707, 14, 2304.53, -3584.8, 159.608, 0, 0, 0, 0),
(92707, 15, 2315.85, -3597.3, 164.72, 0, 0, 0, 0),
(92707, 16, 2323.41, -3605.56, 167.979, 0, 0, 0, 0),
(92707, 17, 2312.11, -3589.59, 161.837, 0, 0, 0, 0),
(92707, 18, 2296.69, -3569.66, 156.407, 0, 0, 0, 0);
