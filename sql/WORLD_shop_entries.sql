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
(1,  'Character: Name & Appearance'),
(2,  'Character: Additional Skins'),
(3,  'Character: Race a Faction'),
(4,  'Gameplay: Miscellaneous'),
(5,  'Gameplay: Riding Mounts I'),
(6,  'Gameplay: Riding Mounts II'),
(7,  'Gameplay: Glyphs'),
(8,  'Vanity: Companions'),
(9,  'Vanity: Tabards'),
(10,  'Vanity: Illusions');

replace into shop_items values
-- Character: Name & Appearance
(100, 1, 50000, 'Token: Rename', 160),
(101, 1, 50611, 'Token: Change Genger', 160),
(102, 1, 50600, 'Summon: Barber', 300),
(103, 1, 50601, 'Summon: Surgeon', 300),
-- Character: Additional Skins
(200, 2, 50105, 'Human: Sally Whitemane', 160),
(201, 2, 50106, 'Human, Gnome: Cultist', 160),
(202, 2, 50204, 'Dwarf: Wildhammer', 160),
(203, 2, 50205, 'Dwarf: Dark Iron', 160),
(204, 2, 50206, 'Dwarf: Earthen', 160),
(205, 2, 50207, 'Orc: Blackrock Clan', 160),
(206, 2, 50208, 'Orc: Chaos', 160),
(207, 2, 50209, 'Orc: Mag\'Har', 160),
(208, 2, 50210, 'Troll: Forest', 160),
(209, 2, 50211, 'Troll: Sandfury', 160),
(210, 2, 51010, 'Troll: Dark', 160),
(211, 2, 51011, 'Troll: Ice', 160),
(212, 2, 50212, 'Gnome: Leper', 160),
-- Character: Race & Faction
(300, 3, 50603, 'Race Change Token: Human', 200),
(301, 3, 50604, 'Race Change Token: Gnome', 200),
(302, 3, 50605, 'Race Change Token: Dwarf', 200),
(303, 3, 50606, 'Race Change Token: Night Elf', 200),
(304, 3, 50607, 'Race Change Token: Orc', 200),
(305, 3, 50608, 'Race Change Token: Troll', 200),
(306, 3, 50609, 'Race Change Token: Tauren', 200),
(307, 3, 50610, 'Race Change Token: Undead', 200),
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
(505, 5, 12325, 'Primal Leopard', 200),
(506, 5, 12326, 'Tawny Sabercat', 200),
(507, 5, 8630,  'Bengal Tiger', 200),
(509, 5, 13325, 'Fluorescent Mechanostrider', 160),
(510, 5, 5875,  'Blue Ram', 160),
(511, 5, 5874,  'Black Ram', 160),
(512, 5, 1041,  'Black Wolf', 160),
(513, 5, 8590,  'Obsidian Raptor', 160),
(514, 5, 23720,  'Riding Turtle', 0),
-- Gameplay: Riding Mounts II
(600, 6, 13329, 'Frost Ram', 260),
(601, 6, 12353, 'White Stallion', 260),
(602, 6, 12302, 'Ancient Frostsaber', 260),
(603, 6, 12303, 'Black Nightsaber', 260),
(604, 6, 12351, 'Arctic Wolf', 260),
(605, 6, 15293, 'Teal Kodo', 260),
(606, 6, 18768, 'Swift Dawnsaber', 260),
(607, 6, 23193, 'Skeletal Deathcharger', 260),
(608, 6, 50399, 'Quel\'dorei Steed', 360),
(609, 6, 50400, 'Swift Zhevra', 360),
(610, 6, 50401, 'Ivory War Raptor', 360),
(611, 6, 50402, 'Violet War Raptor', 360),
(612, 6, 50403, 'Red War Raptor', 360),
(613, 6, 50404, 'Obsidian War Raptor', 360),
(614, 6, 50407, 'Nightmare Dreamrunner', 360),
-- Gameplay: Glyphs
(700, 7, 50010, 'General: Glyph of Hardcore', 0),
(701, 7, 50008, 'General: Glyph of Twinking', 0),
(702, 7, 50521, 'General: Glyph of Exhaustion', 0),
(703, 7, 51055, 'Druid: Glyph of the Tree', 100),
(704, 7, 51056, 'Druid: Glyph of the Stag', 100),
(705, 7, 51057, 'Druid: Glyph of the Frostsaber', 100),
(706, 7, 51266, 'Druid: Glyph of the Ice Bear', 100),
(707, 7, 51431, 'Druid: Glyph of the Frostkin', 100),
(708, 7, 51830, 'Druid: Glyph of the Orca', 100),
(709, 7, 51432, 'Druid: Glyph of Stars', 100),
-- Vanity: Companions
(801, 8, 13584, 'Diablo Stone', 60),
(802, 8, 13583, 'Panda Collar', 60),
(803, 8, 20371, 'Blue Murloc Egg', 60),
(804, 8, 23713, 'Hippogryph Hatchling', 60),
(805, 8, 19055, 'Green Dragon Orb', 60),
(806, 8, 21168, 'Baby Shark', 60),
(807, 8, 50013, 'Bone Golem', 60),
(808, 8, 50019, 'Moonkin Egg', 60),
(810, 8, 50083, 'Ancient Arcane Dust', 60),
(811, 8, 50084, 'Kirin Tor Familiar', 60),
(812, 8, 22781, 'Polar Bear Collar', 60),
(813, 8, 50085, 'Frostwolf Ghostpup', 60),
(814, 8, 51007, 'Teldrassil Sproutling', 60),
-- Vanity: Tabards
(900, 9, 23709, 'Tabard of Frost', 180),
(901, 9, 23705, 'Tabard of Flame', 180),
(902, 9, 23710, 'Darkmoon Faire Tabard', 180),
(903, 9, 22999, 'Tabard of the Argent Dawn', 100),
(904, 9, 50044, 'Goldweave Tabard', 160),
(905, 9, 50086, 'Stromgarde Tabard', 160),
(906, 9, 50087, 'Tabard of Kul\'Tiras', 160),
(907, 9, 50088, 'Theramore Tabard', 160),
(908, 9, 50089, 'Dalaran Tabard', 160),
(909, 9, 50090, 'White Tabard of Stormwind', 160),
(910, 9, 50091, 'Scholomance Tabard', 160),
(911, 9, 50038, 'High Inquisitor\'s Tabard', 160),
(912, 9, 50092, 'Tabard of the Crimson Legion', 160),
(913, 9, 50093, 'Tabard of Hearthglen', 160),
-- Vanity: Illusions 
(1000, 10, 51201, 'Illusion: Worgen', 120),
(1001, 10, 51205, 'Illusion: Ghost', 120),
(1002, 10, 51206, 'Illusion: Banshee', 120),
(1003, 10, 51208, 'Illusion: Succubus', 120),
(1004, 10, 51065, 'Illusion: Shadow', 120),
(1005, 10, 51253, 'Illusion: Furbolg', 120);


