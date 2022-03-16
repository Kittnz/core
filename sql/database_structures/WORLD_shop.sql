drop table if exists shop_categories;
create table shop_categories (
  id int(11) unsigned not null auto_increment,
  name text,
  primary key (id)
) engine=innodb default charset=utf8;

drop table if exists shop_items;
create table shop_items (
  id int(11) unsigned not null auto_increment,
  category tinyint(3) unsigned not null default '0',
  item int(11) unsigned not null default '0',
  description text,
  price int(11) unsigned default '0',
  primary key (id)
) engine=innodb auto_increment=10 default charset=utf8;

alter table shop_categories add icon varchar(32) not null default 'default' after name;

replace into shop_categories values
(1,  'Miscellaneous', 'default'),
(2,  'Skins', 'ticket'),
(3,  'Gameplay', 'toys'),
(4,  'Glyphs', 'service'),
(5,  'Mounts', 'mount'),
(6,  'Companions', 'pet'),
(7,  'Tabards', 'tabard'),
(8,  'Illusions', 'scroll');

replace into shop_items values
-- Miscellaneous
(1, 1, 50000, 'Token: Rename', 160),
(3, 1, 80699, 'Token: Appearance Change', 160),
-- (4, 1, 50603, 'Race Change Token: Human', 180),
-- (5, 1, 50604, 'Race Change Token: Gnome', 180),
-- (6, 1, 50605, 'Race Change Token: Dwarf', 180),
-- (7, 1, 50606, 'Race Change Token: Night Elf', 180),
-- (8, 1, 50607, 'Race Change Token: Orc', 180),
-- (9, 1, 50608, 'Race Change Token: Troll', 180),
-- (10, 1, 50609, 'Race Change Token: Tauren', 180),
-- (11, 1, 50610, 'Race Change Token: Undead', 180),
-- (12, 1, 50612, 'Race Change Token: High Elf', 180),
-- (13, 1, 50613, 'Race Change Token: Goblin', 180),
-- Skins
(21, 2, 81210, 'Human: Death Knight', 160),
(22, 2, 50105, 'Human: Scarlet Inquisitor', 160),
(23, 2, 50106, 'Human: Scholomance Student', 160),
(24, 2, 81230, 'Gnome: Scholomance Student', 160),
(25, 2, 50212, 'Gnome: Leper', 160),
(26, 2, 50205, 'Dwarf: Dark Iron', 160),
(27, 2, 50206, 'Dwarf: Earthen', 160),
(28, 2, 81229, 'Dwarf: Death Knight', 160),
(29, 2, 81206, 'High Elf: Dark Ranger', 160),
(30, 2, 81209, 'High Elf: Blood Elf', 160),
(41, 2, 81228, 'Tauren: Spirit Walker', 160),
(42, 2, 50207, 'Orc: Blackrock Clan', 160),
(43, 2, 50208, 'Orc: Chaos', 160),
(44, 2, 50209, 'Orc: Mag\'Har Clan', 160),
(45, 2, 81255, 'Orc: Dreadskull Clan I', 160),
(47, 2, 50210, 'Troll: Forest Troll', 160),
(48, 2, 50211, 'Troll: Sandfury Troll', 160),
(49, 2, 51010, 'Troll: Dark Troll', 160),
(50, 2, 51011, 'Troll: Ice Troll', 160),
(51, 2, 81208, 'Troll: Zombie Troll', 160),
-- Gameplay
(61, 3, 50003, 'Backpack: 28 slots', 200),
(62, 3, 50004, 'Backpack: 36 slots', 300),
(63, 3, 50011, 'Summon: Mailbox', 200),
(64, 3, 51715, 'Summon: Brainwashing Device', 200),
(65, 3, 50602, 'Summon: Auctioneer', 200),
(66, 3, 50005, 'Summon: Repair Bot', 200),
(67, 3, 50007, 'Summon: Bank (Mule)', 200),
(68, 3, 51421, 'Summon: Bank (Kodo)', 200),
-- Glyphs
(86, 4, 51057, 'Druid: Glyph of the Frostsaber', 100),
(87, 4, 51266, 'Druid: Glyph of the Ice Bear', 100),
(88, 4, 51431, 'Druid: Glyph of the Frostkin', 100),
(89, 4, 51830, 'Druid: Glyph of the Orca', 100),
(90, 4, 51432, 'Druid: Glyph of Stars', 100),
-- (91, 4, 50406, 'Druid: Glyph of the Stag', 100),
-- Mounts
(101, 5, 50071, 'Ivory Tallstrider', 100),
(102, 5, 50072, 'Brown Tallstrider', 100), 
(103, 5, 50073, 'Gray Tallstrider', 100), 
(104, 5, 50076, 'Turquoise Tallstrider', 100),
(105, 5, 50074, 'Pink Tallstrider', 100), 
(106, 5, 81100, 'Swift Raven Lord', 500), 
(107, 5, 81120, 'Frayfeather Hippogryph', 500),
(108, 5, 81121, 'Cenarion Hippogryph', 500),
(109, 5, 81242, 'Viridian Hippogryph', 300),
(110, 5, 80431, 'Swift Magic Rooster', 300),
(121, 5, 12325, 'Spotted Leopard', 200), 
(122, 5, 12326, 'Tawny Leopard', 200),
(123, 5, 12327, 'Golden Leopard', 200),
(124, 5, 8630,  'Stranglethorn Tiger', 200),
(125, 5, 81227, 'Striped Dawnsaber', 200),
(126, 5, 12302, 'Ancient Frostsaber', 200), 
(127, 5, 8635, 'Ancient Nightsaber', 200), 
(128, 5, 81232, 'Azure Frostsaber', 160),
(129, 5, 18768, 'Armored Dawnsaber', 260),
(130, 5, 80430, 'Armored Spectral Tiger', 2000),
(131, 5, 12303, 'Black Zulian Panther', 200),
(132, 5, 81231, 'Tamed Rak\'Shiri', 200),
(141, 5, 50399, 'Ancient Quel\'dorei Steed', 200),
(142, 5, 80449, 'Armored Alliance Steed', 300),
(143, 5, 81236, 'Armored Gray Steed', 200),
(144, 5, 23193, 'Armored Black Deathcharger', 300),
(145, 5, 81235, 'Armored Vermilion Deathcharger', 300),
(146, 5, 50407, 'Nightmare Dreamrunner', 200),
(147, 5, 50400, 'Riding Zhevra', 200),
(148, 5, 81234, 'Brewfest Ram', 200),
(149, 5, 80443, 'Armored Brewfest Ram', 360),
(150, 5, 13328, 'Ancient Black Ram', 200),
(151, 5, 50406, 'Shadowhorn Stag', 200),
(162, 5, 15293, 'Ancient Teal Kodo', 200), 
(162, 5, 15292, 'Ancient Green Kodo', 200), 
(162, 5, 80455, 'Armored Brewfest Kodo', 400), 
(164, 5, 12351, 'Ancient Arctic Wolf', 200), 
(164, 5, 5663,  'Ancient Red Wolf', 200), 
(163, 5, 1041,  'Ancient Black Wolf', 200),
(165, 5, 80447, 'Armored Horde Wolf', 300),
(181, 5, 50401, 'Armored Ivory Raptor', 360),
(182, 5, 50402, 'Armored Violet Raptor', 360), 
(183, 5, 50403, 'Armored Red Raptor', 360),
(184, 5, 50404, 'Armored Obsidian Raptor', 360),  
(185, 5, 81154, 'Armored Black Bear', 400),
(186, 5, 81153, 'Armored Purple Bear', 400),
(187, 5, 81155, 'Armored Red Bear', 400),
(188, 5, 81158, 'Armored Frostmane Bear', 400),
(189, 5, 81091, 'Big Blizzard Bear', 500),
(190, 5, 81102, 'Darkmoon Dancing Bear', 300),
(221, 5, 13325, 'Fluorescent Mechanostrider', 120), 
-- (222, 5, 81238, 'Turbo-Charged Flying Machine', 350), 
(223, 5, 81239, 'Happy Whimsyshire Cloud', 200), 
(224, 5, 81240, 'Sad Whimsyshire Cloud', 200), 
-- Companions
(241, 6, 13584, 'Diablo Stone', 80),
(242, 6, 13583, 'Panda Collar', 80),
(243, 6, 20371, 'Murky', 80),
(244, 6, 23713, 'Hippogryph Hatchling', 80),
(245, 6, 19055, 'Tiny Green Dragon', 80),
(246, 6, 50013, 'Bone Golem', 80),
(247, 6, 50019, 'Moonkin Hatchling', 80),
(248, 6, 50083, 'Azure Whelpling', 80),
(249, 6, 50084, 'Kirin Tor Familiar', 80),
(250, 6, 22781, 'Poley', 80),
(251, 6, 50085, 'Frostwolf Ghostpup', 80),
(252, 6, 51007, 'Teldrassil Sproutling', 80),
(253, 6, 81150, 'Phoenix Hatchling', 150),
(254, 6, 81151, 'Spirit Darter', 80),
(255, 6, 81207, 'Whimsyshire Cloud', 150),
(256, 6, 81258, 'Spectral Cub', 200),
(257, 6, 69004, 'Pengu', 200),
(258, 6, 69006, 'Glitterwing', 200),
-- Tabards
(271, 7, 81088, 'Tabard of Summer Skies', 180),
(272, 7, 81087, 'Tabard of Summer Flames', 180),
(273, 7, 23709, 'Tabard of Frost', 200),
(274, 7, 23705, 'Tabard of Flame', 200),
(275, 7, 81083, 'Tabard of the Void', 200),
(276, 7, 81085, 'Tabard of Nature', 200),
(277, 7, 81084, 'Tabard of the Arcane', 200),
(278, 7, 81082, 'Tabard of Brilliance', 200),
(279, 7, 81081, 'Tabard of Fury', 200),
(280, 7, 23710, 'Darkmoon Faire Tabard', 200),
(281, 7, 80314, 'Undead Scourge Tabard', 200),
(282, 7, 50089, 'Pilfered Dalaran Tabard', 160),
(283, 7, 50086, 'Stromgarde Tabard', 160),
(285, 7, 50092, 'Crimson Legion Tabard', 160),
(286, 7, 81205, 'Explorer\'s Tabard', 160),
(287, 7, 50376, 'Hillsbrad Tabard', 160),
(288, 7, 50091, 'Black Mageweave Tabard', 160),
(289, 7, 50038, 'Red Mageweave Tabard', 160),
(290, 7, 50044, 'Gold Mageweave Tabard', 160),
-- Illusions 
(291, 8, 51201, 'Illusion: Worgen', 120),
(292, 8, 51205, 'Illusion: Ghost', 120),
(293, 8, 51206, 'Illusion: Banshee', 120),
(294, 8, 51208, 'Illusion: Succubus', 120),
(295, 8, 51065, 'Illusion: Shadow', 120),
(296, 8, 80648, 'Illusion: Gnoll', 120),
(297, 8, 51253, 'Illusion: Furbolg', 120),
(298, 8, 81145, 'Illusion: Pandaren', 120),
(299, 8, 80694, 'Illusion: Scourge', 120),
(300, 8, 50408, 'Illusion: Dryad', 120),
(301, 8, 53008, 'Illusion: Ogre', 120);

ALTER TABLE `shop_items` ADD `descriptionLong` VARCHAR(1024) NOT NULL DEFAULT '' AFTER `price`;
