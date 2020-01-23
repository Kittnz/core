replace into migrations values ('20200123001028');

replace into item_template (entry, class, Flags, Buy_Count, Buy_Price, Sell_Price, name, description, display_id, Quality, Inventory_Type, Item_Level, Required_Level, Required_Skill, Required_Skill_Rank, spellid_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, bonding, max_count, stackable) values
(51252, 15, 0, 1, 0, 0, 'Reins of the Bronze Drake', '', 33537, 4, 0, 60, 60, 762, 150, 24576, 1, 330, 3000, 1, 0, 1);
replace into custom_mount_entry_relation values (51252, 50113);
replace into creature_template (entry, name, display_id1, faction) values (50113, 'Riding Bronze Drake', 6370, 35);