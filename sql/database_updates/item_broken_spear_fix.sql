-- ITEM Broken Spear, update to be a quest item, remove everything to do with giving a quest, keep drop chance the same, or if it is below 10%, make it 14%
delete from item_template where entry = 4880;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(4880,2868,'Broken Spear',12,0,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

update creature_loot_template set chanceorquestchance = -23.7595 where entry = 3130;
update creature_loot_template set chanceorquestchance = -24.1006 where entry = 3131;