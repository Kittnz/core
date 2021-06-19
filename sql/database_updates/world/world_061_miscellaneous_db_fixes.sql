
-- Quest rude awakening should be for the Undead only:
update quest_template set requiredraces = 16 where entry = 363;

-- Rockhide Boar Meat should have a quest flag:
update item_template set bonding = 4, class = 12, subclass = 0 where entry = 51868;
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (524, 51868, -80, 3, 1, 1);

