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
(104, 1, 50003, 'Loremaster\'s Backpack: 28 Slot Bag', 120),
(105, 1, 50004, 'Portable Black Hole: 36 Slot Bag', 180),
(106, 1, 51310, 'Portable Wormhole Generator', 0),
(107, 1, 50011, 'Portable Gnomish Mailbox', 160),
(108, 1, 51715, 'Portable Goblin Brainwashing Device', 200),
(109, 1, 50009, 'Portable Auctioneer (Companion)', 160),
(110, 1, 50005, 'Field Repair Bot (Companion)', 160),
(111, 1, 50007, 'Forworn Mule (Bank Companion)', 200),
(112, 1, 51421, 'Caravan Kodo (Bank Companion)', 200),
(113, 1, 51306, 'Fashion Coins x10 (Transmogrification)', 160),
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
(300, 3, 50071, 'Level 1  Ivory Tallstrider', 100),
(301, 3, 50072, 'Level 1  Brown Tallstrider', 100),
(302, 3, 50073, 'Level 1  Gray Tallstrider', 100),
(303, 3, 50076, 'Level 1  Turquoise Tallstrider', 100),
(304, 3, 50074, 'Level 1  Pink Tallstrider', 165),
(305, 3, 12325, 'Level 40 Primal Leopard', 160),
(306, 3, 12326, 'Level 40 Tawny Sabercat', 160),
(307, 3, 8630,  'Level 40 Bengal Tiger', 160),
(309, 3, 13325, 'Level 40 Fluorescent Mechanostrider', 160),
(310, 4, 5875,  'Level 40 Blue Ram', 160),
(311, 4, 5874,  'Level 40 Black Ram', 160),
(312, 4, 1041,  'Level 40 Black Wolf', 160),
(313, 4, 8590,  'Level 40 Obsidian Raptor', 160),
-- Epic Mounts ------------------------------------------------------------------------------------------
(400, 4, 13329, 'Level 60 Frost Ram', 260),
(401, 4, 12353, 'Level 60 White Stallion', 260),
(402, 4, 12302, 'Level 60 Ancient Frostsaber', 260),
(403, 4, 12303, 'Level 60 Black Nightsaber', 260),
(404, 4, 12351, 'Level 60 Arctic Wolf', 260),
(405, 4, 15293, 'Level 60 Teal Kodo', 260),
(406, 4, 18768, 'Level 60 Swift Dawnsaber', 260),
(407, 4, 23193, 'Level 60 Skeletal Deathcharger', 260),
(408, 4, 50399, 'Level 60 Quel\'dorei Steed', 360),
(409, 4, 50400, 'Level 60 Swift Zhevra', 360),
(410, 4, 50401, 'Level 60 Ivory War Raptor', 360),
(411, 4, 50402, 'Level 60 Violet War Raptor', 360),
(412, 4, 50403, 'Level 60 Red War Raptor', 360),
(413, 4, 50404, 'Level 60 Obsidian War Raptor', 360),
(414, 4, 50407, 'Level 60 Nightmare Dreamrunner', 360),
-- Tabards ---------------------------------------------------------------------------------------------
(600, 5, 23709, 'Tabard of Frost', 160),
(601, 5, 23705, 'Tabard of Flame', 160),
(602, 5, 23710, 'Darkmoon Faire Tabard', 160),
(603, 5, 22999, 'Tabard of the Argent Dawn', 100),
(604, 5, 50044, 'Goldweave Tabard', 160),
(605, 5, 50086, 'Stromgarde Tabard', 160),
(606, 5, 50087, 'Tabard of Kul\'Tiras', 160),
(607, 5, 50088, 'Theramore Tabard', 160),
(608, 5, 50089, 'Dalaran Tabard', 160),
(609, 5, 50090, 'White Tabard of Stormwind', 160),
(610, 5, 50091, 'Scholomance Tabard', 160),
(611, 5, 50038, 'High Inquisitor\'s Tabard', 160),
(612, 5, 50092, 'Tabard of the Crimson Legion', 160),
(613, 5, 50093, 'Tabard of Hearthglen', 160),
-- Skins ---------------------------------------------------------------------------------------
(700, 6, 50105, 'Human: Sally Whitemane', 160),
(701, 6, 50106, 'Human, Gnome: Cultist', 160),
(702, 6, 50204, 'Dwarf: Wildhammer', 160),
(703, 6, 50205, 'Dwarf: Dark Iron', 160),
(704, 6, 50206, 'Dwarf: Earthen', 160),
(705, 6, 50207, 'Orc: Blackrock Clan', 160),
(706, 6, 50208, 'Orc: Chaos', 160),
(707, 6, 50209, 'Orc: Mag\'Har', 160),
(708, 6, 50210, 'Troll: Forest', 160),
(709, 6, 50211, 'Troll: Sandfury', 160),
(710, 6, 51010, 'Troll: Dark', 160),
(711, 6, 51011, 'Troll: Ice', 160),
(712, 6, 50212, 'Gnome: Leper (Male)', 160),
-- Illusions -----------------------------------------------------------------------------------------
(802, 7, 51201, 'Illusion: Worgen', 100),
(803, 7, 51205, 'Illusion: Ghost', 100),
(804, 7, 51206, 'Illusion: Banshee', 100),
(805, 7, 51208, 'Illusion: Succubus', 100),
(806, 7, 51065, 'Illusion: Shadow', 100),
(807, 7, 51253, 'Illusion: Furbolg', 100),
-- Glyphs -----------------------------------------------------------------------------------------
(900, 8, 50010, 'General: Glyph of Hardcore', 0),
(901, 8, 50008, 'General: Glyph of Twinking', 0),
(902, 8, 50521, 'General: Glyph of Exhaustion', 0),
(903, 8, 51055, 'Druid: Glyph of the Tree', 100),
(904, 8, 51056, 'Druid: Glyph of the Stag', 100),
(905, 8, 51057, 'Druid: Glyph of the Frostsaber', 100),
(906, 8, 51266, 'Druid: Glyph of the Ice Bear', 100),
(907, 8, 51431, 'Druid: Glyph of the Frostkin', 100),
(908, 8, 51432, 'Druid: Glyph of Stars', 100);

