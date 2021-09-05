replace into map_template (entry, map_name) values ('800', 'Karazhan Crypt');

replace into gameobject_template values 
(181580, 0, 5, 23442, 'Karazhan Crypt (Entrance)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypt_portal'),
(181581, 0, 5, 23442, 'Karazhan Crypt (Exit)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypt_portal'),
(181582, 0, 5, 23443, 'Karazhan Crypt (Collision)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into item_template values (51356, 0, 13, 0, 'Karazhan Crypt Key', 'Covered in rust.', 22071, 1, 64, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

replace into creature_template values (91910, 0, 18499, 0, 0, 0, 'Ravenous Strigoi', NULL, 0, 61, 61, 45180, 45180, 7458, 7458, 3316, 233, 0, 1, 1.19048, 0, 20, 5, 0, 1, 1, 759, 820, 0, 278, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 6, 0, 11622, 0, 0, 0, 5, 5, 5, 5, 5, 10101, 16727, 18116, 0, 116220, 0, 1376, 1801, '', 1, 1, 0, 0, 3, 0, 0, 0, 617299931, 0, 2097152, 0, 'boss_strigoi');

update gameobject_template set type = 0, flags = 32, data0 = 0, name = 'Karazhan Crypt', script_name = 'karazhan_crypts_gate' where entry = 177203;
update item_template set bonding = 1 where entry = 51356;
update creature_template set scale = 1.7 where entry = 91910;