
-- Ancient Quel'Dorei Steed, assigned correct spell ID:
update item_template set spellid_1 = 46445 where entry = 50399;
delete from custom_mount_entry_relation where item_entry = 50399;

