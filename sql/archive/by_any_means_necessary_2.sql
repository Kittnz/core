-- By Any Means Necessary II
delete from quest_template where entry = 40398;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40397,40398,2,361,53,47,0,0,'By Any Means Necessary II','You have proved yourself a potential ally, and allies do not come often in this place. If you truly wish to earn my favor, then there is something you can do.\n\nThere is an elusive satyr that has escaped justice for far too long.\n\nHe goes by the name Pustax, some warped mockery no doubt of his previous name. He is responsible for much destruction, and death in these parts, and has personally slain family of my own.\n\nI need his head, he has lived for far too long. He is known to lurk between Shatter Scar Vale, and Irontree Woods, start there. Now, bring me what I desire.','Hunt down the Satyr Pustax, and return his head to Niremius Darkwind in Felwood.','Each day we must stay vigilant to combat the growind darkness.','This has been a long time coming, I would have never imagined this monster would be removed from the world this soon.\n\nYou may have the potential to follow in my footsteps, given your prowess in finding demon.',60533,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5850,69,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60710, 40398);
replace into creature_involvedrelation (id, quest) values (60710, 40398);

REPLACE INTO creature_template VALUES
(60711, 2878, 0, 0, 0, 'Pustax', '', 0, 54, 54, 4267, 4267, 5000, 5000, 2739, 90, 0, 1, 1.14286, 1.7, 18, 5, 40, 0, 1, 138, 177, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 3, 0, 60711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 141, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Pustax (By Any Means Necessary II)
set @creature_entry = 60711;
set @description = 'Felwood: Pustax';
set @spell_list_id = 180020;

set @spellid_1 = 25309; -- Immolate
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 1; 
set @delayinitialmax_1 = 1; 
set @delayrepeatmin_1 = 20; 
set @delayrepeatmax_1 = 20;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 25309, spell_id2 = 0, spell_id3 = 0 
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

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60533,5981,'Head of Pustax',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO creature_loot_template VALUES
(60711, 60533, -100, 0, 1, 1, 0),
(60711, 30103, 0.0025, 0, -30103, 1, 0),
(60711, 24028, 0.01, 0, -24028, 1, 0),
(60711, 24032, 0.01, 0, -24032, 1, 0),
(60711, 30047, 0.01, 0, -30047, 1, 0),
(60711, 3356, 0.02, 0, 1, 1, 0),
(60711, 3914, 0.02, 0, 1, 1, 0),
(60711, 7989, 0.02, 0, 1, 1, 0),
(60711, 8389, 0.02, 0, 1, 1, 0),
(60711, 10320, 0.02, 0, 1, 1, 0),
(60711, 11225, 0.02, 0, 1, 1, 0),
(60711, 11733, 0.02, 0, 1, 1, 0),
(60711, 11734, 0.02, 0, 1, 1, 0),
(60711, 11737, 0.02, 0, 1, 1, 0),
(60711, 12365, 0.02, 0, 1, 1, 0),
(60711, 12691, 0.02, 0, 1, 1, 0),
(60711, 13492, 0.02, 0, 1, 1, 0),
(60711, 14467, 0.02, 0, 1, 1, 0),
(60711, 14479, 0.02, 0, 1, 1, 0),
(60711, 14491, 0.02, 0, 1, 1, 0),
(60711, 14496, 0.02, 0, 1, 1, 0),
(60711, 14498, 0.02, 0, 1, 1, 0),
(60711, 15737, 0.02, 0, 1, 1, 0),
(60711, 16215, 0.02, 0, 1, 1, 0),
(60711, 16218, 0.02, 0, 1, 1, 0),
(60711, 16220, 0.02, 0, 1, 1, 0),
(60711, 19270, 0.02, 0, 1, 1, 0),
(60711, 19271, 0.02, 0, 1, 1, 0),
(60711, 19279, 0.02, 0, 1, 1, 0),
(60711, 10620, 0.04, 0, 1, 1, 0),
(60711, 11732, 0.04, 0, 1, 1, 0),
(60711, 12364, 0.04, 0, 1, 1, 0),
(60711, 12683, 0.04, 0, 1, 1, 0),
(60711, 12684, 0.04, 0, 1, 1, 0),
(60711, 7909, 0.0438, 0, 1, 1, 0),
(60711, 13465, 0.06, 0, 1, 1, 0),
(60711, 4500, 0.08, 0, 1, 1, 109),
(60711, 20400, 0.08, 0, 1, 1, 108),
(60711, 7910, 0.16, 0, 1, 1, 0),
(60711, 5758, 0.26, 0, 1, 1, 0),
(60711, 10305, 0.26, 0, 1, 1, 0),
(60711, 10306, 0.36, 0, 1, 1, 0),
(60711, 4426, 0.44, 0, 1, 1, 0),
(60711, 4425, 0.5, 0, 1, 1, 0),
(60711, 30045, 0.5, 0, -30045, 1, 0),
(60711, 30046, 0.5, 0, -30046, 1, 0),
(60711, 30080, 0.5, 0, -30080, 1, 0),
(60711, 30081, 0.5, 0, -30081, 1, 0),
(60711, 13443, 1.3, 0, 1, 1, 0),
(60711, 24024, 2.5, 0, -24024, 1, 0),
(60711, 30048, 2.5, 0, -30048, 1, 0),
(60711, 13446, 2.78, 0, 1, 1, 0),
(60711, 8766, 2.8459, 0, 1, 1, 0),
(60711, 14256, 5.035, 0, 1, 1, 0),
(60711, 8952, 5.2539, 0, 1, 1, 0),
(60711, 12662, 6.4361, 0, 1, 1, 0);