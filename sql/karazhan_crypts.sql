replace into map_template values (800, 0, 0, 1, 800, 5, 0, -1, 0, 0, 'Karazhan Crypt', '');

replace into gameobject_template values 
(181580, 0, 5, 23442, 'Karazhan Crypt (Entrance)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypt_portal'),
(181581, 0, 5, 23442, 'Karazhan Crypt (Exit)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypt_portal'),
(181582, 0, 5, 23443, 'Karazhan Crypt (Collision)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(177203, 0, 0, 411, 'Karazhan Crypt', 0, 32, 2.45983, 0, 0, 196608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'karazhan_crypts_gate'),
(177300, 0, 5, 381, 'Karazan Crypt: Tomb Bats Waiting', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'tomb_bat_event_trigger'),
(177301, 0, 5, 381, 'Karazan Crypt: Tomb Bats Active', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into item_template values 
(51356, 0, 13, 0, 'Karazhan Crypt Key', 'Covered in rust.', 22071, 1, 64, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, null);

replace into creature_template values 
(91910, 0, 18499, 0, 0, 0, 'Ravenous Strigoi', NULL, 0, 62, 62, 13180, 14180, 7458, 7458, 3316, 233, 0, 1, 1.19048, 1.7, 20, 5, 0, 1, 1, 759, 820, 0, 278, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 6, 0, 0, 0, 0, 0, 5, 5, 5, 5, 5, 24318, 8391, 30113, 17470, 0, 0, 1376, 1801, '', 1, 1, 0, 0, 3, 0, 0, 0, 617299931, 0, 2097152, 0, 'generic_spell_ai'),
(91911, 0, 146, 0, 0, 0, 'Forgotten Soul', NULL, 0, 62, 62, 12191, 14326, 16867, 17302, 4932, 233, 0, 1.11111, 1.14286, 1.4, 20, 5, 0, 1, 1, 559, 720, 4, 272, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15530, 30094, 19260, 21099, 0, 0, 410, 540, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 8405008, 0, 0, 0, 'generic_spell_ai'),
(91912, 0, 15294, 0, 0, 0, 'Posessed Axe', '', 0, 62, 62, 12320, 13320, 0, 0, 4091, 21, 0, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 2900, 3700, 0, 278, 1, 1600, 1265, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 28334, 24408, 0, 0, 0, 0, 1, 0, '', 1, 3, 0, 0, 3, 55139, 0, 0, 1019952723, 0, 2097152, 0, 'posessed_axe'),
(91912, 9, 15294, 0, 0, 0, 'Posessed Axe', '', 0, 62, 62, 12320, 13320, 0, 0, 4091, 21, 0, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 800, 900, 0, 278, 1, 1600, 1265, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 28334, 24408, 0, 0, 0, 0, 1, 0, '', 1, 3, 0, 0, 3, 55139, 0, 0, 1019952723, 0, 2097152, 0, ''),
(91913, 0, 10752, 0, 0, 0, 'Forlorn Shrieker', NULL, 0, 62, 62, 12643, 13875, 23999, 24567, 4116, 21, 0, 1.4, 1.42857, 1.5, 20, 5, 0, 1, 1, 492, 575, 5, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7713, 16838, 16429, 17151, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 8388624, 0, 0, 0, 'generic_spell_ai'),
(91914, 0, 245, 0, 0, 0, 'Undead Frenzy', '', 0, 62, 62, 6156, 7156, 6156, 7156, 3326, 16, 0, 1, 1.14286, 1.3, 20, 5, 0, 1, 1, 285, 356, 0, 272, 1, 1200, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16555, 12097, 16460, 0, 0, 0, 0, 0, 'EventAI', 0, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'generic_spell_ai'),
(91915, 9, 15294, 0, 0, 0, 'Cursed Blades', '', 0, 62, 62, 12523, 13523, 5000, 5000, 3819, 21, 0, 1, 1.14286, 1.3, 20, 5, 0, 1, 1, 643, 768, 0, 278, 1, 1600, 1265, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6, 8, 0, 0, 0, 0, 5, 5, 5, 5, 5, 13877, 18941, 29306, 0, 0, 0, 1, 0, '', 1, 3, 0, 0, 3, 55140, 0, 0, 1019952723, 0, 2097152, 0, 'generic_spell_ai'),
(91916, 0, 7919, 0, 0, 0, 'Archlich Enkhraz', NULL, 0, 62, 62, 46670, 46670, 15408, 15408, 4299, 233, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 606, 690, 0, 284, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 6, 0, 10508, 0, 0, 0, 5, 5, 186, 5, 5, 18099, 8398, 12096, 18763, 0, 0, 1505, 1970, '', 1, 3, 0, 0, 3, 0, 0, 0, 617316315, 0, 2097152, 0, ''),
(91917, 6, 15509, 0, 0, 0, 'Corpsemuncher', '', 0, 62, 62, 44320, 44320, 0, 0, 3469, 310, 0, 1, 2.28571, 0, 20, 5, 0, 2, 1, 544, 579, 0, 278, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 0, 15290, 0, 15290, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 152900, 0, 599, 4836, '', 1, 1, 0, 0, 3, 0, 0, 0, 646938591, 0, 0, 0, ''),
(91918, 0, 11649, 0, 0, 0, 'Ghost or Abomination', NULL, 0, 62, 62, 46620, 46620, 12840, 12840, 4091, 21, 0, 1, 1.14286, 0, 1, 5, 0, 1, 1, 605, 783, 0, 284, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 6, 0, 10440, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 2057, 2692, 'EventAI', 1, 3, 0, 0, 3, 10440, 0, 0, 1053507419, 0, 2097152, 0, ''),
(91919, 0, 17144, 0, 0, 0, 'Commander Andreon', NULL, 0, 62, 62, 49432, 49711, 0, 0, 4091, 14, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 588, 669, 0, 284, 1, 1133, 1246, 1, 0, 0, 0, 0, 0, 0, 0, 62.7984, 86.3478, 100, 6, 0, 11121, 0, 0, 0, 5, 5, 5, 5, 5, 0, 5884, 0, 0, 111210, 0, 187, 935, '', 0, 1, 0, 0, 3, 11121, 0, 0, 16384, 0, 0, 0, ''),
(91920, 2, 12074, 0, 0, 0, 'Bonespike Construct', NULL, 0, 62, 62, 42850, 42850, 10272, 10272, 3831, 14, 0, 1, 1.14286, 2, 20, 5, 0, 1, 1, 643, 768, 0, 284, 1, 1150, 1265, 2, 0, 0, 0, 0, 0, 0, 0, 61.732, 84.8815, 100, 6, 0, 14516, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 145160, 0, 168, 838, 'EventAI', 1, 3, 0, 0, 3, 14516, 0, 0, 0, 0, 0, 0, ''),
(91921, 0, 10033, 0, 0, 0, 'Tomb Bat', NULL, 0, 60, 60, 700, 1275, 0, 0, 2435, 14, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 97, 123, 0, 262, 1, 2000, 2000, 1, 0, 0, 24, 0, 0, 0, 0, 71.9664, 98.9538, 100, 1, 1, 8602, 0, 8602, 0, 0, 0, 0, 0, 0, 8281, 0, 0, 0, 86020, 5789, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'tomb_bat'),
(91922, 5, 10033, 0, 0, 0, 'Crypt Fearfeaster', NULL, 0, 60, 60, 10341, 10341, 3245, 4567, 3791, 28, 0, 2, 2.14286, 1, 20, 5, 0, 0, 1, 130, 172, 0, 272, 1, 1000, 2000, 1, 0, 0, 24, 0, 0, 0, 0, 69.696, 95.832, 100, 1, 9, 11368, 0, 11368, 0, 15, 15, 15, 15, 15, 24023, 0, 0, 0, 0, 0, 0, 0, '', 1, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'generic_spell_ai'),
(91923, 0, 4870, 0, 0, 0, 'Unseen Stalker', NULL, 0, 60, 61, 12765, 13765, 0, 0, 3514, 14, 0, 1.26, 1.14286, 0, 20, 5, 0, 0, 0.5, 492, 575, 0, 272, 1, 1410, 1551, 2, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 316, 'EventAI', 1, 3, 0, 0, 3, 0, 0, 0, 8413718, 0, 0, 0, ''),
(91924, 0, 11400, 9789, 9784, 0, 'Skeletal Remains', NULL, 0, 60, 61, 9710, 9754, 2369, 2486, 3152, 233, 0, 0.888888, 1.14286, 0, 20, 5, 0, 0, 1, 465, 798, 0, 278, 1, 2400, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 72.688, 99.946, 100, 6, 0, 11598, 0, 0, 0, 0, 0, 0, 0, 0, 13496, 0, 0, 0, 0, 0, 65, 326, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 8405008, 0, 0, 0, '');

update creature_template set spell_id1 = 13704, type = 6 where entry = 91922;
update creature_template set dynamic_flags = 36, unit_flags = 33554432, loot_id = 0, skinning_loot_id = 0, type = 6 where entry = 91921;
update creature_template set dmg_school = 5 where entry = 91923;
update creature_template set rank = 1 where entry = 91922;
update creature_template set rank = 1 where entry = 91924;
update creature_template set equipment_id = 0 where entry = 91920;

replace into creature_template_addon (entry, bytes1) values (91921, 7);
replace into creature_template_addon (entry, auras) values (91922, 22650);

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

-- CF_INTERRUPT_PREVIOUS     = 0x01 | Interrupt any spell casting
-- CF_TRIGGERED              = 0x02 | Triggered (this makes spell cost zero mana and have no cast time)
-- CF_FORCE_CAST             = 0x04 | Forces cast even if creature is out of mana or out of range
-- CF_MAIN_RANGED_SPELL      = 0x08 | To be used by ranged mobs only. Creature will not chase target until cast fails.
-- CF_TARGET_UNREACHABLE     = 0x10 | Will only use the ability if creature cannot currently get to target
-- CF_AURA_NOT_PRESENT       = 0x20 | Only casts the spell if the target does not have an aura from the spell
-- CF_ONLY_IN_MELEE          = 0x40 | Only casts if the creature is in melee range of the target
-- CF_NOT_IN_MELEE           = 0x80 | Only casts if the creature is not in melee range of the target

-- Bonespike Construct
set @creature_entry = 91920;
set @description = 'Karazhan Crypt: Bonespike Construct';
set @spell_list_id = 201000;

set @spellid_1 = 16169; -- Arcing Smash
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 3; 
set @delayrepeatmin_1 = 10; 
set @delayrepeatmax_1 = 12;

set @spellid_2 = 12787; -- Trash
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 1; 
set @delayinitialmax_2 = 3; 
set @delayrepeatmin_2 = 8; 
set @delayrepeatmax_2 = 11;

set @spellid_3 = 22644; -- Blood Leech
set @probability_3 = 100; 
set @casttarget_3 = 1; 
set @castflags_3 = 4;
set @delayinitialmin_3 = 5; 
set @delayinitialmax_3 = 8; 
set @delayrepeatmin_3 = 20; 
set @delayrepeatmax_3 = 25;

set @spellid_4 = 15284; -- Cleave
set @probability_4 = 100; 
set @casttarget_4 = 1; 
set @castflags_4 = 4;
set @delayinitialmin_4 = 3; 
set @delayinitialmax_4 = 4; 
set @delayrepeatmin_4 = 5; 
set @delayrepeatmax_4 = 6;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Unseen Stalker
set @creature_entry = 91923;
set @description = 'Karazhan Crypt: Unseen Stalker';
set @spell_list_id = 201001;

set @spellid_1 = 17151; 
set @probability_1 = 100; 
set @casttarget_1 = 0; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 2; 
set @delayinitialmax_1 = 4; 
set @delayrepeatmin_1 = 20; 
set @delayrepeatmax_1 = 25;

set @spellid_2 = 22687; -- Veil of Shadow
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 1; 
set @delayinitialmax_2 = 3; 
set @delayrepeatmin_2 = 20; 
set @delayrepeatmax_2 = 25;

set @spellid_3 = 28447; 
set @probability_3 = 100; 
set @casttarget_3 = 0; 
set @castflags_3 = 4;
set @delayinitialmin_3 = 10; 
set @delayinitialmax_3 = 13; 
set @delayrepeatmin_3 = 15; 
set @delayrepeatmax_3 = 16;

set @spellid_4 = 0; 
set @probability_4 = 0; 
set @casttarget_4 = 0; 
set @castflags_4 = 0;
set @delayinitialmin_4 = 0; 
set @delayinitialmax_4 = 0; 
set @delayrepeatmin_4 = 0; 
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Archlich Enkhraz
set @creature_entry = 91916;
set @description = 'Karazhan Crypt: Archlich Enkhraz';
set @spell_list_id = 201002;

set @spellid_1 = 17715; -- Consuming Shadows 
set @probability_1 = 100; 
set @casttarget_1 = 0; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 40; 
set @delayinitialmax_1 = 50; 
set @delayrepeatmin_1 = 30; 
set @delayrepeatmax_1 = 35;

set @spellid_2 = 18099; -- Chill Nova
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 6; 
set @delayinitialmax_2 = 9; 
set @delayrepeatmin_2 = 10; 
set @delayrepeatmax_2 = 15;

set @spellid_3 = 12096; -- Fear
set @probability_3 = 100; 
set @casttarget_3 = 1; 
set @castflags_3 = 4;
set @delayinitialmin_3 = 12; 
set @delayinitialmax_3 = 17; 
set @delayrepeatmin_3 = 15; 
set @delayrepeatmax_3 = 16;

set @spellid_4 = 18763; -- Freeze
set @probability_4 = 100; 
set @casttarget_4 = 1; 
set @castflags_4 = 4;
set @delayinitialmin_4 = 4; 
set @delayinitialmax_4 = 9; 
set @delayrepeatmin_4 = 8; 
set @delayrepeatmax_4 = 14;

set @spellid_5 = 0; 
set @probability_5 = 0; 
set @casttarget_5 = 0; 
set @castflags_5 = 0;
set @delayinitialmin_5 = 0; 
set @delayinitialmax_5 = 0; 
set @delayrepeatmin_5 = 0; 
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0; 
set @probability_6 = 0; 
set @casttarget_6 = 0; 
set @castflags_6 = 0;
set @delayinitialmin_6 = 0; 
set @delayinitialmax_6 = 0; 
set @delayrepeatmin_6 = 0; 
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0; 
set @probability_7 = 0; 
set @casttarget_7 = 0; 
set @castflags_7 = 0;
set @delayinitialmin_7 = 0; 
set @delayinitialmax_7 = 0; 
set @delayrepeatmin_7 = 0; 
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0; 
set @probability_8 = 0; 
set @casttarget_8 = 0; 
set @castflags_8 = 0;
set @delayinitialmin_8 = 0; 
set @delayinitialmax_8 = 0; 
set @delayrepeatmin_8 = 0; 
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

