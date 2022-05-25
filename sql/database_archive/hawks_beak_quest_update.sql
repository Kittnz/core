-- ITEM Broken Spear, update to be a quest item, remove everything to do with giving a quest, keep drop chance the same, or if it is below 10%, make it 14%
update quest_template set minlevel = 24, details = 'Norvok is in no condition to be out looking for a family heirloom, but I worry that perhaps he may attempt to venture out before he is fully healed.\n\nIf you could search for any trace of the spear that he had left behind, it would be greatly appreciate, no doubt by myself and Norvok.\n\nThe demon\'s to the east would be your best bet in searching, go swifty!', objectives = 'Recover any trace of Norvok\'s Weapon for Norvok Hawkspear in Ashenvale.', requestitemstext = 'Y-yes?' where entry = 70034;

replace into creature_questrelation (id, quest) values (70020, 70034);

delete from item_template where entry = 70027;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(70027,26500,'Broken Spear',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 70027 and entry in (60427,60426);
update creature_loot_template set chanceorquestchance = -40 where entry = 6072 and item = 70027;
update creature_loot_template set chanceorquestchance = -40 where entry = 6073 and item = 70027;
update creature_loot_template set chanceorquestchance = -40 where entry = 6115 and item = 70027;
update creature_loot_template set chanceorquestchance = -40 where entry = 11697 and item = 70027;