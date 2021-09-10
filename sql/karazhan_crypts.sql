replace into map_template (entry, map_name) values ('800', 'Karazhan Crypt');

replace into gameobject_template values 
(181580, 0, 5, 23442, 'Karazhan Crypt (Entrance)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypt_portal'),
(181581, 0, 5, 23442, 'Karazhan Crypt (Exit)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypt_portal'),
(181582, 0, 5, 23443, 'Karazhan Crypt (Collision)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(177203, 0, 0, 411, 'Karazhan Crypt', 0, 32, 2.45983, 0, 0, 196608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypts_gate');

replace into item_template values 
(51356, 0, 13, 0, 'Karazhan Crypt Key', 'Covered in rust.', 22071, 1, 64, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, null);

replace into creature_template values 
(91910, 0, 18499, 0, 0, 0, 'Ravenous Strigoi', NULL, 0, 62, 62, 13180, 14180, 7458, 7458, 3316, 233, 0, 1, 1.19048, 1.7, 20, 5, 0, 1, 1, 759, 820, 0, 278, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 6, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 24318, 8391, 30113, 17470, 0, 0, 1376, 1801, '', 1, 1, 0, 0, 3, 0, 0, 0, 617299931, 0, 2097152, 0, 'generic_spell_ai'),
(91911, 0, 146, 0, 0, 0, 'Forgotten Soul', NULL, 0, 62, 62, 12191, 14326, 16867, 17302, 4932, 233, 0, 1.11111, 1.14286, 1.4, 20, 5, 0, 1, 1, 559, 720, 4, 272, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15530, 30094, 19260, 21099, 0, 0, 410, 540, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 8405008, 0, 0, 0, 'generic_spell_ai'),
(91912, 0, 15294, 0, 0, 0, 'Posessed Axe', '', 0, 61, 61, 12320, 13320, 0, 0, 4091, 21, 0, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 2900, 3700, 0, 278, 1, 1600, 1265, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 28334, 24408, 0, 0, 0, 0, 1, 0, '', 1, 3, 0, 0, 3, 55139, 0, 0, 1019952723, 0, 2097152, 0, 'posessed_axe'),
(91912, 9, 15294, 0, 0, 0, 'Posessed Axe', '', 0, 61, 61, 12320, 13320, 0, 0, 4091, 21, 0, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 800, 900, 0, 278, 1, 1600, 1265, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 28334, 24408, 0, 0, 0, 0, 1, 0, '', 1, 3, 0, 0, 3, 55139, 0, 0, 1019952723, 0, 2097152, 0, ''),
(91913, 0, 10752, 0, 0, 0, 'Forlorn Shrieker', NULL, 0, 62, 62, 12643, 13875, 23999, 24567, 4116, 21, 0, 1.4, 1.42857, 1.5, 20, 5, 0, 1, 1, 492, 575, 5, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7713, 16838, 16429, 17151, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 8388624, 0, 0, 0, 'generic_spell_ai'),
(91914, 0, 245, 0, 0, 0, 'Undead Frenzy', '', 0, 60, 60, 6156, 7156, 6156, 7156, 3326, 16, 0, 1, 1.14286, 1.3, 20, 5, 0, 1, 1, 285, 356, 0, 272, 1, 1200, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16555, 12097, 16460, 0, 0, 0, 0, 0, 'EventAI', 0, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'generic_spell_ai'),
(91915, 9, 15294, 0, 0, 0, 'Cursed Blades', '', 0, 61, 61, 12523, 13523, 5000, 5000, 3819, 21, 0, 1, 1.14286, 1.3, 20, 5, 0, 1, 1, 643, 768, 0, 278, 1, 1600, 1265, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 13877, 18941, 29306, 0, 0, 0, 1, 0, '', 1, 3, 0, 0, 3, 55140, 0, 0, 1019952723, 0, 2097152, 0, 'generic_spell_ai');

update creature_template set spell_id1 = 24318, spell_id2 = 8391, spell_id3 = 30113, spell_id4 = 17470 where entry = 91910; -- Ravenous Strigoi
update creature_template set spell_id1 = 15530, spell_id2 = 30094, spell_id3 = 19260, spell_id4 = 21099 where entry = 91911; -- Forgotten Soul
update creature_template set spell_id1 = 28334, spell_id2 = 24408, spell_id3 = 0, spell_id4 = 0 where entry = 91912; -- Posessed Axe
update creature_template set spell_id1 = 7713, spell_id2 = 16838, spell_id3 = 16429, spell_id4 = 17151 where entry = 91913; -- Forlorn Shrieker
update creature_template set spell_id1 = 16555, spell_id2 = 12097, spell_id3 = 16460, spell_id4 = 0 where entry = 91914; -- Undead Frenzy
update creature_template set spell_id1 = 13877, spell_id2 = 18941, spell_id3 = 29306, spell_id4 = 0 where entry = 91915; -- Cursed Blades

set @equip_template = 55139; set @weapon_1 = 7717; set @weapon_2 = 0; set @creature = 91912;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 55140; set @weapon_1 = 7118; set @weapon_2 = 7118; set @creature = 91915;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

