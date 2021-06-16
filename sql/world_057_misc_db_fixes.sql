
-- Fix Lulu spell:

update item_template set spellid_1 = 46477 where entry = 51221;
delete from custom_pet_entry_relation where item_entry = 51221;

-- Delete GM Glyph

delete from item_template where entry = 81130;

-- Fix broken stats on Kazgrim's items.

update item_template set stat_value1 = 0 where stat_value1 < 0 and stat_type1 = 0;
update item_template set stat_value2 = 0 where stat_value2 < 0 and stat_type2 = 0;
update item_template set stat_value3 = 0 where stat_value3 < 0 and stat_type3 = 0;
update item_template set stat_value4 = 0 where stat_value4 < 0 and stat_type4 = 0;
update item_template set stat_value5 = 0 where stat_value5 < 0 and stat_type5 = 0;
update item_template set stat_value6 = 0 where stat_value6 < 0 and stat_type6 = 0;
update item_template set stat_value7 = 0 where stat_value7 < 0 and stat_type7 = 0;
update item_template set stat_value8 = 0 where stat_value8 < 0 and stat_type8 = 0;
update item_template set stat_value9 = 0 where stat_value9 < 0 and stat_type9 = 0;
update item_template set stat_value10 = 0 where stat_value10 < 0 and stat_type10 = 0;


-- Superior Armaments of Battle - Revered Amongst the Dawn, missing start / end NPC.

replace into creature_questrelation (id, quest) values (11536, 9226);
replace into creature_involvedrelation (id, quest) values (11536, 9226);


-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/35
-- Some non-combat pets do not move after summoning them.

update creature_template set type = 12 where entry = 50611;
update creature_template set type = 12 where entry = 14421;

-- Bug: Tonal Stone: Kamio 
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/17

update item_template set spellid_1 = 46035 where entry = 70043;