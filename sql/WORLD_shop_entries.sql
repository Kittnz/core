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
(1,  'Gameplay'),
(2,  'Companions'),
(3,  'Rare Mounts'),
(4,  'Epic Mounts'),
(5,  'Tabards'),
(6,  'Skins'),
(7,  'Illusions'),
(8,  'Glyphs');

replace into shop_items values
-- Gameplay --------------------------------------------------------------------------------------------
(100, 1, 50000, 'Character Name Change', 160),
(101, 1, 50002, 'Character Race Change', 200),
(102, 1, 50001, 'Character Look Change', 160),
(103, 1, 51434, 'Character Faction Change', 250),
(104, 1, 50003, 'Loremaster\'s Backpack: 28 Slots', 120),
(105, 1, 50004, 'Portable Pocket Dimension: 36 Slots', 180),
(107, 1, 50011, 'Portable Gnomish Mailbox', 160),
(108, 1, 51715, 'Portable Goblin Brainwashing Device', 200),
(109, 1, 50009, 'Portable Auctioneer (Companion)', 160),
(110, 1, 50005, 'Field Repair Bot (Companion)', 160),
(111, 1, 50007, 'Forworn Mule (Bank Companion)', 200),
(112, 1, 51421, 'Caravan Kodo (Bank Companion)', 200),
-- Pets ------------------------------------------------------------------------------------------------
(201, 2, 13584, 'Diablo Stone', 60),
(202, 2, 13583, 'Panda Collar', 60),
(203, 2, 20371, 'Blue Murloc Egg', 60),
(204, 2, 23713, 'Hippogryph Hatchling', 60),
(205, 2, 19055, 'Green Dragon Orb', 60),
(206, 2, 21168, 'Baby Shark', 60),
(207, 2, 50013, 'Bone Golem', 60),
(208, 2, 50019, 'Moonkin Egg', 60),
(210, 2, 50083, 'Ancient Arcane Dust', 60),
(211, 2, 50084, 'Kirin Tor Familiar', 60),
(212, 2, 22781, 'Polar Bear Collar', 60),
(213, 2, 50085, 'Frostwolf Ghostpup', 60),
(214, 2, 51007, 'Teldrassil Sproutling', 60),
-- Rare Mounts --------------------------------------------------------------------------------------
(300, 3, 50071, 'Ivory Tallstrider', 100),
(301, 3, 50072, 'Brown Tallstrider', 100),
(302, 3, 50073, 'Gray Tallstrider', 100),
(303, 3, 50076, 'Turquoise Tallstrider', 100),
(304, 3, 50074, 'Pink Tallstrider', 180),
(305, 3, 12325, 'Primal Leopard', 160),
(306, 3, 12326, 'Tawny Sabercat', 160),
(307, 3, 8630,  'Bengal Tiger', 160),
(309, 3, 13325, 'Fluorescent Mechanostrider', 160),
(310, 3, 5875,  'Blue Ram', 160),
(311, 3, 5874,  'Black Ram', 160),
(312, 3, 1041,  'Black Wolf', 160),
(313, 3, 8590,  'Obsidian Raptor', 160),
-- Epic Mounts ------------------------------------------------------------------------------------------
(400, 4, 13329, 'Frost Ram', 260),
(401, 4, 12353, 'White Stallion', 260),
(402, 4, 12302, 'Ancient Frostsaber', 260),
(403, 4, 12303, 'Black Nightsaber', 260),
(404, 4, 12351, 'Arctic Wolf', 260),
(405, 4, 15293, 'Teal Kodo', 260),
(406, 4, 18768, 'Swift Dawnsaber', 260),
(407, 4, 23193, 'Skeletal Deathcharger', 260),
(408, 4, 50399, 'Quel\'dorei Steed', 360),
(409, 4, 50400, 'Swift Zhevra', 360),
(410, 4, 50401, 'Ivory War Raptor', 360),
(411, 4, 50402, 'Violet War Raptor', 360),
(412, 4, 50403, 'Red War Raptor', 360),
(413, 4, 50404, 'Obsidian War Raptor', 360),
(414, 4, 50407, 'Nightmare Dreamrunner', 360),
-- Tabards ---------------------------------------------------------------------------------------------
(500, 5, 23709, 'Tabard of Frost', 160),
(501, 5, 23705, 'Tabard of Flame', 160),
(502, 5, 23710, 'Darkmoon Faire Tabard', 160),
(503, 5, 22999, 'Tabard of the Argent Dawn', 100),
(504, 5, 50044, 'Goldweave Tabard', 160),
(505, 5, 50086, 'Stromgarde Tabard', 160),
(506, 5, 50087, 'Tabard of Kul\'Tiras', 160),
(507, 5, 50088, 'Theramore Tabard', 160),
(508, 5, 50089, 'Dalaran Tabard', 160),
(509, 5, 50090, 'White Tabard of Stormwind', 160),
(510, 5, 50091, 'Scholomance Tabard', 160),
(511, 5, 50038, 'High Inquisitor\'s Tabard', 160),
(512, 5, 50092, 'Tabard of the Crimson Legion', 160),
(513, 5, 50093, 'Tabard of Hearthglen', 160),
-- Skins ---------------------------------------------------------------------------------------
(600, 6, 50105, 'Human: Sally Whitemane', 160),
(601, 6, 50106, 'Human, Gnome: Cultist', 160),
(602, 6, 50204, 'Dwarf: Wildhammer', 160),
(603, 6, 50205, 'Dwarf: Dark Iron', 160),
(604, 6, 50206, 'Dwarf: Earthen', 160),
(605, 6, 50207, 'Orc: Blackrock Clan', 160),
(606, 6, 50208, 'Orc: Chaos', 160),
(607, 6, 50209, 'Orc: Mag\'Har', 160),
(608, 6, 50210, 'Troll: Forest', 160),
(609, 6, 50211, 'Troll: Sandfury', 160),
(610, 6, 51010, 'Troll: Dark', 160),
(611, 6, 51011, 'Troll: Ice', 160),
(612, 6, 50212, 'Gnome: Leper', 160),
-- Illusions -----------------------------------------------------------------------------------------
(702, 7, 51201, 'Illusion: Worgen', 100),
(703, 7, 51205, 'Illusion: Ghost', 100),
(704, 7, 51206, 'Illusion: Banshee', 100),
(705, 7, 51208, 'Illusion: Succubus', 100),
(706, 7, 51065, 'Illusion: Shadow', 100),
(707, 7, 51253, 'Illusion: Furbolg', 100),
-- Glyphs -----------------------------------------------------------------------------------------
(800, 8, 50010, 'General: Glyph of Hardcore', 0),
(801, 8, 50008, 'General: Glyph of Twinking', 0),
(802, 8, 50521, 'General: Glyph of Exhaustion', 0),
(803, 8, 51055, 'Druid: Glyph of the Tree', 100),
(804, 8, 51056, 'Druid: Glyph of the Stag', 100),
(805, 8, 51057, 'Druid: Glyph of the Frostsaber', 100),
(806, 8, 51266, 'Druid: Glyph of the Ice Bear', 100),
(807, 8, 51431, 'Druid: Glyph of the Frostkin', 100),
(808, 8, 51830, 'Druid: Glyph of the Orca', 100),
(809, 8, 51432, 'Druid: Glyph of Stars', 100);

