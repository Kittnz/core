drop table if exists shop_categories;
create table shop_categories (
  id int(11) unsigned not null auto_increment,
  name text,
  name_loc4 text,
  icon text,
  primary key (id)
) engine=innodb default charset=utf8;

drop table if exists shop_items;
create table shop_items  (
  id int(11) unsigned not null auto_increment,
  category tinyint(3) unsigned not null default 0,
  item int(11) unsigned not null default 0,
  model_id int(10) unsigned not null default 0,
  item_id int(10) unsigned not null default 0,
  description text character set utf8mb3 collate utf8mb3_general_ci null default null,
  description_loc4 text character set utf8mb3 collate utf8mb3_general_ci null default null,
  price int(11) unsigned null default 0,
  region_locked tinyint(3) unsigned not null default 0,
  primary key (id) using btree
) engine = innodb auto_increment = 457 character set = utf8mb3 collate = utf8mb3_general_ci row_format = dynamic;

replace into shop_categories (id, name, name_loc4, icon) values 
(1,  'Miscellaneous', '杂项', 'default'),
(2,  'Skins', '外观', 'ticket'),
(3,  'Gameplay', '玩法玩具', 'toys'),
(4,  'Glyphs', '雕文', 'service'),
(5,  'Mounts', '坐骑', 'mount'),
(6,  'Companions', '小宠物', 'pet'),
(7,  'Fashion', '时尚', 'tabard'),
(8,  'Illusions', '幻象', 'scroll');

replace into shop_items (id, category, item, model_id, item_id, description, description_loc4, price, region_locked) values 
(1, 1, 50000, 0, 0, 'Token: Character Name Change', '代币：角色名称变更', 160, 0),
(2, 1, 80499, 0, 0, 'Token: Guild Name Change', '代币：公会名称变更', 300, 0),
(3, 1, 80699, 0, 0, 'Token: Appearance Change', '代币：外观变更', 160, 0),
(4, 1, 80555, 0, 0, 'Token: Pet Rename', '代币:宠物重命名', 100, 0),
(17, 2, 51920, 0, 0, 'Touch of Darkness - Undead, male', '猩红 - 人类，仅限女性', 160, 0),
(18, 2, 51921, 0, 0, 'Blood Widow - Undead, female', '猩红 - 人类，仅限女性', 160, 0),
(20, 2, 50105, 0, 0, 'Scarlet - Human, female only', '猩红 - 人类，仅限女性', 160, 0),
(21, 2, 50106, 0, 0, 'Necromancer I - Human', '死灵法师 I - 人类', 160, 0),
(22, 2, 61106, 0, 0, 'Necromancer II - Night Elf, male only', '死灵法师 II - 人类，仅限男性', 160, 0),
(23, 2, 50292, 0, 0, 'Arcane - Human', '奥术【人类】', 160, 0),
(24, 2, 50290, 0, 0, 'Azotha - Human, female only', '阿索拉 - 人类，仅限女性', 160, 0),
(25, 2, 50291, 0, 0, 'Fel - Human, male only', '邪能 - 人类，仅限男性', 160, 0),
(26, 2, 83090, 0, 0, 'Dalaran Magi - Human, male only', '达拉然法师 - 人类', 160, 0),
(27, 2, 83091, 0, 0, 'Frost Affinity - Human, male only', '冰霜亲和【人类，仅限男性】', 160, 0),
(28, 2, 81210, 0, 0, 'Death Knight - Human, male only', '死亡骑士- 人类，仅限男性', 160, 0),
(29, 2, 50204, 0, 0, 'Wildhammer I - Dwarf', '蛮锤 I - 矮人', 160, 0),
(30, 2, 50250, 0, 0, 'Wildhammer II - Dwarf', '蛮锤 II - 矮人', 160, 0),
(31, 2, 50251, 0, 0, 'Wildhammer III - Dwarf', '蛮锤 III - 矮人', 160, 0),
(32, 2, 50252, 0, 0, 'Wildhammer IV - Dwarf', '蛮锤 IV - 矮人', 160, 0),
(33, 2, 50205, 0, 0, 'Dark Iron - Dwarf', '黑铁- 矮人', 160, 0),
(34, 2, 50206, 0, 0, 'Earthern - Dwarf, male only', '土灵- 矮人，仅限男性', 160, 0),
(35, 2, 81229, 0, 0, 'Death Knight - Dwarf, male only', '死亡骑士- 矮人，仅限男性', 160, 0),
(36, 2, 61105, 0, 0, 'Demon Hunter - Night Elf', '恶魔猎手【暗夜精灵】', 160, 0),
(37, 2, 61104, 0, 0, 'Demon - Night Elf', '恶魔【暗夜精灵，仅限男性】', 160, 0),
(38, 2, 83092, 0, 0, 'Naturalist I - Night Elf', '自然学家 I - 暗夜精灵，仅限男性', 160, 0),
(39, 2, 83099, 0, 0, 'Naturalist II - Night Elf', '自然学家 II - 暗夜精灵', 160, 0),
(40, 2, 83100, 0, 0, 'Naturalist III - Night Elf, male only', '自然学家III - 暗夜精灵，仅限男性', 160, 0),
(41, 2, 50212, 0, 0, 'Leper - Gnome', '麻风 - 侏儒', 160, 0),
(42, 2, 81230, 0, 0, 'Necromancer III - Gnome', '死灵法师 III - 侏儒', 160, 0),
(43, 2, 81206, 0, 0, 'Dark Ranger - High Elf', '黑暗游侠- 高等精灵', 160, 0),
(44, 2, 81209, 0, 0, 'Blood Elf - High Elf', '血精灵【高等精灵】', 160, 0),
(45, 2, 50207, 0, 0, 'Blackrock I - Orc', '黑石 I - 兽人', 160, 0),
(46, 2, 50208, 0, 0, 'Chaos - Orc', '混沌- 兽人', 160, 0),
(47, 2, 50209, 0, 0, 'Mag\'Har - Orc, male only', '玛格哈- 兽人，仅限男性', 160, 0),
(48, 2, 50220, 0, 0, 'Blackrock II - Orc', '黑石 II - 兽人', 160, 0),
(49, 2, 50221, 0, 0, 'Blackrock III - Orc', '黑石 III - 兽人', 160, 0),
(50, 2, 50223, 0, 0, 'Dreadskull II - Orc, male only', '恐怖骷髅 II - 兽人，仅限男性', 160, 0),
(51, 2, 50224, 0, 0, 'Dreadskull III - Orc, male only', '恐怖骷髅 III - 兽人，仅限男性', 160, 0),
(52, 2, 81255, 0, 0, 'Dreadskull - Orc, male only', '恐怖骷髅 - 兽人，仅限男性', 160, 0),
(56, 2, 51010, 0, 0, 'Dark - Troll', '黑暗- 巨魔', 160, 0),
(57, 2, 51011, 0, 0, 'Ice - Troll', '冰霜- 巨魔', 160, 0),
(58, 2, 81208, 0, 0, 'Zombie - Troll', '僵尸- 巨魔', 160, 0),
(59, 2, 81228, 0, 0, 'Tauren Spirit Walker - Tauren', '牛头人灵魂行者- 牛头人', 160, 0),
(61, 3, 50003, 0, 0, 'Backpack: 28 slots', '背包：28格', 200, 0),
(62, 3, 50004, 0, 0, 'Backpack: 36 slots', '背包：36格', 300, 0),
(63, 3, 50011, 0, 0, 'Summon: Mailbox', '召唤：邮箱', 200, 0),
(64, 3, 51715, 0, 0, 'Summon: Brainwashing Device', '召唤：洗脑装置', 200, 0),
(65, 3, 50602, 0, 0, 'Summon: Auctioneer', '召唤：拍卖师', 200, 0),
(66, 3, 50009, 6909, 0, 'Summon: Mechanical Auctioneer', '召唤：机械拍卖师', 200, 0),
(67, 3, 50005, 0, 0, 'Summon: Repair Bot', '召唤：修理机器人75B', 200, 0),
(68, 3, 50007, 0, 0, 'Summon: Bank (Mule)', '召唤：银行（骡子）', 200, 0),
(69, 3, 51421, 0, 0, 'Summon: Bank (Kodo)', '召唤：银行（科多兽）', 200, 0),
(86, 4, 51057, 0, 0, 'Druid: Glyph of the Frostsaber', '德鲁伊：霜刃豹雕文', 100, 0),
(87, 4, 51266, 0, 0, 'Druid: Glyph of the Ice Bear', '德鲁伊：冰熊雕文', 100, 0),
(88, 4, 51431, 0, 0, 'Druid: Glyph of the Frostkin', '德鲁伊：寒霜枭雕文', 100, 0),
(89, 4, 51830, 0, 0, 'Druid: Glyph of the Orca', '德鲁伊：虎鲸雕文', 100, 0),
(90, 4, 51432, 0, 0, 'Druid: Glyph of the Moon', '德鲁伊：星辰雕文', 100, 0),
(94, 4, 51056, 0, 0, 'Druid: Glyph of the Stag', '德鲁伊：雄鹿雕文', 100, 0),
(95, 4, 51070, 0, 0, 'Druid: Glyph of the Arcane Treant', 'PLACEHOLDER', 100, 0),
(101, 5, 50071, 0, 0, 'Ivory Tallstrider', '象牙陆行鸟', 100, 0),
(102, 5, 50072, 0, 0, 'Brown Tallstrider', '棕色陆行鸟', 100, 0),
(103, 5, 50073, 0, 0, 'Gray Tallstrider', '灰色陆行鸟', 100, 0),
(104, 5, 50076, 0, 0, 'Turquoise Tallstrider', '绿松石陆行鸟', 100, 0),
(105, 5, 50074, 0, 0, 'Pink Tallstrider', '粉红高陆行鸟', 100, 0),
(106, 5, 81100, 0, 0, 'Swift Raven Lord', '迅捷乌鸦领主', 500, 0),
(107, 5, 81120, 0, 0, 'Frayfeather Hippogryph', '乱羽角鹰兽', 500, 0),
(108, 5, 81121, 0, 0, 'Cenarion Hippogryph', '塞纳里奥角鹰兽', 500, 0),
(109, 5, 81242, 0, 0, 'Viridian Hippogryph', '翠绿角鹰兽', 300, 0),
(110, 5, 80431, 0, 0, 'Swift Magic Rooster', '迅捷魔法公鸡', 300, 0),
(121, 5, 12325, 4805, 0, 'Spotted Leopard', '斑点刃豹', 200, 0),
(122, 5, 12326, 0, 0, 'Tawny Leopard', '褐色刃豹', 200, 0),
(123, 5, 12327, 0, 0, 'Golden Leopard', '黄金刃豹', 200, 0),
(124, 5, 8630, 0, 0, 'Stranglethorn Tiger', '荆棘谷老虎', 200, 0),
(125, 5, 81227, 0, 0, 'Striped Dawnsaber', '虎纹黎明刃豹', 200, 0),
(126, 5, 12302, 0, 0, 'Ancient Frostsaber', '远古霜刃剑', 200, 0),
(127, 5, 8635, 0, 0, 'Ancient Nightsaber', '远古夜刃豹', 200, 0),
(128, 5, 81232, 0, 0, 'Azure Frostsaber', '蔚蓝霜刃剑', 160, 0),
(129, 5, 18768, 0, 0, 'Armored Dawnsaber', '装甲黎明刃豹', 260, 0),
(130, 5, 80430, 0, 0, 'Armored Spectral Tiger', '装甲幽灵虎', 2000, 0),
(131, 5, 12303, 0, 0, 'Black Zulian Panther', '黑色祖利安刃豹', 200, 0),
(132, 5, 81231, 0, 0, 'Tamed Rak\'Shiri', '驯服的拉克希里', 200, 0),
(141, 5, 50399, 0, 0, 'Ancient Quel\'dorei Steed', '上古奎尔多雷战马', 200, 0),
(142, 5, 80449, 0, 0, 'Armored Alliance Steed', '装甲联盟战马', 300, 0),
(143, 5, 81236, 0, 0, 'Armored Gray Steed', '装甲灰骏马', 200, 0),
(144, 5, 23193, 0, 0, 'Armored Black Deathcharger', '装甲黑色死亡战马', 300, 0),
(145, 5, 81235, 0, 0, 'Armored Vermilion Deathcharger', '装甲绯红死亡战马', 300, 0),
(146, 5, 50407, 0, 0, 'Nightmare Dreamrunner', '噩梦行者', 200, 0),
(147, 5, 50400, 0, 0, 'Riding Zhevra', '骑乘斑纹斑马', 200, 0),
(148, 5, 81234, 0, 0, 'Brewfest Ram', '美酒节公羊', 200, 0),
(149, 5, 80443, 0, 0, 'Armored Brewfest Ram', '装甲美酒节公羊', 360, 0),
(150, 5, 13328, 0, 0, 'Ancient Black Ram', '远古黑色公羊', 200, 0),
(151, 5, 50406, 0, 0, 'Shadowhorn Stag', '暗角雄鹿', 200, 0),
(162, 5, 80455, 0, 0, 'Armored Brewfest Kodo', '装甲美酒节科多兽', 400, 0),
(163, 5, 1041, 0, 0, 'Ancient Black Wolf', '远古黑色巨狼', 200, 0),
(164, 5, 5663, 0, 0, 'Ancient Red Wolf', '远古红色巨狼', 200, 0),
(165, 5, 80447, 0, 0, 'Armored Horde Wolf', '装甲部落战狼', 300, 0),
(181, 5, 50401, 0, 0, 'Armored Ivory Raptor', '装甲象牙迅猛龙', 360, 0),
(182, 5, 50402, 0, 0, 'Armored Violet Raptor', '装甲紫罗兰迅猛龙', 360, 0),
(183, 5, 50403, 0, 0, 'Armored Red Raptor', '装甲红色迅猛龙', 360, 0),
(184, 5, 50404, 0, 0, 'Armored Obsidian Raptor', '装甲黑曜石迅猛龙', 360, 0),
(185, 5, 81154, 0, 0, 'Armored Black Bear', '装甲黑色战熊', 400, 0),
(186, 5, 81153, 0, 0, 'Armored Purple Bear', '装甲紫色战熊', 400, 0),
(187, 5, 81155, 0, 0, 'Armored Red Bear', '装甲红色战熊', 400, 0),
(188, 5, 81158, 0, 0, 'Armored Frostmane Bear', '装甲霜鬃战熊', 400, 0),
(189, 5, 81091, 0, 0, 'Big Blizzard Bear', '暴雪大战熊', 500, 0),
(190, 5, 81102, 0, 0, 'Darkmoon Dancing Bear', '暗月跳舞熊', 300, 0),
(225, 5, 83150, 0, 0, 'Big Turtle WoW Bear', '巨龟战熊', 360, 0),
(226, 5, 83151, 0, 0, 'Black Spectral Tiger', '黑色幽灵虎', 2000, 0),
(227, 5, 83152, 0, 0, 'Green Spectral Tiger', '绿色幽灵虎', 2000, 0),
(228, 5, 83154, 0, 0, 'Armored Ice Raptor', '装甲冰霜迅猛龙', 360, 0),
(229, 5, 83155, 0, 0, 'Scarlet Charger', '猩红战马', 360, 0),
(230, 5, 83158, 0, 0, 'Brown Zhevra', '棕色斑马', 360, 0),
(231, 5, 50536, 0, 0, 'Twilight', '恐怖图腾科多兽', 1000, 0),
(241, 6, 13584, 0, 0, 'Diablo Stone', '破坏神之石', 80, 0),
(242, 6, 13583, 0, 0, 'Panda Cub', '熊猫项圈', 80, 0),
(243, 6, 20371, 15369, 0, 'Murky', '奔波尔霸', 80, 0),
(246, 6, 50013, 0, 0, 'Bone Golem', '骸骨魔像', 80, 0),
(247, 6, 50019, 0, 0, 'Moonkin Hatchling', '枭兽宝宝', 80, 0),
(248, 6, 50083, 0, 0, 'Azure Whelpling', '蓝龙雏龙', 80, 0),
(249, 6, 50084, 0, 0, 'Kirin Tor Familiar', '肯瑞托魔仆', 80, 0),
(250, 6, 22781, 0, 0, 'Poley', '波利', 80, 0),
(251, 6, 50085, 0, 0, 'Frostwolf Ghostpup', '霜狼幽灵幼崽', 80, 0),
(252, 6, 51007, 0, 0, 'Teldrassil Sproutling', '泰达希尔树苗', 80, 0),
(253, 6, 81150, 0, 0, 'Phoenix Hatchling', '凤凰雏鸟', 150, 0),
(254, 6, 81151, 0, 0, 'Spirit Darter', '幽灵飞蜥', 80, 0),
(255, 6, 81207, 0, 0, 'Whimsyshire Cloud', '奇思妙想云', 150, 0),
(256, 6, 81258, 18730, 0, 'Spectral Cub', '幽灵虎幼崽', 200, 0),
(257, 6, 69004, 0, 0, 'Pengu', '小潘', 200, 0),
(258, 6, 69006, 0, 0, 'Glitterwing', '闪翼', 200, 0),
(259, 6, 83300, 0, 0, 'Lil\' K.T', '小克', 300, 0),
(260, 6, 83301, 0, 0, 'Core Hound Pet', '熔火恶犬小宠物', 300, 0),
(261, 6, 83302, 0, 0, 'Lil\' Ragnaros', '小拉格纳罗斯', 300, 0),
(262, 6, 36500, 0, 0, 'Sunfire Fox', 'PLACEHOLDER', 150, 0),
(263, 6, 36501, 0, 0, 'Tangerine Wind Serpent', 'PLACEHOLDER', 150, 0),
(264, 6, 36502, 0, 0, 'Dark Wind Serpent', 'PLACEHOLDER', 150, 0),
(265, 6, 36503, 0, 0, 'Emerald Wind Serpent', 'PLACEHOLDER', 150, 0),
(266, 6, 36504, 0, 0, 'Azure Wind Serpent', 'PLACEHOLDER', 150, 0),
(267, 6, 36505, 0, 0, 'Crimson Sabercat Cub', 'PLACEHOLDER', 150, 0),
(268, 6, 36506, 0, 0, 'Alliance Lion Cub', 'PLACEHOLDER', 150, 0),
(269, 6, 36507, 0, 0, 'Spot', 'PLACEHOLDER', 150, 0),
(270, 6, 36508, 0, 0, 'Twilight Paws', 'PLACEHOLDER', 150, 0),
(271, 6, 36509, 0, 0, 'Black Panther Cub', 'PLACEHOLDER', 150, 0),
(272, 6, 36510, 0, 0, 'Tawny', 'PLACEHOLDER', 150, 0),
(273, 6, 36511, 0, 0, 'Nightsaber Cub', 'PLACEHOLDER', 150, 0),
(274, 6, 36512, 0, 0, 'Snow Cub', 'PLACEHOLDER', 150, 0),
(275, 6, 36513, 0, 0, 'Stangletorn Tiger Cub', 'PLACEHOLDER', 150, 0),
(276, 6, 36514, 0, 0, 'Frostsaber Cub', 'PLACEHOLDER', 150, 0),
(277, 6, 36515, 0, 0, 'Cheetah Cub', 'PLACEHOLDER', 150, 0),
(278, 6, 36516, 0, 0, 'Chestnut', 'PLACEHOLDER', 150, 0),
(291, 8, 51201, 522, 0, 'Illusion: Worgen', '幻象：狼人', 120, 0),
(292, 8, 51205, 14368, 0, 'Illusion: Ghost', '幻象：幽灵', 120, 0),
(293, 8, 51206, 8782, 0, 'Illusion: Banshee', '幻象：女妖', 120, 0),
(294, 8, 51208, 10923, 0, 'Illusion: Succubus', '幻象：魅魔', 120, 0),
(295, 8, 51065, 4629, 0, 'Illusion: Shadow', '幻象：暗影', 120, 0),
(296, 8, 80648, 487, 0, 'Illusion: Gnoll', '幻象：豺狼人', 120, 0),
(297, 8, 51253, 6746, 0, 'Illusion: Furbolg', '幻象：熊怪', 120, 0),
(298, 8, 81145, 18251, 0, 'Illusion: Pandaren', '幻象：熊猫人', 120, 0),
(299, 8, 80694, 158, 0, 'Illusion: Scourge', '幻象：天灾军团', 120, 0),
(300, 8, 51215, 2012, 0, 'Illusion: Satyr', '幻象：萨特', 120, 0),
(301, 8, 53008, 18065, 0, 'Illusion: Ogre', '幻象：食人魔', 120, 0),
(400, 7, 51306, 0, 51306, 'Large Pouch of Fashion Coins', '大袋时尚硬币', 200, 0),
(401, 7, 81088, 0, 81088, 'Tabard of Summer Skies', '夏日天空战袍', 180, 0),
(402, 7, 81087, 0, 81087, 'Tabard of Summer Flames', '夏日烈焰战袍', 180, 0),
(403, 7, 23709, 0, 23709, 'Tabard of Frost', '冰霜战袍', 200, 0),
(404, 7, 23705, 0, 23705, 'Tabard of Flame', '烈焰战袍', 200, 0),
(405, 7, 81083, 0, 81083, 'Tabard of the Void', '虚空战袍', 200, 0),
(406, 7, 81085, 0, 81085, 'Tabard of Nature', '自然战袍', 200, 0),
(407, 7, 81084, 0, 81084, 'Tabard of the Arcane', '奥术战袍', 200, 0),
(408, 7, 81082, 0, 81082, 'Tabard of Brilliance', '光辉战袍', 200, 0),
(409, 7, 81081, 0, 81081, 'Tabard of Fury', '愤怒战袍', 200, 0),
(410, 7, 23710, 0, 23710, 'Darkmoon Faire Tabard', '暗月马戏团战袍', 200, 0),
(411, 7, 80314, 0, 80314, 'Undead Scourge Tabard', '天灾军团战袍', 200, 0),
(412, 7, 50086, 0, 50086, 'Stromgarde Tabard', '激流堡战袍', 160, 0),
(413, 7, 50092, 0, 50092, 'Crimson Legion Tabard', '猩红军团战袍', 160, 0),
(415, 7, 50376, 0, 50376, 'Hillsbrad Tabard', '希尔斯布莱德战袍', 160, 0),
(416, 7, 50091, 0, 50091, 'Black Mageweave Tabard', '黑色魔纹战袍', 160, 0),
(417, 7, 50038, 0, 50038, 'Red Mageweave Tabard', '红色魔纹战袍', 160, 0),
(419, 7, 50044, 0, 50044, 'Gold Mageweave Tabard', '金色魔纹战袍', 160, 0),
(420, 7, 80310, 0, 80310, 'Sin\'dorei Tabard', '辛多雷战袍', 180, 0),
(421, 7, 81203, 0, 81203, 'Violet Eye Tabard', '紫罗兰战袍', 180, 0),
(422, 7, 81204, 0, 81204, 'Illidari Tabard', '伊利达雷战袍', 180, 0),
(423, 7, 69117, 0, 69117, 'Jaina Proudmoore Robe', '吉安娜·普罗德摩尔的长袍', 180, 0),
(424, 7, 69118, 0, 69118, 'Gilnean Archmage Robe', '吉尔尼斯法师长袍', 180, 0),
(425, 7, 69119, 0, 69119, 'Stormwind Archmage Robe', '暴风城法师长袍', 180, 0),
(426, 7, 69120, 0, 69120, 'Tirisfal Archmage Robe', '提瑞斯法守护者长袍', 180, 0),
(427, 7, 69121, 0, 69121, 'Scarlet Archmage Robe', '血色法师长袍', 180, 0),
(428, 7, 69122, 0, 69122, 'Kul Tiras Archmage Robe', '库尔提拉斯法师长袍', 180, 0),
(429, 7, 69123, 0, 69123, 'Dalaran Archmage Robe', '达拉然法师长袍', 180, 0),
(430, 7, 69124, 0, 69124, 'Lordaeron Archmage Robe', '洛丹伦法师长袍', 180, 0),
(431, 7, 69125, 0, 69125, 'Theramore Archmage Robe', '塞拉摩法师长袍', 180, 0),
(433, 7, 69127, 0, 69127, 'Robes of the Lotus Pond', '莲花长袍', 180, 0),
(434, 7, 69128, 0, 69128, 'Robes of Spring', '春日长袍', 200, 0),
(435, 7, 69129, 0, 69129, 'Year of the Dragon Robes', '龙年纪念长袍', 200, 0),
(436, 7, 69130, 0, 69130, 'Traditional New Year Robes', '传统新年长袍', 200, 0),
(437, 7, 69131, 0, 69131, 'Peach Garden Robes', '桃园长袍', 200, 0),
(438, 7, 69132, 0, 69132, 'Blooming Wisteria Robes', '绽放的紫藤花长袍', 200, 0),
(439, 7, 69146, 0, 69146, 'Midnight Star Gown', '深夜之星礼服', 200, 0),
(440, 7, 69147, 0, 69147, 'Evening Star Gown', '夜晚之星礼服', 200, 0),
(441, 7, 69148, 0, 69148, 'Twilight star Gown', '暮光之星礼服', 200, 0),
(442, 7, 69149, 0, 69149, 'Dusk Star Gown', '黄昏之星长袍', 200, 0),
(443, 7, 69150, 0, 69150, 'Dawn Star Gown', '拂晓之星长袍', 200, 0),
(444, 7, 69151, 0, 69151, 'Morning Star Gown', '清晨之星礼服', 160, 0),
(445, 7, 69152, 0, 69152, 'Silver Star Sandals', '银星凉鞋', 160, 0),
(446, 7, 69100, 0, 69100, 'Illidari Tattoos', '伊利达雷纹身', 200, 0),
(447, 7, 69101, 0, 69101, 'Blood Illidari Tattoos', '血色伊利达雷纹身', 200, 0),
(448, 7, 69102, 0, 69102, 'Void Illidari Tattoos', '虚空伊利达雷纹身', 200, 0),
(449, 7, 69103, 0, 69103, 'Nether Illidari Tattoos', '阴暗伊利达雷纹身', 200, 0),
(450, 7, 83478, 0, 83478, 'Romantic Red Corset Dress', '浪漫红色连衣裙', 250, 0),
(451, 7, 83479, 0, 83479, 'Romantic Pink Corset Dress', '浪漫粉色连衣裙', 250, 0),
(452, 7, 41091, 0, 41091, 'Jingle Belle Frock', '冬幕节连衣裙', 200, 0),
(453, 7, 41092, 0, 41092, 'Apparel of the Bells', '冬幕节正装', 200, 0),
(456, 7, 68070, 0, 68070, 'Robes of the Moonless Night', '', 200, 2);

-- (232, 5, 83475, 'Lovely Pink Pony', '粉红可爱小马', 300),
-- (233, 5, 83476, 'Lovely Pink Furline', '粉红可爱绒猫', 300),
-- (234, 5, 83477, 'Lovely Pink Talbuk', '粉红可爱塔布克羊', 500),
-- (262, 6, 54006, 'Lovely Pink Frog', '粉红色的青蛙', 120),

UPDATE shop_items SET region_locked = 2 WHERE id = 456;