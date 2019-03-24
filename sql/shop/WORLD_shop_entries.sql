
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

-- ### Contents for `shop_categories` & `shop_items`

replace into shop_categories values 

('1', 'Gameplay'),
('2', 'Companions'),
('3', 'Mounts'),
('4', 'Tabards'),
('5', 'Roleplay');

replace into shop_items values
-- Gameplay --------------------------------------------------------------------------------------------
('100', '1', '50010', 'Switch to Hardcore Mode (0.5 Rates)', '0'), 
('101', '1', '50000', 'Character Name Change', '100'), 
('102', '1', '50001', 'Character Race Change', '100'), 
('104', '1', '50002', 'Character Look Change', '100'), 
('105', '1', '50003', 'Loremaster\'s Backpack (28 slot bag)', '100'), 
('106', '1', '50004', 'Portable Black Hole (36 slot bag)', '100'), 
('107', '1', '50005', 'Field Repair Bot 75B', '100'), 
('108', '1', '50007', 'Forworn Mule (Bank)', '100'), 
('109', '1', '50008', 'Turtle Twink\'s Insignia (Stop XP)', '100'), 
('110', '1', '50009', 'Mechanical Auctioneer', '100'), 
('111', '1', '50011', 'MOLL-E, Remote Mail Terminal', '100'), 
('112', '1', '50016', 'Portable Meeting Stone (RP Hub)', '0'), 
-- Pets ------------------------------------------------------------------------------------------------
('200', '2', '13582', 'Zergling Leash', '50'),
('201', '2', '13584', 'Diablo Stone', '50'),
('202', '2', '13583', 'Panda Collar', '50'),
('203', '2', '20371', 'Blue Murloc Egg', '50'),
('204', '2', '22114', 'Pink Murloc Egg', '50'),
('205', '2', '19055', 'Green Dragon Orb', '50'), 
('206', '2', '21168', 'Baby Shark', '50'), 
('207', '2', '50013', 'Bone Golem', '50'), 
('208', '2', '50019', 'Moonkin Egg', '50'), 
('209', '2', '19055', 'Green Dragon Orb', '50'), 
('210', '2', '50083', 'Ancient Arcane Dust', '50'), 
('211', '2', '50084', 'Kirin Tor Familiar', '50'), 
('212', '2', '22781', 'Polar Bear Collar', '50'), 
('213', '2', '50085', 'Frostwolf Ghostpup', '50'), 
('214', '2', '50070', 'Bronze Pocketwatch', '50'), 
-- Mounts ----------------------------------------------------------------------------------------------
('300', '3', '12325', 'Reins of the Primal Leopard', '100'), 
('301', '3', '12326', 'Reins of the Tawny Sabercat', '100'),
('302', '3', '8630',  'Reins of the Bengal Tiger', '100'),
('302', '3', '18768', 'Reins of the Swift Dawnsaber', '100'),
-- Tabards ---------------------------------------------------------------------------------------------
('400', '4', '23709', 'Tabard of Frost', '100'),
('401', '4', '23705', 'Tabard of Flame', '100'),
('402', '4', '23710', 'Darkmoon Faire Tabard', '100'), 	
('403', '4', '22999', 'Tabard of the Argent Dawn', '100'), 	
('404', '4', '50044', 'Keepers of Time Tabard', '100'), 	
('405', '4', '50086', 'Stromgarde Tabard', '100'), 	
('406', '4', '50087', 'Tabard of Kul\'Tiras', '100'), 	
('407', '4', '50088', 'Theramore Tabard', '100'), 	
('408', '4', '50089', 'Tabard of the Kirin Tor', '100'), 	
('409', '4', '50090', 'Tabard of Stormwind', '100'), 	
('410', '4', '50091', 'Scholomance Tabard', '100'), 	
('411', '4', '50091', 'Whitemane\'s Tabard', '100'), 	
('412', '4', '23192', 'Tabard of Scarlet Preacher', '100'), 	
('413', '4', '23193', 'Tabard of Scarlet Archmage', '100'), 	
-- Roleplay --------------------------------------------------------------------------------------------
('500', '5', '50022', 'Dressing Box: Midsummer Priestess', '100'),
('501', '5', '50023', 'Dressing Box: Demon Hunter', '100'),
('502', '5', '50024', 'Dressing Box: Invisible Suit', '100'),
('503', '5', '50025', 'Dressing Box: Sally Whitemane', '100');

