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