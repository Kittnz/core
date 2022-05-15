-- Marglum Blood-eye, display ID 11293, level 40, scale 3.0, hp x1.5 , weapon 60124, can swim, faction 18, humanoid
-- Muckshell Makrura, display ID 2599, level 37-39, scale 1.0, faction 16, can swim, humanoid
-- Mol'gol , display ID 10704, scale 1.5, faction 232, level 40, humanoid
-- NPC Soothound, make NON elite, adjust HP and stats accordingly
delete from creature_template where entry in (60697,60714);
REPLACE INTO creature_template VALUES
(60697, 8050, 0, 0, 0, 'Soothound', NULL, 0, 51, 52, 3076, 3076, 0, 0, 2432, 18, 0, 1, 1.14286, 0, 18, 5, 40, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 1, 0, 60697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 1024, 0, ''),
(60712, 4465, 0, 0, 0, 'Decoy Dragonling', '', 0, 48, 48, 2577, 2577, 0, 0, 680, 54, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 87, 112, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 64.68, 88.935, 100, 9, 0, 60712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 124, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60713, 397, 0, 0, 0, 'Peculiar Broodling', NULL, 0, 50, 51, 2600, 2600, 800, 800, 2500, 54, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 90, 120, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 9, 0, 60713, 0, 0, 0, 0, 0, 0, 0, 0, 13375, 0, 0, 0, 0, 0, 93, 127, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 2113536, 0, 0, 0, ''),
(60714, 11293, 0, 0, 0, 'Marglum Blood-eye', NULL, 0, 40, 40, 2628, 2628, 0, 0, 1964, 18, 0, 1, 1.14286, 3, 18, 5, 40, 0, 1, 57, 70, 0, 156, 1, 1600, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 93, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60715, 4465, 0, 0, 0, '\'Broody\'', 'Engineer Figgle\'s Minion', 0, 52, 52, 15000, 15000, 900, 900, 2432, 54, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 259, 334, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 9, 0, 60715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 155, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60757, 2599, 0, 0, 0, 'Muckshell Makrura', NULL, 0, 37, 39, 1536, 1604, 0, 0, 1664, 16, 0, 1, 1.14286, 1, 18, 5, 40, 0, 1, 92, 109, 0, 148, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60757, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 145, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60758, 10704, 0, 0, 0, 'Mol\'gol', NULL, 0, 40, 40, 1752, 1752, 0, 0, 1964, 232, 0, 1, 1.14286, 1.5, 18, 5, 40, 0, 1, 57, 70, 0, 156, 1, 1600, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 60758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 93, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20098; set @weapon_1 = 60124; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60714;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20091; set @weapon_1 = 0; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60734;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

replace into item_template values
 ('60537', '15', '0', 'Inner Heat Conductor', '', '7841', '0', '0', '1', '648', '162', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60538', '15', '0', 'Damaged Components', '', '7839', '0', '0', '1', '948', '237', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO creature_loot_template VALUES
(60712, 60537, 12, 0, 1, 1, 0),
(60712, 60538, 8, 0, 1, 1, 0),
(60712, 10558, 2, 0, 1, 1, 0),
(60712, 8146, 4, 0, 1, 1, 0),
(60713, 60537, 12, 0, 1, 1, 0),
(60713, 60538, 8, 0, 1, 1, 0),
(60713, 10558, 2, 0, 1, 1, 0),
(60713, 8146, 4, 0, 1, 1, 0);

-- Peculiar Broodling
set @creature_entry = 60713;
set @description = ': Peculiar Broodling';
set @spell_list_id = 180028;

set @spellid_1 = 13375; -- Fireball
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 12; 
set @delayrepeatmax_1 = 12;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 13375, spell_id2 = 0, spell_id3 = 0 
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

-- Broody <Engineer Figgle's Minion>
set @creature_entry = 60715;
set @description = ': Broody';
set @spell_list_id = 180021;

set @spellid_1 = 9573; -- Flame Breath
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 35; 
set @delayrepeatmax_1 = 35;

set @spellid_2 = 13375;
set @probability_2 = 0; -- Fireball
set @casttarget_2 = 1; 
set @castflags_2 = 4;
set @delayinitialmin_2 = 6; 
set @delayinitialmax_2 = 6; 
set @delayrepeatmin_2 = 12; 
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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 9573, spell_id2 = 13375, spell_id3 = 0 
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