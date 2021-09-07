replace into map_template (entry, map_name) values ('800', 'Karazhan Crypt');

replace into gameobject_template values 
(181580, 0, 5, 23442, 'Karazhan Crypt (Entrance)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypt_portal'),
(181581, 0, 5, 23442, 'Karazhan Crypt (Exit)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypt_portal'),
(181582, 0, 5, 23443, 'Karazhan Crypt (Collision)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update gameobject_template set type = 0, flags = 32, data0 = 0, name = 'Karazhan Crypt', script_name = 'karazhan_crypts_gate' where entry = 177203;

replace into item_template values 
(51356, 0, 13, 0, 'Karazhan Crypt Key', 'Covered in rust.', 22071, 1, 64, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update item_template set bonding = 1 where entry = 51356;

replace into creature_template values 
(91910, 0, 18499, 0, 0, 0, 'Ravenous Strigoi', NULL, 0, 62, 62, 13180, 14180, 7458, 7458, 3316, 233, 0, 1, 1.19048, 0, 20, 5, 0, 1, 1, 759, 820, 0, 278, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 6, 0, 11622, 0, 0, 0, 5, 5, 5, 5, 5, 10101, 16727, 18116, 0, 116220, 0, 1376, 1801, '', 1, 1, 0, 0, 3, 0, 0, 0, 617299931, 0, 2097152, 0, 'ravenous_strigoi'),
(91911, 0, 146, 0, 0, 0, 'Forgotten Soul', NULL, 0, 62, 62, 12191, 14326, 16867, 17302, 4932, 233, 0, 1.11111, 1.14286, 0, 20, 5, 0, 1, 1, 559, 720, 0, 272, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 6, 0, 10499, 0, 0, 0, 0, 0, 0, 0, 0, 17630, 17631, 0, 0, 104990, 0, 410, 540, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 8405008, 0, 0, 0, 'forgotten_soul'),
(91912, 9, 15294, 0, 0, 0, 'Posessed Axe', '', 0, 61, 61, 12320, 13320, 0, 0, 4091, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 800, 900, 0, 278, 1, 1600, 1265, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 16216, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 162160, 0, 1, 0, '', 1, 3, 0, 0, 3, 16216, 0, 0, 1019952723, 0, 2097152, 0, ''),
(91913, 0, 10752, 0, 0, 0, 'Forlorn Shrieker', NULL, 0, 62, 62, 12643, 13875, 23999, 24567, 4116, 21, 0, 1.4, 1.42857, 0, 20, 5, 0, 0, 1, 492, 575, 0, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 6, 0, 8535, 0, 0, 0, 0, 0, 0, 0, 0, 8281, 0, 0, 0, 85350, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 8388624, 0, 0, 0, 'forlorn_shrieker'),
(91914, 0, 245, 0, 0, 0, 'Undead Frenzy', '', 0, 60, 60, 6156, 7156, 6156, 7156, 3326, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 285, 356, 0, 272, 1, 1200, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12097, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'undead_frenzy');


update creature_template set scale = 1.7, rank = 1, loot_id = 0 where entry = 91910;
update creature_template set  scale = 1.4, dmg_school = 4, loot_id = 0 where entry = 91911;
update creature_template set  scale = 1.5, loot_id = 0 where entry = 91912;
update creature_template set  scale = 1.3, loot_id = 0 where entry = 91914;
update creature_template set  scale = 1.5, loot_id = 0, rank = 1, dmg_school = 5 where entry = 91913;

set @equip_template = 55139; set @weapon_1 = 7717; set @weapon_2 = 0; set @creature = 91912;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;