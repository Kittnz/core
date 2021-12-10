-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200
-- gossip_menu				41000-43000
-- creature_equip_template	20000-21000
-- broadcast_text			30000-31000
-- creature_ai_events		2200000-2201000
-- creature_ai_scripts		2200000-2201000

update creature_template set name = 'TeeJay' where entry = 60584;
update creature_template set name = 'Amber' where entry = 60584;
update creature_template set display_id1 = 11152 where entry = 80854;
update creature_template set display_id1 = 18470 where entry = 80851;
update creature_template set display_id1 = 18184 where entry = 80852;
update item_template set display_id = 27119 where entry = 83485;

replace into creature_template VALUES
(60596, 14253, 0, 0, 0, 'Arcane Protector', '', 0, 61, 61, 14253, 14253, 0, 0, 4391, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 562, 562, 0, 284, 2, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 4, 0, 60596, 0, 0, 50, 50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 517, 680, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60597, 1048, 637, 0, 0, 'Maddened Vault Guard', '', 0, 61, 61, 10821, 10821, 0, 0, 3316, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 573, 573, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60597, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 738, 969, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60598, 1306, 0, 0, 0, 'Black Blood of the Demented', '', 0, 61, 61, 10756, 10756, 0, 0, 4091, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 623, 623, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 10, 0, 60598, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 738, 969, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60599, 18000, 0, 0, 0, 'Soulless Husk', '', 0, 61, 61, 10651, 10651, 0, 0, 3792, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 655, 655, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 6, 0, 60599, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 776, 1018, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60600, 18468, 0, 0, 0, 'Netherspawn Flayer', '', 0, 61, 61, 10892, 10892, 0, 0, 3316, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 722, 722, 0, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 60600, 0, 0, 12, 12, 12, 12, 12, 12, 0, 0, 0, 0, 0, 0, 738, 969, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20050; set @weapon_1 = 3572; set @weapon_2 = 1203; set @creature = 60597;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20051; set @weapon_1 = 80764; set @weapon_2 = 0; set @creature = 80851;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Netherspawn Flayer
set @creature_entry = 60600;
set @description = ': Netherspawn Flayer';
set @spell_list_id = 180010;

set @spellid_1 = 19642; -- Cleave
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 10; 
set @delayrepeatmax_1 = 10;

set @spellid_2 = 14331; -- Vicious Rend
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 5; 
set @delayinitialmax_2 = 5; 
set @delayrepeatmin_2 = 15; 
set @delayrepeatmax_2 = 15;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 19642, spell_id2 = 14331, spell_id3 = 0 
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

-- Black Blood of the Demented
set @creature_entry = 60598;
set @description = ': Black Blood of the Demented';
set @spell_list_id = 180008;

set @spellid_1 = 7279; -- Black Sludge
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 120; 
set @delayrepeatmax_1 = 120;

set @spellid_2 = 19463; -- Corrosive Acid Spit
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 2; 
set @delayinitialmax_2 = 2; 
set @delayrepeatmin_2 = 16; 
set @delayrepeatmax_2 = 16;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 25778, spell_id2 = 12169, spell_id3 = 0 
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

-- Maddened Vault Guard
set @creature_entry = 60597;
set @description = ': Maddened Vault Guard';
set @spell_list_id = 180007;

set @spellid_1 = 25778; -- Knock Away
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 12; 
set @delayrepeatmax_1 = 12;

set @spellid_2 = 12169; -- Shield Block
set @probability_2 = 100; 
set @casttarget_2 = 0; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 3; 
set @delayinitialmax_2 = 4; 
set @delayrepeatmin_2 = 8; 
set @delayrepeatmax_2 = 8;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 25778, spell_id2 = 12169, spell_id3 = 0 
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

-- Arcane Protector
set @creature_entry = 60596;
set @description = ': Arcane Protector';
set @spell_list_id = 180006;

set @spellid_1 = 20720; -- Arcane Bolt
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 12; 
set @delayrepeatmax_1 = 12;

set @spellid_2 = 15253; -- Arcane Explosion
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 5; 
set @delayinitialmax_2 = 5; 
set @delayrepeatmin_2 = 13; 
set @delayrepeatmax_2 = 15;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 20720, spell_id2 = 15253, spell_id3 = 0 
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

-- Stormwind Vault New Items 

-- The Black Bride's Items
replace into item_template values
 ('60408', '4', '1', 'Crown of Lost Memories', '', '2528', '3', '0', '1', '18143', '4536', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '6', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '73', '0', '0', '0',
 '0', '10', '0', '18030', '1', '0', '0', '-1', '0', '-1', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60409', '4', '1', 'Banshee\'s Veil', 'The dead don\'t fear the darkness.', '23747', '3', '0', '1', '17184', '4296', '16', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '12', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '0', '0', '9324', '1', '0', '0', '-1', '0', '-1', '24351', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60410', '2', '13', 'Willbreaker', '', '34896', '3', '0', '1', '61156', '15289', '21', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '3', '3',
 '5', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
 '0', '64', '119', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '9329', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60411', '4', '1', 'Boots of Crying Rivers', '', '34605', '3', '0', '1', '66728', '16682', '8', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '7', '14',
 '6', '-10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9306', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

 -- Volkan Cruelblade's Items
 replace into item_template values
 ('60412', '4', '0', 'Blackteeth Necklace', '', '9860', '3', '0', '1', '11267', '2817', '2', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '6', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60413', '2', '6', 'The Cruel Blade', '', '25496', '3', '0', '1', '75692', '18923', '17', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '18', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '102', '178', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9632', '2', '0', '3', '900', '0', '-1', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '90', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60414', '4', '2', 'Blademaster\'s Blindfold', '', '5878', '3', '0', '1', '69888', '17472', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '9', '7', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '143', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '46041', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

 -- Tham'Grarr's Items
 replace into item_template values
 ('60415', '4', '0', 'Ring of Twin Regeneration', '', '30661', '3', '0', '1', '18856', '4714', '11', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '25109', '1', '0', '0', '-1', '0', '-1', '18379', '1', '0', '0', '-1', '0', '-1', '21348', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60416', '2', '4', 'Skull of Grarr', 'His hardheaded didn\'t change after death.', '5215', '3', '0', '1', '55743', '13936', '21', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '7', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2100', '0',
 '0', '59', '114', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '80', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '90', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60417', '2', '14', 'Skull of Tham', '', '1274', '3', '0', '1', '138348', '34587', '22', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '6', '9',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9344', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '6', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

 -- Aszosh Grimflame's Items
 replace into item_template values
 ('60418', '2', '10', 'Sealbreaker Staff', '', '28580', '3', '0', '1', '287696', '71924', '17', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '6', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2700', '0',
 '0', '116', '175', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '24595', '1', '0', '0', '-1', '0', '-1', '26283', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60419', '4', '1', 'Necrolyte\'s Visage', 'The eyes have a faint glint, you feel like you\'re being watched.', '50639', '3', '0', '1', '16874', '4219', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '7', '18',
 '6', '-10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '112', '0', '0', '0',
 '0', '0', '0', '18049', '1', '0', '0', '-1', '0', '-1', '21348', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '1', '0', '0', '50', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60420', '4', '0', 'Amulet of Warding', '', '31603', '3', '0', '1', '145388', '36347', '2', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '10', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

 -- Damian The Ripper's Items
 replace into item_template values
 ('60421', '4', '2', 'Damien\'s Sorrow', '', '35713', '3', '0', '1', '18564', '4641', '5', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '20', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '236', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '14049', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60422', '2', '15', 'The Ripper', 'Covered with countless different venoms, some better left unnamed.', '20376', '4', '65536', '1', '303368', '75842', '13', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1400', '0',
 '0', '44', '83', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '3396', '2', '0', '4', '900', '0', '-1', '6647', '2', '0', '10', '300', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '3', '0', '0', '75', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60423', '4', '2', 'Bracers of Lost Souls', '', '27954', '3', '0', '1', '57024', '14256', '9', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '9', '7', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '77', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '25109', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '45', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

 -- Nazorna's Items
 replace into item_template values
 ('60424', '4', '1', 'Impskin Gloves', '', '3992', '3', '0', '1', '11897', '2974', '10', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '6', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '17869', '1', '0', '0', '-1', '0', '-1', '22855', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '30', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60425', '4', '1', 'Robes of the Man\'ari', '', '34469', '3', '0', '1', '26846', '6712', '5', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '7', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '133', '0', '0', '0',
 '0', '0', '0', '18384', '1', '0', '0', '-1', '0', '-1', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60426', '4', '4', 'Guard-Captain\'s Chestplate', 'Covered with blood.', '7223', '3', '0', '1', '91572', '22893', '5', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '3', '10',
 '7', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '657', '0', '0', '0',
 '0', '0', '0', '13387', '1', '0', '0', '-1', '0', '-1', '28112', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '135', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60427', '2', '19', 'Twisted Draenei Rib', '', '24106', '3', '0', '1', '41279', '1320', '15', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2100', '100',
 '0', '97', '169', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9413', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60428', '4', '3', 'Felguard\'s Visage', '', '5928', '3', '0', '1', '0', '25890', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '7', '20',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '301', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '9330', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '70', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

 -- Shared Loottable Items
 replace into item_template values
 ('60429', '4', '3', 'Arcanite Shackles', '', '31161', '3', '0', '1', '45832', '11458', '9', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '10', '4', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '268', '0', '0', '0',
 '0', '0', '0', '7518', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '45', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60430', '4', '1', 'Necrolyte\'s Boots', '', '18863', '3', '0', '1', '20884', '5221', '8', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '7', '14',
 '6', '-5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '0', '0', '0',
 '0', '0', '0', '9346', '1', '0', '0', '-1', '0', '-1', '21347', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '40', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60431', '4', '0', 'Almanac of Savagery', '', '31138', '3', '0', '1', '34587', '8647', '23', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '3', '6',
 '7', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0',
 '0', '0', '0', '8815', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '6', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60432', '4', '4', 'Gauntlets of the Elite  Guard', '', '7698', '3', '0', '1', '11563', '46252', '10', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '10', '3', '8',
 '7', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '410', '0', '0', '0',
 '0', '0', '0', '7518', '1', '0', '0', '-1', '0', '-1', '23515', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '45', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60433', '4', '4', 'Pauldrons of the Elite Guard', '', '7541', '3', '0', '1', '67948', '16987', '3', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '3', '7',
 '7', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '493', '0', '0', '0',
 '0', '0', '0', '13387', '1', '0', '0', '-1', '0', '-1', '25036', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60434', '4', '4', 'Greaves of the Elite Guard', '', '7225', '3', '0', '1', '57904', '14476', '7', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '14', '3', '9',
 '7', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '575', '0', '0', '0',
 '0', '0', '0', '13387', '1', '0', '0', '-1', '0', '-1', '23203', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60435', '4', '4', 'Sabatons of the Elite Guard', '', '7255', '3', '0', '1', '66164', '16541', '8', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '10', '3', '6',
 '7', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '452', '0', '0', '0',
 '0', '0', '0', '23172', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '65', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('60436', '4', '2', 'Sightless Leather Hood', 'The lack of sight heightens other senses.', '21958', '3', '0', '1', '83816', '20954', '1', '-1', '-1', '63',
 '58', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '17', '7', '19',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '143', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '15464', '1', '0', '0', '-1', '0', '-1', '23217', '1',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
 -- Crusader Larsarius
 replace into item_template values
 ('60437', '4', '4', 'Righteous Crusader\'s Helmet', '', '40193', '4', '0', '1', '144432', '36108', '1', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '11', '5', '15',
 '7', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '632', '0', '0', '0',
 '0', '0', '0', '14049', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Warleader Kintoza
replace into item_template values
 ('60438', '4', '4', 'Vambracers of Kin\'Tozo', '', '18352', '3', '0', '1', '23736', '5934', '9', '-1', '-1', '50',
 '45', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '6', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '232', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '45', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60439', '4', '2', 'Chieftain\'s Mantle', '', '61110', '3', '0', '1', '43668', '10917', '3', '-1', '-1', '50',
 '45', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '11', '7', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '108', '0', '0', '5',
 '0', '0', '0', '9141', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '60', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60440', '2', '2', 'Bloodscalp Longbow', '', '20550', '3', '0', '1', '99348', '24837', '15', '-1', '-1', '50',
 '45', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '100',
 '2', '56', '108', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60441', '4', '0', 'The Mojo Ring', '', '31616', '3', '0', '1', '148256', '37064', '11', '-1', '-1', '50',
 '45', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '10', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9397', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60442', '2', '0', 'Hak\'thalz of Legacy', 'Ancestral axe of the Bloodscalp, it is said this weapon slayed the mighty raptor Valgesh.', '7427', '4', '0', '1', '148432', '37108', '21', '-1', '-1', '50',
 '45', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '10', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '0',
 '0', '92', '135', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '105', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

-- Stormwind Vault New Items (NEW LOOT_ID)
update creature_template set loot_id = 80850 where entry = 80850;
update creature_template set loot_id = 80851 where entry = 80851;
update creature_template set loot_id = 80852 where entry = 80852;
update creature_template set loot_id = 80853 where entry = 80853;
update creature_template set loot_id = 80854 where entry = 80854;
update creature_template set loot_id = 80830 where entry = 80830;
-- Ostarius (NEW LOOT_ID)
update creature_template set loot_id = 80935 where entry = 80935;
-- Warleader Kintoza (NEW LOOT_ID)
update creature_template set loot_id = 91789 where entry = 91789;

-- CRUSADER LARSARIUS LOOT
replace into creature_loot_template values
(49008, 60437, 0.20, 2, 1, 1, 0);

-- WARLEADER KINTOZA LOOT 
replace into creature_loot_template values
(91789, 60438, 25, 1, 1, 1, 0),
(91789, 60439, 25, 1, 1, 1, 0),
(91789, 60440, 25, 1, 1, 1, 0),
(91789, 60441, 25, 1, 1, 1, 0),
(91789, 60442, 0.25, 2, 1, 1, 0);

-- OSTARIUS LOOT
replace into creature_loot_template values
(80935, 83480, 20, 1, 1, 1, 0),
(80935, 83481, 20, 1, 1, 1, 0),
(80935, 83482, 20, 1, 1, 1, 0),
(80935, 83483, 20, 1, 1, 1, 0),
(80935, 83484, 20, 1, 1, 1, 0),
(80935, 83485, 25, 2, 1, 1, 0),
(80935, 83486, 25, 2, 1, 1, 0),
(80935, 83487, 25, 2, 1, 1, 0),
(80935, 83488, 25, 2, 1, 1, 0);

-- THE BLACK BRIDE LOOT
replace into creature_loot_template values
(80850, 60408, 25, 1, 1, 1, 0),
(80850, 60409, 25, 1, 1, 1, 0),
(80850, 60410, 25, 1, 1, 1, 0),
(80850, 60411, 25, 1, 1, 1, 0),
-- Shared Loottable 
(80850, 60429, 12.5, 2, 1, 1, 0),
(80850, 60430, 12.5, 2, 1, 1, 0),
(80850, 60431, 12.5, 2, 1, 1, 0),
(80850, 60432, 12.5, 2, 1, 1, 0),
(80850, 60433, 12.5, 2, 1, 1, 0),
(80850, 60434, 12.5, 2, 1, 1, 0),
(80850, 60435, 12.5, 2, 1, 1, 0),
(80850, 60436, 12.5, 2, 1, 1, 0);

-- VOLKAN CRUELBLADE LOOT
replace into creature_loot_template values
(80851, 60412, 33.3, 1, 1, 1, 0),
(80851, 60413, 33.3, 1, 1, 1, 0),
(80851, 60414, 33.4, 1, 1, 1, 0),
-- Shared Loottable 
(80851, 60429, 12.5, 2, 1, 1, 0),
(80851, 60430, 12.5, 2, 1, 1, 0),
(80851, 60431, 12.5, 2, 1, 1, 0),
(80851, 60432, 12.5, 2, 1, 1, 0),
(80851, 60433, 12.5, 2, 1, 1, 0),
(80851, 60434, 12.5, 2, 1, 1, 0),
(80851, 60435, 12.5, 2, 1, 1, 0),
(80851, 60436, 12.5, 2, 1, 1, 0);

-- THAM'GRARR LOOT
replace into creature_loot_template values
(80852, 60415, 33.3, 1, 1, 1, 0),
(80852, 60416, 33.3, 1, 1, 1, 0),
(80852, 60417, 33.4, 1, 1, 1, 0),
-- Shared Loottable 
(80852, 60429, 12.5, 2, 1, 1, 0),
(80852, 60430, 12.5, 2, 1, 1, 0),
(80852, 60431, 12.5, 2, 1, 1, 0),
(80852, 60432, 12.5, 2, 1, 1, 0),
(80852, 60433, 12.5, 2, 1, 1, 0),
(80852, 60434, 12.5, 2, 1, 1, 0),
(80852, 60435, 12.5, 2, 1, 1, 0),
(80852, 60436, 12.5, 2, 1, 1, 0);

-- ASZOSH GRIMFLAME LOOT
replace into creature_loot_template values
(80853, 60418, 33.3, 1, 1, 1, 0),
(80853, 60419, 33.3, 1, 1, 1, 0),
(80853, 60420, 33.4, 1, 1, 1, 0),
-- Shared Loottable 
(80853, 60429, 12.5, 2, 1, 1, 0),
(80853, 60430, 12.5, 2, 1, 1, 0),
(80853, 60431, 12.5, 2, 1, 1, 0),
(80853, 60432, 12.5, 2, 1, 1, 0),
(80853, 60433, 12.5, 2, 1, 1, 0),
(80853, 60434, 12.5, 2, 1, 1, 0),
(80853, 60435, 12.5, 2, 1, 1, 0),
(80853, 60436, 12.5, 2, 1, 1, 0);

-- DAMIAN THE RIPPER LOOT
replace into creature_loot_template values
(80854, 60421, 33.3, 1, 1, 1, 0),
(80854, 60422, 33.3, 1, 1, 1, 0),
(80854, 60423, 33.4, 1, 1, 1, 0),
-- Shared Loottable 
(80854, 60429, 12.5, 2, 1, 1, 0),
(80854, 60430, 12.5, 2, 1, 1, 0),
(80854, 60431, 12.5, 2, 1, 1, 0),
(80854, 60432, 12.5, 2, 1, 1, 0),
(80854, 60433, 12.5, 2, 1, 1, 0),
(80854, 60434, 12.5, 2, 1, 1, 0),
(80854, 60435, 12.5, 2, 1, 1, 0),
(80854, 60436, 12.5, 2, 1, 1, 0);

-- NAZORNA LOOT
replace into creature_loot_template values
(80830, 60424, 20, 1, 1, 1, 0),
(80830, 60425, 20, 1, 1, 1, 0),
(80830, 60426, 20, 1, 1, 1, 0),
(80830, 60427, 20, 1, 1, 1, 0),
(80830, 60428, 20, 1, 1, 1, 0),
-- Shared Loottable 
(80830, 60429, 12.5, 2, 1, 1, 0),
(80830, 60430, 12.5, 2, 1, 1, 0),
(80830, 60431, 12.5, 2, 1, 1, 0),
(80830, 60432, 12.5, 2, 1, 1, 0),
(80830, 60433, 12.5, 2, 1, 1, 0),
(80830, 60434, 12.5, 2, 1, 1, 0),
(80830, 60435, 12.5, 2, 1, 1, 0),
(80830, 60436, 12.5, 2, 1, 1, 0);

update creature_template set level_min = 63 where entry = 80850;
update creature_template set level_max = 63 where entry = 80850;
update creature_template set level_min = 63 where entry = 80851;
update creature_template set level_max = 63 where entry = 80851;
update creature_template set level_min = 63 where entry = 80852;
update creature_template set level_max = 63 where entry = 80852;
update creature_template set level_min = 63 where entry = 80853;
update creature_template set level_max = 63 where entry = 80853;
update creature_template set level_min = 63 where entry = 80854;
update creature_template set level_max = 63 where entry = 80854;
update creature_template set level_min = 63 where entry = 80830;
update creature_template set level_max = 63 where entry = 80830;

set @equip_template = 20050; set @weapon_1 = 6967; set @weapon_2 = 2448; set @creature = 60597;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

replace into creature_display_info_addon VALUES
(18468,0,0,0,0),
(18641,0,0,0,0);

update creature_template set type = 1 where entry = 60545;
update creature_template set type = 1 where entry = 91966;
update creature_template set type = 4 where entry = 92203;
update creature_template set type = 4 where entry = 92204;

replace into creature_template VALUES
(60601, 568, 0, 0, 0, 'Frostbitten Grellkin Sorcerer', '', 0, 61, 61, 10502, 10502, 200000, 200000, 3253, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 568, 568, 0, 278, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 3, 0, 60601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 969, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60602, 1015, 0, 0, 0, 'Flamescorned Grellkin Scorcher', '', 0, 61, 61, 10436, 10436, 200000, 200000, 3253, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 566, 566, 0, 278, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 3, 0, 60602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 969, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60603, 18150, 0, 0, 0, 'Manacrazed Grell', '', 0, 61, 61, 10488, 10488, 200000, 200000, 3253, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 574, 574, 0, 278, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 3, 0, 60603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 969, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60604, 18247, 0, 0, 0, 'Wicked Skitterer', '', 0, 61, 61, 10822, 10822, 0, 0, 3453, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 625, 625, 0, 278, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 1, 0, 60604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 738, 969, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60605, 1001, 0, 0, 0, 'Ice Crawler', '', 0, 41, 43, 1981, 2059, 0, 0, 2397, 7, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 76, 97, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.984, 83.853, 100, 7, 0, 60605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');


-- Frostbitten Grellkin Sorcerer
set @creature_entry = 60601;
set @description = 'Stormwind Vault: Frostbitten Grellkin Sorcerer';
set @spell_list_id = 180011;

set @spellid_1 = 12675; -- Frostbolt
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 12;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 3.1; 
set @delayrepeatmax_1 = 3.1;

set @spellid_2 = 12674; -- Frost Nova
set @probability_2 = 100; 
set @casttarget_2 = 0; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 8; 
set @delayinitialmax_2 = 8; 
set @delayrepeatmin_2 = 16; 
set @delayrepeatmax_2 = 20;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 12675, spell_id2 = 12674, spell_id3 = 0 
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

-- Flamescorned Grellkin Scorcher
set @creature_entry = 60602;
set @description = 'Stormwind Vault: Flamescorned Grellkin Scorcher';
set @spell_list_id = 180012;

set @spellid_1 = 13878; -- Scorch
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 12;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 1.6; 
set @delayrepeatmax_1 = 1.6;

set @spellid_2 = 15744; -- Blast Wave
set @probability_2 = 100; 
set @casttarget_2 = 0; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 6; 
set @delayinitialmax_2 = 6; 
set @delayrepeatmin_2 = 10; 
set @delayrepeatmax_2 = 12;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 13878, spell_id2 = 15744, spell_id3 = 0 
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

-- Manacrazed Grell
set @creature_entry = 60603;
set @description = 'Stormwind Vault: Manacrazed Grell';
set @spell_list_id = 180013;

set @spellid_1 = 15735; -- Arcane Missiles
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 12;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 5.15; 
set @delayrepeatmax_1 = 5.15;

set @spellid_2 = 17008; -- Mega Drain Mana
set @probability_2 = 100; 
set @casttarget_2 = 5; 
set @castflags_2 = 5;
set @delayinitialmin_2 = 8; 
set @delayinitialmax_2 = 8; 
set @delayrepeatmin_2 = 16; 
set @delayrepeatmax_2 = 20;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 15735, spell_id2 = 17008, spell_id3 = 0 
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

-- Wicked Skitterer
set @creature_entry = 60604;
set @description = 'Stormwind Vault: Wicked Skitterer';
set @spell_list_id = 180014;

set @spellid_1 = 15471; -- Enveloping Webs
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 7; 
set @delayinitialmax_1 = 7; 
set @delayrepeatmin_1 = 18; 
set @delayrepeatmax_1 = 20;

set @spellid_2 = 16866; -- Venom Spit
set @probability_2 = 100; 
set @casttarget_2 = 4; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 2; 
set @delayinitialmax_2 = 2; 
set @delayrepeatmin_2 = 9; 
set @delayrepeatmax_2 = 10;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 15471, spell_id2 = 16866, spell_id3 = 0 
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

update creature_template set unit_flags = 0, npc_flags = 3 where entry = 91954;
update creature_template set unit_flags = 0, npc_flags = 3 where entry = 91955;
update npc_vendor set maxcount = 1, incrtime = 86400 where entry = 91256;
update item_template set ammo_type = 3, range_mod = 100 where entry = 83257;

set @gossip_menu_id = 41051; set @magic_number = 91798;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Moo.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- A Secret Admirer --
delete from quest_template where entry = 40300;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40300,2,141,12,10,0,0,'A Secret Admirer','Hail young $c.\n\nAre you by chance aiming to visit the human city of Stormwind? If so, I have a favor to ask. Unlike many of my kinsman I have a great pleasure for fishing, it is very relaxing for someone with so much time like myself.\n\nAt times I gather clams from waters and they usually contain a pearl as purely white as Elune herself on darkest night, from those I have put together a necklace which I would like you to deliver to Shailiea. For many decades I have liked and courted her. Give her the necklace and tell her it\'s from her secret admirer.\n\nThe quickest way to get to Stormwind would be from the Auberdine dock, a boat will take you there, she should reside in the Park.\n\nLet me quickly wrap this in a piece of cloth.','Deliver Androl\'s Package to Shailiea in Stormwind City.','Elune be with you.','Secret admirer?\n\nOh poor Androl, I have known for years, I wish he\'d be more direct than this.\n\nThank you, $n.\n\nHere, for your troubles.',60443,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60443,1,535,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3607, 40300);
replace into creature_involvedrelation (id, quest) values (7295, 40300);

update creature_template set npc_flags = 2 where entry = 7295;

delete from item_template where entry = 60443;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60443,29445,'Perfectly Wrapped Gift',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Wrapped with care and love.',0);

-- Baking Bread --
delete from quest_template where entry = 40301;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40301,2,215,11,10,0,0,'Baking Bread','Greetings friend, may I interest you in a loaf of bread?\n\nBut if it\'s not bread you\'re looking for and wish for work, I might have a task for you. My friend, Gryshka, owns the inn of Orgrimmar, in many of her letters she wrote that she is unable to reproduce my special flour and can\'t provide her customers with Mulgore Spice Bread.\n\nIt is by the Earthmother\'s love that adventurers such as you find their path to me or I\'d never be able to communicate with her. If you wish to aid me, I will give you a sack of flour and the recipe for it, all you have to do is bring it to Gryshka.\n\nI hear our newest mischievous allies, the Goblins have raised a zeppelin tower close to Thunder Bluff, the villagers say it takes you straight to Durotar right over the Barrens.\n\nHere, let me get the sack, Gryshka will have a reward for you.','Deliver the Sack of Flour to Innkeeper Gryshka in Orgrimmar.','Come and rest for a while.','Jhawna sent you? Blessed be the ancestors. I haven\'t heard from her in a while! And she sent me a sack of her and the means to make it.\n\nAlways treasure your friends, <name>, not even distance stays in the way of true bonds.\n\nEnough melancholy, I got some coins for you and if you wait a while I can even offer you a loaf of bread!',60444,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60444,1,535,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3884, 40301);
replace into creature_involvedrelation (id, quest) values (6929, 40301);

delete from item_template where entry = 60444;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60444,1297,'Sack of Flour',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Spiced, as all good things should be.',0);

-- Torta's Egg --
delete from quest_template where entry = 40302;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40302,2,0,22,20,512,0,'Torta\'s Egg','Hello there adventurer and welcome to the Darkmoon Faire!\n\nI\'d usually try and persuade you to quickly have a look at our attractions but this time I have a quest for you!\n\nAs you may know the Darkmoon Faire moves from Kalimdor to Eastern Kingdoms each week. In fact we are able to move through most cities without the faction barrier. With the new boat from Darkshore to Stormwind we have drastically changed our route.\n\nTo quickly be done with the explanation, this week we camped close to Zoram\'s Strand at night before reaching Darkshore, and one of those Nagas stole a very precious gift I once got in Tanaris!\n\nAh yes, it was in my days of searching for wonders and mystery that I found a curious turtle close to the shores, her name was Torta, and she could speak! Imagine, a speaking turtle, how marvelous!\n\nShe asked me to find her husband, Tooga. Apparently he got lost a lot, but he also was able to speak! Never in my life have I seen such a thing. But sadly they didn\'t wish to join the Faire, however Torta offered me one of her eggs and that\'s the precious gift I am talking about, I think it was about to hatch too.\n\nPlease $n, bring back my egg.','Find Torta\'s Egg in Zoram Strand.','Do you have it?','You found it!\n\nOh my, I think it\'s hatching $n! Quick what a beautiful little baby tu-- it\'s not a baby?!\n\n<The turtle seemed to have gotten a growth spurt and stares at you>.\n\nI think those Nagas used their magic on this poor baby turtle, it seems to believe you are its parent, there goes my chance to have a talking turtle in the Faire.\n\nWell, enjoy your new companion friend, and visit us from time to time, I really wonder if it will ever speak. ',60445,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,1555,250,0,0,0,0,0,0,0,0,0,23720,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (14823, 40302);
replace into creature_involvedrelation (id, quest) values (14823, 40302);

delete from item_template where entry = 60444;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60445,18050,'Torta\'s Egg',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- TORTA'S EGG DROP 
replace into creature_loot_template values
(3712, 60445, 40, 1, 1, 1, 0),
(3713, 60445, 40, 1, 1, 1, 0),
(3715, 60445, 40, 1, 1, 1, 0),
(3717, 60445, 40, 1, 1, 1, 0);

update creature_template set faction = 1693 where subname = 'Kul Tiras';

replace  into taxi_nodes values (184,0,4321.99,-2806.02,5.1,'Quel\'Thalas, Alah\'Thalas',0,541); 

-- Kin'Tozo loot fix:
update creature_template set loot_id = 80269 where entry = 80269;
replace into creature_loot_template values
(80269, 60438, 25, 1, 1, 1, 0),
(80269, 60439, 25, 1, 1, 1, 0),
(80269, 60440, 25, 1, 1, 1, 0),
(80269, 60441, 25, 1, 1, 1, 0),
(80269, 60442, 0.25, 2, 1, 1, 0);

delete from creature_loot_template where entry = 91789 and item = 60438;
delete from creature_loot_template where entry = 91789 and item = 60439;
delete from creature_loot_template where entry = 91789 and item = 60440;
delete from creature_loot_template where entry = 91789 and item = 60441;
delete from creature_loot_template where entry = 91789 and item = 60442;

-- the following NPCS need to be put into the faction Kul Tiran Exploratory Fleet

update creature_template set faction = 1693 where name = 'Denia Hale';
update creature_template set faction = 1693 where name = 'Sean Pinerock';
update creature_template set faction = 1693 where name = 'Dudley';
update creature_template set faction = 1693 where name = 'Valdarion Smite';
update creature_template set faction = 1693 where name = 'Sailor \'Deepmug\'';
update creature_template set faction = 1693 where name = 'Angela Goodwill';
update creature_template set faction = 1693 where name = 'Chef Jenkel';
update creature_template set faction = 1693 where name = 'Cook Lopperson';
update creature_template set faction = 1693 where name = 'Marine Lockside';
update creature_template set faction = 1693 where name = 'Cannoneer Hancock';

-- Raise the level of Ansirem Runeweaver to 53 elite

update creature_template set level_min = 53, level_max = 53, rank = 1 where entry = 2543;

-- arcane protector should have 50000 mana

update creature_template set mana_min = 50000, mana_max = 50000 where entry = 60596;

UPDATE `quest_template` SET `Details` = 'Margon the Mighty and his son Hargul the Hardy are two sea giants that roam the island of Lapidis and the surrounding waters. Hargul especially has been something of a nuissance and attacked Caelan\'s Rest many weeks ago. Whilst no one was harmed he did make away with a few items of importance before the Marines had assembled and figured out a plan to stop him.\n\nOne such item was the Aqua Stone, a magically potent stone that has been channeled with the energy of powerful Hydromancers. With this stone we were able to more accurately channel our abilities.\n\nI would like you to slay Hargul the Hardy and reclaim this valuable treasure. Not just for us Hydromancers, but so that it does not fall in the wrong hands.\n\nYou should find Hargul somewhere off the coast of Lapidis, he was last seen on the Bright Coast, to the west.' WHERE `entry` = 40151;

UPDATE `quest_template` SET `Objectives` = 'Find \'Water Rat\' Jorgy on Lapidis Isle and return his head to Sergeant Blackwell in Caelan\'s Rest.' WHERE `entry` = 40094;

-- New gryphon masters: 371

replace into `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (93100, 17168, 0, 0, 0, 'Voryn Skystrider', 'Gryphon Master', 0, 55, 55, 7842, 7842, 0, 0, 4500, 371, 8, 1, 1.14286, 0, 20, 5, 0, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 1, 0, 524290, 0, '');

replace into `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (93101, 7905, 0, 0, 0, 'Vanessa Porter	', 'Gryphon Master', 0, 55, 55, 7842, 7842, 0, 0, 4500, 12, 8, 1, 1.14286, 0, 20, 5, 0, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 1, 0, 524290, 0, '');

replace into `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (93102, 7904, 0, 0, 0, 'Nal\'rak', 'Wind Rider Master', 0, 55, 55, 7842, 7842, 0, 0, 4500, 29, 8, 1, 1.14286, 0, 20, 5, 0, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 1, 0, 524290, 0, '');

-- Set the respawn timer for the following rare-spawn world bosses to between 15-24 hours

update creature_template set rank = 2 where name = 'Kin\'tozo';
update creature_template set rank = 2 where name = 'Tarangos';
update creature_template set rank = 2 where name = 'Blademaster Kargron';
update creature_template set rank = 2 where name = 'Mallon the Moontouched';
update creature_template set rank = 2 where name = 'Xalvic Blackclaw';
update creature_template set rank = 2 where name = 'Grug\'thok the Seer';
update creature_template set rank = 2 where name = 'The Wandering Knight';
update creature_template set rank = 2 where name = 'Crusader Larsarius';
update creature_template set rank = 2 where name = 'Zareth Terrorblade';
update creature_template set rank = 2 where name = 'Jal\'akar';
update creature_template set rank = 2 where name = 'Explorer Ashbeard';

update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 80269;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49001;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49002;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49004;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49003;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49005;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49007;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49008;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49009;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49010;
update creature set spawntimesecsmin = 54000, spawntimesecsmax = 86400 where id = 49011;

-- Reduce the damage of Blademaster Kargron by 25%

update creature_template set dmg_min = 290, dmg_max = 320 where entry = 49002;

-- Grovetender Engryss, Elder Blackmaw, and Elder 'One Eye' all pull together even if one is hit.

replace into creature_linking_template values (92106, 802, 92107, 2, 0); 
replace into creature_linking_template values (92105, 802, 92107, 2, 0); 

-- Misc.

update creature_template set name = 'Shadowblade Spectre' where entry = 91918;

UPDATE `quest_template` SET `Details` = 'My brother has recently been dispatched out to the far reaches of our strength and posted within the encampment of Stonard.\n\nIt\'s not for me to question the Warchief\'s desires but I still do worry for my brother\'s safety out there, even if he is strong and good of health.\n\nIt has been months since we have last seen one another with all of the deployments, from one to the next, and now the Swamp of Sorrows of all places?\n\nThe only thing that has me at peace is that he had been promoted to a position of some power within the garrison there.\n\nIt\'s good knowing that maybe he is not on the very frontlines and is instead commanding his men.\n\nIt\'s an odd thing to watch a younger brother become more important then you but, well, duty calls and we must all do our part.\n\n Please find Zuul within Stonard in the Swamp of Sorrows and deliver him this letter.' WHERE `entry` = 55019;

update creature_template set faction = 1693 where entry = 92938;
update creature_template set faction = 1693 where entry = 92939;

update creature_template set npc_flags = 2 where entry = 91233;
update creature_template set npc_flags = 2 where entry = 91235;

update item_template set display_id = 14957 where entry = 60437;

update creature_template set faction = 113 where entry = 91303;

-- Magus Ariden Dusktower <Kirin Tor> , display ID 3715 (placeholder), faction 76, weapon 20654, greeting text : "The growing magical energies surrounding Karazhan have been a great cause for concern within the Kirin Tor. I have ventured here of my own will to study the mysteries that seem to be growing more bold with the passing of time. Perhaps you are willing to assist the Kirin Tor in uncovering the unknown for the greater good?"
-- Kor'gan, display ID , 2971 (placeholder)  , faction 29 , weapon 15444, greeting text : "I have traveled far in search of a great magic that crackles strong. I have sensed its power all the way from Orgrimmar, and I must know more.\n\n No doubt it is coming from the nearby Karazhan Tower, for what looms within is a mystery to all that must be uncovered. I could use your help, perhaps you are willing to lend assistance?"
-- Captain Rothynn, level 61 elite, faction 21, weapon 13049, Undead (Is a ghost)
-- Groundskeeper Jacoby, level 60 elite, faction 21, weapon 1938, weapon 2 13604, Humanoid 

REPLACE INTO creature_template VALUES
(60606, 3715, 0, 0, 0, 'Magus Ariden Dusktower', 'Kirin Tor', 0, 60, 60, 3296, 3296, 2434, 2434, 3075, 76, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 99, 121, 0, 272, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 60606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 162, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60607, 2971, 0, 0, 0, 'Kor\'gan', 'Kirin Tor', 0, 60, 60, 3496, 3496, 0, 0, 3175, 29, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 99, 121, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 60607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 162, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60608, 797, 0, 0, 0, 'Captain Rothynn', '', 0, 61, 61, 14253, 14253, 0, 0, 4391, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 562, 562, 0, 284, 2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 6, 0, 60608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 517, 680, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60609, 3976, 0, 0, 0, 'Groundskeeper Jacoby', '', 0, 60, 60, 14652, 14652, 0, 0, 3075, 21, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 544, 703, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 7, 0, 60609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 694, 911, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into creature_template_addon values (60608, 0, 0, 0, 0, 0, 0, 9617);

set @equip_template = 20052; set @weapon_1 = 20654; set @weapon_2 = 0; set @creature = 60606;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20053; set @weapon_1 = 15444; set @weapon_2 = 0; set @creature = 60607;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20054; set @weapon_1 = 13049; set @weapon_2 = 0; set @creature = 60608;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20055; set @weapon_1 = 1938; set @weapon_2 = 13604; set @creature = 60609;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41052; set @magic_number = 60606;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The growing magical energies surrounding Karazhan have been a great cause for concern within the Kirin Tor. I have ventured here of my own will to study the mysteries that seem to be growing more bold with the passing of time. Perhaps you are willing to assist the Kirin Tor in uncovering the unknown for the greater good?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41053; set @magic_number = 60607;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have traveled far in search of a great magic that crackles strong. I have sensed its power all the way from Orgrimmar, and I must know more.\n\n No doubt it is coming from the nearby Karazhan Tower, for what looms within is a mystery to all that must be uncovered. I could use your help, perhaps you are willing to lend assistance?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into item_template values
 ('60446', '15', '0', 'Groveweald Mark', '', '32282', '0', '0', '1', '804', '201', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60447', '15', '0', 'Withered Bone', '', '1515', '0', '0', '1', '1724', '431', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60448', '15', '0', 'Rusty Amulet', '', '2624', '0', '0', '1', '4828', '1207', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60449', '15', '0', 'Faded Ghostly Essence', '', '2480', '0', '0', '1', '4552', '1138', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Groveweald Mark DROP
replace into creature_loot_template values
(92100, 60446, 10, 1, 1, 1, 0),
(92101, 60446, 10, 1, 1, 1, 0),
(92102, 60446, 10, 1, 1, 1, 0),
(92103, 60446, 10, 1, 1, 1, 0);

-- Withered Bone DROP
replace into creature_loot_template values
(91924, 60447, 8, 1, 1, 1, 0),
(91925, 60447, 8, 1, 1, 1, 0),
(92935, 60447, 8, 1, 1, 1, 0);

-- Rusty Amulet DROP
replace into creature_loot_template values
(91925, 60448, 17, 1, 1, 1, 0),
(91926, 60448, 17, 1, 1, 1, 0);

-- Faded Ghostly Essence DROP
replace into creature_loot_template values
(91923, 60449, 10, 1, 1, 1, 0),
(91911, 60449, 10, 1, 1, 1, 0),
(91913, 60449, 10, 1, 1, 1, 0);

-- The Tower of Lapidis X --
delete from quest_template where entry = 40303;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40171,40303,2,409,55,45,0,0,'The Tower of Lapidis X','The Tower of Lapidis will not be an easy task to conquer, even with this key, this is only the entryway into the gates of hell. You must steel yourself for what is to come, Lapidis has been able to ally himself with the most unlikely friends for a reason. He is a powerful man, and extremely skilled in magic, not to mention surrounded by minions of his own conjuring.\n\nIf you are to conquer The Tower of Lapidis you will need a band of fellow adventurers. Plan for the mission ahead and slay Arch Hydromancer Lapidis for all of his lies, his deceit, and his crimes against Kul Tiras. If you succeed, bring his head to Colonel Hardinus, he would be the most eager to reward such heroic actions.','Venture into The Tower of Lapidis, and slay Arch Hydromancer Lapidis, and return his head to Colonel Hardinus in Caelan\'s Rest.','Hello again $N, what can I do for you?','This... This is the head of Lapidis! It is done, his horror has ceased?!\n\nWhat you have done here is truly heroic, truly worthy of legend. You have assured our survival upon this island, and triumphed over a great evil, a great evil that would have surely been our downfall. Kul Tiras and the Anchor have been given justice, for all of the crimes this man has caused against our people.\n\nPlease, as a token of our gratitude, and in Caelan\'s name, have a just reward.',60450,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60451,1,60452,1,60453,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92001, 40303);
replace into creature_involvedrelation (id, quest) values (92002, 40303);

delete from item_template where entry = 60450;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60450,2945,'Head of Lapidis',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_colonel_hardinus' where entry = 92002;
update creature_template set loot_id = 60467 where entry = 60467;

-- Head of Lapidis DROP
replace into creature_loot_template values
(60467, 60450, -100, 1, 1, 1, 0);

replace into item_template values
 ('60451', '4', '4', 'Kul Tiras Marine Helmet', '', '28662', '3', '0', '1', '56432', '14108', '1', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '17', '6', '8',
 '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '494', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '0', '0', '0', '80', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60452', '4', '1', 'Hydromancer\'s Peak', '', '26302', '3', '0', '1', '55228', '13807', '1', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '6', '7',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68', '0', '0', '0',
 '0', '0', '0', '9343', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60453', '4', '2', 'Sailor\'s Headband', '', '26308', '3', '0', '1', '62724', '15681', '1', '-1', '-1', '59',
 '54', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '18', '6', '9',
 '4', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '132', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
 -- Wicked Skitterer
set @creature_entry = 60604;
set @description = 'Stormwind Vault: Wicked Skitterer';
set @spell_list_id = 201085;

set @spellid_1 = 15471; -- Enveloping Webs
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 7; 
set @delayinitialmax_1 = 7; 
set @delayrepeatmin_1 = 18; 
set @delayrepeatmax_1 = 20;

set @spellid_2 = 17230; -- Infected Wound
set @probability_2 = 100; 
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 4; 
set @delayinitialmax_2 = 4; 
set @delayrepeatmin_2 = 300; 
set @delayrepeatmax_2 = 300;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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


replace into `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (93105, 15937, 0, 0, 0, 'Shadow Creeper', '', 0, 61, 61, 10822, 10822, 0, 0, 3453, 16, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 625, 625, 0, 278, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 1, 0, 60604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201085, 0, 738, 969, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Shadow Creeper
set @creature_entry = 93105;
set @description = 'Stormwind Vault: Shadow Creeper';
set @spell_list_id = 201088;

set @spellid_1 = 16866; -- Venom Spit
set @probability_1 = 100; 
set @casttarget_1 = 4; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 2; 
set @delayinitialmax_1 = 2; 
set @delayrepeatmin_1 = 9; 
set @delayrepeatmax_1 = 10;

set @spellid_2 = 0;
set @probability_2 = 0; 
set @casttarget_2 = 0; 
set @castflags_2 = 0;
set @delayinitialmin_2 = 0; 
set @delayinitialmax_2 = 0; 
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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

replace into creature_display_info_addon VALUES
(18470,0,0,0,0),
(18471,0,0,0,0),
(18472,0,0,0,0),
(18473,0,0,0,0),
(18474,0,0,0,0),
(18475,0,0,0,0),
(18476,0,0,0,0);

-- The Depths of Karazhan I --
delete from quest_template where entry = 40304;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40304,2,8,60,58,0,0,'The Depths of Karazhan I','I have been sent by a council of mages from Orgrimmar to look into the growing power that emits from Karazhan. I have done much research into the tower itself and the artifacts that once belonged in the ruins around it.\n\nI have some hunches, the first of which is that the energy that me, and the other mages have felt is coming from beneath Karazhan. In an old, and decrepid series of catacombs underneath the tower. If I am correct, then we will need an old Pendant which holds power enough to re-energize a key created by Medivh.\n\nThis artifact is known as the Pendant of Ardan, thought lost for some years now. My only hint is that of the ogres of Deadwind Pass, of which, their leader Var\'zhog has begun to exhibit magical prowess.\n\nFind Var\'zhog, and from him, reclaim the Pendant of Ardan.','Search for the Pendant of Ardan, rumored to be held by the ogre Var\'zhog, collect it, and return to Kor\'gan in Stonard.','The Pendant of Ardan will be required if we wish to proceed, find it.','<A smirk would press to Kor\'gan as he looks upon the Pendant>.\n\nThis is it, you\'ve done well, I\'ve always had some suspicions about Var\'zhog and his power, with this, we can continue.',60454,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6250,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60607, 40304);
replace into creature_involvedrelation (id, quest) values (60607, 40304);

delete from item_template where entry = 60454;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60454,1148,'Pendant of Ardan',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Var'zhog , display ID 655, level 60, mana 4000, scale 2.1, weapon 18534, casts 15208, faction 45
REPLACE INTO creature_template VALUES
(60610, 655, 0, 0, 0, 'Var\'zhog', '', 0, 60, 60, 3296, 3296, 4000, 4000, 3075, 45, 0, 1, 1.14286, 2.1, 18, 5, 0, 0, 1, 99, 121, 0, 272, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 60610, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 162, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Pendant of Ardan DROP
replace into creature_loot_template values
(60610, 60454, -100, 1, 1, 1, 0);

-- Var'zhog
set @creature_entry = 60610;
set @description = ' : Var\'zhog';
set @spell_list_id = 180015;

set @spellid_1 = 15208; -- Lightning Bolt
set @probability_1 = 100; 
set @casttarget_1 = 4; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 2; 
set @delayinitialmax_1 = 2; 
set @delayrepeatmin_1 = 9; 
set @delayrepeatmax_1 = 10;

set @spellid_2 = 0;
set @probability_2 = 0; 
set @casttarget_2 = 0; 
set @castflags_2 = 0;
set @delayinitialmin_2 = 0; 
set @delayinitialmax_2 = 0; 
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

set @spellid_3 = 0;
set @probability_3 = 0; 
set @casttarget_3 = 0; 
set @castflags_3 = 0;
set @delayinitialmin_3 = 0; 
set @delayinitialmax_3 = 0; 
set @delayrepeatmin_3 = 0; 
set @delayrepeatmax_3 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 15208, spell_id2 = 0, spell_id3 = 0 
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

-- The Depths of Karazhan II --
delete from quest_template where entry = 40305;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40304,40305,2,8,60,58,0,0,'The Depths of Karazhan II','With the Pendant of Ardan in our hands we can turn our attention to the tower itself, and what magic has begun to raise more ghosts around it. As of recently, the dead have begun to materialize, spirits and echoes of the past clinging around the tower as if they were still alive.\n\nTravel to the ruins around Karazhan, and from the ghosts and dead bring me 8 Ghostly Substance. It is from this substance I will be able to check what magic lingers upon the ethereal beings.\n\nBe careful, for there are also rumors of a Dark Reaver who guards the entrance to Karazhan.','Gather 8 Ghostly Substance from the ghosts around Karazhan, and return to Kor\'gan at Stonard.','Have you had any success in dealing with the ethereal?','Hmm.. It would appear that the Substance you have brought me is extremely potent, and quite magically powerful. Whatever being is at work here stirring these forces is quite certainly strong.',60455,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6250,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60607, 40305);
replace into creature_involvedrelation (id, quest) values (60607, 40305);

delete from item_template where entry = 60455;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60455,34561,'Ghostly Substance',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(12380, 60455, -45, 1, 1, 1, 0),
(7370, 60455, -50, 1, 1, 1, 0),
(12377, 60455, -50, 1, 1, 1, 0),
(12379, 60455, -50, 1, 1, 1, 0);

-- The Depths of Karazhan III --
delete from quest_template where entry = 40306;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40305,40306,2,8,60,58,0,0,'The Depths of Karazhan III','<A look of annoyance would cover Kor\'gan as his attempts to study the Ghostly Substance fail>.\n\nIt would appear that what we are dealing with is beyond my power, it is intense in arcane energy, with something else that is not familiar to me...\n\nThere is one I know who may be of assistance, who was a member of the Kirin Tor in life, his name is Gunther Arcanus. He lives within the center of Brightwater Lake in Tirisfal Glades, just northeast of Brill.\n\nWith his knowledge within Dalaran, perhaps he can be of more assistance, seek him out and give him this crate.','Bring Kor\'gan\'s Crate to Gunther Arcanus at Brightwater Lake.','Yes?','Yes? What is it that you want with me? I can sense a powerful magic about you.\n\nFrom Karazhan, well, let me have a look then.',60456,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60456,1,0,3150,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60607, 40306);
replace into creature_involvedrelation (id, quest) values (1497, 40306);

delete from item_template where entry = 60456;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60456,7913,'Kor\'gan\'s Crate',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Depths of Karazhan IV --
delete from quest_template where entry = 40307;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40306,40307,2,8,60,58,0,0,'The Depths of Karazhan IV','My my... Such potent energy, I had always guessed that Karazhan had natural ley energy, infact it was rumored within Dalaran. Kor\'gan was correct to bring these samples to me, they will make good for future projects. The energy that lingers beneath the arcane is that of necromancy, and quite potent necromancy at that.\n\nLong ago I spent quite some time at Karazhan, I was under mission from the Kirin Tor to look into the natural energy that lingered there. This is no doubt the work of Alarus, a student of Medivh for a brief period of time, he spent much of his later days attending to the Crypts that stretched far beneath the tower.\n\nIf your task is to enter those catacombs, you will need to reforge the key. It requires a Mark of Karazhan, held by few who were given entrance into the tower, as well as the key itself.\n\nBring this information to Kor\'gan, perhaps he will find a solution to this problem.','Return to Kor\'gan in Stonard with the information given by Gunther Arcanus.','Yes?','So, my suspicions were correct, the power that has begun to rise is coming from below Deadwind Pass. Well, then we must make haste, unless a great evil comes to threaten the Horde.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3150,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (1497, 40307);
replace into creature_involvedrelation (id, quest) values (60607, 40307);

-- The Depths of Karazhan V --
delete from quest_template where entry = 40308;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40307,40308,2,8,60,58,0,0,'The Depths of Karazhan V','If we are to reforge the key, then we will need the items that Gunther Arcanus had hinted to. I have no doubts in my mind that both of these items can be found lingering around the tower.\n\nThe first item we shall acquire is the key itself, there are rumors of a sickly, pale human who emerges when not a living soul is about, to tend the grounds around Karazhan. It would be from him, that the Old Crypt Key can be found, find him, and claim it for our purposes, he should be around.\n\nLastly, a Mark of Karazhan will be required, of which there are not many left on this mortal world. I have heard tales of a Captain lingering in the caves of The Master\'s Cellar. Captain Rothynn and his twin brother were both given one long ago, he should still have one.\n\nWhen these items are obtained, return to me, and I can forge the key.','Gather the Old Crypt Key, and the Mark of Karazhan from around the ruins of Karazhan for Kor\'gan in Stonard.','Be dedicated in your searching, if we are to destroy this evil, then we must act fast.','So, the stories were correct, the items have been obtained, with the Pendant of Ardan, the Mark of Karazhan, and the key itself, I can begin to work my magic.',60457,1,60458,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6150,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60607, 40308);
replace into creature_involvedrelation (id, quest) values (60607, 40308);

update quest_template set type = 1 where entry = 40308;

delete from item_template where entry = 60457 and 60458;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60457,32831,'Mark of Karazhan',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60458,9153,'Old Crypt Key',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60608, 60457, -100, 1, 1, 1, 0),
(60609, 60458, -100, 1, 1, 1, 0);

-- The Depths of Karazhan VI --
delete from quest_template where entry = 40309;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40308,40309,2,8,60,58,0,0,'The Depths of Karazhan VI','Now then, you have done your deeds with honor intact, it is my time to uphold my end of the bargain. It will take some time, and great concentration, but I will work to reforge the Karazhan Crypt Key.\n\nWith everything in place, it should allow entry into the Crypts of Karazhan! Now, step back, and behold my power!','Wait for Kor\'gan to reforge the Karazhan Crypt Key.','Yes?','So, the stories were correct, the items have been obtained, with the Pendant of Ardan, the Mark of Karazhan, and the key itself, I can begin to work my magic.',0,0,0,0,0,0,0,0,60344,1,0,0,0,0,0,0,0,0,0,6150,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'The Karazhan Crypt Key has been reforged');

replace into creature_questrelation (id, quest) values (60607, 40309);
replace into creature_involvedrelation (id, quest) values (60607, 40309);

update creature_template set script_name = 'npc_korgan' where entry = 60607;

delete from creature_template where entry = 60344;
replace into creature_template (entry, name, display_id1) values (60344, 'quest_40309_dummy_triger', 328);

-- The Depths of Karazhan VII --
delete from quest_template where entry = 40310;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40309,40310,2,8,60,58,0,0,'The Depths of Karazhan VII','There is only one step left for us, as honorable members of the Horde. We must step forth into the darkness, and vanquish this evil before it grows even stronger. If we were to let the humans deal with this, who knows if they could even stop it?\n\nAs Grom Hellscream slayed Mannoroth, we too much look upon something terrible and destroy it from this world. I ask of you to venture into the Karazhan Crypts, and put an end to this madness, for the good of this world.\n\nThis will not be a task you can handle alone, make sure you bring strong allies to journey with you.','Venture forth into the Karazhan Crypts, once inside slay Alarus, the watcher of the Crypts for Kor\'gan in Stonard.','Do not fear the darkness $N, stride with a great determination and you may still find glory.','Do you feel it? A great fog has been lifted over the area, and the foul blackness of magic is beginning to subside. You have done the work of great heroes, and have acted with a decisiveness I have not seen! You bring honor to your ancestors, please, take one of these items as a tribute of my thanks in helping me.',0,0,0,0,0,0,0,0,91928,1,0,0,0,0,0,0,0,0,0,6150,76,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60459,1,60460,1,60461,1,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60607, 40310);
replace into creature_involvedrelation (id, quest) values (60607, 40310);

update quest_template set type = 81 where entry = 40310;

replace into item_template values
 ('60459', '4', '0', 'Charged Arcane Ring', '', '31616', '3', '0', '1', '168432', '42108', '11', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '20', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60460', '4', '0', 'Tusk of Gardon', '', '3429', '3', '0', '1', '200792', '50198', '2', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '20', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60461', '4', '0', 'Blackfire Orb', '', '23727', '3', '0', '1', '200792', '50198', '12', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '5', '18384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);

