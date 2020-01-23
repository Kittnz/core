replace into migrations values ('20200123001028');

replace into item_template (entry, class, Flags, Buy_Count, Buy_Price, Sell_Price, name, description, display_id, Quality, Inventory_Type, Item_Level, Required_Level, Required_Skill, Required_Skill_Rank, spellid_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, bonding, max_count, stackable) values
(51252, 15, 0, 1, 0, 0, 'Reins of the Bronze Drake', '', 33537, 4, 0, 60, 60, 762, 150, 24576, 1, 330, 3000, 1, 0, 1);
replace into custom_mount_entry_relation values (51252, 50113);
replace into creature_template (entry, name, display_id1, faction, health_min, health_max) values (50113, 'Riding Bronze Drake', 6370, 35, 35, 35);

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(51255, 15, 'Little Gift of Appreciation', 34508, 2, 0, 4, 'Treat carefully. Give with love.'),
(51256, 15, 'Great Gift of Eternal Love', 34508, 3, 0, 4, 'Treat carefully. Give with love. Much love.');

replace into creature_template (entry, name, display_id1, faction, scale, health_min, health_max) values
(50114, 'Little Pony', 229, 35, 0.5, 35, 35),
(50115, 'Little Cow', 1060, 35, 0.5, 35, 35);

replace into `item_template` values
(51257,0,1,0,'"Little" Love Box','Originally designed to store chocolates.',34654,2,0,1,320000,0,18,-1,-1,60,0,0,0,0,0,0,0,0,0,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
(51258,0,1,0,'The Love Bag','As big as your heart.',34655,3,0,1,320000,0,18,-1,-1,60,0,0,0,0,0,0,0,0,0,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,1,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL);

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(51259, 15, 2, 'Little Pony', 'Adopted during Valentine\'s Day.', 13108, 2, 1, 28505, 1500),
(51261, 15, 2, 'Little Cow', 'Adopted during Valentine\'s Day.', 33589, 2, 1, 28505, 1500);

replace into custom_pet_entry_relation (item_entry, creature_entry) values
(51259, 50114),
(51261, 50115);

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid) values
(51255, 51257, 100, 1),(51255, 51259, 100, 2),(51256, 51258, 100, 1),(51256, 51261, 100, 2);