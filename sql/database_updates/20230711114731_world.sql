-- New items added.
replace into item_template values
 ('61732', '15', '0', 'Eternal Dreamstone Shard', '', '4357', '5', '0', '1', '200000', '50000', '0', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61733', '9', '8', 'Formula: Eternal Dreamstone Shard', '', '7798', '5', '0', '1', '200000', '50000', '0', '-1', '-1', '65',
 '0', '333', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- Item The Upper Binding of Xanthar, make item BOP.
update item_template set bonding = 1 where entry = 61696;
-- Item The Lower Binding of Xanthar, make item into a quest item.
update item_template set bonding = 4 where entry = 61697;
-- Item Premium Chocolate (61173) add spell 1129 , make usable with -1 charges so the item is consumed upon use.
update item_template set spellid_1 = 1129, spellcharges_1 = -1, spellcooldown_1 = 0, spellcategory_1 = 11, spellcategorycooldown_1 = 1000 where entry = 61173;
-- Item Glyph of the Emerald Bear (Entry 51360), change to blue rarity (rare).
update item_template set quality = 3 where entry = 51360;
-- Item Dreamwind Sigil change display ID to 31576.
update item_template set display_id = 31576 where entry = 61705;

-- Quest 'The Binding of Xanthar' should reward item called 'The Binding of Xanthar' (Display ID 24687, itemlevel 65, no binding) ((This item may have gotten overwritten ? )).
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61731,24687,'The Binding of Xanthar',12,1,2048,1,-1,-1,65,1,-1,-1,-1,-1,0,'',0,3);
update quest_template set rewitemid1 = 61731 where entry = 41015;
-- Quest 'The Binding of Xanthar' needs to start from the npc Hanvar the Righteous , I currently do not see him giving this quest.
delete from creature_questrelation where quest = 41015;
delete from creature_involvedrelation where quest = 41015;
replace into creature_questrelation		(id, quest) values (61568, 41015);
replace into creature_involvedrelation	(id, quest) values (61568, 41015);
-- The binding of Xanthar, completion text, change second last paragraph to the following: 'The bindings have been brought together, and now they are rejoined. I am cursed to forever protect these items, but it appears that you would have a better chance to carry out my charge.'
update quest_template set offerrewardtext = 'The upper and lower halves both. I would never have expected to see them together.$B$B<Hanvar takes a moment to gather himself.>$B$BThe bindings have been brought together, and now they are rejoined. I am cursed to forever protect these items, but it appears that you would have a better chance to carry out my charge.$B$BWatch over the binding, and make sure it does not fall into the hands of evil.' where entry = 41015;
-- Quest Signet of Silverlaine (40924), change short objective text to : "Reclaim the Signet of Silverlaine from High Officer Osmark at The Dry Rock Pit for Baron Caliban Silverlaine at Ravenshire in Gilneas."
update quest_template set objectives = 'Reclaim the Signet of Silverlaine from High Officer Osmark at The Dry Rock Pit for Baron Caliban Silverlaine at Ravenshire in Gilneas.' where entry = 40924;
-- Title for quest 41037 restored.
update quest_template set title = 'Rods for the Pellars' where entry = 41037;
-- Quest 'Report to Dreamwind', change short objective text to : "Bring Canos' Report to Dreamwind at Nordanaar in Hyjal."
update quest_template set objectives = 'Bring Canos\' Report to Dreamwind at Nordanaar in Hyjal.' where entry = 41026;
-- Change required item of quest 'Report to Dreamwind' to : Canos' Report (Display ID 3020, quest item, stackable to 1, given at start of quest).
update item_template set name = 'Canos\' Report', display_id = 3020 where entry = 61716;

