replace into broadcast_text (id, maletext) values
('90000', 'So, you want to help support our server and our staff, but not sure how? Well, you\'ve come to the right place, $n.\n\nDonations are a way to help us improve your experience here at Turtle WoW, as well as help pay for general server costs, advertisement, developers, and overall production.');

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
(1, 'Gameplay'),
(2, 'Companions'),
(3, 'Mounts #1'),
(4, 'Mounts #2'),
(5, 'Mounts #3'),
(6, 'Tabards'),
(7, 'Roleplay'),
(8, 'Skins');

replace into shop_items values
-- Gameplay --------------------------------------------------------------------------------------------
(100, 1, 50010, 'Enable Hardcore Mode', 0),
(101, 1, 50016, 'Portable Meeting Stone (RP Hub)', 0),
(102, 1, 50008, 'Turtle Twink\'s Insignia (Stop XP)', 0),
(102, 1, 50521, 'Exhausting Trinket', 0),
(103, 1, 50000, 'Character Name Change', 100),
(104, 1, 50002, 'Character Race Change', 200),
(105, 1, 50001, 'Character Look Change', 150),
(106, 1, 50003, 'Loremaster\'s Backpack (28 slot bag)', 75),
(107, 1, 50011, 'MOLL-E, Portable Mailbox', 100),
(108, 1, 50009, 'Mechanical Auctioneer', 100),
(109, 1, 50005, 'Field Repair Bot 75B', 100),
(110, 1, 50004, 'Portable Black Hole (36 slot bag)', 150),
(111, 1, 50007, 'Forworn Mule (Bank)', 200),
-- Pets ------------------------------------------------------------------------------------------------
(200, 2, 51007, 'Teldrassil Sproutling', 50),
(201, 2, 13584, 'Diablo Stone', 50),
(202, 2, 13583, 'Panda Collar', 50),
(203, 2, 20371, 'Blue Murloc Egg', 50),
(204, 2, 23713, 'Hippogryph Hatchling', 50),
(205, 2, 19055, 'Green Dragon Orb', 50),
(206, 2, 21168, 'Baby Shark', 50),
(207, 2, 50013, 'Bone Golem', 50),
(208, 2, 50019, 'Moonkin Egg', 50),
(210, 2, 50083, 'Ancient Arcane Dust', 50),
(211, 2, 50084, 'Kirin Tor Familiar', 50),
(212, 2, 22781, 'Polar Bear Collar', 50),
(213, 2, 50085, 'Frostwolf Ghostpup', 50),
(215, 2, 50240, 'Kodo Calfling', 50),
-- Mounts #1 --------------------------------------------------------------------------------------
(300, 3, 50071, 'Level 1  Ivory Tallstrider', 100),
(301, 3, 50072, 'Level 1  Brown Tallstrider', 100),
(302, 3, 50073, 'Level 1  Gray Tallstrider', 100),
(303, 3, 50076, 'Level 1  Turquoise Tallstrider', 100),
(304, 3, 50074, 'Level 1  Swift Lovebird', 125),
(305, 3, 12325, 'Level 40 Primal Leopard', 150),
(306, 3, 12326, 'Level 40 Tawny Sabercat', 150),
(307, 3, 8630,  'Level 40 Bengal Tiger', 150),
(308, 3, 8583,  'Level 40 Skeletal Horse', 150),
(309, 3, 21044, 'Level 40 Reindeer Reins', 150),
(310, 3, 13322, 'Level 40 Unpainted Mechanostrider', 150),
(311, 3, 13323, 'Level 40 Purple Mechanostrider', 150),
(312, 3, 13324, 'Level 40 Red and Blue Mechanostrider', 150),
(313, 3, 13325, 'Level 40 Fluorescent Mechanostrider', 150),
(314, 3, 14062, 'Level 40 Kodo Mount', 150),
-- Mounts #2 ------------------------------------------------------------------------------------------
(400, 4, 5875, 'Level 40 Blue Ram', 150),
(401, 4, 5874, 'Level 40 Black Ram', 150),
(402, 4, 1041, 'Level 40 Black Wolf', 150),
(403, 4, 8590, 'Level 40 Obsidian Raptor', 150),
(404, 4, 13329, 'Level 60 Frost Ram', 250),
(405, 4, 13327, 'Level 60 Icy Blue Mechanostrider Mod A', 250),
(406, 4, 13326, 'Level 60 White Mechanostrider Mod B', 250),
(407, 4, 12354, 'Level 60 Palomino', 250),
(408, 4, 12353, 'Level 60 White Stallion', 250),
(409, 4, 12302, 'Level 60 Ancient Frostsaber', 250),
(410, 4, 12303, 'Level 60 Black Nightsaber', 250),
(411, 4, 12351, 'Level 60 Arctic Wolf', 250),
(412, 4, 12330, 'Level 60 Red Wolf', 250),
(413, 4, 15292, 'Level 60 Green Kodo', 250),
(414, 4, 15293, 'Level 60 Teal Kodo', 250),
-- Mounts #3 ------------------------------------------------------------------------------------------
(500, 5, 13317, 'Level 60 Ivory Raptor', 250),
(501, 5, 8586,  'Level 60 Mottled Red Raptor', 250),
(502, 5, 18768, 'Level 60 Swift Dawnsaber', 250),
(503, 5, 23193, 'Level 60 Skeletal Steed', 250),
(504, 5, 50399, 'Level 60 Quel\'dorei Steed', 350),
(505, 5, 50400, 'Level 60 Swift Zhevra', 350),
(506, 5, 50401, 'Level 60 Ivory War Raptor', 350),
(507, 5, 50402, 'Level 60 Violet War Raptor', 350),
(508, 5, 50403, 'Level 60 Red War Raptor', 350),
(509, 5, 50404, 'Level 60 Obsidian War Raptor', 350),
(510, 5, 50407, 'Level 60 Nightmare Dreamrunner', 350),
-- Tabards ---------------------------------------------------------------------------------------------
(600, 6, 23709, 'Tabard of Frost', 125),
(601, 6, 23705, 'Tabard of Flame', 125),
(602, 6, 23710, 'Darkmoon Faire Tabard', 100),
(603, 6, 22999, 'Tabard of the Argent Dawn', 50),
(604, 6, 50044, 'Goldweave Tabard', 75),
(605, 6, 50086, 'Stromgarde Tabard', 75),
(606, 6, 50087, 'Tabard of Kul\'Tiras', 75),
(607, 6, 50088, 'Theramore Tabard', 75),
(608, 6, 50089, 'Dalaran Tabard', 75),
(609, 6, 50090, 'White Tabard of Stormwind', 75),
(610, 6, 50091, 'Scholomance Tabard', 75),
(611, 6, 50038, 'High Inquisitor\'s Tabard', 75),
(612, 6, 50092, 'Tabard of the Crimson Legion', 75),
(613, 6, 50093, 'Tabard of Hearthglen', 75),
-- Roleplay --------------------------------------------------------------------------------------------
(700, 7, 50024, 'Dressing Box: Invisible Suit', 20),
(701, 7, 50022, 'Dressing Box: Midsummer Priestess', 50),
(702, 7, 50023, 'Dressing Box: Demon Hunter', 75),
(703, 7, 50025, 'Dressing Box: Sally Whitemane', 100),
(704, 7, 50382, 'Dressing Box: Kul\'Tiras Guard', 100),
(705, 7, 50383, 'Dressing Box: Theramore Guard', 100),
(706, 7, 50386, 'Dressing Box: Dwarven Mountaineer', 100),
(707, 7, 50388, 'Dressing Box: Nightwatchman', 100),
(708, 7, 50384, 'Dressing Box: Stromgarde Guard', 100),
(709, 7, 50101, 'Dressing Box: Scholomance Student', 100),
(710, 7, 50509, 'Dressing Box: Darkmaster Gandling', 100),
(711, 7, 50511, 'Dressing Box: Goldweave Raiment', 100),
(712, 7, 50513, 'Dressing Box: Necromancer', 100),
-- Skins ---------------------------------------------------------------------------------------
(800, 8, 50105, 'Human: Sally Whitemane (Female)', 50),
(801, 8, 50106, 'Human, Gnome: Cult of the Damned', 50),
(802, 8, 50204, 'Dwarf: Wildhammer', 125),
(803, 8, 50205, 'Dwarf: Dark Iron', 125),
(804, 8, 50206, 'Dwarf: Earthen (Male)', 125),
(805, 8, 50207, 'Orc: Blackrock Clan', 125),
(806, 8, 50208, 'Orc: Chaos (Male Only)', 125),
(807, 8, 50209, 'Orc: Mag\'Har (Male)', 125),
(808, 8, 50210, 'Troll: Forest', 125),
(809, 8, 50211, 'Troll: Sandfury (Including Zombies)', 125),
(810, 8, 51010, 'Troll: Dark', 125),
(811, 8, 51011, 'Troll: Ice', 125),
(812, 8, 50212, 'Gnome: Leper (Male)', 125);
-- Disguises -----------------------------------------------------------------------------------------
-- (900, 9, 51200, 'Goblin', 100),
-- (901, 9, 51201, 'Worgen', 100),
-- (902, 9, 51202, 'Blood Elf', 100),
-- (903, 9, 50017, 'High Elf', 100),
-- (904, 9, 50408, 'Grove Keeper (M) / Dryad (F)', 100),
-- (905, 9, 51205, 'Ghost', 100),
-- (906, 9, 51206, 'Banshee', 100),
-- (907, 9, 51207, 'Druid of the Fang', 100),
-- (908, 9, 51208, 'Succubus', 100);

