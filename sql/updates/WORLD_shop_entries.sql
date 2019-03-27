
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
(5, 'Roleplay');

replace into shop_items values
-- Gameplay --------------------------------------------------------------------------------------------
(100, 1, 50010, 'Switch to Hardcore Mode (0.5 Rates)', 0), 
(101, 1, 50000, 'Character Name Change', 100), 
(102, 1, 50001, 'Character Race Change', 200), 
(104, 1, 50002, 'Character Look Change', 150), 
(105, 1, 50003, 'Loremaster\'s Backpack (28 slot bag)', 80), 
(106, 1, 50004, 'Portable Black Hole (36 slot bag)', 200), 
(107, 1, 50005, 'Field Repair Bot 75B', 200), 
(108, 1, 50007, 'Forworn Mule (Bank)', 200), 
(109, 1, 50008, 'Turtle Twink\'s Insignia (Stop XP)', 0), 
(110, 1, 50009, 'Mechanical Auctioneer', 100), 
(111, 1, 50011, 'MOLL-E, Remote Mail Terminal', 100), 
(112, 1, 50016, 'Portable Meeting Stone (RP Hub)', 0), 
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
-- Mounts ----------------------------------------------------------------------------------------------
(300, 3, 12325, 'Primal Leopard', 200), 
(301, 3, 12326, 'Tawny Sabercat', 200),
(302, 3, 8630,  'Bengal Tiger', 250),
(302, 3, 18768, 'Swift Dawnsaber', 200),
(303, 3, 13317, 'Ivory Raptor', 100),
(304, 3, 50075, 'Darkmoon Strider', 200),
(305, 3, 18244, 'Black Ram', 100),
(306, 3, 19029, 'Frostwolf Howler', 200),
(307, 3, 15293, 'Teal Kodo', 100),
(308, 3, 12351, 'Arctic Wolf', 100),
(309, 3, 12302, 'Ancient Frostsaber', 100),
-- (310, 3, 19872, 'Razzashi Raptor', 350),
-- (311, 3, 19872, 'Zulian Tiger', 350),
-- (312, 3, 8583,  'Skeletal Horse', 100),
(313, 3, 13335, 'Deathcharger', 400),
(314, 3, 21044, 'Winter Reindeer', 100),
-- Tabards ---------------------------------------------------------------------------------------------
(400, 4, 23709, 'Tabard of Frost', 150),
(401, 4, 23705, 'Tabard of Flame', 150),
(402, 4, 23710, 'Darkmoon Faire Tabard', 100), 	
(403, 4, 22999, 'Tabard of the Argent Dawn', 80), 	
(404, 4, 50044, 'Keepers of Time Tabard', 100), 	
(405, 4, 50086, 'Stromgarde Tabard', 80), 	
(406, 4, 50087, 'Tabard of Kul\'Tiras', 80), 	
(407, 4, 50088, 'Theramore Tabard', 80), 	
(408, 4, 50089, 'Tabard of the Kirin Tor', 80), 	
(409, 4, 50090, 'Tabard of Stormwind', 80), 	
(410, 4, 50091, 'Scholomance Tabard', 100), 	
(411, 4, 50091, 'Whitemane\'s Tabard', 100), 	
(412, 4, 23192, 'Tabard of Scarlet Preacher', 100), 	
(413, 4, 23193, 'Tabard of Scarlet Archmage', 100), 	
-- Roleplay --------------------------------------------------------------------------------------------
(500, 5, 50022, 'Dressing Box: Midsummer Priestess', 100),
(501, 5, 50023, 'Dressing Box: Demon Hunter', 100),
(502, 5, 50024, 'Dressing Box: Invisible Suit', 10),
(503, 5, 50025, 'Dressing Box: Sally Whitemane', 100),
(504, 5, 50101, 'Dressing Box: Scholomance Student', 100);

