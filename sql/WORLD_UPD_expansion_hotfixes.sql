update item_template set inventory_type = 14, class = 4, subclass = 6 where entry = 80543;
update item_template set inventory_type = 13 where entry = 80635;
update item_template set name = 'Codex: Divine Sanction' where entry = 81012;
update item_template set display_id = 30412 where entry = 16718;
update item_template set allowable_race = -1 where entry = 19377;
update item_template set inventory_type = 17, class = 2, subclass = 8 where entry = 80534;

replace into item_template values (81098, 10, 4, 0, 'Revantusk Tabard', '', 50637, 1, 0, 1, 50000, 12500, 19, -1, -1, 1, 0, 0, 0, 0, 0, 0, 893, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

update `item_template` set `spellid_1`='0', `spelltrigger_1`='0' where (`entry`='50440') and (`patch`='0');