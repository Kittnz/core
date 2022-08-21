DROP TABLE IF EXISTS `guild_house`;
CREATE TABLE `guild_house`  (
  `guild_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `map_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Teleportation coordinates for Guild Housing' ROW_FORMAT = FIXED;


REPLACE INTO `guild_house` VALUES 
(189, 1, 7301.3, -1523.8, 179.8, 1.4),     -- Rush'n Attack                     
(172, 1, -3134.49, 2415.03, 253.12, 5.5),  -- Traveler
(415, 0, 1568.51, -3062.9, 78.08, 1.97),   -- The Crusade
(212, 1, -5546.96, -4071.97, -58.50, 3.2), -- Rats
(3,  0, -1853.48, -4091.64, 9.81, 4.7),   -- Thunder Ale Brewing Co
(168, 1, 2934.71, -4762.13, 234.06, 5.6),  -- Macrochelys
(226, 1, 1017.24, -2225.02, 93.09, 5.15),  -- Warsong Outriders
(254, 1, 7.71, -3619.13, 27.22, 2.5),      -- Southfury Trading Co
(49, 0, 2743.08, -1032.77, 112.89, 5.32), -- The Scarlet Crusade
(358, 0, 2102.03, -865.82, 109.5, 0.7),    -- The Scourge 
(176, 1, -10707.2, 2483.1, 7.9, 3.4),      -- Philanthropy
(215, 0, -5895.49, -3600.1, 350.5, 4.01),  -- Heirs of Quel'Thalas
(346, 1, 2372.3, -2527.9, 108.6, 0.3),     -- Hand of Wrath
(322, 1, 1557.9, -2887.1, 183.3, 1.9),     -- Ered Ruin
(339, 1, -727.7, -3943.3, 23.48, 5.5),     -- Golden Moon
(363, 1, 7118.21, -3926.49, 704.3, 0.2),   -- School of the Dragonhawk
(351, 0, -10377.1, -3374.04, 21.82, 1.8),  -- Blacktooth Grin
(295, 0, 843.65, -5069.647, 8.589, 0.53),  -- Nephilim
(376, 0, -10598.617, -40.95, 35.9, 5.89),  -- The Lions Pride Legion
(76,  1, -11523.83, -4660.29, 3.005, 2.2), -- Schmetterlingsbrigade
(466, 1, -6904.55, -4238.45, 11.81, 0.6),  -- Hard Knocks Society
(444, 0, -8809.33, 1093.16, 95.53, 3.4),   -- Thalassian Alliance
(436, 0, -8341.12, -836.33, 225.91, 0.8),  -- The Blackwing Guard
(428, 1, -9669.25, -1967.92, 0.51, 0.3),   -- Conquistadores
(403, 1, -7600.9, -2337.65, -190.2, 5.08), -- Get Rich Or Die Grinding
(504, 0, -3850.1, -2403.2, 172.2, 5.49),   -- Hawks Talon
(283, 0, -734.2, -318.9, 18.2, 1.29);      -- The Silver Crusade