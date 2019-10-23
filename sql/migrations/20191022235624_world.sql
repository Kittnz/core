replace into migrations values (20191022235624);

-- Turn off anniversary quests:
delete from creature_questrelation where quest in (60000, 60001, 60002, 60003);

-- Raven Trade Co. stuff:
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, buy_price) values
(51030, 'Trade Co. Standard-Issue Breastplate', 5, 27389, 1, 1, 5000),
(51031, 'Trade Co. Standard-Issue Belt', 6, 27391, 1, 1, 5000),
(51032, 'Trade Co. Standard-Issue Leggings', 7, 27393, 1, 1, 5000),
(51033, 'Trade Co. Standard-Issue Greaves', 8, 27392, 1, 1, 5000),
(51034, 'Trade Co. Standard-Issue Gauntlets', 10, 27390, 1, 1, 5000),
(51035, 'Trade Co. Standard-Issue Pauldrons', 3, 27396, 1, 1, 5000),
(51037, 'Trade Co. Standard-Issue Vambraces', 9, 27394, 1, 1, 5000),
(51036, 'Trade Co. Standard-Issue Helmet', 1, 27395, 1, 1, 5000),
(51038, 'Trade Co. Standard-Issue Rifle', 21, 20729, 1, 1, 5000),
(51039, 'Trade Co. Standard-Issue Spear', 21, 5290, 1, 1, 5000);

delete from npc_vendor where entry = 50560;		
replace into npc_vendor (entry, item) values 
(50560, 5976), 
(50560, 51030),
(50560, 51031),
(50560, 51032),
(50560, 51033),
(50560, 51034),
(50560, 51035),
(50560, 51037),
(50560, 51038),
(50560, 51039),
(50560, 51036);

delete from npc_vendor where entry = 50559;		
replace into npc_vendor (entry, item) values 
(50559, 5976),
(50559, 159),
(50559, 1179),
(50559, 1205),
(50559, 1645),
(50559, 1708),
(50559, 4604),
(50559, 4605),
(50559, 4606),
(50559, 4607),
(50559, 4608),
(50559, 8766),
(50559, 8948),
(50559, 23002);

