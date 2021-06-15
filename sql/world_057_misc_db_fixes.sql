
-- Fix Lulu spell:

update item_template set spellid_1 = 46477 where entry = 51221;
delete from custom_pet_entry_relation where item_entry = 51221;