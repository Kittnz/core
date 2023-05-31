-- Fix trainer list for Ilsa Corbin missing some spells.
DELETE FROM `npc_trainer` WHERE `entry`=5480;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 
(5480, 797, 4000, 0, 0, 20),
(5480, 798, 10000, 0, 0, 26),
(5480, 1055, 11000, 0, 0, 28),
(5480, 1065, 1500, 0, 0, 14),
(5480, 1229, 100, 0, 0, 6),
(5480, 1343, 100, 0, 0, 6),
(5480, 1344, 3000, 0, 0, 18),
(5480, 1423, 100, 0, 0, 4),
(5480, 1424, 4000, 0, 0, 20),
(5480, 1482, 12000, 0, 0, 30),
(5480, 1606, 200, 0, 0, 8),
(5480, 1607, 2000, 0, 0, 16),
(5480, 1610, 8000, 0, 0, 24),
(5480, 1611, 14000, 0, 0, 32),
(5480, 1646, 3000, 0, 0, 18),
(5480, 1675, 1000, 0, 0, 12),
(5480, 1676, 14000, 0, 0, 32),
(5480, 1677, 54000, 0, 0, 52),
(5480, 1685, 18000, 0, 0, 36),
(5480, 1716, 200, 0, 0, 8),
(5480, 1722, 42000, 0, 0, 50),
(5480, 1738, 100, 0, 0, 4),
(5480, 2570, 2000, 0, 0, 16),
(5480, 2688, 600, 0, 0, 10),
(5480, 3128, 100, 0, 0, 6),
(5480, 3433, 12000, 0, 0, 30),
(5480, 3434, 22000, 0, 0, 40),
(5480, 3435, 42000, 0, 0, 50),
(5480, 5243, 1000, 0, 0, 12),
(5480, 5247, 6000, 0, 0, 20),
(5480, 5283, 8000, 0, 0, 24),
(5480, 6158, 22000, 0, 0, 40),
(5480, 6176, 14000, 0, 0, 32),
(5480, 6177, 22000, 0, 0, 40),
(5480, 6180, 10000, 0, 0, 26),
(5480, 6191, 8000, 0, 0, 24),
(5480, 6193, 6000, 0, 0, 22),
(5480, 6543, 14000, 0, 0, 32),
(5480, 6549, 600, 0, 0, 10),
(5480, 6550, 4000, 0, 0, 20),
(5480, 6551, 12000, 0, 0, 30),
(5480, 6553, 20000, 0, 0, 38),
(5480, 6556, 60000, 0, 0, 58),
(5480, 6573, 1500, 0, 0, 14),
(5480, 6575, 8000, 0, 0, 24),
(5480, 6674, 10, 0, 0, 1),
(5480, 7109, 22000, 0, 0, 40),
(5480, 7374, 14000, 0, 0, 32),
(5480, 7375, 56000, 0, 0, 54),
(5480, 7380, 16000, 0, 0, 34),
(5480, 7382, 2000, 0, 0, 16),
(5480, 7385, 1000, 0, 0, 12),
(5480, 7401, 10000, 0, 0, 26),
(5480, 7403, 18000, 0, 0, 36),
(5480, 7406, 6000, 0, 0, 22),
(5480, 7889, 11000, 0, 0, 28),
(5480, 8206, 11000, 0, 0, 28),
(5480, 8207, 20000, 0, 0, 38),
(5480, 8381, 16000, 0, 0, 34),
(5480, 8821, 20000, 0, 0, 38),
(5480, 11552, 32000, 0, 0, 42),
(5480, 11553, 54000, 0, 0, 52),
(5480, 11557, 16000, 0, 0, 34),
(5480, 11558, 34000, 0, 0, 44),
(5480, 11559, 56000, 0, 0, 54),
(5480, 11570, 40000, 0, 0, 48),
(5480, 11571, 58000, 0, 0, 56),
(5480, 11575, 22000, 0, 0, 40),
(5480, 11576, 42000, 0, 0, 50),
(5480, 11577, 62000, 0, 0, 60),
(5480, 11579, 36000, 0, 0, 46),
(5480, 11582, 40000, 0, 0, 48),
(5480, 11583, 60000, 0, 0, 58),
(5480, 11586, 34000, 0, 0, 44),
(5480, 11587, 62000, 0, 0, 60),
(5480, 11598, 36000, 0, 0, 46),
(5480, 11599, 60000, 0, 0, 58),
(5480, 11602, 34000, 0, 0, 44),
(5480, 11603, 56000, 0, 0, 54),
(5480, 11606, 36000, 0, 0, 46),
(5480, 11607, 56000, 0, 0, 54),
(5480, 18556, 14000, 0, 0, 32),
(5480, 20561, 36000, 0, 0, 46),
(5480, 20562, 58000, 0, 0, 56),
(5480, 20571, 62000, 0, 0, 60),
(5480, 20621, 32000, 0, 0, 42),
(5480, 20622, 54000, 0, 0, 52),
(5480, 20703, 40000, 0, 0, 48),
(5480, 20704, 58000, 0, 0, 56),
(5480, 20724, 4000, 0, 0, 20),
(5480, 21555, 200, 0, 0, 48),
(5480, 21557, 2800, 0, 0, 54),
(5480, 21558, 3100, 0, 0, 60),
(5480, 23898, 2000, 0, 0, 48),
(5480, 23899, 2800, 0, 0, 54),
(5480, 23900, 3100, 0, 0, 60),
(5480, 23926, 200, 0, 0, 48),
(5480, 23927, 2800, 0, 0, 54),
(5480, 23928, 3100, 0, 0, 60),
(5480, 47293, 40000, 0, 0, 54),
(5480, 47295, 46000, 0, 0, 60);



