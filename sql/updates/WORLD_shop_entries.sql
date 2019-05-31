
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
(100, 1, 50010, 'Hardcore Mode (0.5 rates for killing mobs)', 0),
(101, 1, 50016, 'Portable Meeting Stone (RP Hub)', 0),
(102, 1, 50008, 'Turtle Twink\'s Insignia (Stop XP)', 0),
(103, 1, 50000, 'Character Name Change', 100),
(104, 1, 50001, 'Character Race Change', 200),
(105, 1, 50002, 'Character Look Change', 150),
(106, 1, 50003, 'Loremaster\'s Backpack (28 slot bag)', 50),
(107, 1, 50011, 'MOLL-E, Remote Mail Terminal', 50),
(108, 1, 50009, 'Mechanical Auctioneer', 50),
(109, 1, 50005, 'Field Repair Bot 75B', 50),
(110, 1, 50004, 'Portable Black Hole (36 slot bag)', 75),
(111, 1, 50007, 'Forworn Mule (Bank)', 100),
-- Pets ------------------------------------------------------------------------------------------------
(200, 2, 13582, 'Zergling Leash', 30),
(201, 2, 13584, 'Diablo Stone', 30),
(202, 2, 13583, 'Panda Collar', 30),
(203, 2, 20371, 'Blue Murloc Egg', 30),
(204, 2, 23713, 'Hippogryph Hatchling', 30),
(205, 2, 19055, 'Green Dragon Orb', 30),
(206, 2, 21168, 'Baby Shark', 30),
(207, 2, 50013, 'Bone Golem', 30),
(208, 2, 50019, 'Moonkin Egg', 30),
(209, 2, 19055, 'Green Dragon Orb', 30),
(210, 2, 50083, 'Ancient Arcane Dust', 30),
(211, 2, 50084, 'Kirin Tor Familiar', 30),
(212, 2, 22781, 'Polar Bear Collar', 30),
(213, 2, 50085, 'Frostwolf Ghostpup', 30),
-- (214, 2, 50077, 'Faeling Egg', 50),
(215, 2, 50240, 'Kodo Calfling', 30),
-- Mounts --------------------------------------------------------------------------------------
-- (300, 3, 50071, 'Level 1   Ivory Tallstrider', 100),
(301, 3, 50072, 'Level 1   Brown Tallstrider', 50),
-- (302, 3, 50073, 'Level 1   Gray Tallstrider', 100),
(303, 3, 50076, 'Level 1   Turquoise Tallstrider', 50),
-- (304, 3, 50074, 'Level 1   Swift Lovebird', 125),
-- (305, 3, 12325, 'Level 40 Primal Leopard', 150),
(306, 3, 12326, 'Level 40 Tawny Sabercat', 75),
(307, 3, 8630,  'Level 40 Bengal Tiger', 75),
-- (308, 3, 8583,  'Level 40 "Skeletal" Horse', 150),
-- (309, 3, 21044, 'Level 40 Reindeer Reins', 150),
-- (310, 3, 13322, 'Level 40 Unpainted Mechanostrider', 150),
-- (311, 3, 13323, 'Level 40 Purple Mechanostrider', 150),
(312, 3, 13324, 'Level 40 Red and Blue Mechanostrider', 75),
(313, 3, 13325, 'Level 40 Fluorescent Mechanostrider', 75),
-- Don't rename it again please, it doesn't fit into 1 line and my OCD is really triggered!
-- (314, 3, 14062, 'Level 40 Kodo Mount', 150),
(315, 3, 5875, 'Level 40 Blue Ram', 75),
-- (316, 3, 5874, 'Level 40 Black Ram', 150),
-- (317, 3, 1041, 'Level 40 Black Wolf', 150),
(318, 3, 8590, 'Level 40 Obsidian Raptor', 75),
-- (319, 3, 13329, 'Level 60 Frost Ram', 250),
-- (320, 5, 13327, 'Level 60 Icy Blue Mechanostrider Mod A', 250),
-- (321, 5, 13326, 'Level 60 White Mechanostrider Mod B', 250),
-- (322, 3, 12354, 'Level 60 Palomino', 250),
-- (323, 3, 12353, 'Level 60 White Stallion', 250),
-- (324, 3, 12302, 'Level 60 Ancient Frostsaber', 250),
(325, 3, 12303, 'Level 60 Black Nightsaber', 125),
(326, 3, 12351, 'Level 60 Arctic Wolf', 125),
-- (327, 3, 12330, 'Level 60 Red Wolf', 250),
-- (328, 3, 15292, 'Level 60 Green Kodo', 250),
(329, 3, 15293, 'Level 60 Teal Kodo', 125),
(330, 3, 13317, 'Level 60 Ivory Raptor', 125),
(331, 3, 8586, 'Level 60 Mottled Red Raptor', 125),
(333, 3, 18768, 'Level 60 Swift Dawnsaber', 125),
(334, 3, 23193, 'Level 60 Skeletal Steed', 125),
-- Tabards ---------------------------------------------------------------------------------------------
(400, 4, 23709, 'Tabard of Frost', 75),
(401, 4, 23705, 'Tabard of Flame', 75),
(402, 4, 23710, 'Darkmoon Faire Tabard', 50),
(403, 4, 22999, 'Tabard of the Argent Dawn', 25),
(404, 4, 50044, 'Keepers of Time Tabard', 40),
(405, 4, 50086, 'Stromgarde Tabard', 40),
(406, 4, 50087, 'Tabard of Kul\'Tiras', 40),
(407, 4, 50088, 'Theramore Tabard', 40),
(408, 4, 50089, 'Tabard of the Kirin Tor', 40),
(409, 4, 50090, 'Tabard of Stormwind', 40),
(410, 4, 50091, 'Scholomance Tabard', 40),
(411, 4, 50091, 'Whitemane\'s Tabard', 40),
(412, 4, 23192, 'Tabard of Scarlet Preacher', 40),
(413, 4, 23193, 'Tabard of Scarlet Archmage', 40),
-- Roleplay --------------------------------------------------------------------------------------------
(500, 5, 50024, 'Dressing Box: Invisible Suit', 15),
(501, 5, 50022, 'Dressing Box: Midsummer Priestess', 25),
(502, 5, 50023, 'Dressing Box: Demon Hunter', 35),
(503, 5, 50025, 'Dressing Box: Sally Whitemane', 50),
(504, 5, 50101, 'Dressing Box: Scholomance Student', 50),
-- Skins ---------------------------------------------------------------------------------------
(600, 6, 50105, 'Human: Sally Whitemane (Female Only)', 25),
(601, 6, 50106, 'Human, Gnome: Cult of the Damned', 25),
(602, 6, 50204, 'Dwarf: Wildhammer', 60),
(603, 6, 50205, 'Dwarf: Dark Iron', 60),
(604, 6, 50206, 'Dwarf: Earthen (Male Only)', 60),
(605, 6, 50207, 'Orc: Blackrock Clan', 60),
(606, 6, 50208, 'Orc: Chaos (Male Only)', 60),
(607, 6, 50209, 'Orc: Mag\'Har (Male Only)', 60),
(608, 6, 50210, 'Troll: Forest', 60),
(609, 6, 50211, 'Troll: Sandfury (Includes Zombie)', 60),
(610, 6, 50212, 'Gnome: Leper (Male Only)', 60);

