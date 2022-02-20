-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1120
UPDATE creature_template SET beast_family = 7 WHERE entry = 91824;

-- Coun request
UPDATE creature_template SET scale = 1, level = 15 WHERE entry = 50140;
UPDATE creature_template SET display_id1 = 4999 WHERE entry = 60663;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1125
UPDATE quest_template SET ZoneOrSort = 1477 WHERE entry = 4143;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1126
REPLACE INTO creature_loot_template VALUES 
(92, 7912, 26.9259, 0, 1, 3, 0),
(667, 7912, 0.02, 0, 1, 1, 0),
(678, 7912, 0.04, 0, 1, 1, 0),
(679, 7912, 0.22, 0, 1, 1, 0),
(680, 7912, 0.72, 0, 1, 1, 0),
(687, 7912, 0.02, 0, 1, 1, 0),
(710, 7912, 0.2, 0, 1, 1, 0),
(730, 7912, 0.02, 0, 1, 1, 0),
(747, 7912, 0.02, 0, 1, 1, 0),
(750, 7912, 0.02, 0, 1, 1, 0),
(751, 7912, 0.08, 0, 1, 1, 0),
(752, 7912, 0.06, 0, 1, 1, 0),
(767, 7912, 0.02, 0, 1, 1, 0),
(780, 7912, 0.02, 0, 1, 1, 0),
(781, 7912, 0.04, 0, 1, 1, 0),
(783, 7912, 0.02, 0, 1, 1, 0),
(813, 7912, 0.44, 0, 1, 1, 0),
(818, 7912, 0.34, 0, 1, 1, 0),
(858, 7912, 0.02, 0, 1, 1, 0),
(939, 7912, 0.04, 0, 1, 1, 0),
(942, 7912, 0.02, 0, 1, 1, 0),
(978, 7912, 0.08, 0, 1, 1, 0),
(979, 7912, 0.08, 0, 1, 1, 0),
(1492, 7912, 0.28, 0, 1, 1, 0),
(1550, 7912, 0.14, 0, 1, 1, 0),
(1551, 7912, 0.074, 0, 1, 1, 0),
(1559, 7912, 0.08, 0, 1, 1, 0),
(1561, 7912, 0.02, 0, 1, 1, 0),
(1562, 7912, 0.02, 0, 1, 1, 0),
(1563, 7912, 0.02, 0, 1, 1, 0),
(1564, 7912, 0.02, 0, 1, 1, 0),
(1783, 7912, 0.02, 0, 1, 1, 0),
(1784, 7912, 0.02, 0, 1, 1, 0),
(1787, 7912, 0.016, 0, 1, 1, 0),
(1788, 7912, 0.02, 0, 1, 1, 0),
(1789, 7912, 0.02, 0, 1, 1, 0),
(1791, 7912, 0.02, 0, 1, 1, 0),
(1794, 7912, 0.02, 0, 1, 1, 0),
(1795, 7912, 0.02, 0, 1, 1, 0),
(1802, 7912, 0.02, 0, 1, 1, 0),
(1817, 7912, 0.02, 0, 1, 1, 0),
(1821, 7912, 0.08, 0, 1, 1, 0),
(1822, 7912, 0.02, 0, 1, 1, 0),
(1826, 7912, 0.02, 0, 1, 1, 0),
(1831, 7912, 0.02, 0, 1, 1, 0),
(1832, 7912, 0.02, 0, 1, 1, 0),
(1836, 7912, 0.06, 0, 1, 1, 0),
(1884, 7912, 0.02, 0, 1, 1, 0),
(1907, 7912, 0.04, 0, 1, 1, 0),
(2248, 7912, 0.02, 0, 1, 1, 0),
(2249, 7912, 0.02, 0, 1, 1, 0),
(2250, 7912, 0.02, 0, 1, 1, 0),
(2251, 7912, 0.02, 0, 1, 1, 0),
(2252, 7912, 0.02, 0, 1, 1, 0),
(2253, 7912, 0.1, 0, 1, 1, 0),
(2255, 7912, 0.02, 0, 1, 1, 0),
(2453, 7912, 4.878, 0, 1, 2, 0),
(2522, 7912, 0.14, 0, 1, 1, 0),
(2544, 7912, 0.02, 0, 1, 1, 0),
(2551, 7912, 27.3092, 0, 1, 2, 0),
(2555, 7912, 0.02, 0, 1, 1, 0),
(2560, 7912, 0.02, 0, 1, 1, 0),
(2561, 7912, 0.02, 0, 1, 1, 0),
(2566, 7912, 0.02, 0, 1, 1, 0),
(2567, 7912, 0.02, 0, 1, 1, 0),
(2572, 7912, 0.02, 0, 1, 1, 0),
(2574, 7912, 0.1, 0, 1, 1, 0),
(2579, 7912, 0.02, 0, 1, 1, 0),
(2580, 7912, 0.5, 0, 1, 1, 0),
(2592, 7912, 26.783, 0, 1, 2, 0),
(2595, 7912, 0.1, 0, 1, 1, 0),
(2611, 7912, 24.6363, 0, 1, 2, 0),
(2639, 7912, 0.02, 0, 1, 1, 0),
(2643, 7912, 0.02, 0, 1, 1, 0),
(2644, 7912, 0.04, 0, 1, 1, 0),
(2645, 7912, 0.08, 0, 1, 1, 0),
(2646, 7912, 0.04, 0, 1, 1, 0),
(2647, 7912, 0.02, 0, 1, 1, 0),
(2648, 7912, 0.02, 0, 1, 1, 0),
(2649, 7912, 0.02, 0, 1, 1, 0),
(2650, 7912, 0.02, 0, 1, 1, 0),
(2651, 7912, 0.04, 0, 1, 1, 0),
(2652, 7912, 0.02, 0, 1, 1, 0),
(2653, 7912, 0.04, 0, 1, 1, 0),
(2654, 7912, 0.12, 0, 1, 1, 0),
(2655, 7912, 0.1, 0, 1, 1, 0),
(2656, 7912, 0.14, 0, 1, 1, 0),
(2658, 7912, 0.02, 0, 1, 1, 0),
(2659, 7912, 0.1, 0, 1, 1, 0),
(2680, 7912, 0.02, 0, 1, 1, 0),
(2686, 7912, 0.28, 0, 1, 1, 0),
(2691, 7912, 0.02, 0, 1, 1, 0),
(2701, 7912, 0.02, 0, 1, 1, 0),
(2715, 7912, 0.06, 0, 1, 1, 0),
(2717, 7912, 0.02, 0, 1, 1, 0),
(2718, 7912, 0.04, 0, 1, 1, 0),
(2719, 7912, 0.64, 0, 1, 1, 0),
(2720, 7912, 0.58, 0, 1, 1, 0),
(2725, 7912, 0.04, 0, 1, 1, 0),
(2726, 7912, 0.14, 0, 1, 1, 0),
(2727, 7912, 0.02, 0, 1, 1, 0),
(2728, 7912, 0.033, 0, 1, 1, 0),
(2729, 7912, 0.02, 0, 1, 1, 0),
(2730, 7912, 0.46, 0, 1, 1, 0),
(2731, 7912, 0.06, 0, 1, 1, 0),
(2732, 7912, 0.04, 0, 1, 1, 0),
(2734, 7912, 0.08, 0, 1, 1, 0),
(2735, 7912, 24.9152, 0, 1, 2, 0),
(2736, 7912, 29.6711, 0, 1, 4, 0),
(2748, 7912, 17, 0, 1, 2, 0),
(2752, 7912, 29.7619, 0, 1, 2, 0),
(2754, 7912, 23.2472, 0, 1, 1, 0),
(2791, 7912, 29.4013, 0, 1, 2, 0),
(2830, 7912, 0.02, 0, 1, 1, 0),
(2907, 7912, 0.02, 0, 1, 1, 0),
(2924, 7912, 0.04, 0, 1, 1, 0),
(2925, 7912, 0.02, 0, 1, 1, 0),
(2927, 7912, 0.04, 0, 1, 1, 0),
(2928, 7912, 0.02, 0, 1, 1, 0),
(2929, 7912, 0.02, 0, 1, 1, 0),
(2944, 7912, 0.04, 0, 1, 1, 0),
(4022, 7912, 0.02, 0, 1, 1, 0),
(4023, 7912, 0.02, 0, 1, 1, 0),
(4025, 7912, 0.02, 0, 1, 1, 0),
(4027, 7912, 0.02, 0, 1, 1, 0),
(4029, 7912, 0.04, 0, 1, 1, 0),
(4032, 7912, 0.02, 0, 1, 1, 0),
(4036, 7912, 0.02, 0, 1, 1, 0),
(4037, 7912, 0.02, 0, 1, 1, 0),
(4038, 7912, 0.02, 0, 1, 1, 0),
(4041, 7912, 0.02, 0, 1, 1, 0),
(4095, 7912, 0.02, 0, 1, 1, 0),
(4097, 7912, 0.04, 0, 1, 1, 0),
(4099, 7912, 0.02, 0, 1, 1, 0),
(4107, 7912, 0.02, 0, 1, 1, 0),
(4131, 7912, 0.72, 0, 1, 1, 0),
(4132, 7912, 1.34, 0, 1, 1, 0),
(4133, 7912, 0.18, 0, 1, 1, 0),
(4465, 7912, 0.08, 0, 1, 1, 0),
(4466, 7912, 0.02, 0, 1, 1, 0),
(4467, 7912, 0.02, 0, 1, 1, 0),
(4640, 7912, 0.02, 0, 1, 1, 0),
(4641, 7912, 0.02, 0, 1, 1, 0),
(4642, 7912, 0.02, 0, 1, 1, 0),
(4645, 7912, 96.946, 0, 1, 1, 0),
(4646, 7912, 0.02, 0, 1, 1, 0),
(4648, 7912, 0.02, 0, 1, 1, 0),
(4649, 7912, 0.02, 0, 1, 1, 0),
(4654, 7912, 0.02, 0, 1, 1, 0),
(4655, 7912, 0.04, 0, 1, 1, 0),
(4656, 7912, 0.06, 0, 1, 1, 0),
(4657, 7912, 0.08, 0, 1, 1, 0),
(4658, 7912, 0.2, 0, 1, 1, 0),
(4671, 7912, 0.02, 0, 1, 1, 0),
(4673, 7912, 0.02, 0, 1, 1, 0),
(4676, 7912, 27.4825, 0, 1, 2, 0),
(4679, 7912, 0.02, 0, 1, 1, 0),
(4680, 7912, 0.02, 0, 1, 1, 0),
(4681, 7912, 0.06, 0, 1, 1, 0),
(4682, 7912, 0.04, 0, 1, 1, 0),
(4685, 7912, 0.1, 0, 1, 1, 0),
(4686, 7912, 0.14, 0, 1, 1, 0),
(4693, 7912, 0.02, 0, 1, 1, 0),
(4699, 7912, 0.04, 0, 1, 1, 0),
(4712, 7912, 0.02, 0, 1, 1, 0),
(4714, 7912, 0.04, 0, 1, 1, 0),
(4715, 7912, 0.08, 0, 1, 1, 0),
(4716, 7912, 0.02, 0, 1, 1, 0),
(4718, 7912, 0.06, 0, 1, 1, 0),
(4719, 7912, 0.08, 0, 1, 1, 0),
(4727, 7912, 0.04, 0, 1, 1, 0),
(4844, 7912, 0.02, 0, 1, 1, 0),
(4846, 7912, 0.02, 0, 1, 1, 0),
(4850, 7912, 0.12, 0, 1, 1, 0),
(4851, 7912, 0.04, 0, 1, 1, 0),
(4852, 7912, 0.06, 0, 1, 1, 0),
(4853, 7912, 0.04, 0, 1, 1, 0),
(4855, 7912, 0.08, 0, 1, 1, 0),
(4856, 7912, 0.1, 0, 1, 1, 0),
(4857, 7912, 29.616, 0, 1, 2, 0),
(4860, 7912, 26.9996, 0, 1, 2, 0),
(4863, 7912, 0.03, 0, 1, 1, 0),
(4872, 7912, 23.1447, 0, 1, 2, 0),
(5232, 7912, 0.02, 0, 1, 1, 0),
(5236, 7912, 0.02, 0, 1, 1, 0),
(5238, 7912, 0.02, 0, 1, 1, 0),
(5240, 7912, 0.02, 0, 1, 1, 0),
(5249, 7912, 0.02, 0, 1, 1, 0),
(5251, 7912, 0.02, 0, 1, 1, 0),
(5255, 7912, 0.02, 0, 1, 1, 0),
(5258, 7912, 0.02, 0, 1, 1, 0),
(5262, 7912, 0.02, 0, 1, 1, 0),
(5268, 7912, 0.02, 0, 1, 1, 0),
(5272, 7912, 0.02, 0, 1, 1, 0),
(5295, 7912, 0.02, 0, 1, 1, 0),
(5297, 7912, 0.07, 0, 1, 1, 0),
(5305, 7912, 0.02, 0, 1, 1, 0),
(5306, 7912, 0.02, 0, 1, 1, 0),
(5333, 7912, 0.18, 0, 1, 1, 0),
(5336, 7912, 0.16, 0, 1, 1, 0),
(5343, 7912, 0.66, 0, 1, 1, 0),
(5347, 7912, 2.72, 0, 1, 1, 0),
(5357, 7912, 28.1421, 0, 1, 2, 0),
(5358, 7912, 31.9602, 0, 1, 2, 0),
(5389, 7912, 50, 0, 1, 1, 0),
(5419, 7912, 0.02, 0, 1, 1, 0),
(5420, 7912, 0.02, 0, 1, 1, 0),
(5422, 7912, 0.02, 0, 1, 1, 0),
(5423, 7912, 0.02, 0, 1, 1, 0),
(5424, 7912, 0.04, 0, 1, 1, 0),
(5425, 7912, 0.02, 0, 1, 1, 0),
(5426, 7912, 0.02, 0, 1, 1, 0),
(5428, 7912, 0.02, 0, 1, 1, 0),
(5441, 7912, 0.2, 0, 1, 1, 0),
(5450, 7912, 0.44, 0, 1, 1, 0),
(5452, 7912, 0.6, 0, 1, 1, 0),
(5453, 7912, 0.9, 0, 1, 1, 0),
(5454, 7912, 0.6, 0, 1, 1, 0),
(5455, 7912, 0.04, 0, 1, 1, 0),
(5456, 7912, 0.04, 0, 1, 1, 0),
(5457, 7912, 0.1, 0, 1, 1, 0),
(5458, 7912, 0.28, 0, 1, 1, 0),
(5459, 7912, 0.36, 0, 1, 1, 0),
(5465, 7912, 31.7821, 0, 1, 2, 0),
(5471, 7912, 0.02, 0, 1, 1, 0),
(5472, 7912, 0.02, 0, 1, 1, 0),
(5473, 7912, 0.02, 0, 1, 1, 0),
(5474, 7912, 0.02, 0, 1, 1, 0),
(5475, 7912, 0.02, 0, 1, 1, 0),
(5481, 7912, 0.02, 0, 1, 1, 0),
(5485, 7912, 0.02, 0, 1, 1, 0),
(5490, 7912, 0.04, 0, 1, 1, 0),
(5615, 7912, 0.02, 0, 1, 1, 0),
(5616, 7912, 0.02, 0, 1, 1, 0),
(5617, 7912, 0.02, 0, 1, 1, 0),
(5618, 7912, 0.02, 0, 1, 1, 0),
(5645, 7912, 0.02, 0, 1, 1, 0),
(5760, 7912, 0.16, 0, 1, 1, 0),
(5833, 7912, 0.48, 0, 1, 1, 0),
(5839, 7912, 0.08, 0, 1, 1, 0),
(5840, 7912, 0.02, 0, 1, 1, 0),
(5843, 7912, 0.14, 0, 1, 1, 0),
(5844, 7912, 0.02, 0, 1, 1, 0),
(5846, 7912, 0.02, 0, 1, 1, 0),
(5850, 7912, 0.14, 0, 1, 1, 0),
(5852, 7912, 0.06, 0, 1, 1, 0),
(5854, 7912, 29.8956, 0, 1, 2, 0),
(5856, 7912, 0.02, 0, 1, 1, 0),
(5857, 7912, 0.26, 0, 1, 1, 0),
(5858, 7912, 0.1, 0, 1, 1, 0),
(5860, 7912, 0.16, 0, 1, 1, 0),
(5861, 7912, 0.08, 0, 1, 1, 0),
(5862, 7912, 0.06, 0, 1, 1, 0),
(5881, 7912, 0.02, 0, 1, 1, 0),
(5975, 7912, 0.02, 0, 1, 1, 0),
(5976, 7912, 0.02, 0, 1, 1, 0),
(5984, 7912, 0.02, 0, 1, 1, 0),
(5988, 7912, 0.02, 0, 1, 1, 0),
(5990, 7912, 0.02, 0, 1, 1, 0),
(5992, 7912, 0.02, 0, 1, 1, 0),
(5993, 7912, 0.02, 0, 1, 1, 0),
(5996, 7912, 0.08, 0, 1, 1, 0),
(5997, 7912, 0.06, 0, 1, 1, 0),
(5998, 7912, 0.02, 0, 1, 1, 0),
(6005, 7912, 0.02, 0, 1, 1, 0),
(6006, 7912, 0.02, 0, 1, 1, 0),
(6009, 7912, 0.02, 0, 1, 1, 0),
(6068, 7912, 0.05, 0, 1, 1, 0),
(6116, 7912, 0.02, 0, 1, 1, 0),
(6117, 7912, 0.02, 0, 1, 1, 0),
(6125, 7912, 0.012, 0, 1, 1, 0),
(6126, 7912, 0.04, 0, 1, 1, 0),
(6129, 7912, 0.06, 0, 1, 1, 0),
(6131, 7912, 0.02, 0, 1, 1, 0),
(6136, 7912, 0.02, 0, 1, 1, 0),
(6137, 7912, 0.02, 0, 1, 1, 0),
(6143, 7912, 0.04, 0, 1, 1, 0),
(6146, 7912, 31.6425, 0, 1, 2, 0),
(6148, 7912, 30.7457, 0, 1, 2, 0),
(6167, 7912, 0.04, 0, 1, 1, 0),
(6185, 7912, 0.02, 0, 1, 1, 0),
(6188, 7912, 0.02, 0, 1, 1, 0),
(6189, 7912, 0.02, 0, 1, 1, 0),
(6194, 7912, 0.02, 0, 1, 1, 0),
(6195, 7912, 0.04, 0, 1, 1, 0),
(6196, 7912, 0.02, 0, 1, 1, 0),
(6198, 7912, 0.02, 0, 1, 1, 0),
(6200, 7912, 0.02, 0, 1, 1, 0),
(6202, 7912, 0.02, 0, 1, 1, 0),
(6348, 7912, 0.02, 0, 1, 1, 0),
(6350, 7912, 0.04, 0, 1, 1, 0),
(6371, 7912, 0.02, 0, 1, 1, 0),
(6377, 7912, 0.02, 0, 1, 1, 0),
(6378, 7912, 0.02, 0, 1, 1, 0),
(6379, 7912, 0.04, 0, 1, 1, 0),
(6500, 7912, 0.02, 0, 1, 1, 0),
(6505, 7912, 0.02, 0, 1, 1, 0),
(6506, 7912, 0.02, 0, 1, 1, 0),
(6509, 7912, 0.02, 0, 1, 1, 0),
(6510, 7912, 0.02, 0, 1, 1, 0),
(6511, 7912, 0.02, 0, 1, 1, 0),
(6512, 7912, 0.02, 0, 1, 1, 0),
(6514, 7912, 0.02, 0, 1, 1, 0),
(6516, 7912, 0.02, 0, 1, 1, 0),
(6517, 7912, 0.02, 0, 1, 1, 0),
(6518, 7912, 0.02, 0, 1, 1, 0),
(6527, 7912, 0.02, 0, 1, 1, 0),
(6556, 7912, 0.02, 0, 1, 1, 0),
(6559, 7912, 0.02, 0, 1, 1, 0),
(6560, 7912, 28.8167, 0, 1, 2, 0),
(7011, 7912, 0.06, 0, 1, 1, 0),
(7012, 7912, 0.12, 0, 1, 1, 0),
(7022, 7912, 0.06, 0, 1, 1, 0),
(7023, 7912, 27.2346, 0, 1, 2, 0),
(7025, 7912, 0.02, 0, 1, 1, 0),
(7026, 7912, 0.02, 0, 1, 1, 0),
(7027, 7912, 0.02, 0, 1, 1, 0),
(7028, 7912, 0.02, 0, 1, 1, 0),
(7031, 7912, 31.6923, 0, 1, 2, 0),
(7032, 7912, 32.1016, 0, 1, 2, 0),
(7033, 7912, 0.04, 0, 1, 1, 0),
(7034, 7912, 0.06, 0, 1, 1, 0),
(7039, 7912, 28.9029, 0, 1, 2, 0),
(7040, 7912, 0.02, 0, 1, 1, 0),
(7041, 7912, 0.02, 0, 1, 1, 0),
(7042, 7912, 0.02, 0, 1, 1, 0),
(7043, 7912, 0.02, 0, 1, 1, 0),
(7044, 7912, 0.02, 0, 1, 1, 0),
(7048, 7912, 0.02, 0, 1, 1, 0),
(7049, 7912, 0.02, 0, 1, 1, 0),
(7055, 7912, 0.02, 0, 1, 1, 0),
(7078, 7912, 0.06, 0, 1, 1, 0),
(7092, 7912, 0.02, 0, 1, 1, 0),
(7100, 7912, 0.04, 0, 1, 1, 0),
(7101, 7912, 0.06, 0, 1, 1, 0),
(7104, 7912, 0.14, 0, 1, 1, 0),
(7105, 7912, 0.02, 0, 1, 1, 0),
(7107, 7912, 0.02, 0, 1, 1, 0),
(7108, 7912, 0.02, 0, 1, 1, 0),
(7112, 7912, 0.04, 0, 1, 1, 0),
(7113, 7912, 0.02, 0, 1, 1, 0),
(7115, 7912, 0.02, 0, 1, 1, 0),
(7118, 7912, 0.02, 0, 1, 1, 0),
(7120, 7912, 0.04, 0, 1, 1, 0),
(7125, 7912, 0.12, 0, 1, 1, 0),
(7137, 7912, 24.6575, 0, 1, 2, 0),
(7153, 7912, 0.04, 0, 1, 1, 0),
(7206, 7912, 19, 0, 1, 2, 0),
(7228, 7912, 15, 0, 1, 2, 0),
(7320, 7912, 0.06, 0, 1, 1, 0),
(7321, 7912, 0.06, 0, 1, 1, 0),
(7405, 7912, 0.02, 0, 1, 1, 0),
(7444, 7912, 0.04, 0, 1, 1, 0),
(7450, 7912, 0.06, 0, 1, 1, 0),
(7451, 7912, 0.02, 0, 1, 1, 0),
(7668, 7912, 0.13, 0, 1, 1, 0),
(7670, 7912, 0.1, 0, 1, 1, 0),
(7728, 7912, 0.78, 0, 1, 1, 0),
(7855, 7912, 0.02, 0, 1, 1, 0),
(7856, 7912, 0.02, 0, 1, 1, 0),
(7858, 7912, 0.02, 0, 1, 1, 0),
(7885, 7912, 0.02, 0, 1, 1, 0),
(7886, 7912, 0.02, 0, 1, 1, 0),
(8215, 7912, 27.1429, 0, 1, 2, 0),
(8397, 7912, 14.28, 0, 1, 1, 0),
(8419, 7912, 0.04, 0, 1, 1, 0),
(8442, 7912, 0.03, 0, 1, 1, 0),
(8534, 7912, 0.06, 0, 1, 1, 0),
(8544, 7912, 0.02, 0, 1, 1, 0),
(8545, 7912, 0.02, 0, 1, 1, 0),
(8555, 7912, 0.02, 0, 1, 1, 0),
(8558, 7912, 0.02, 0, 1, 1, 0),
(8596, 7912, 0.02, 0, 1, 1, 0),
(8600, 7912, 0.02, 0, 1, 1, 0),
(8603, 7912, 0.02, 0, 1, 1, 0),
(8667, 7912, 0.02, 0, 1, 1, 0),
(8675, 7912, 0.08, 0, 1, 1, 0),
(8762, 7912, 0.04, 0, 1, 1, 0),
(8764, 7912, 0.02, 0, 1, 1, 0),
(8766, 7912, 0.02, 0, 1, 1, 0),
(8905, 7912, 27.0359, 0, 1, 2, 0),
(8908, 7912, 30.2568, 0, 1, 2, 0),
(8956, 7912, 0.02, 0, 1, 1, 0),
(8957, 7912, 0.02, 0, 1, 1, 0),
(8958, 7912, 0.02, 0, 1, 1, 0),
(8961, 7912, 0.02, 0, 1, 1, 0),
(8996, 7912, 4.92, 0, 1, 1, 0),
(9097, 7912, 0.02, 0, 1, 1, 0),
(9098, 7912, 0.02, 0, 1, 1, 0),
(9163, 7912, 0.02, 0, 1, 1, 0),
(9164, 7912, 0.02, 0, 1, 1, 0),
(9165, 7912, 0.02, 0, 1, 1, 0),
(9166, 7912, 0.04, 0, 1, 1, 0),
(9167, 7912, 0.02, 0, 1, 1, 0),
(9257, 7912, 0.02, 0, 1, 1, 0),
(9258, 7912, 0.02, 0, 1, 1, 0),
(9259, 7912, 0.02, 0, 1, 1, 0),
(9263, 7912, 0.04, 0, 1, 1, 0),
(9264, 7912, 0.02, 0, 1, 1, 0),
(9266, 7912, 0.02, 0, 1, 1, 0),
(9318, 7912, 0.02, 0, 1, 1, 0),
(9416, 7912, 0.02, 0, 1, 1, 0),
(9452, 7912, 0.02, 0, 1, 1, 0),
(9464, 7912, 0.04, 0, 1, 1, 0),
(9690, 7912, 0.02, 0, 1, 1, 0),
(9691, 7912, 0.02, 0, 1, 1, 0),
(9692, 7912, 0.02, 0, 1, 1, 0),
(9695, 7912, 0.02, 0, 1, 1, 0),
(9697, 7912, 0.02, 0, 1, 1, 0),
(9698, 7912, 0.02, 0, 1, 1, 0),
(9779, 7912, 0.02, 0, 1, 1, 0),
(9817, 7912, 0.02, 0, 1, 1, 0),
(9819, 7912, 0.02, 0, 1, 1, 0),
(9862, 7912, 0.02, 0, 1, 1, 0),
(9878, 7912, 0.02, 0, 1, 1, 0),
(9879, 7912, 0.02, 0, 1, 1, 0),
(10120, 7912, 35.1648, 0, 1, 2, 0),
(2258, 7912, 20.1581, 0, 1, 2, 0),
(10382, 7912, 0.02, 0, 1, 1, 0),
(10400, 7912, 0.02, 0, 1, 1, 0),
(10407, 7912, 0.02, 0, 1, 1, 0),
(10427, 7912, 2.94, 0, 1, 1, 0),
(10979, 7912, 15.38, 0, 1, 1, 0),
(11290, 7912, 0.02, 0, 1, 1, 0),
(11443, 7912, 0.02, 0, 1, 1, 0),
(11455, 7912, 0.02, 0, 1, 1, 0),
(11561, 7912, 0.02, 0, 1, 1, 0),
(11563, 7912, 0.02, 0, 1, 1, 0),
(11686, 7912, 0.38, 0, 1, 1, 0),
(11687, 7912, 0.36, 0, 1, 1, 0),
(11698, 7912, 0.02, 0, 1, 1, 0),
(11735, 7912, 0.02, 0, 1, 1, 0),
(11737, 7912, 0.02, 0, 1, 1, 0),
(11738, 7912, 0.02, 0, 1, 1, 0),
(11739, 7912, 0.02, 0, 1, 1, 0),
(11740, 7912, 0.02, 0, 1, 1, 0),
(11744, 7912, 0.02, 0, 1, 1, 0),
(11746, 7912, 31.5797, 0, 1, 2, 0),
(11778, 7912, 18.243, 0, 1, 2, 0),
(11781, 7912, 29.8886, 0, 1, 2, 0),
(11783, 7912, 28.2892, 0, 1, 2, 0),
(11784, 7912, 25.7148, 0, 1, 2, 0),
(11785, 7912, 0.22, 0, 1, 1, 0),
(11786, 7912, 0.26, 0, 1, 1, 0),
(11787, 7912, 0.13, 0, 1, 1, 0),
(11788, 7912, 0.18, 0, 1, 1, 0),
(11790, 7912, 0.02, 0, 1, 1, 0),
(11791, 7912, 0.04, 0, 1, 1, 0),
(11792, 7912, 0.02, 0, 1, 1, 0),
(11803, 7912, 0.08, 0, 1, 1, 0),
(11880, 7912, 0.02, 0, 1, 1, 0),
(11881, 7912, 0.02, 0, 1, 1, 0),
(12046, 7912, 0.9, 0, 1, 1, 0),
(12101, 7912, 28.0646, 0, 1, 2, 0),
(12076, 7912, 22.5982, 0, 1, 2, 0),
(12100, 7912, 23.1544, 0, 1, 2, 0),
(12178, 7912, 0.02, 0, 1, 1, 0),
(12179, 7912, 0.02, 0, 1, 1, 0),
(12201, 7912, 18, 0, 1, 2, 0),
(12206, 7912, 30.3634, 0, 1, 2, 0),
(12207, 7912, 0.3, 0, 1, 1, 0),
(12216, 7912, 0.02, 0, 1, 1, 0),
(12218, 7912, 0.02, 0, 1, 1, 0),
(12219, 7912, 0.03, 0, 1, 1, 0),
(12222, 7912, 0.02, 0, 1, 1, 0),
(12203, 7912, 16, 0, 1, 2, 0),
(12250, 7912, 0.04, 0, 1, 1, 0),
(13022, 7912, 0.02, 0, 1, 1, 0),
(13141, 7912, 0.04, 0, 1, 1, 0),
(13142, 7912, 0.22, 0, 1, 1, 0),
(13323, 7912, 0.04, 0, 1, 1, 0),
(9502, 7912, 15, 0, 1, 2, 0),
(13718, 7912, 0.056, 0, 1, 1, 0),
(14225, 7912, 0.36, 0, 1, 1, 0),
(14356, 7912, 0.13, 0, 1, 1, 0),
(14446, 7912, 0.54, 0, 1, 1, 0),
(14467, 7912, 0.82, 0, 1, 1, 0),
(15692, 7912, 0.04, 0, 1, 1, 0),
(14455, 7912, 0.12, 0, 1, 1, 0),
(9818, 7912, 0.02, 0, 1, 1, 0),
(6147, 7912, 28.749, 0, 1, 2, 0),
(7666, 7912, 0.16, 0, 1, 1, 0),
(8400, 7912, 21.3542, 0, 1, 2, 0),
(6135, 7912, 0.06, 0, 1, 1, 0),
(1793, 7912, 0.02, 0, 1, 1, 0),
(9397, 7912, 0.52, 0, 1, 1, 0),
(7035, 7912, 0.08, 0, 1, 1, 0),
(8278, 7912, 23.871, 0, 1, 2, 0),
(5460, 7912, 0.18, 0, 1, 1, 0),
(5421, 7912, 0.04, 0, 1, 1, 0),
(13599, 7912, 0.04, 0, 1, 1, 0),
(2640, 7912, 0.12, 0, 1, 1, 0),
(5469, 7912, 25.5814, 0, 1, 2, 0),
(5991, 7912, 0.02, 0, 1, 1, 0),
(7136, 7912, 28.3984, 0, 1, 2, 0),
(7126, 7912, 0.02, 0, 1, 1, 0),
(7441, 7912, 0.02, 0, 1, 1, 0),
(1809, 7912, 0.02, 0, 1, 1, 0),
(6646, 7912, 29.6703, 0, 1, 2, 0),
(7669, 7912, 0.34, 0, 1, 1, 0),
(4475, 7912, 0.02, 0, 1, 1, 0),
(7149, 7912, 0.02, 0, 1, 1, 0),
(8907, 7912, 27.2206, 0, 1, 2, 0),
(7109, 7912, 0.02, 0, 1, 1, 0),
(5364, 7912, 0.02, 0, 1, 1, 0),
(5977, 7912, 0.02, 0, 1, 1, 0),
(8546, 7912, 0.02, 0, 1, 1, 0),
(14340, 7912, 0.2, 0, 1, 1, 0),
(7047, 7912, 0.02, 0, 1, 1, 0),
(6004, 7912, 0.06, 0, 1, 1, 0),
(2505, 7912, 0.02, 0, 1, 1, 0),
(1804, 7912, 0.02, 0, 1, 1, 0),
(9877, 7912, 0.04, 0, 1, 1, 0),
(6519, 7912, 0.02, 0, 1, 1, 0),
(5978, 7912, 0.02, 0, 1, 1, 0),
(1805, 7912, 0.04, 0, 1, 1, 0),
(7440, 7912, 0.02, 0, 1, 1, 0),
(7439, 7912, 0.02, 0, 1, 1, 0),
(9268, 7912, 0.02, 0, 1, 1, 0),
(10083, 7912, 0.02, 0, 1, 1, 0),
(6557, 7912, 0.02, 0, 1, 1, 0),
(8550, 7912, 0.02, 0, 1, 1, 0),
(10412, 7912, 0.02, 0, 1, 1, 0),
(4494, 7912, 0.02, 0, 1, 1, 0),
(6130, 7912, 0.04, 0, 1, 1, 0),
(7457, 7912, 0.02, 0, 1, 1, 0),
(8556, 7912, 0.02, 0, 1, 1, 0),
(9241, 7912, 0.02, 0, 1, 1, 0),
(10398, 7912, 0.02, 0, 1, 1, 0),
(11747, 7912, 31.528, 0, 1, 2, 0),
(11476, 7912, 0.02, 0, 1, 1, 0),
(10414, 7912, 0.02, 0, 1, 1, 0),
(9197, 7912, 0.04, 0, 1, 1, 0),
(9096, 7912, 0.02, 0, 1, 1, 0),
(8279, 7912, 29.2208, 0, 1, 2, 0),
(8977, 7912, 0.34, 0, 1, 1, 0),
(1845, 7912, 0.012, 0, 1, 1, 0),
(7036, 7912, 0.02, 0, 1, 1, 0),
(7114, 7912, 0.02, 0, 1, 1, 0),
(8637, 7912, 0.04, 0, 1, 1, 0),
(14471, 7912, 22.449, 0, 1, 2, 0),
(7442, 7912, 0.02, 0, 1, 1, 0),
(5287, 7912, 0.02, 0, 1, 1, 0),
(2831, 7912, 0.02, 0, 1, 1, 0),
(2932, 7912, 0.03, 0, 1, 1, 0),
(11782, 7912, 30.8157, 0, 1, 2, 0),
(1558, 7912, 0.02, 0, 1, 1, 0),
(2716, 7912, 0.04, 0, 1, 1, 0),
(11777, 7912, 20.8787, 0, 1, 2, 0),
(5239, 7912, 0.02, 0, 1, 1, 0),
(5247, 7912, 0.38, 0, 1, 1, 0),
(11685, 7912, 0.2, 0, 1, 1, 0),
(5254, 7912, 0.02, 0, 1, 1, 0),
(5853, 7912, 30.1245, 0, 1, 2, 0),
(4684, 7912, 0.02, 0, 1, 1, 0),
(2693, 7912, 0.012, 0, 1, 1, 0),
(1490, 7912, 0.02, 0, 1, 1, 0),
(8837, 7912, 0.16, 0, 1, 1, 0),
(8960, 7912, 0.02, 0, 1, 1, 0),
(5244, 7912, 0.098, 0, 1, 1, 0),
(5274, 7912, 0.02, 0, 1, 1, 0),
(6127, 7912, 0.015, 0, 1, 1, 0),
(7154, 7912, 0.02, 0, 1, 1, 0),
(5296, 7912, 0.06, 0, 1, 1, 0),
(14661, 7912, 0.1, 0, 1, 1, 0),
(2926, 7912, 0.06, 0, 1, 1, 0),
(5985, 7912, 0.04, 0, 1, 1, 0),
(8136, 7912, 0.18, 0, 1, 1, 0),
(6199, 7912, 0.02, 0, 1, 1, 0),
(11793, 7912, 0.02, 0, 1, 1, 0),
(5451, 7912, 0.34, 0, 1, 1, 0),
(2521, 7912, 0.08, 0, 1, 1, 0),
(5430, 7912, 0.04, 0, 1, 1, 0),
(5299, 7912, 0.1, 0, 1, 1, 0),
(5427, 7912, 0.02, 0, 1, 1, 0),
(4130, 7912, 0.1, 0, 1, 1, 0),
(4674, 7912, 0.02, 0, 1, 1, 0),
(2749, 7912, 22.0339, 0, 1, 2, 0),
(2723, 7912, 23.0906, 0, 1, 2, 0),
(2556, 7912, 0.02, 0, 1, 1, 0),
(2557, 7912, 0.08, 0, 1, 1, 0),
(2573, 7912, 0.1, 0, 1, 1, 0),
(2751, 7912, 20.9677, 0, 1, 2, 0),
(11562, 7912, 0.02, 0, 1, 1, 0),
(4662, 7912, 0.02, 0, 1, 1, 0),
(2254, 7912, 0.02, 0, 1, 1, 0),
(2596, 7912, 0.08, 0, 1, 1, 0),
(7730, 7912, 0.62, 0, 1, 1, 0),
(4034, 7912, 0.08, 0, 1, 1, 0),
(4109, 7912, 0.02, 0, 1, 1, 0),
(4026, 7912, 0.02, 0, 1, 1, 0),
(6380, 7912, 0.02, 0, 1, 1, 0),
(674, 7912, 0.02, 0, 1, 1, 0),
(12217, 7912, 0.02, 0, 1, 1, 0),
(12220, 7912, 0.08, 0, 1, 1, 0),
(5293, 7912, 0.07, 0, 1, 1, 0),
(5855, 7912, 0.12, 0, 1, 1, 0),
(11789, 7912, 0.22, 0, 1, 1, 0),
(8959, 7912, 0.02, 0, 1, 1, 0),
(7155, 7912, 0.02, 0, 1, 1, 0),
(6201, 7912, 0.02, 0, 1, 1, 0),
(7447, 7912, 0.08, 0, 1, 1, 0),
(1815, 7912, 0.04, 0, 1, 1, 0),
(10605, 7912, 0.02, 0, 1, 1, 0),
(8906, 7912, 28.046, 0, 1, 2, 0),
(7671, 7912, 0.06, 0, 1, 1, 0),
(7438, 7912, 0.02, 0, 1, 1, 0),
(9240, 7912, 0.02, 0, 1, 1, 0),
(6513, 7912, 0.02, 0, 1, 1, 0),
(10381, 7912, 0.02, 0, 1, 1, 0),
(10406, 7912, 0.02, 0, 1, 1, 0),
(7808, 7912, 0.18, 0, 1, 1, 0),
(14604, 7912, 28.9594, 0, 1, 2, 0),
(13959, 7912, 0.82, 0, 1, 1, 0),
(14464, 7912, 22.8571, 0, 1, 1, 0),
(10991, 7912, 0.02, 0, 1, 1, 0),
(8504, 7912, 0.06, 0, 1, 1, 0),
(14462, 7912, 32.0462, 0, 1, 2, 0),
(13742, 7912, 0.18, 0, 1, 1, 0),
(2919, 7912, 27.6617, 0, 1, 2, 0),
(1800, 7912, 0.02, 0, 1, 1, 0),
(14640, 7912, 28.3026, 0, 1, 2, 0),
(13696, 7912, 0.04, 0, 1, 1, 0),
(8923, 7912, 16, 0, 1, 2, 0),
(11937, 7912, 28.0255, 0, 1, 2, 0),
(11838, 7912, 0.06, 0, 1, 1, 0),
(11678, 7912, 0.02, 0, 1, 1, 0),
(11675, 7912, 0.02, 0, 1, 1, 0),
(10986, 7912, 0.04, 0, 1, 1, 0),
(9477, 7912, 0.02, 0, 1, 1, 0),
(9396, 7912, 32.0096, 0, 1, 2, 0),
(8981, 7912, 23.7288, 0, 1, 2, 0),
(7767, 7912, 33.34, 0, 1, 1, 0),
(2759, 7912, 0.1, 0, 1, 1, 0),
(2605, 7912, 6.6667, 0, 3, 3, 0),
(2755, 7912, 23.6504, 0, 1, 2, 0),
(5470, 7912, 33.75, 0, 1, 2, 0),
(13136, 7912, 0.02, 0, 1, 1, 0),
(9461, 7912, 0.02, 0, 1, 1, 0),
(9136, 7912, 36.4, 0, 1, 1, 0),
(8608, 7912, 10.82, 0, 1, 1, 0),
(2763, 7912, 28.1124, 0, 1, 2, 0),
(7135, 7912, 41.3502, 0, 1, 2, 0),
(5981, 7912, 0.024, 0, 1, 1, 0),
(14372, 7912, 29.41, 0, 1, 1, 0),
(2775, 7912, 50, 0, 1, 1, 0),
(2757, 7912, 0.02, 0, 1, 1, 0),
(13736, 7912, 0.1, 0, 1, 1, 0),
(6118, 7912, 0.05, 0, 1, 1, 0),
(11665, 7912, 26.5011, 0, 1, 1, 0);


-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1076
REPLACE INTO creature_involvedrelation VALUES (7918, 2954);
REPLACE INTO creature_questrelation VALUES 
(7918, 2977),
(7918, 2967);
DELETE FROM creature WHERE id = 7918;


-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1129
UPDATE creature_loot_template SET ChanceOrQuestChance = -28.9846 WHERE entry = 6348 AND item = 20087 AND groupid = 0;
UPDATE creature_loot_template SET ChanceOrQuestChance = -15.18 WHERE entry = 6349 AND item = 20087 AND groupid = 0;
UPDATE creature_loot_template SET ChanceOrQuestChance = -31.8124 WHERE entry = 6347 AND item = 20087 AND groupid = 0;

-- Deleted loot_table from not existing item. (if needed i got the loot table backed up)
DELETE FROM item_loot_template WHERE entry in (51255, 51256);
