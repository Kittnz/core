
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
(3, 'Level 1 Mounts'),
(4, 'Level 40 Mounts'),
(5, 'Level 60 Mounts'),
(6, 'Tabards'),
(7, 'Roleplay');

replace into shop_items values
-- Gameplay --------------------------------------------------------------------------------------------
(100, 1, 50010, 'Switch to Hardcore Mode (0.5 Rates)', 0),
(101, 1, 50016, 'Portable Meeting Stone (RP Hub)', 0),
(102, 1, 50008, 'Turtle Twink\'s Insignia (Stop XP)', 0),
(103, 1, 50000, 'Character Name Change', 100),
(104, 1, 50001, 'Character Race Change', 200),
(105, 1, 50002, 'Character Look Change', 150),
(106, 1, 50003, 'Loremaster\'s Backpack (28 slot bag)', 80),
(107, 1, 50011, 'MOLL-E, Remote Mail Terminal', 100),
(108, 1, 50009, 'Mechanical Auctioneer', 100),
(109, 1, 50007, 'Forworn Mule (Bank)', 200),
(110, 1, 50005, 'Field Repair Bot 75B', 200),
(111, 1, 50004, 'Portable Black Hole (36 slot bag)', 200),
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
(214, 2, 50077, 'Faeling Egg', 50),
-- Level 1 Mounts --------------------------------------------------------------------------------------
(300, 3, 50071, 'Ivory Tallstrider', 100),
(301, 3, 50072, 'Brown Tallstrider', 100),
(302, 3, 50073, 'Gray Tallstrider', 100),
(303, 3, 50076, 'Turquoise Tallstrider', 100),
(304, 3, 50074, 'Swift Lovebird', 125),
-- Level 40 Mounts -------------------------------------------------------------------------------------
(400, 4, 12325, 'Primal Leopard', 150),
(401, 4, 12326, 'Tawny Sabercat', 150),
(402, 4, 8630,  'Bengal Tiger', 150),
(403, 4, 8583,  '"Skeletal" Horse', 150),
(404, 4, 21044, 'Reindeer Reins', 150),
(405, 4, 13322, 'Unpainted Mechanostrider', 150),
(406, 4, 13323, 'Purple Mechanostrider', 150),
(407, 4, 13324, 'Red and Blue Mechanostrider', 150),
(408, 4, 13325, 'Fluorescent Green Mechanostrider', 150),
(409, 4, 14062, 'Kodo Mount', 150),
(410, 4, 5875, 'Blue Ram', 150),
(411, 4, 5874, 'Black Ram', 150),
(412, 4, 1041, 'Black Wolf', 150),
(413, 4, 8590, 'Obsidian Raptor', 150),
-- Level 60 Mounts -------------------------------------------------------------------------------------
(500, 5, 13329, 'Frost Ram', 250),
(501, 5, 13327, 'Icy Blue Mechanostrider Mod A', 250),
(502, 5, 13326, 'White Mechanostrider Mod B', 250),
(503, 5, 12354, 'Palomino', 250),
(504, 5, 12353, 'White Stallion', 250),
(505, 5, 12302, 'Ancient Frostsaber', 250),
(506, 5, 12303, 'Black Nightsaber', 250),
(507, 5, 12351, 'Arctic Wolf', 250),
(508, 5, 12330, 'Red Wolf', 250),
(509, 5, 15292, 'Green Kodo', 250),
(510, 5, 15293, 'Teal Kodo', 250),
(511, 5, 13317, 'Ivory Raptor', 250),
(512, 5, 8586, 'Mottled Red Raptor', 250),
(513, 5, 18768, 'Swift Dawnsaber', 400),
(514, 5, 23193, 'Skeletal Steed', 400),
-- Tabards ---------------------------------------------------------------------------------------------
(600, 6, 23709, 'Tabard of Frost', 150),
(601, 6, 23705, 'Tabard of Flame', 150),
(602, 6, 23710, 'Darkmoon Faire Tabard', 100),
(603, 6, 22999, 'Tabard of the Argent Dawn', 80),
(604, 6, 50044, 'Keepers of Time Tabard', 100),
(605, 6, 50086, 'Stromgarde Tabard', 80),
(606, 6, 50087, 'Tabard of Kul\'Tiras', 80),
(607, 6, 50088, 'Theramore Tabard', 80),
(608, 6, 50089, 'Tabard of the Kirin Tor', 80),
(609, 6, 50090, 'Tabard of Stormwind', 80),
(610, 6, 50091, 'Scholomance Tabard', 100),
(611, 6, 50091, 'Whitemane\'s Tabard', 100),
(612, 6, 23192, 'Tabard of Scarlet Preacher', 100),
(613, 6, 23193, 'Tabard of Scarlet Archmage', 100),
-- Roleplay --------------------------------------------------------------------------------------------
(700, 7, 50024, 'Dressing Box: Invisible Suit', 25),
(701, 7, 50022, 'Dressing Box: Midsummer Priestess', 100),
(702, 7, 50023, 'Dressing Box: Demon Hunter', 100),
(703, 7, 50025, 'Dressing Box: Sally Whitemane', 100),
(704, 7, 50101, 'Dressing Box: Scholomance Student', 100);

