-- Gnomes missing at entrance elevator Gnomergan.
delete from creature where guid in (2444, 2445, 2446, 2447, 2448, 2449, 1317, 1312, 1237, 1215, 1162, 1158, 1115, 1070, 2442, 2443, 190230, 190231);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES 
(2444,   6221, 0, 0, 0, 0, -5174.38,  661.967, 348.278, 4.08332, 300, 300, 0, 100, 100, 0, 0, 0),
(2445,   6221, 0, 0, 0, 0, -5154.36,  642.31,  348.579, 1.65453, 300, 300, 0, 100, 100, 0, 0, 0),
(2446,   6221, 0, 0, 0, 0, -5160.54,  692.712, 363.206, 1.49376, 300, 300, 0, 100, 100, 0, 0, 0),
(2447,   6221, 0, 0, 0, 0, -5161.55,  692.698, 363.156,   1.494, 300, 300, 0, 100, 100, 0, 0, 0),
(2448,   6221, 0, 0, 0, 0, -5159.92,  678.097, 355.474, 4.37645, 300, 300, 0, 100, 100, 0, 0, 0),
(2449,   6221, 0, 0, 0, 0, -5164.45,  678.521,  355.51, 4.71333, 300, 300, 0, 100, 100, 0, 0, 0),
(1317,   6221, 0, 0, 0, 0, -5147.16,  724.579, 247.452, 4.88733, 300, 300, 2, 100, 100, 1, 0, 0),
(1312,   6221, 0, 0, 0, 0, -5144.45,  722.003, 247.452, 1.60818, 300, 300, 2, 100, 100, 1, 0, 0),
(1237,   6221, 0, 0, 0, 0, -5164.34,  730.808, 247.369, 3.24715, 300, 300, 2, 100, 100, 1, 0, 0),
(1215,   6221, 0, 0, 0, 0, -5152.34,  695.808, 247.369, 3.24715, 300, 300, 2, 100, 100, 1, 0, 0),
(1162,   6221, 0, 0, 0, 0, -5159.34,  708.808, 247.369, 3.24715, 300, 300, 2, 100, 100, 1, 0, 0),
(1158,   6221, 0, 0, 0, 0, -5157.94,  679.544, 247.369, 4.71333, 300, 300, 2, 100, 100, 1, 0, 0),
(1115,   6221, 0, 0, 0, 0, -5163.22,  686.593, 247.369, 4.71333, 300, 300, 2, 100, 100, 1, 0, 0),
(1070,   6221, 0, 0, 0, 0, -5166.34,  700.808, 247.369, 3.24715, 300, 300, 2, 100, 100, 1, 0, 0),
(2442,   7843, 0, 0, 0, 0, -5165.01,  635.986, 348.362, 3.47321, 285, 285, 0, 100, 100, 2, 0, 0),
(2443,   7843, 0, 0, 0, 0, -5162.95,  636.182, 348.362, 1.74533, 285, 285, 0, 100, 100, 0, 0, 0),
(190230, 7843, 0, 0, 0, 0, -5132.08,  -1674.8, 497.961, 2.35441,  60,  60, 0, 100, 100, 2, 0, 0),
(190231, 7843, 0, 0, 0, 0, -5127.45, -1682.94, 497.961, 3.24715,  60,  60, 0, 100, 100, 0, 0, 0);