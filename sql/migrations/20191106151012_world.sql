replace into migrations values ('20191106151012');

update item_template set spell_id1 = 5 where entry = 50243;
delete from item_template where entry in (51203, 51204);
update item_template set class = 15, subclass = 0, inventory_type = 0, spellcooldown_1 = 5000 where entry in (51200, 51201, 51202, 50017, 50408, 51205, 51206, 51207, 51208);