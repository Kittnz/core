drop table if exists shop_categories;
create table shop_categories (
  id int(11) unsigned not null auto_increment,
  name text,
  name_loc4 text,
  icon text,
  primary key (id)
) engine=innodb default charset=utf8;

drop table if exists shop_items;
create table shop_items (
  id int(11) unsigned not null auto_increment,
  category tinyint(3) unsigned not null default '0',
  item int(11) unsigned not null default '0',
  description text,
  description_loc4 text,
  price int(11) unsigned default '0',
  primary key (id)
) engine=innodb auto_increment=10 default charset=utf8;


replace into shop_categories (`id`, `name`, `name_loc4`, `icon`) values 
(1,  'Miscellaneous', '杂项', 'default'),
(2,  'Skins', '外观', 'ticket'),
(3,  'Gameplay', '玩法玩具', 'toys'),
(4,  'Glyphs', '雕文', 'service'),
(5,  'Mounts', '坐骑', 'mount'),
(6,  'Companions', '小宠物', 'pet'),
(7,  'Tabards', '战袍', 'tabard'),
(8,  'Illusions', '幻象', 'scroll');

replace into shop_items (`id`, `category`, `item`, `description`, `price`) values 
-- Miscellaneous
(1, 1, 50000, 'Token: Character Name Change', 160),
(2, 1, 80499, 'Token: Guild Name Change', 300),
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
(20, 2, 50105, 'Scarlet [Human, female only]', 160),
(21, 2, 50106, 'Necromancer I [Human]', 160),
(22, 2, 61106, 'Necromancer II [Night Elf, male only]', 160),
(23, 2, 50292, 'Arcane [Human]', 160),
(24, 2, 50290, 'Azotha [Human, female only]', 160),
(25, 2, 50291, 'Fel [Human, male only]', 160),
(26, 2, 83090, 'Dalaran Magi [Human]', 160),
(27, 2, 83091, 'Frost Affinity [Human, male only]', 160),
(28, 2, 81210, 'Death Knight [Human, male only]', 160),
(29, 2, 50204, 'Wildhammer I [Dwarf]', 160),
(30, 2, 50250, 'Wildhammer II [Dwarf]', 160),
(31, 2, 50251, 'Wildhammer III [Dwarf]', 160),
(32, 2, 50252, 'Wildhammer IV [Dwarf]', 160),
(33, 2, 50205, 'Dark Iron [Dwarf]', 160),
(34, 2, 50206, 'Earthern [Dwarf, male only]', 160),
(35, 2, 81229, 'Death Knight [Dwarf, male only]', 160),
(36, 2, 61105, 'Demon Hunter [Night Elf]', 160),
(37, 2, 61104, 'Demon [Night Elf, male only]', 160),
(38, 2, 83092, 'Naturalist I [Night Elf]', 160),
(39, 2, 83099, 'Naturalist II [Night Elf]', 160),
(40, 2, 83100, 'Naturalist III [Night Elf, male only]', 160),
(41, 2, 50212, 'Leper [Gnome]', 160),
(42, 2, 81230, 'Necromancer III [Gnome]', 160),
(43, 2, 81206, 'Dark Ranger [High Elf]', 160),
(44, 2, 81209, 'Blood Elf [High Elf]', 160),
(45, 2, 50207, 'Blackrock I [Orc]', 160),
(46, 2, 50208, 'Chaos [Orc]', 160),
(47, 2, 50209, 'Mag\'Har [Orc, male only]', 160),
(48, 2, 50220, 'Blackrock II [Orc]', 160),
(49, 2, 50221, 'Blackrock III [Orc]', 160),
(50, 2, 50223, 'Dreadskull II [Orc, male only]', 160),
(51, 2, 50224, 'Dreadskull III [Orc, male only]', 160),
(52, 2, 81255, 'Dreadskull [Orc, male only]', 160),
(53, 2, 50210, 'Forest I [Troll]', 160),
-- (54, 2, 50211, 'Sandfury [Troll, male only]', 160),
(55, 2, 50225, 'Forest II [Troll]', 160),
(56, 2, 51010, 'Dark [Troll]', 160),
(57, 2, 51011, 'Ice [Troll]', 160),
(58, 2, 81208, 'Zombie [Troll]', 160),
(59, 2, 81228, 'Tauren Spirit Walker [Tauren]', 160),
-- Gameplay
(61, 3, 50003, 'Backpack: 28 slots', 200),
(62, 3, 50004, 'Backpack: 36 slots', 300),
(63, 3, 50011, 'Summon: Mailbox', 200),
(64, 3, 51715, 'Summon: Brainwashing Device', 200),
(65, 3, 50602, 'Summon: Auctioneer', 200),
(66, 3, 50009, 'Summon: Mechanical Auctioneer', 200),
(67, 3, 50005, 'Summon: Repair Bot', 200),
(68, 3, 50007, 'Summon: Bank (Mule)', 200),
(69, 3, 51421, 'Summon: Bank (Kodo)', 200),
(70, 3, 51306, 'Large Pouch of Fashion Coins', 200),
-- Glyphs
(86, 4, 51057, 'Druid: Glyph of the Frostsaber', 100),
(87, 4, 51266, 'Druid: Glyph of the Ice Bear', 100),
(88, 4, 51431, 'Druid: Glyph of the Frostkin', 100),
(89, 4, 51830, 'Druid: Glyph of the Orca', 100),
(90, 4, 51432, 'Druid: Glyph of the Moon', 100),
(94, 4, 51056, 'Druid: Glyph of the Stag', 100),
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
-- Patch 1.16.6
(225, 5, 83150,	'Big Turtle WoW Bear', 360),
(226, 5, 83151,	'Black Spectral Tiger', 2000),
(227, 5, 83152,	'Green Spectral Tiger', 2000),
(228, 5, 83154,	'Armored Ice Raptor', 360),
(229, 5, 83155,	'Scarlet Charger', 360),
(230, 5, 83158,	'Brown Zhevra', 360),
(231, 5, 83159,	'Grim Totem Kodo', 360),
(231, 5, 50536, 'Twilight', 1000),
-- Companions
(241, 6, 13584, 'Diablo Stone', 80),
(242, 6, 13583, 'Panda Cub', 80),
(243, 6, 20371, 'Murky', 80),
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
(259, 6, 83300, 'Lil\' K.T', 300),
(260, 6, 83301, 'Core Hound Pet', 300),
(261, 6, 83302, 'Lil\' Ragnaros', 300),
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
(300, 8, 51215, 'Illusion: Satyr', 120),
(301, 8, 53008, 'Illusion: Ogre', 120);

UPDATE `shop_items` SET `description_loc4` = '代币：角色名称变更' WHERE `id` = 1;
UPDATE `shop_items` SET `description_loc4` = '代币：公会名称变更' WHERE `id` = 2;
UPDATE `shop_items` SET `description_loc4` = '代币：外观变更' WHERE `id` = 3;
UPDATE `shop_items` SET `description_loc4` = '猩红 [人类，仅限女性]' WHERE `id` = 20;
UPDATE `shop_items` SET `description_loc4` = '死灵法师 I [人类]' WHERE `id` = 21;
UPDATE `shop_items` SET `description_loc4` = '死灵法师 II [人类，仅限男性]' WHERE `id` = 22;
UPDATE `shop_items` SET `description_loc4` = '奥术【人类】' WHERE `id` = 23;
UPDATE `shop_items` SET `description_loc4` = '阿索拉 [人类，仅限女性]' WHERE `id` = 24;
UPDATE `shop_items` SET `description_loc4` = '邪能 [人类，仅限男性]' WHERE `id` = 25;
UPDATE `shop_items` SET `description_loc4` = '达拉然法师 [人类]' WHERE `id` = 26;
UPDATE `shop_items` SET `description_loc4` = '冰霜亲和【人类，仅限男性】' WHERE `id` = 27;
UPDATE `shop_items` SET `description_loc4` = '死亡骑士[人类，仅限男性]' WHERE `id` = 28;
UPDATE `shop_items` SET `description_loc4` = '蛮锤 I [矮人]' WHERE `id` = 29;
UPDATE `shop_items` SET `description_loc4` = '蛮锤 II [矮人]' WHERE `id` = 30;
UPDATE `shop_items` SET `description_loc4` = '蛮锤 III [矮人]' WHERE `id` = 31;
UPDATE `shop_items` SET `description_loc4` = '蛮锤 IV [矮人]' WHERE `id` = 32;
UPDATE `shop_items` SET `description_loc4` = '黑铁[矮人]' WHERE `id` = 33;
UPDATE `shop_items` SET `description_loc4` = '土灵[矮人，仅限男性]' WHERE `id` = 34;
UPDATE `shop_items` SET `description_loc4` = '死亡骑士[矮人，仅限男性]' WHERE `id` = 35;
UPDATE `shop_items` SET `description_loc4` = '恶魔猎手【暗夜精灵】' WHERE `id` = 36;
UPDATE `shop_items` SET `description_loc4` = '恶魔【暗夜精灵，仅限男性】' WHERE `id` = 37;
UPDATE `shop_items` SET `description_loc4` = '自然学家 I [暗夜精灵，仅限男性]' WHERE `id` = 38;
UPDATE `shop_items` SET `description_loc4` = '自然学家 II [暗夜精灵]' WHERE `id` = 39;
UPDATE `shop_items` SET `description_loc4` = '自然学家III [暗夜精灵，仅限男性]' WHERE `id` = 40;
UPDATE `shop_items` SET `description_loc4` = '麻风 [侏儒]' WHERE `id` = 41;
UPDATE `shop_items` SET `description_loc4` = '死灵法师 III [侏儒]' WHERE `id` = 42;
UPDATE `shop_items` SET `description_loc4` = '黑暗游侠[高等精灵]' WHERE `id` = 43;
UPDATE `shop_items` SET `description_loc4` = '血精灵【高等精灵】' WHERE `id` = 44;
UPDATE `shop_items` SET `description_loc4` = '黑石 I [兽人]' WHERE `id` = 45;
UPDATE `shop_items` SET `description_loc4` = '混沌[兽人]' WHERE `id` = 46;
UPDATE `shop_items` SET `description_loc4` = '玛格哈[兽人，仅限男性]' WHERE `id` = 47;
UPDATE `shop_items` SET `description_loc4` = '黑石 II [兽人]' WHERE `id` = 48;
UPDATE `shop_items` SET `description_loc4` = '黑石 III [兽人]' WHERE `id` = 49;
UPDATE `shop_items` SET `description_loc4` = '恐怖骷髅 II [兽人，仅限男性]' WHERE `id` = 50;
UPDATE `shop_items` SET `description_loc4` = '恐怖骷髅 III [兽人，仅限男性]' WHERE `id` = 51;
UPDATE `shop_items` SET `description_loc4` = '恐怖骷髅 [兽人，仅限男性]' WHERE `id` = 52;
UPDATE `shop_items` SET `description_loc4` = '丛林 I [巨魔]' WHERE `id` = 53;
UPDATE `shop_items` SET `description_loc4` = '丛林II [巨魔]' WHERE `id` = 55;
UPDATE `shop_items` SET `description_loc4` = '黑暗[巨魔]' WHERE `id` = 56;
UPDATE `shop_items` SET `description_loc4` = '冰霜[巨魔]' WHERE `id` = 57;
UPDATE `shop_items` SET `description_loc4` = '僵尸[巨魔]' WHERE `id` = 58;
UPDATE `shop_items` SET `description_loc4` = '牛头人灵魂行者[牛头人]' WHERE `id` = 59;
UPDATE `shop_items` SET `description_loc4` = '背包：28格' WHERE `id` = 61;
UPDATE `shop_items` SET `description_loc4` = '背包：36格' WHERE `id` = 62;
UPDATE `shop_items` SET `description_loc4` = '召唤：邮箱' WHERE `id` = 63;
UPDATE `shop_items` SET `description_loc4` = '召唤：洗脑装置' WHERE `id` = 64;
UPDATE `shop_items` SET `description_loc4` = '召唤：拍卖师' WHERE `id` = 65;
UPDATE `shop_items` SET `description_loc4` = '召唤：修理机器人' WHERE `id` = 66;
UPDATE `shop_items` SET `description_loc4` = '召唤：银行（骡子）' WHERE `id` = 67;
UPDATE `shop_items` SET `description_loc4` = '召唤：银行（科多兽）' WHERE `id` = 68;
UPDATE `shop_items` SET `description_loc4` = '大袋时尚硬币' WHERE `id` = 69;
UPDATE `shop_items` SET `description_loc4` = '德鲁伊：霜刃豹雕文' WHERE `id` = 86;
UPDATE `shop_items` SET `description_loc4` = '德鲁伊：冰熊雕文' WHERE `id` = 87;
UPDATE `shop_items` SET `description_loc4` = '德鲁伊：寒霜枭雕文' WHERE `id` = 88;
UPDATE `shop_items` SET `description_loc4` = '德鲁伊：虎鲸雕文' WHERE `id` = 89;
UPDATE `shop_items` SET `description_loc4` = '德鲁伊：星辰雕文' WHERE `id` = 90;
UPDATE `shop_items` SET `description_loc4` = '德鲁伊：雄鹿雕文' WHERE `id` = 94;
UPDATE `shop_items` SET `description_loc4` = '象牙陆行鸟' WHERE `id` = 101;
UPDATE `shop_items` SET `description_loc4` = '棕色陆行鸟' WHERE `id` = 102;
UPDATE `shop_items` SET `description_loc4` = '灰色陆行鸟' WHERE `id` = 103;
UPDATE `shop_items` SET `description_loc4` = '绿松石陆行鸟' WHERE `id` = 104;
UPDATE `shop_items` SET `description_loc4` = '粉红高陆行鸟' WHERE `id` = 105;
UPDATE `shop_items` SET `description_loc4` = '迅捷乌鸦领主' WHERE `id` = 106;
UPDATE `shop_items` SET `description_loc4` = '乱羽角鹰兽' WHERE `id` = 107;
UPDATE `shop_items` SET `description_loc4` = '塞纳里奥角鹰兽' WHERE `id` = 108;
UPDATE `shop_items` SET `description_loc4` = '翠绿角鹰兽' WHERE `id` = 109;
UPDATE `shop_items` SET `description_loc4` = '迅捷魔法公鸡' WHERE `id` = 110;
UPDATE `shop_items` SET `description_loc4` = '斑点刃豹' WHERE `id` = 121;
UPDATE `shop_items` SET `description_loc4` = '褐色刃豹' WHERE `id` = 122;
UPDATE `shop_items` SET `description_loc4` = '黄金刃豹' WHERE `id` = 123;
UPDATE `shop_items` SET `description_loc4` = '荆棘谷老虎' WHERE `id` = 124;
UPDATE `shop_items` SET `description_loc4` = '虎纹黎明刃豹' WHERE `id` = 125;
UPDATE `shop_items` SET `description_loc4` = '远古霜刃剑' WHERE `id` = 126;
UPDATE `shop_items` SET `description_loc4` = '远古夜刃豹' WHERE `id` = 127;
UPDATE `shop_items` SET `description_loc4` = '蔚蓝霜刃剑' WHERE `id` = 128;
UPDATE `shop_items` SET `description_loc4` = '装甲黎明刃豹' WHERE `id` = 129;
UPDATE `shop_items` SET `description_loc4` = '装甲幽灵虎' WHERE `id` = 130;
UPDATE `shop_items` SET `description_loc4` = '黑色祖利安刃豹' WHERE `id` = 131;
UPDATE `shop_items` SET `description_loc4` = '驯服的拉克希里' WHERE `id` = 132;
UPDATE `shop_items` SET `description_loc4` = '上古奎尔多雷战马' WHERE `id` = 141;
UPDATE `shop_items` SET `description_loc4` = '装甲联盟战马' WHERE `id` = 142;
UPDATE `shop_items` SET `description_loc4` = '装甲灰骏马' WHERE `id` = 143;
UPDATE `shop_items` SET `description_loc4` = '装甲黑色死亡战马' WHERE `id` = 144;
UPDATE `shop_items` SET `description_loc4` = '装甲绯红死亡战马' WHERE `id` = 145;
UPDATE `shop_items` SET `description_loc4` = '噩梦行者' WHERE `id` = 146;
UPDATE `shop_items` SET `description_loc4` = '骑乘斑纹斑马' WHERE `id` = 147;
UPDATE `shop_items` SET `description_loc4` = '美酒节公羊' WHERE `id` = 148;
UPDATE `shop_items` SET `description_loc4` = '装甲美酒节公羊' WHERE `id` = 149;
UPDATE `shop_items` SET `description_loc4` = '远古黑色公羊' WHERE `id` = 150;
UPDATE `shop_items` SET `description_loc4` = '暗角雄鹿' WHERE `id` = 151;
UPDATE `shop_items` SET `description_loc4` = '装甲美酒节科多兽' WHERE `id` = 162;
UPDATE `shop_items` SET `description_loc4` = '远古黑色巨狼' WHERE `id` = 163;
UPDATE `shop_items` SET `description_loc4` = '远古红色巨狼' WHERE `id` = 164;
UPDATE `shop_items` SET `description_loc4` = '装甲部落战狼' WHERE `id` = 165;
UPDATE `shop_items` SET `description_loc4` = '装甲象牙迅猛龙' WHERE `id` = 181;
UPDATE `shop_items` SET `description_loc4` = '装甲紫罗兰迅猛龙' WHERE `id` = 182;
UPDATE `shop_items` SET `description_loc4` = '装甲红色迅猛龙' WHERE `id` = 183;
UPDATE `shop_items` SET `description_loc4` = '装甲黑曜石迅猛龙' WHERE `id` = 184;
UPDATE `shop_items` SET `description_loc4` = '装甲黑色战熊' WHERE `id` = 185;
UPDATE `shop_items` SET `description_loc4` = '装甲紫色战熊' WHERE `id` = 186;
UPDATE `shop_items` SET `description_loc4` = '装甲红色战熊' WHERE `id` = 187;
UPDATE `shop_items` SET `description_loc4` = '装甲霜鬃战熊' WHERE `id` = 188;
UPDATE `shop_items` SET `description_loc4` = '暴雪大战熊' WHERE `id` = 189;
UPDATE `shop_items` SET `description_loc4` = '暗月跳舞熊' WHERE `id` = 190;
UPDATE `shop_items` SET `description_loc4` = '欢乐缤纷云' WHERE `id` = 223;
UPDATE `shop_items` SET `description_loc4` = '悲伤缤纷云' WHERE `id` = 224;
UPDATE `shop_items` SET `description_loc4` = '巨龟战熊' WHERE `id` = 225;
UPDATE `shop_items` SET `description_loc4` = '黑色幽灵虎' WHERE `id` = 226;
UPDATE `shop_items` SET `description_loc4` = '绿色幽灵虎' WHERE `id` = 227;
UPDATE `shop_items` SET `description_loc4` = '装甲冰霜迅猛龙' WHERE `id` = 228;
UPDATE `shop_items` SET `description_loc4` = '猩红战马' WHERE `id` = 229;
UPDATE `shop_items` SET `description_loc4` = '棕色斑马' WHERE `id` = 230;
UPDATE `shop_items` SET `description_loc4` = '恐怖图腾科多兽' WHERE `id` = 231;
UPDATE `shop_items` SET `description_loc4` = '破坏神之石' WHERE `id` = 241;
UPDATE `shop_items` SET `description_loc4` = '熊猫项圈' WHERE `id` = 242;
UPDATE `shop_items` SET `description_loc4` = '奔波尔霸' WHERE `id` = 243;
UPDATE `shop_items` SET `description_loc4` = '绿色小神龙' WHERE `id` = 245;
UPDATE `shop_items` SET `description_loc4` = '骸骨魔像' WHERE `id` = 246;
UPDATE `shop_items` SET `description_loc4` = '枭兽宝宝' WHERE `id` = 247;
UPDATE `shop_items` SET `description_loc4` = '蓝龙雏龙' WHERE `id` = 248;
UPDATE `shop_items` SET `description_loc4` = '肯瑞托魔仆' WHERE `id` = 249;
UPDATE `shop_items` SET `description_loc4` = '波利' WHERE `id` = 250;
UPDATE `shop_items` SET `description_loc4` = '霜狼幽灵幼崽' WHERE `id` = 251;
UPDATE `shop_items` SET `description_loc4` = '泰达希尔树苗' WHERE `id` = 252;
UPDATE `shop_items` SET `description_loc4` = '凤凰雏鸟' WHERE `id` = 253;
UPDATE `shop_items` SET `description_loc4` = '幽灵飞蜥' WHERE `id` = 254;
UPDATE `shop_items` SET `description_loc4` = '奇思妙想云' WHERE `id` = 255;
UPDATE `shop_items` SET `description_loc4` = '幽灵虎幼崽' WHERE `id` = 256;
UPDATE `shop_items` SET `description_loc4` = '小潘' WHERE `id` = 257;
UPDATE `shop_items` SET `description_loc4` = '闪翼' WHERE `id` = 258;
UPDATE `shop_items` SET `description_loc4` = '小克' WHERE `id` = 259;
UPDATE `shop_items` SET `description_loc4` = '熔火恶犬小宠物' WHERE `id` = 260;
UPDATE `shop_items` SET `description_loc4` = '小拉格纳罗斯' WHERE `id` = 261;
UPDATE `shop_items` SET `description_loc4` = '夏日天空战袍' WHERE `id` = 271;
UPDATE `shop_items` SET `description_loc4` = '夏日烈焰战袍' WHERE `id` = 272;
UPDATE `shop_items` SET `description_loc4` = '冰霜战袍' WHERE `id` = 273;
UPDATE `shop_items` SET `description_loc4` = '烈焰战袍' WHERE `id` = 274;
UPDATE `shop_items` SET `description_loc4` = '虚空战袍' WHERE `id` = 275;
UPDATE `shop_items` SET `description_loc4` = '自然战袍' WHERE `id` = 276;
UPDATE `shop_items` SET `description_loc4` = '奥术战袍' WHERE `id` = 277;
UPDATE `shop_items` SET `description_loc4` = '光辉战袍' WHERE `id` = 278;
UPDATE `shop_items` SET `description_loc4` = '愤怒战袍' WHERE `id` = 279;
UPDATE `shop_items` SET `description_loc4` = '暗月马戏团战袍' WHERE `id` = 280;
UPDATE `shop_items` SET `description_loc4` = '天灾军团战袍' WHERE `id` = 281;
UPDATE `shop_items` SET `description_loc4` = '被盗的达拉然战袍' WHERE `id` = 282;
UPDATE `shop_items` SET `description_loc4` = '激流堡战袍' WHERE `id` = 283;
UPDATE `shop_items` SET `description_loc4` = '猩红军团战袍' WHERE `id` = 285;
UPDATE `shop_items` SET `description_loc4` = '探险家战袍' WHERE `id` = 286;
UPDATE `shop_items` SET `description_loc4` = '希尔斯布莱德战袍' WHERE `id` = 287;
UPDATE `shop_items` SET `description_loc4` = '黑色魔纹战袍' WHERE `id` = 288;
UPDATE `shop_items` SET `description_loc4` = '红色魔纹战袍' WHERE `id` = 289;
UPDATE `shop_items` SET `description_loc4` = '金色魔纹战袍' WHERE `id` = 290;
UPDATE `shop_items` SET `description_loc4` = '幻象：狼人' WHERE `id` = 291;
UPDATE `shop_items` SET `description_loc4` = '幻象：幽灵' WHERE `id` = 292;
UPDATE `shop_items` SET `description_loc4` = '幻象：女妖' WHERE `id` = 293;
UPDATE `shop_items` SET `description_loc4` = '幻象：魅魔' WHERE `id` = 294;
UPDATE `shop_items` SET `description_loc4` = '幻象：暗影' WHERE `id` = 295;
UPDATE `shop_items` SET `description_loc4` = '幻象：豺狼人' WHERE `id` = 296;
UPDATE `shop_items` SET `description_loc4` = '幻象：熊怪' WHERE `id` = 297;
UPDATE `shop_items` SET `description_loc4` = '幻象：熊猫人' WHERE `id` = 298;
UPDATE `shop_items` SET `description_loc4` = '幻象：天灾军团' WHERE `id` = 299;
UPDATE `shop_items` SET `description_loc4` = '幻象：萨特' WHERE `id` = 300;
UPDATE `shop_items` SET `description_loc4` = '幻象：食人魔' WHERE `id` = 301;
UPDATE `shop_items` SET `description_loc4` = '大袋时尚硬币' WHERE `id` = 70;