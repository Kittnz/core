-- buff epics from ilvl 60 to 63
update item_template set item_level = 63, stat_value1 = 11, stat_value2 = 11, spellid_1 = 14799 where entry = 22657; -- Amulet of the Dawn 20 sp
update item_template set item_level = 63, spellid_1 = 9336 where entry = 22659; -- Medallion of the Dawn 30 ap
update item_template set item_level = 63, armor = 84, stat_value1 = 13 where entry = 22668; -- Bracers of Subterfuge
update item_template set item_level = 63, armor = 42, stat_value1 = 11, spellid_1 = 9314 where entry = 22667; -- Bracers of Hope 24 hp
update item_template set item_level = 63, dmg_min1 = 74, dmg_max1 = 138 where entry = 22656; -- The Purifier
update item_template set item_level = 63 where entry = 22678; -- Talisman of Ascendance
