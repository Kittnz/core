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

-- Knights of Templar stuff:

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, buy_price) values
(51040, 'Claymore of the Templar', 17, 33033, 1, 1, 5000),
(51041, 'Falchion of the Templar', 21, 28527, 1, 1, 5000),
(51042, 'Heater Shield of the Templar', 14, 27415, 1, 1, 5000);

delete from npc_vendor where entry = 50539;		
replace into npc_vendor (entry, item) values 
(50539, 51013),
(50539, 51014),
(50539, 51015),
(50539, 51016),
(50539, 51017),
(50539, 51018),
(50539, 51019),
(50539, 51040),
(50539, 51041),
(50539, 51042),
(50539, 5976);

delete from npc_vendor where entry = 50520;		
replace into npc_vendor (entry, item) values 
(50520, 5976),
(50520, 159),
(50520, 1179),
(50520, 1205),
(50520, 1645),
(50520, 1708),
(50520, 4604),
(50520, 4605),
(50520, 4606),
(50520, 4607),
(50520, 4608),
(50520, 8766),
(50520, 8948),
(50520, 23002);

-- SWAG set:

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, buy_price, description) values
(51050, 'S.W.A.G Goggles', 1, 10416, 1, 1, 5000, "I wear my goggles at night."),
(51051, 'Daisy Semi-Hot Pants', 7, 14967, 1, 1, 5000, "They patched hot pants out in 1.12."),
(51052, 'Blue Summer Top', 5, 5956, 1, 1, 5000, "");

-- SC Insignia fix:

replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description, spellid_1, spelltrigger_1, allowable_race) values
(50440, 'Scarlet Crusade Insignia', 11, 9834, 2, 1, "This ring marks the bearer as a fully fledged member of the Scarlet Crusade.", 1, 1, 1);

replace into spell_template values (1, 5875, 0, 0, 0, 0, 0, 448, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DummyFriendlyScarlet', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0);

-- Fix Ironforge Guards Helmet:
update item_template set display_id = 21301 where entry = 50306;

-- Fix Aurrius weapons:

update item_template set dmg_min1 =1 , dmg_max1 = 2 where entry in (51041, 51040);
update item_template set class = 2, subclass = 7 where entry = 51041;
update item_template set class = 2, subclass = 8 where entry = 51040;

-- Fix GoL NPCs:

update creature_template set faction = 35 where entry in (50555, 50556, 50557);

-- Fix RP Horses names:

update creature_template set name = "Brown Riding Horse" where entry = 284;
update creature_template set name = "White Stallion" where entry  = 305;
update creature_template set name = "Black Stallion" where entry  = 308;



