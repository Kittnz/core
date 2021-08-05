
-- Goblin Brainwashing Device:

replace into spell_mod (id, castingtimeindex, interruptflags) values (46002, 6, 7); 
update item_template set spellid_1 = 46002 where entry = 51715;
update item_template set script_name = '' where entry = 51715;

-- Teleport to Guild House:

replace into spell_mod (id, castingtimeindex, interruptflags) values (46010, 6, 7);
update item_template set script_name = '' where entry = 5976;

-- Simple Wooden Planter:

replace into spell_mod (id, castingtimeindex, interruptflags) values (46013, 6, 7);
update item_template set spellid_1 = 46013 where entry = 51705;
update item_template set script_name = '' where entry = 51705;

-- Portable Wormhole Generator:

replace into spell_mod (id, castingtimeindex, interruptflags) values (46012, 7, 7);
update item_template set spellid_1 = 46012 where entry = 51808;
update item_template set script_name = '' where entry = 51808;
update item_template set spellid_1 = 46012 where entry = 51310;
update item_template set script_name = '' where entry = 51310; 

-- Traveler's Tent and Traveler's Boat:

replace into spell_mod (id, castingtimeindex, interruptflags) values (46060, 7, 7);
replace into spell_mod (id, castingtimeindex, interruptflags) values (46058, 7, 7);