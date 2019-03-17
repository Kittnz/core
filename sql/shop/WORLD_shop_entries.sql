
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

-- ### Content for `shop_categories`

INSERT INTO `shop_categories` VALUES ('1', 'Gameplay');
INSERT INTO `shop_categories` VALUES ('2', 'Companions');
INSERT INTO `shop_categories` VALUES ('3', 'Mounts');
INSERT INTO `shop_categories` VALUES ('4', 'Tabards');
INSERT INTO `shop_categories` VALUES ('5', 'Roleplay');

-- ### Content for `shop_items`

-- Gameplay --------------------------------------------------------------------------------------------
INSERT INTO `shop_items` VALUES ('100', '1', '50010', 'Switch to Hardcore Mode (0.5 Rates)', '0'); 
INSERT INTO `shop_items` VALUES ('101', '1', '50000', 'Character Name Change', '100'); 
INSERT INTO `shop_items` VALUES ('102', '1', '50001', 'Character Race Change', '100'); 
INSERT INTO `shop_items` VALUES ('104', '1', '50002', 'Character Look Change', '100'); 
INSERT INTO `shop_items` VALUES ('105', '1', '50003', 'Loremaster\'s Backpack (28 slot bag)', '100'); 
INSERT INTO `shop_items` VALUES ('106', '1', '50004', 'Portable Black Hole (36 slot bag)', '100'); 
INSERT INTO `shop_items` VALUES ('107', '1', '50005', 'Field Repair Bot 75B', '100'); 
INSERT INTO `shop_items` VALUES ('108', '1', '50007', 'Forworn Mule (Bank)', '100'); 
INSERT INTO `shop_items` VALUES ('109', '1', '50008', 'Turtle Twink\'s Insignia (Stop XP)', '100'); 
INSERT INTO `shop_items` VALUES ('110', '1', '50009', 'Mechanical Auctioneer', '100'); 
INSERT INTO `shop_items` VALUES ('111', '1', '50011', 'MOLL-E, Remote Mail Terminal', '100'); 
INSERT INTO `shop_items` VALUES ('112', '1', '50016', 'Portable Meeting Stone (RP Hub)', '0'); 
-- TODO: Item scripts and templates
-- Pets ------------------------------------------------------------------------------------------------
INSERT INTO `shop_items` VALUES ('200', '2', '13582', 'Zergling Leash', '50');
INSERT INTO `shop_items` VALUES ('201', '2', '13584', 'Diablo Stone', '50');
INSERT INTO `shop_items` VALUES ('202', '2', '13583', 'Panda Collar', '50');
INSERT INTO `shop_items` VALUES ('203', '2', '20371', 'Blue Murloc Egg', '50');
INSERT INTO `shop_items` VALUES ('204', '2', '22114', 'Pink Murloc Egg', '50');
INSERT INTO `shop_items` VALUES ('205', '2', '19055', 'Green Dragon Orb', '50'); 
INSERT INTO `shop_items` VALUES ('206', '2', '21168', 'Baby Shark', '50'); 
-- TODO: More pets
-- Mounts ----------------------------------------------------------------------------------------------
INSERT INTO `shop_items` VALUES ('300', '3', '12325', 'Reins of the Primal Leopard', '100'); 
INSERT INTO `shop_items` VALUES ('301', '3', '12326', 'Reins of the Tawny Sabercat', '100');
INSERT INTO `shop_items` VALUES ('302', '3', '8630',  'Reins of the Bengal Tiger', '100');
-- TODO: Change existing templates to level 60 mounts and add more items
-- Tabards ---------------------------------------------------------------------------------------------
INSERT INTO `shop_items` VALUES ('400', '4', '23709', 'Tabard of Frost', '100');
INSERT INTO `shop_items` VALUES ('401', '4', '23705', 'Tabard of Flame', '100');
INSERT INTO `shop_items` VALUES ('402', '4', '23710', 'Darkmoon Faire Tabard', '100'); 
-- TODO: More tabards
-- Roleplay --------------------------------------------------------------------------------------------
-- TODO: Dressing Boxes

