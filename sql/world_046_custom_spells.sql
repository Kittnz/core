
-- Casting time for 'Simple Wooden Planter' should be 5 seconds:

replace into spell_mod (id, castingtimeindex) values (46013, 6);

-- Assign correct custom spell:

update item_template set spellid_1 = 46013 where entry = 51705;
update item_template set script_name = '' where entry = 51705;

-- Casting time for 'Portable Wormhole Generator' should be 10 seconds:

replace into spell_mod (id, castingtimeindex) values (46012, 7);

-- Assign correct custom spell:

update item_template set spellid_1 = 46012 where entry = 51808;
update item_template set script_name = '' where entry = 51808;

update item_template set spellid_1 = 46012 where entry = 51310;
update item_template set script_name = '' where entry = 51310;