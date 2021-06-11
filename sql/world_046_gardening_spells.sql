
-- Casting time for 'Simple Wooden Planter' should be 5 seconds:

replace into spell_mod (id, castingtimeindex) values (46013, 6);

-- Assign correct custom spell:

update item_template set spellid_1 = 46013 where entry = 51705;