replace into broadcast_text (entry, male_text) values
('90000', 'Welcome to our shop! We offer exotic garments, large bags, mysterious engineering devices and much more to improve your experience on our server.');

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

replace into shop_categories values
(1,  'Character: Name, Race & Look'),
(2,  'Character: Additional Skins I'),
(3,  'Character: Additional Skins II'),
(4,  'Gameplay: Miscellaneous'),
(5,  'Gameplay: Glyphs'),
(6,  'Riding Mounts: Birds'),
(7,  'Riding Mounts: Sabers'),
(8,  'Riding Mounts: Horses & Rams'),
(9,  'Riding Mounts: Kodo & Wolves'),
(10, 'Riding Mounts: Raptors & Bears'),
(11, 'Riding Mounts: Miscellaneous'),
(12, 'Vanity: Companions'),
(13, 'Vanity: Tabards'),
(14, 'Vanity: Illusions');

replace into shop_items values
-- Character: Name, Race & Look
(1, 1, 50000, 'Token: Rename', 160),
(2, 1, 50611, 'Token: Change Gender', 100),
(3, 1, 80699, 'Token: Appearance Change', 160),
(4, 1, 50603, 'Race Change Token: Human', 180),
(5, 1, 50604, 'Race Change Token: Gnome', 180),
(6, 1, 50605, 'Race Change Token: Dwarf', 180),
(7, 1, 50606, 'Race Change Token: Night Elf', 180),
(8, 1, 50607, 'Race Change Token: Orc', 180),
(9, 1, 50608, 'Race Change Token: Troll', 180),
(10, 1, 50609, 'Race Change Token: Tauren', 180),
(11, 1, 50610, 'Race Change Token: Undead', 180),
(12, 1, 50612, 'Race Change Token: High Elf', 180),
(13, 1, 50613, 'Race Change Token: Goblin', 180),
-- Character: Additional Skins I
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
-- Character: Additional Skins II
(41, 3, 81228, 'Tauren: Spirit Walker', 160),
(42, 3, 50207, 'Orc: Blackrock Clan', 160),
(43, 3, 50208, 'Orc: Chaos', 160),
(44, 3, 50209, 'Orc: Mag\'Har Clan', 160),
(45, 3, 81255, 'Orc: Dreadskull Clan I', 160),
(46, 3, 81256, 'Orc: Dreadskull Clan II', 160),
(47, 3, 50210, 'Troll: Forest Troll', 160),
(48, 3, 50211, 'Troll: Sandfury Troll', 160),
(49, 3, 51010, 'Troll: Dark Troll', 160),
(50, 3, 51011, 'Troll: Ice Troll', 160),
(51, 3, 81208, 'Troll: Zombie Troll', 160),
-- Gameplay: Miscellaneous
(61, 4, 50003, 'Backpack: 28 slots', 180),
(62, 4, 50004, 'Backpack: 36 slots', 200),
(63, 4, 50011, 'Summon: Mailbox', 160),
(64, 4, 51715, 'Summon: Brainwashing Device', 200),
(65, 4, 50602, 'Summon: Auctioneer', 180),
(66, 4, 50005, 'Summon: Repair Bot', 180),
(67, 4, 50007, 'Summon: Bank (Mule)', 200),
(68, 4, 51421, 'Summon: Bank (Kodo)', 200),
-- Gameplay: Glyphs
(81, 5, 50010, 'General: Glyph of the Turtle', 0),
(82, 5, 50008, 'General: Glyph of Twinking', 0),
(83, 5, 50521, 'General: Glyph of Exhaustion', 0),
(84, 5, 51055, 'Druid: Glyph of the Tree', 100),
(86, 5, 51057, 'Druid: Glyph of the Frostsaber', 100),
(87, 5, 51266, 'Druid: Glyph of the Ice Bear', 100),
(88, 5, 51431, 'Druid: Glyph of the Frostkin', 100),
(89, 5, 51830, 'Druid: Glyph of the Orca', 100),
(90, 5, 51432, 'Druid: Glyph of Stars', 100),
-- Riding Mounts: Birds
(101, 6, 50071, 'Ivory Tallstrider', 100),
(102, 6, 50072, 'Brown Tallstrider', 100), 
(103, 6, 50073, 'Gray Tallstrider', 100), 
(104, 6, 50076, 'Turquoise Tallstrider', 100),
(105, 6, 50074, 'Pink Tallstrider', 100), 
(106, 6, 81100, 'Swift Raven Lord', 500), 
(107, 6, 81120, 'Frayfeather Hippogryph', 500),
(108, 6, 81121, 'Cenarion Hippogryph', 500),
(109, 6, 81242, 'Viridian Hippogryph', 300),
-- Riding Mounts: Sabers
(121, 7, 12325, 'Spotted Leopard', 200), 
(122, 7, 12326, 'Tawny Leopard', 200),
(123, 7, 12327, 'Golden Leopard', 200),
(124, 7, 8630,  'Stranglethorn Tiger', 200),
(125, 7, 81227, 'Striped Dawnsaber', 200),
(126, 7, 12302, 'Ancient Frostsaber', 200), 
(127, 7, 8635, 'Ancient Nightsaber', 200), 
(128, 7, 81232, 'Azure Frostsaber', 160),
(129, 7, 18768, 'Armored Dawnsaber', 260),
(130, 7, 80430, 'Armored Spectral Tiger', 2000),
(131, 7, 12303, 'Black Zulian Panther', 200),
(132, 7, 81231, 'Tamed Rak\'Shiri', 200),
-- Riding Mounts: Horses & Rams
(141, 8, 50399, 'Ancient Quel\'dorei Steed', 200),
(142, 8, 80449, 'Armored Alliance Steed', 300),
(143, 8, 81236, 'Armored Gray Steed', 200),
(144, 8, 23193, 'Armored Black Deathcharger', 300),
(145, 8, 81235, 'Armored Vermilion Deathcharger', 300),
(146, 8, 50407, 'Nightmare Shadowrunner', 200),
(147, 8, 50400, 'Barrens Zhevra', 200),
(148, 8, 81234, 'Brewfest Ram', 200),
(149, 8, 80443, 'Armored Brewfest Ram', 360),
(150, 8, 13328, 'Ancient Black Ram', 200),
(151, 8, 50406, 'Shadowhorn Stag', 200),
-- Riding Mounts: Kodo & Wolves
(162, 9, 15293, 'Ancient Teal Kodo', 200), 
(162, 9, 15292, 'Ancient Green Kodo', 200), 
(162, 9, 80455, 'Armored Brewfest Kodo', 400), 
(164, 9, 12351, 'Ancient Arctic Wolf', 200), 
(164, 9, 5663,  'Ancient Red Wolf', 200), 
(163, 9, 1041,  'Ancient Black Wolf', 200),
(165, 9, 80447, 'Armored Horde Wolf', 300),
-- Riding Mounts: Raptors & Bears
(181, 10, 50401, 'Armored Ivory Raptor', 360),
(182, 10, 50402, 'Armored Violet Raptor', 360), 
(183, 10, 50403, 'Armored Red Raptor', 360),
(184, 10, 50404, 'Armored Obsidian Raptor', 360),  
(185, 10, 81154, 'Armored Black Bear', 400),
(186, 10, 81153, 'Armored Purple Bear', 400),
(187, 10, 81155, 'Armored Red Bear', 400),
(188, 10, 81158, 'Armored White Bear', 400),
(189, 10, 81091, 'Big Blizzard Bear', 500),
(190, 10, 81102, 'Darkmoon Dancing Bear', 300),
-- Riding Mounts: Mechanic & Others
(221, 11, 13325, 'Fluorescent Mechanostrider', 120), 
(222, 11, 81238, 'Turbo-Charged Flying Machine', 350), 
(223, 11, 81239, 'Happy Whimsyshire Cloud', 200), 
(224, 11, 81240, 'Sad Whimsyshire Cloud', 200), 
(225, 11, 23720, 'Swift Riding Turtle', 0), 
-- Vanity: Companions
(241, 12, 13584, 'Diablo Stone', 80),
(242, 12, 13583, 'Panda Collar', 80),
(243, 12, 20371, 'Murky', 80),
(244, 12, 23713, 'Hippogryph Hatchling', 80),
(245, 12, 19055, 'Tiny Green Dragon', 80),
(246, 12, 50013, 'Bone Golem', 80),
(247, 12, 50019, 'Moonkin Hatchling', 80),
(248, 12, 50083, 'Azure Whelpling', 80),
(249, 12, 50084, 'Kirin Tor Familiar', 80),
(250, 12, 22781, 'Poley', 80),
(251, 12, 50085, 'Frostwolf Ghostpup', 80),
(252, 12, 51007, 'Teldrassil Sproutling', 80),
(253, 12, 81150, 'Phoenix Hatchling', 150),
(254, 12, 81151, 'Spirit Darter', 80),
(255, 12, 81207, 'Whimsyshire Cloud', 150),
-- Vanity: Tabards
(271, 13, 81088, 'Tabard of Summer Skies', 180),
(272, 13, 81087, 'Tabard of Summer Flames', 180),
(273, 13, 23709, 'Tabard of Frost', 200),
(274, 13, 23705, 'Tabard of Flame', 200),
(275, 13, 81083, 'Tabard of the Void', 200),
(276, 13, 81085, 'Tabard of Nature', 200),
(277, 13, 81084, 'Tabard of the Arcane', 200),
(278, 13, 81082, 'Tabard of Brilliance', 200),
(279, 13, 81081, 'Tabard of Fury', 200),
(280, 13, 23710, 'Darkmoon Faire Tabard', 200),
(281, 13, 80314, 'Undead Scourge Tabard', 200),
(282, 13, 50089, 'Dalaran Tabard', 160),
(283, 13, 50086, 'Stromgarde Tabard', 160),
(284, 13, 50087, 'Kul\'Tiras Tabard', 160),
(285, 13, 50092, 'Crimson Legion Tabard', 160),
-- Vanity: Illusions 
(291, 14, 51201, 'Illusion: Worgen', 120),
(292, 14, 51205, 'Illusion: Ghost', 120),
(293, 14, 51206, 'Illusion: Banshee', 120),
(294, 14, 51208, 'Illusion: Succubus', 120),
(295, 14, 51065, 'Illusion: Shadow', 120),
(296, 14, 80648, 'Illusion: Gnoll', 120),
(297, 14, 51253, 'Illusion: Furbolg', 120),
(298, 14, 81145, 'Illusion: Pandaren', 120),
(299, 14, 80694, 'Illusion: Scourge', 120),
(300, 14, 50408, 'Illusion: Dryad', 120),
(301, 14, 53008, 'Illusion: Ogre', 120);
