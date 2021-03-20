replace into broadcast_text (id, maletext) values
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
(1,  'Character: Name & Look'),
(2,  'Character: Additional Skins'),
(3,  'Character: Race Change'),
(4,  'Gameplay: Miscellaneous'),
(5,  'Gameplay: Riding Mounts I'),
(6,  'Gameplay: Riding Mounts II'),
(7,  'Gameplay: Riding Mounts III'),
(8,  'Gameplay: Glyphs'),
(9,  'Vanity: Companions'),
(10,  'Vanity: Tabards'),
(11,  'Vanity: Illusions');

replace into shop_items values
-- Character: Name & Appearance
(100, 1, 50000, 'Token: Rename', 160),
(101, 1, 50611, 'Token: Change Gender', 160),
(102, 1, 50600, 'Summon: Barber', 250),
(103, 1, 50601, 'Summon: Surgeon', 250),
-- Character: Additional Skins
(200, 2, 50105, 'Token: Sally Whitemane', 160),
(201, 2, 50106, 'Token: Scholomance Student', 160),
(203, 2, 50205, 'Token: Dark Iron Dwarf', 160),
(204, 2, 50206, 'Token: Earthen Dwarf', 160),
(205, 2, 50207, 'Token: Blackrock Clan', 160),
(206, 2, 50208, 'Token: Chaos Orc', 160),
(207, 2, 50209, 'Token: Mag\'Har Clan', 160),
(208, 2, 50210, 'Token: Forest Troll', 160),
(209, 2, 50211, 'Token: Sandfury Troll', 160),
(210, 2, 51010, 'Token: Dark Troll', 160),
(211, 2, 51011, 'Token: Ice Troll', 160),
(212, 2, 50212, 'Token: Leper Gnome', 160),
(213, 2, 81206, 'Token: Dark Ranger', 160),
-- Character: Race & Faction
(300, 3, 50603, 'Race Change Token: Human', 180),
(301, 3, 50604, 'Race Change Token: Gnome', 180),
(302, 3, 50605, 'Race Change Token: Dwarf', 180),
(303, 3, 50606, 'Race Change Token: Night Elf', 180),
(304, 3, 50607, 'Race Change Token: Orc', 180),
(305, 3, 50608, 'Race Change Token: Troll', 180),
(306, 3, 50609, 'Race Change Token: Tauren', 180),
(307, 3, 50610, 'Race Change Token: Undead', 180),
-- Gameplay: Miscellaneous
(400, 4, 50003, 'Backpack: 28 slots', 180),
(401, 4, 50004, 'Backpack: 36 slots', 200),
(402, 4, 50011, 'Summon: Mailbox', 160),
(403, 4, 51715, 'Summon: Brainwashing Device', 200),
(404, 4, 50602, 'Summon: Auctioneer', 180),
(405, 4, 50005, 'Summon: Repair Bot', 180),
(406, 4, 50007, 'Summon: Bank (Mule)', 200),
(407, 4, 51421, 'Summon: Bank (Kodo)', 200),
-- Gameplay: Riding Mounts I
(500, 5, 50071, 'Ivory Tallstrider', 100),
(501, 5, 50072, 'Brown Tallstrider', 100), 
(502, 5, 50073, 'Gray Tallstrider', 100), 
(503, 5, 50076, 'Turquoise Tallstrider', 100),
(504, 5, 50074, 'Pink Tallstrider', 100), 
(505, 5, 12325, 'Spotted Leopard', 200), 
(506, 5, 12326, 'Tawny Leopard', 200),
(507, 5, 8630,  'Stranglethorn Tiger', 200),
(508, 5, 12302, 'Ancient Frostsaber', 260), 
(509, 5, 12303, 'Ancient Nightsaber', 260),
(510, 5, 18768, 'Swift Dawnsaber', 260),
(511, 5, 80430, 'Swift Spectral Tiger', 2000),
(512, 5, 12353, 'Swift White Stallion', 260), 
(513, 5, 80449, 'Ceremonial White Stallion', 400),
-- Gameplay: Riding Mounts II
(600, 6, 23193, 'Skeletal Deathcharger', 260),
(601, 6, 50407, 'Nightmare Dreamrunner', 360),
(601, 6, 13325, 'Fluorescent Mechanostrider', 160), 
(603, 6, 1041,  'Black Wolf', 160),
(604, 6, 12351, 'Arctic Wolf', 260), 
(605, 6, 80447, 'Swift Horde Worg', 400), 
(606, 6, 15293, 'Teal Kodo', 260),
(607, 6, 80455, 'Swift Brewfest Kodo', 400), 
(608, 6, 8590,  'Obsidian Raptor', 160),
(609, 6, 50404, 'Obsidian War Raptor', 360), 
(610, 6, 50401, 'Ivory War Raptor', 360),
(611, 6, 50402, 'Violet War Raptor', 360), 
(612, 6, 50403, 'Red War Raptor', 360), 
(613, 6, 80431, 'Swift Magic Rooster', 400),
(614, 6, 81100, 'Swift Raven Lord', 500), 
-- Gameplay: Riding Mounts III
(700, 7, 81120, 'Frayfeather Hippogryph', 500),
(701, 7, 81121, 'Cenarion Hippogryph', 500),
(702, 7, 81091, 'Big Blizzard Bear', 500),
(703, 7, 81153, 'Armored Purple War Bear', 500),
(704, 7, 81154, 'Armored Brown War Bear', 500),
(705, 7, 81155, 'Armored Red War Bear', 500),
(706, 7, 81158, 'Armored White War Bear', 500),
(707, 7, 80443, 'Swift Brewfest Ram', 400),
-- Gameplay: Glyphs
(800, 8, 50010, 'General: Glyph of the Turtle', 0),
(801, 8, 50008, 'General: Glyph of Twinking', 0),
(802, 8, 50521, 'General: Glyph of Exhaustion', 0),
(803, 8, 51055, 'Druid: Glyph of the Tree', 100),
(804, 8, 51056, 'Druid: Glyph of the Stag', 100),
(805, 8, 51057, 'Druid: Glyph of the Frostsaber', 100),
(806, 8, 51266, 'Druid: Glyph of the Ice Bear', 100),
(807, 8, 51431, 'Druid: Glyph of the Frostkin', 100),
(808, 8, 51830, 'Druid: Glyph of the Orca', 100),
(809, 8, 51432, 'Druid: Glyph of Stars', 100),
-- Vanity: Companions
(901, 9, 13584, 'Diablo Stone', 80),
(902, 9, 13583, 'Panda Collar', 80),
(903, 9, 20371, 'Blue Murloc Egg', 80),
(904, 9, 23713, 'Hippogryph Hatchling', 80),
(905, 9, 19055, 'Green Dragon Orb', 80),
(906, 9, 50013, 'Bone Golem', 80),
(907, 9, 50019, 'Moonkin Egg', 80),
(908, 9, 50083, 'Ancient Arcane Dust', 80),
(909, 9, 50084, 'Kirin Tor Familiar', 80),
(910, 9, 22781, 'Polar Bear Collar', 80),
(911, 9, 50085, 'Frostwolf Ghostpup', 80),
(912, 9, 51007, 'Teldrassil Sproutling', 80),
(913, 9, 81150, 'Phoenix Hatchling', 150),
(914, 9, 81151, 'Spirit Darter', 80),
(915, 9, 81207, 'Whimsyshire Cloud', 150),
-- Vanity: Tabards
(1000, 10, 23710, 'Darkmoon Faire Tabard', 180),
(1001, 10, 81088, 'Tabard of Summer Skies', 180),
(1002, 10, 81087, 'Tabard of Summer Flames', 180),
(1003, 10, 23709, 'Tabard of Frost', 200),
(1004, 10, 23705, 'Tabard of Flame', 200),
(1005, 10, 81083, 'Tabard of the Void', 200),
(1006, 10, 81085, 'Tabard of Nature', 200),
(1007, 10, 81084, 'Tabard of the Arcane', 200),
(1008, 10, 81082, 'Tabard of Brilliance', 200),
(1009, 10, 81081, 'Tabard of Fury', 200),
(1010, 10, 80314, 'Undead Scourge Tabard', 160),
(1011, 10, 50089, 'Dalaran Tabard', 160),
(1012, 10, 50086, 'Stromgarde Tabard', 160),
(1013, 10, 50087, 'Kul\'Tiras Tabard', 160),
(1014, 10, 50092, 'Crimson Legion Tabard', 160),
-- Vanity: Illusions 
(1100, 11, 51201, 'Illusion: Worgen', 120),
(1101, 11, 51205, 'Illusion: Ghost', 120),
(1102, 11, 51206, 'Illusion: Banshee', 120),
(1103, 11, 51208, 'Illusion: Succubus', 120),
(1104, 11, 51065, 'Illusion: Shadow', 120),
(1105, 11, 80648, 'Illusion: Gnoll', 120),
(1106, 11, 51253, 'Illusion: Furbolg', 120),
(1107, 11, 81145, 'Illusion: Pandanren', 160);


