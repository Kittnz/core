
-- ### Structure for `shop_categories`

DROP TABLE IF EXISTS `shop_categories`;
CREATE TABLE `shop_categories` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ### Structure for `shop_items`

DROP TABLE IF EXISTS `shop_items`;
CREATE TABLE `shop_items` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(11) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `price` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

replace into shop_categories values
-- Contents for shop_categories & shop_items -----------------------------------------------------------
(1, 'Gameplay'),
(2, 'Companions'),
(3, 'Mounts'),
(4, 'Tabards'),
(5, 'Roleplay'),
(6, 'Skins');

replace into shop_items values
-- Gameplay --------------------------------------------------------------------------------------------
(100, 1, 50010, 'Hardcore Mode (0.5 rates for mob kills)', 0),
(101, 1, 50016, 'Portable Meeting Stone (RP Hub)', 0),
(102, 1, 50008, 'Turtle Twink\'s Insignia (Stop XP)', 0),
(103, 1, 50000, 'Character Name Change', 100),
(104, 1, 50001, 'Character Race Change', 200),
(105, 1, 50002, 'Character Look Change', 150),
(106, 1, 50003, 'Loremaster\'s Backpack (28 slot bag)', 75),
(107, 1, 50011, 'MOLL-E, Remote Mail Terminal', 100),
(108, 1, 50009, 'Mechanical Auctioneer', 100),
(109, 1, 50005, 'Field Repair Bot 75B', 100),
(110, 1, 50004, 'Portable Black Hole (36 slot bag)', 150),
(111, 1, 50007, 'Forworn Mule (Bank)', 200),
-- Pets ------------------------------------------------------------------------------------------------
(200, 2, 13582, 'Zergling Leash', 50),
(201, 2, 13584, 'Diablo Stone', 50),
(202, 2, 13583, 'Panda Collar', 50),
(203, 2, 20371, 'Blue Murloc Egg', 50),
(204, 2, 23713, 'Hippogryph Hatchling', 50),
(205, 2, 19055, 'Green Dragon Orb', 50),
(206, 2, 21168, 'Baby Shark', 50),
(207, 2, 50013, 'Bone Golem', 50),
(208, 2, 50019, 'Moonkin Egg', 50),
(209, 2, 19055, 'Green Dragon Orb', 50),
(210, 2, 50083, 'Ancient Arcane Dust', 50),
(211, 2, 50084, 'Kirin Tor Familiar', 50),
(212, 2, 22781, 'Polar Bear Collar', 50),
(213, 2, 50085, 'Frostwolf Ghostpup', 50),
-- (214, 2, 50077, 'Faeling Egg', 50),
(215, 2, 50240, 'Kodo Calfling', 50),
-- Mounts --------------------------------------------------------------------------------------
-- (300, 3, 50071, 'Level 1   Ivory Tallstrider', 100),
(301, 3, 50072, 'Level 1   Brown Tallstrider', 100),
-- (302, 3, 50073, 'Level 1   Gray Tallstrider', 100),
(303, 3, 50076, 'Level 1   Turquoise Tallstrider', 100),
-- (304, 3, 50074, 'Level 1   Swift Lovebird', 125),
-- (305, 3, 12325, 'Level 40 Primal Leopard', 150),
(306, 3, 12326, 'Level 40 Tawny Sabercat', 150),
(307, 3, 8630,  'Level 40 Bengal Tiger', 150),
-- (308, 3, 8583,  'Level 40 "Skeletal" Horse', 150),
-- (309, 3, 21044, 'Level 40 Reindeer Reins', 150),
-- (310, 3, 13322, 'Level 40 Unpainted Mechanostrider', 150),
-- (311, 3, 13323, 'Level 40 Purple Mechanostrider', 150),
(312, 3, 13324, 'Level 40 Red and Blue Mechanostrider', 150),
(313, 3, 13325, 'Level 40 Fluorescent Mechanostrider', 150),
-- Don't rename it again please, it doesn't fit into 1 line and my OCD is really triggered!
-- (314, 3, 14062, 'Level 40 Kodo Mount', 150),
(315, 3, 5875, 'Level 40 Blue Ram', 150),
-- (316, 3, 5874, 'Level 40 Black Ram', 150),
-- (317, 3, 1041, 'Level 40 Black Wolf', 150),
(318, 3, 8590, 'Level 40 Obsidian Raptor', 150),
-- (319, 3, 13329, 'Level 60 Frost Ram', 250),
-- (320, 5, 13327, 'Level 60 Icy Blue Mechanostrider Mod A', 250),
-- (321, 5, 13326, 'Level 60 White Mechanostrider Mod B', 250),
-- (322, 3, 12354, 'Level 60 Palomino', 250),
-- (323, 3, 12353, 'Level 60 White Stallion', 250),
-- (324, 3, 12302, 'Level 60 Ancient Frostsaber', 250),
(325, 3, 12303, 'Level 60 Black Nightsaber', 250),
(326, 3, 12351, 'Level 60 Arctic Wolf', 250),
-- (327, 3, 12330, 'Level 60 Red Wolf', 250),
-- (328, 3, 15292, 'Level 60 Green Kodo', 250),
(329, 3, 15293, 'Level 60 Teal Kodo', 250),
(330, 3, 13317, 'Level 60 Ivory Raptor', 250),
(331, 3, 8586, 'Level 60 Mottled Red Raptor', 250),
(333, 3, 18768, 'Level 60 Swift Dawnsaber', 250),
(334, 3, 23193, 'Level 60 Skeletal Steed', 250),
-- Tabards ---------------------------------------------------------------------------------------------
(400, 4, 23709, 'Tabard of Frost', 125),
(401, 4, 23705, 'Tabard of Flame', 125),
(402, 4, 23710, 'Darkmoon Faire Tabard', 100),
(403, 4, 22999, 'Tabard of the Argent Dawn', 50),
(404, 4, 50044, 'Goldweave Tabard', 75),
(405, 4, 50086, 'Stromgarde Tabard', 75),
(406, 4, 50087, 'Tabard of Kul\'Tiras', 75),
(407, 4, 50088, 'Theramore Tabard', 75),
(408, 4, 50089, 'Dalaran Tabard', 75),
(409, 4, 50090, 'White Tabard of Stormwind', 75),
(410, 4, 50091, 'Scholomance Tabard', 75),
(411, 4, 50091, 'Whitemane\'s Tabard', 75),
(412, 4, 23192, 'Tabard of Scarlet Preacher', 75),
(413, 4, 23193, 'Tabard of Scarlet Archmage', 75),
-- Roleplay --------------------------------------------------------------------------------------------
(500, 5, 50024, 'Dressing Box: Invisible Suit', 25),
(501, 5, 50022, 'Dressing Box: Midsummer Priestess', 20),
(502, 5, 50023, 'Dressing Box: Demon Hunter', 75),
(503, 5, 50025, 'Dressing Box: Sally Whitemane', 100),
(504, 5, 50382, 'Dressing Box: Kul\'Tiras Guard', 100),
(505, 5, 50383, 'Dressing Box: Theramore Guard', 100),
(506, 5, 50386, 'Dressing Box: Dwarven Mountaineer', 100),
(507, 5, 50388, 'Dressing Box: Nightwatchman', 100),
(508, 5, 50384, 'Dressing Box: Stromgarde Guard', 100),
-- Skins ---------------------------------------------------------------------------------------
(600, 6, 50105, 'Human: Sally Whitemane (Female Only)', 50),
(601, 6, 50106, 'Human, Gnome: Cult of the Damned', 50),
(602, 6, 50204, 'Dwarf: Wildhammer', 125),
(603, 6, 50205, 'Dwarf: Dark Iron', 125),
(604, 6, 50206, 'Dwarf: Earthen (Male Only)', 125),
(605, 6, 50207, 'Orc: Blackrock Clan', 125),
(606, 6, 50208, 'Orc: Chaos (Male Only)', 125),
(607, 6, 50209, 'Orc: Mag\'Har (Male Only)', 125),
(608, 6, 50210, 'Troll: Forest', 125),
(609, 6, 50211, 'Troll: Sandfury (Includes Zombie)', 125),
(610, 6, 50212, 'Gnome: Leper (Male Only)', 125);

