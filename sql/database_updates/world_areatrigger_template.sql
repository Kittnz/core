-- Fix custom area triggers:

DELETE FROM `areatrigger_template` WHERE `id` >= 5000;

REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`, `box_x`, `box_y`, `box_z`, `box_orientation`) VALUES 
(109, 35, -1.11312, 32.4854, -21.1963, 3, 0, 0, 0, 0),
(5000, 0, -1168.4, -1811.69, 52.8856, 3, 0, 0, 0, 0),
(5001, 800, -1168.4, -1811.69, 52.8856, 3, 0, 0, 0, 0),
(5002, 0, -8674.59, 633.4, 97, 3, 0, 0, 0, 0),
(5003, 0, -9362.37, 537.774, 48.6679, 3, 0, 0, 0, 0),
(5004, 1, 1689.78, -1272.15, 161.678, 3, 0, 0, 0, 0),
(5005, 802, 585.620, 96.658, 275.854, 3, 0, 0, 0, 0),
(5006, 1, -8766.95, -4169.93, -210.059, 3, 0, 0, 0, 0),
(5007, 269, -2020.5, 6590, -154, 3, 0, 0, 0, 0),
(5008, 0, -11068.3, -1811.69, 53, 3, 0, 0, 0, 0),
(5009, 0, -8173, -3114.57, 201.218, 3, 0, 0, 0, 0),
(5010, 1, 1689.78, -1272.15, 161.678, 3, 0, 0, 0, 0),
(5011, 800, -11068.3, -1814.06, 53.9778, 3, 0, 0, 0, 0),
(5012, 802, 585, 97, 276, 3, 0, 0, 0, 0),
(5013, 808, -8172.85, -3114.18, 200.625, 3, 0, 0, 0, 0),
(5014, 0, -1096.81, 2234.77, 182.86, 3, 0, 0, 0, 0),
(5015, 815, -1091.20, 2232.21, 182.86, 3, 0, 0, 0, 0),
(5016, 807, 2767.40, 2959.00, 30.109, 3, 0, 0, 0, 0),
(5017, 1, 4833.13, -1756.65, 1158.04, 3, 0, 0, 0, 0),
(5018, 0, -11110.527, -2004.253, 49.331, 3, 0, 0, 0, 0),
(5019, 532, -11111.247, -2004.3238, 49.890, 3, 0, 0, 0, 0);

DELETE FROM `areatrigger_teleport` WHERE `id` >= 5000;

REPLACE INTO `areatrigger_teleport` (`id`, `name`, `message`, `required_level`, `required_condition`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(107, 'Stormwind Vault - Entrance', 'You must be at least level 58 to enter.', 58, 0, 35, -0.91, 40.57, -24.23, 0),
(1629, 'Black Morass - Exit', '', 0, 0, 1, -8756.8, -4191.3, -209.4, 5.5),
(1632, 'Black Morass - Entrance', 'You must be at least level 58 to enter.', 58, 0, 269, -2002.5, 6575.3, -154.9, 5.7),
(5002, 'Stormwind Vault - Entrance (outside)', 'You must be at least level 58 to enter.', 58, 0, 35, -0.91, 40.57, -24.23, 0),
(5004, 'Crescent Grove - Entrance', 'You must be at least level 32 to enter.', 32, 0, 802, 579.13, 90.7, 276.11, 3.4),
(5005, 'Crescent Grove - Exit', '', 0, 0, 1, 1722.0, -1272.6, 163.26, 5.8),
(5008, 'Karazhan Crypt - Entrance', 'You must be at least level 55 to enter.', 55, 0, 800, -11068.1, -1806.4, 52.7, 1.5),
(5009, 'Hateforge Quarry - Entrance', 'You must be at least level 48 to enter.', 48, 0, 808, -8173.9, -3120.6, 199.8, 4.7),
(5011, 'Karazhan Crypt - Exit', '', 0, 0, 0, -11068.9, -1828.6, 60.26, 3.1),
(5012, 'The Crescent Grove - Exit', '', 0, 0, 1, 1722, -1272.6, 163.26, 5.8),
(5013, 'Hateforge Quarry - Exit', '', 0, 0, 0, -8169.2, -3106.7, 200.4, 1.1),
(5014, 'Gilneas City - Entrance', 'You must be at least level 40 to enter.', 40, 0, 815, -1100.00, 2237.75, 182.86, 2.6),
(5015, 'Gilneas City - Exit', '', 0, 0, 0, -1089.86, 2231.4, 182.859, 5.54),
(5016, 'Emerald Sanctum - Exit', '', 0, 0, 1, 4819.065, -1746.326, 1156.988, 2.5),
(5017, 'Emerald Sanctum - Entrance', 'You must be at least level 60 to enter.', 60, 19000, 807, 2762.248, 2972.768, 26.903, 1.9),
(5018, 'Lower Karazhan Halls - Entrance', 'You must be at least level 60 to enter.', 60, 0, 532, -11104.279, -1999.422, 49.890, 0.6),
(5019, 'Lower Karazhan Halls - Exit', '', 0, 0, 0, -11118.472, -2010.843, 47.082, 3.7);