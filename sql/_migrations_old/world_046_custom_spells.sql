
-- Casting time for 'Simple Wooden Planter' should be 5 seconds:

replace into spell_mod (id, castingtimeindex) values (46013, 6);

-- Assign correct custom spell:

update item_template set spellid_1 = 46013 where entry = 51705;
update item_template set script_name = '' where entry = 51705;

-- Casting time for 'Portable Wormhole Generator' should be 10 seconds:

replace into spell_mod (id, castingtimeindex) values (46012, 7);

-- Assign correct custom spell:

update item_template set spellid_1 = 46012 where entry = 51808;
update item_template set description = 'Experimental model X45-OZ. Creates a highly radioactive wormhole for 5 seconds.' where entry = 51808;
update item_template set script_name = '' where entry = 51808;
update item_template set quality = 1 where entry = 51808;

update item_template set spellid_1 = 46012 where entry = 51310;
update item_template set description = 'Technologically advanced energy-matter scrambler.' where entry = 51310;
update item_template set script_name = '' where entry = 51310;

-- Goblin Brainwashing Device:

replace into spell_mod (id, castingtimeindex) values (46002, 6); 
update item_template set spellid_1 = 46002 where entry = 51715;
update item_template set script_name = '' where entry = 51715;

-- Fixes for spells missing movement interruption flag:

replace into spell_mod (id, interruptflags) values (46013, 7);
replace into spell_mod (id, interruptflags) values (46012, 7);
replace into spell_mod (id, interruptflags) values (46002, 7);