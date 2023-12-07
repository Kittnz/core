-- Magical Maladies
delete from quest_template where entry = 41181;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41181,2,-161,10,10,0,0,'Magical Maladies','Hello, if it isn\'t the superhero themselves coming in to greet their old friend Wizette! I gotta say, you got a lot of goblins turning their heads wherever you\'re showing up. Our own personal celebrity, how charming.$B$BBut enough of that, we got work to do and I might need your assistance with something.$B$BGalvax up at the Water Hole ran into some renegade elementals that threaten our vital water supply and he can\'t handle it with the bruisers alone. Seems like these watery blobs don\'t fancy us taking all the water.$B$BI got a good hunch on how to deal with this from what he reported, I simply need a conduit of some sort. The Mudpaw Mystics to the northeast appear to carry magical orbs with them, bring me three, and we will continue with the plan.','Acquire three Mudpaw Oracle Orbs for Wizette Icewhistle at Rustgate Ridge.','I doubt they possess great magical power, so let us be safe and collect more than usually necessary.','Ew, I see they\'re taking their name too literally. Hang on to them for now - while you got your hands dirty, I found out how to help Galvax with his aquatic anomalies.',41067,3,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5040,840, 1001,100,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (80108, 41181);
replace into creature_involvedrelation  (id, quest) values (80108, 41181);
update quest_template set requiredclasses = 128		 where entry = 41181;
update quest_template set requiredraces = 256		 where entry = 41181;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41067,22923,'Mudpaw Oracle Orb',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61666,41067,-60,0,1,1,0);

-- Bubbling Baddies
delete from quest_template where entry = 41182;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41181,41182,2,-161,10,10,0,0,'Bubbling Baddies','It is actually quite simple, really. With the energies within these orbs and your magical channeling, you will have a good enough magical shielding against its attacks.$B$BBelieve it or not, but powerful mages and sorcerers are able to conjure and dominate their own water elemental. Our knowledge and control over the elements may not be as deep and spiritual as one of a shaman, but that doesn\'t mean we can\'t do wonders with them too. So, who knows? Maybe one day you\'re waltzing into this place hitching a ride on one of them!$B$BTake the orbs and go north to the water hole. Once there, brace yourself and whack the elemental out of Durotar Labor Union property!','Quench the water elemental threatening the water pump and bring its shackles to Wizette Icewhistle at Rustgate Ridge.','I will be with you in spirit!','You did it? Oh, and what are these? I\'d reckon proof of your deeds. Did you know elemental shackles fetch for a good price on the black market? Ofcourse you didn\'t, why else would you give them to me? Nuh-uh, too late, you can\'t take back a gift, no? Brings bad fortune after all!$B$BBut don\'t be mad, because of your help we won\'t die of thirst, and we\'re grateful for that! Take one of these as appreciation, I will probably not use them anytime soon.$B$B$n, I have to say: It has been a joy to work with you! Whether we will see eachother again or not, best of fortune to you, my friend!',41068,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,5040,840, 1001,150,0,0,0,0,0,0, 0,0,0, 7508,1,9513,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (80108, 41182);
replace into creature_involvedrelation  (id, quest) values (80108, 41182);
update quest_template set requiredclasses = 128		 where entry = 41182;
update quest_template set requiredraces = 256		 where entry = 41182;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41068,31161,'Hydrophus\' Shackles',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(61862,41068,-100,0,1,1,0);

REPLACE INTO creature_template VALUES
(61862, 5561, 0, 0, 0, 0, 'Hydrophus', NULL, 0, 11, 11, 392, 392, 392, 392, 511, 14, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 21, 27, 4, 76, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 4, 0, 61862, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61863, 512, 0, 0, 0, 0, 'Grabb Mudhide', NULL, 0, 12, 12, 272, 272, 0, 0, 573, 61, 0, 1, 1.14286, 1.5, 18, 5, 0, 0, 1, 26, 30, 0, 66, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 61863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20499; set @weapon_1 = 2055; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61863;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature; 

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30151, 'The water is not only yours to take!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_scripts where id = 2200044;
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30151, 0, 0, 0, 0, 0, 0, 0, 0, 'Hydrophus - Say on Aggro');

delete from creature_ai_events where id = 2200044;
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200044, 61670, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200044, 0, 0, 'Hydrophus - Say on Aggro');

-- Grabb Mudhide
set @creature_entry = 61863;
set @description = ': Grabb Mudhide';
set @spell_list_id = 180291;

set @spellid_1 = 3603; -- Distracting Pain
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 10;
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

-- Hydrophus
set @creature_entry = 61862;
set @description = ': Hydrophus';
set @spell_list_id = 180290;

set @spellid_1 = 205; -- Frostbolt
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 6;
set @delayrepeatmax_1 = 6;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
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

-- Ashen Pelts
delete from quest_template where entry = 41183;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41183,2,5536,6,3,0,0,'Ashen Pelts','I am keeping an eye on the pump here day in and day out. All around the clock I stand here and watch this cranky old thing hold on to dear life and try to make it keep doing so for the foreseeable future. Should this baby ever stop, I\'m in for a whole new world of trouble - trouble I would like to avoid.$B$BThe nights are getting colder by the day and I am not allowed to make a campfire in case it burns down the pump. Luckily I\'m a proficient leatherworker and can make myself a fine coat against the cold.$B$BIf you bring me pelts from the hyenas around here, I\'ll make you something too. Deal?','Bring six Ashpaw Pelts to Pumpworker Fizzlo at The Water Hole.','With a bit more payment on Rustgate\'s side, I wouldn\'t be complaining that much. But how things stand now, I definitely need to complain.','These are serviceable, not perfect, but that\'s fine. Much appreciated, buddy. Here, take this for your effort. You\'re a good goblin, one of the few.',41069,6,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2820,780, 1001,100,0,0,0,0,0,0, 0,0,0, 41070,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61744, 41183);
replace into creature_involvedrelation  (id, quest) values (61744, 41183);
update quest_template set requiredraces = 434		 where entry = 41183;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41069,7740,'Ashpaw Pelt',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(61658,41069,-50,0,1,1,0),
(61659,41069,-50,0,1,1,0);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41070', '4', '1', 'Ashpaw Mantle', '', '23025', '1', '0', '1', '288', '72', '16', '-1', '-1', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

-- Right From Under My Green Nose
delete from quest_template where entry = 41184;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41184,2,5536,8,3,0,0,'Right From Under My Green Nose','I know, I know. His Excellency in his tower is thirsty and now his brother sends a poor, gullible ant up here to get the shipment he was promised. Heard that atleast three times today. You see, I would love to send Rustgate his water, the issue is just that his way of leading doesn\'t sit well with some of the more… idealistic and naive idiots on this island.$B$BThe caravan that was supposed to bring Rustgate his refreshing liquid was ambushed and looted by the denizens of the slums up there. Guess they not only want their own water, but also make sure that the Supreme Overseer stays as dry as a murloc in Tanaris.$B$BIf you want to help - and I hope to all that is golden you want to - then go up there and bring the shipment of water to Supplymaster Maxlo. If you succeed, tell him what\'s going on here.','Recover Rustgate\'s Water Shipment and bring it to Supplymaster Maxlo in Rustgate Ridge.','Hey, you! What took you so long?','So the fools from the slums are really behind the ambushes. We\'d suspected the gnolls to be behind it, you know, how gnolls tend to act. But to be honest, it seemed too coordinated. Anyway, good job recovering the shipment, I will report this to Taxxlo. Something needs to be done about these rebels.',41071,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3360,560, 1001,200,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61746, 41184);
replace into creature_involvedrelation  (id, quest) values (61746, 41184);
update quest_template set requiredraces = 434		 where entry = 41184;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41071,11113,'Rustgate\'s Water Shipment',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020070, 3, 1868, 'Stolen Water', 0, 4, 1, 43, 2020070, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020070,41071,-100,0,1,1,0);

-- War On Mudpaw
delete from quest_template where entry = 41185;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41185,2,5536,8,3,0,0,'War On Mudpaw','If these Venture Co. folk up there weren\'t enough, just beyond this measly pond are the grubby paws of the gnolls, cackling and growling at us. All. The. Time. If I weren\'t busy guarding these dunderheads here, I\'d get my bludgeon and teach them a lesson or two myself. But I can\'t. And it makes me mad.$B$BEager to earn some coin? Bash some of their heads in and I\'ll make it worth your while. Bring me their armbands as proof, I don\'t trust anyone\'s word here - and you\'d do the same if you know what\'s best for you.','Collect Mudpaw Armbands from Mudpaw Gnolls for Bruiser Yevo at The Water Hole.','I\'ve been watching them ever since I was assigned this post here. Some of them are acting even more unreasonably than those squeaky gnomes.','I do wonder, what purpose do these serve? Some kind of tribal colour? Or maybe even more? Whatever, it doesn\'t really matter to me. Thank you, pal. These will be very useful in the outhouse.',41072,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3360,780, 1001,150,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61747, 41185);
replace into creature_involvedrelation  (id, quest) values (61747, 41185);
update quest_template set requiredraces = 434		 where entry = 41185;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41072,24292,'Mudpaw Armband',12,1,2048,1,-1,-1,1,15,-1,-1,-1,-1,4,'',0,1);

replace into creature_loot_template values
(61663,41072,-80,0,1,1,0),
(61666,41072,-80,0,1,1,0),
(61665,41072,-80,0,1,1,0);

-- Grabb Mudhide
delete from quest_template where entry = 41186;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41186,2,5536,8,3,0,0,'Grabb Mudhide','As long as there is someone leading the heckling dogs over there, my problems won\'t stop anytime soon. From what I could gather, gnoll groups usually operate under the leadership of atleast one alpha that commands his subordinates rather violently. Heh, ironic, isn\'t it?$B$BI want you to get rid of their leading brute. Saw him a couple of times, taunting us. Blasted beast, Grabb Mudhide\'s his name. He usually frequents the cave just past this pond. Cut off his paw, I need a trophy to show my wife in Sparkwater that I\'m not just slacking off on this bleak island.','Bring Bruiser Yevo at The Water Hole the paw of Grabb Mudhide.','Murlocs, gnolls, makrura. Honestly, I have no clue which ones are more irritating, but if it were up to me, I\'d drive them all off of Durotar Labor Union property.','Haha! Wonderful, this will be a perfect gift for my darling Zanny. You are in my favour, $n, I\'ll tell the other bruisers to not hit you as hard from now on.',41073,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4560,880, 1001,200,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 41074,1,41075,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61747, 41186);
replace into creature_involvedrelation  (id, quest) values (61747, 41186);
update quest_template set requiredraces = 434		 where entry = 41186;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41073,6671,'Paw of Grabb Mudhide',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41074', '4', '1', 'Dusty Cuffs', '', '16892', '1', '0', '1', '128', '32', '9', '-1', '-1', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41075', '4', '3', 'Rusty Chain Belt', '', '7563', '1', '0', '1', '288', '72', '6', '-1', '-1', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

-- Loot table: Grabb Mudhide.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 41073, -100, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4536, 0.0029, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3213, 0.0117, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4690, 0.0117, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9762, 0.0117, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4684, 0.0147, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9746, 0.0147, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4677, 0.0176, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 787, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 1210, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2070, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2407, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2408, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4408, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4540, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4560, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4565, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 5498, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 5503, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6271, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 7288, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 8177, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 8182, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4683, 0.0205, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4689, 0.0205, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9755, 0.0205, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9759, 0.0205, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9750, 0.0234, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9745, 0.0264, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9760, 0.0293, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9758, 0.0322, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6506, 0.0352, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9742, 0.0381, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9744, 0.0381, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9752, 0.0381, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9761, 0.0381, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 765, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2447, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2835, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9754, 0.044, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 15895, 0.044, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9743, 0.0469, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 9751, 0.0469, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6510, 0.0528, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6518, 0.0528, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2770, 0.06, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4665, 0.0733, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 7109, 0.0762, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6509, 0.0879, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6521, 0.0879, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3189, 0.1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6515, 0.1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3200, 0.1055, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6517, 0.1055, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6507, 0.1114, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 767, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 1438, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3190, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 7351, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6508, 0.1231, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2964, 0.126, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4658, 0.14, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4659, 0.14, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6519, 0.1553, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6520, 0.1758, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4662, 0.2, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4666, 0.2052, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2598, 0.22, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2967, 0.22, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3609, 0.22, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3641, 0.22, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2963, 0.2286, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6514, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 7350, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 805, 0.25, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 828, 0.25, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4496, 0.25, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 5571, 0.25, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 5572, 0.25, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 6513, 0.26, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3214, 0.28, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2968, 0.3, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 8181, 0.3, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 768, 0.32, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2959, 0.34, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4563, 0.38, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 4663, 0.38, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2960, 0.4, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 818, 0.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 30019, 0.5, 0, -30019, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 30021, 0.5, 0, -30021, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 774, 1.26, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 3013, 1.42, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 1181, 1.44, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 118, 2.2244, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 30017, 2.5, 0, -30017, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 159, 3.8422, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 117, 7.2272, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 781, 7.88, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61863, 2589, 29.0935, 0, 1, 2, 0);

-- Quest 'Workplace Hazard' currently rewards 75 silver upon completion, it should only reward 75 copper.
update quest_template set reworreqmoney = 75 where entry = 41174;
-- Deepmoss Lurker should cast its spell on its target instead of itself.
update creature_spells set casttarget_1 = 1, castflags_1 = 4 where entry = 180288;
-- NPC Winter Grell Trickster (Entry 61127) change scale to 0.6.
update creature_template set scale = 0.6 where entry = 61127;
-- GO Entry 1732 set to timer 900 IF below or equal 300 seconds.
update gameobject set spawntimesecsmin = 900, spawntimesecsmax = 900 where ID = 1732 and spawntimesecsmax <= 300;
-- GO Entry 1620 set to timer 900 IF below or equal 300 seconds.
update gameobject set spawntimesecsmin = 900, spawntimesecsmax = 900 where ID = 1620 and spawntimesecsmax <= 300;
-- GO Entry 1621 set to timer 900 IF below or equal 300 seconds.
update gameobject set spawntimesecsmin = 900, spawntimesecsmax = 900 where ID = 1621 and spawntimesecsmax <= 300;
-- GO Entry 1622 set to timer 1800 IF below or equal 300 seconds.
update gameobject set spawntimesecsmin = 1800, spawntimesecsmax = 1800 where ID = 1622 and spawntimesecsmax <= 300;
-- GO Entry 1623 set to timer 1800 IF below or equal 300 seconds.
update gameobject set spawntimesecsmin = 1800, spawntimesecsmax = 1800 where ID = 1622 and spawntimesecsmax <= 300;
-- GO Entry 1624 set to timer 1800 IF below or equal 300 seconds.
update gameobject set spawntimesecsmin = 1800, spawntimesecsmax = 1800 where ID = 1624 and spawntimesecsmax <= 300;
-- GO Entry 2850 set timer to 7200 IF below or equal 300 seconds.
update gameobject set spawntimesecsmin = 7200, spawntimesecsmax = 7200 where ID = 2850 and spawntimesecsmax <= 300;
-- Change scale of npc 61797 to 1.4
update creature_template set scale = 1.4 where entry = 61797;
-- Change display id of npc 61851 to 18223.
update creature_template set display_id1 = 18223 where entry = 61851;
-- Remove elite tag from npcs:
update creature_template set rank = 0 where entry in (61815,61817,61818,61819,61820,61821,61822,61823,61824,61825,61826,61827,61828,61829,61830,61831,61832,61833,61834,61835,61836,61837,61838,61839,61840,61841,61842,61848);
-- Following npcs need trainer flags assigned and tech journeyman level of profession:
delete from npc_trainer where entry = 61834;
update creature_template set npc_flags = 0 where entry = 61834;
update creature_template set trainer_type = 2 where entry in (61833,61822,61835,61836,61837,61838,61839,61840,61842);
-- 61833 should teach First Aid rank 1 and all journeyman recipes.
-- Trainer: Aelira Dawnhand.
update creature_template set npc_flags = 16 where entry = 61833;
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61833, 3279, 100, 0, 0, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61833, 3281, 100, 129, 40, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61833, 3282, 250, 129, 80, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61833, 3283, 1000, 129, 115, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61833, 7930, 5000, 129, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61833, 7936, 250, 129, 80, 0);
-- 61822 should teach Enchanting rank 1 and all journeyman recipes.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7414, 10, 0, 0, 5);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 14805, 50, 333, 10, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7422, 50, 333, 15, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7429, 100, 333, 20, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13373, 100, 333, 40, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7441, 100, 333, 45, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7459, 250, 333, 50, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7415, 500, 333, 50, 10);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7749, 250, 333, 60, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7461, 200, 333, 70, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 14808, 200, 333, 70, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7796, 360, 333, 80, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7789, 450, 333, 90, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7746, 450, 333, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7797, 900, 333, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13392, 540, 333, 105, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13422, 720, 333, 115, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7858, 900, 333, 120, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 7862, 1125, 333, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13391, 1260, 333, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13499, 1350, 333, 130, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13502, 1350, 333, 130, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13504, 1800, 333, 140, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13539, 2250, 333, 140, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13531, 2160, 333, 145, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13609, 2160, 333, 145, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13623, 2255, 333, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13627, 2250, 333, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61822, 13629, 2250, 333, 150, 0);
-- 61835 should teach Alchemy rank 1 and all journeyman recipes.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 2275, 10, 0, 0, 5);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 3184, 50, 171, 15, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 2339, 100, 171, 25, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 2340, 135, 171, 40, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 2280, 500, 171, 50, 10);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 11536, 225, 171, 50, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 2341, 250, 171, 55, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 7838, 225, 171, 80, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 3179, 450, 171, 90, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 7180, 405, 171, 90, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 7842, 900, 171, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 3458, 3600, 171, 110, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 3181, 1350, 171, 120, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 3185, 1350, 171, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 3186, 1800, 171, 130, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 7839, 900, 171, 130, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61835, 7846, 2700, 171, 140, 0);
-- 61836 should teach Tailoring rank 1 and all journeyman recipes.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3911, 10, 0, 0, 5);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2415, 22, 197, 1, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3917, 25, 197, 1, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 12118, 30, 197, 1, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2996, 45, 197, 10, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 8777, 45, 197, 10, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 12119, 45, 197, 20, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3916, 45, 197, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 7626, 45, 197, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 7627, 45, 197, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3876, 90, 197, 35, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2414, 45, 197, 40, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2416, 45, 197, 40, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 8466, 45, 197, 40, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3783, 90, 197, 45, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3912, 450, 197, 50, 10);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2419, 180, 197, 60, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3877, 180, 197, 60, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2967, 180, 197, 65, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2417, 270, 197, 70, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2418, 180, 197, 70, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3878, 270, 197, 70, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2423, 225, 197, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2966, 90, 197, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 12120, 270, 197, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3785, 180, 197, 80, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3880, 270, 197, 80, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2421, 270, 197, 85, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3879, 360, 197, 85, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 6522, 360, 197, 90, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2422, 270, 197, 95, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 2424, 180, 197, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3881, 450, 197, 110, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3882, 450, 197, 110, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3890, 225, 197, 110, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 8468, 225, 197, 110, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3874, 450, 197, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3886, 675, 197, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3884, 675, 197, 130, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 6691, 900, 197, 135, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 8759, 540, 197, 140, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 8761, 540, 197, 145, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3814, 720, 197, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61836, 3888, 675, 197, 150, 0);
-- 61837 should teach Engineering rank 1 and all journeyman recipes.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4039, 10, 0, 0, 5);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3984, 115, 202, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3985, 130, 202, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3986, 150, 202, 50, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3987, 150, 202, 50, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4040, 450, 202, 50, 10);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 7431, 150, 202, 50, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3988, 200, 202, 60, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3991, 225, 202, 65, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3992, 250, 202, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3993, 250, 202, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3994, 250, 202, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3995, 270, 202, 85, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3990, 270, 202, 90, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3997, 360, 202, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 8336, 270, 202, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3998, 378, 202, 105, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 3999, 405, 202, 105, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4000, 405, 202, 105, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4001, 427, 202, 110, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4003, 450, 202, 120, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4005, 450, 202, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4006, 450, 202, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4007, 450, 202, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4008, 270, 202, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4009, 495, 202, 130, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 6459, 360, 202, 135, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4010, 540, 202, 140, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4012, 540, 202, 145, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4013, 675, 202, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 4014, 675, 202, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61837, 9272, 450, 202, 150, 0);
-- 61838 should teach Fishing rank 1.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61838, 7733, 100, 0, 0, 0);
-- 61839 should teach Skinning rank 1.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61839, 8615, 10, 0, 0, 0);
-- 61840 should teach Leatherworking rank 1 and all journeyman recipes.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2155, 10, 0, 0, 5);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2338, 50, 165, 15, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3782, 75, 165, 25, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 9061, 100, 165, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 9063, 100, 165, 30, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3821, 50, 165, 35, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2883, 100, 165, 40, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2154, 500, 165, 50, 10);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2177, 100, 165, 55, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3784, 150, 165, 55, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2178, 100, 165, 60, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 9066, 450, 165, 70, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3786, 500, 165, 75, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3789, 500, 165, 80, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2886, 550, 165, 85, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3788, 550, 165, 85, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 9069, 600, 165, 95, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2181, 650, 165, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2884, 650, 165, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3819, 650, 165, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 20651, 500, 165, 100, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2179, 1000, 165, 110, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 7146, 1000, 165, 115, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 2180, 1400, 165, 120, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 9075, 1400, 165, 120, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3792, 1500, 165, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 9150, 1500, 165, 125, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3793, 1200, 165, 130, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3794, 1500, 165, 135, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3790, 1800, 165, 145, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3781, 2000, 165, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3787, 2000, 165, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 3820, 1800, 165, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 9209, 2000, 165, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 9210, 2000, 165, 150, 0);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61840, 20652, 1800, 165, 150, 0);
-- 61842 should teach Herbalism rank 1.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61842, 2372, 10, 0, 0, 0);

-- Solnius Loottable Revamp:
-- Aspect of Seradane is in the linked SQL file, remember to give it an item ID before applying.
-- emerald sanctum buffs
-- normal drops
update item_template set armor = 118, item_level = 78, spellid_1 = 28264 where entry = 61206; -- Robe of the Dreamways
update item_template set armor = 712, item_level = 78, stat_value1 = 18, stat_value2 = 16 where entry = 61207; -- Jadestone Helmet
update item_template set spellid_1 = 26228, item_level = 78, spellid_4 = 21363 where entry = 61208; -- Staff of the Dreamer
update item_template set spellid_1 = 18054, item_level = 78 where entry = 61209; -- Shard of Nightmare
update item_template set spellid_1 = 15807, item_level = 78 where entry = 61210; -- Veil of Nightmare
update item_template set armor = 81, spellid_3 = 9398, item_level = 78, spelltrigger_3 = 1, stat_value2 = 17 where entry = 61211; -- Sandals of Lucidity
update item_template set armor = 96, item_level = 78, stat_value1 = 15, stat_value3 = 14 where entry = 61212; -- Sanctum Bark Wraps
update item_template set armor = 309, item_level = 78, stat_value1 = 22 where entry = 61213; -- Talonwind Gauntlets
update item_template set item_level = 78, spellid_1 = 14127 where entry = 61214; -- Mantle of the Wakener
update item_template set dmg_min1 = 76, dmg_max1 = 140, item_level = 78, stat_value1 = 11 where entry = 61237; -- Mallet of the Awakening
update item_template set armor = 2929, block = 55, item_level = 78, stat_value1 = 12, stat_value2 = 12, stat_value3 = 12, stat_value4 = 12, stat_value5 = 12 where entry = 61238; -- Scaleshield of Emerald Flight
update item_template set armor = 432, item_level = 78, stat_value4 = 9, stat_type4 = 4 where entry = 61239; -- Ancient Jade Leggings
update item_template set dmg_min1 = 92, dmg_max1 = 171, item_level = 78, stat_value1 = 9 where entry = 61448; -- Axe of Dormant Slumber
update item_template set item_level = 78, spellid_2 = 18031, spellid_3 = 18384 where entry = 61205; -- Ring of Nature's Duality
update item_template set item_level = 78 where entry = 61455; -- Idol of the Emerald Rot
update item_template set item_level = 78 where entry = 61203; -- Libram of the Dreamguard
update item_template set item_level = 78 where entry = 61204; -- Totem of the Stonebreaker
-- hardmode drops
update item_template set item_level = 81, nature_res = 12, spellid_3 = 14127, spelltrigger_3 = 1, spellid_2 = 23727 where entry = 61522; -- Choker of the Emerald Lord
update item_template set dmg_min1 = 79, dmg_max1 = 147, item_level = 81 where entry = 61523; -- Crystal Sword of the Blossom
update item_template set item_level = 81, armor = 237, stat_value1 = 21, stat_value2 = 20, stat_value3 = 25, max_durability = 120 where entry = 61524; -- Naturecaller's Tunic
update item_template set dmg_min1 = 103, dmg_max1 = 191, item_level = 81, stat_value1 = 8 where entry = 61525; -- Nature's Call
update item_template set armor = 3035, block = 57, item_level = 81, stat_value2 = 13, spellid_3 = 22912 where entry = 61526; -- Jadestone Protector
update item_template set item_level = 81, stat_value1 = 11 where entry = 61527; -- Breath of Solnius
-- claw of erennius quest rewards
update item_template set dmg_min1 = 158, dmg_max1 = 294, item_level = 74, stat_value1 = 39, spellid_1 = 45439 where entry = 61650; -- Jadestone Skewer
update item_template set item_level = 74, stat_value2 = 10, stat_value3 = 13, spellid_1 = 23264 where entry = 61651; -- Jadestone Mallet
update item_template set dmg_min1 = 94, dmg_max1 = 175, item_level = 74, spellid_2 = 14027 where entry = 61740; -- Claw of Senthos
-- new solnius drops
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (41076, 'Aspect of Seradane', 'replace proc with custom weaker version when added', 2, 8, 1, 4, 67768, 1, 60, 1, -1, -1, 994770, 198954, 17, 1, 0, 0, 1, 1, 0, 181, 335, 3300, 0, 0, 120, 0, 0, 0, 78, 0, 65, 0, 0, 0, 0, 0, 0, 3, 25, 45531, 1, 0, 0, 0, 0, 0, 16921, 2, 0, 1.6, 0, 0, -1, 0, 0, 0);

-- Remove all items from the Solnius loottable and replace it with the loot distribution, loot groups, amounts and drop chances below:
delete from creature_loot_template where entry = 60748;
-- Loot Group 1:
-- 1 Elven Spirit Claws, 10% chance
-- 1 Six Demon Bag, 10% chance
-- 1 Cow King's Hide, 10% chance
-- 1 Basilisk Bone, 10% chance
-- 1 Blanchard's Stout, 10% chance
-- 1 Wand of Allistarj, 10% chance
-- 1 Wyrmslayer Spaulders, 10% chance
-- 1 Horizon Choker, 10% chance
-- 1 Elven Chain Boots, 10% chance
-- 1 Guttbuster, 10% chance
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30044, 2564 , 0, 1, 1, 1, 0),
(30044, 7734 , 0, 1, 1, 1, 0),
(30044, 13009, 0, 1, 1, 1, 0),
(30044, 13030, 0, 1, 1, 1, 0),
(30044, 13046, 0, 1, 1, 1, 0),
(30044, 13065, 0, 1, 1, 1, 0),
(30044, 13066, 0, 1, 1, 1, 0),
(30044, 13085, 0, 1, 1, 1, 0),
(30044, 13125, 0, 1, 1, 1, 0),
(30044, 13139, 0, 1, 1, 1, 0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 30044, 100, 1, -30044, 1, 0);
-- Loot Group 2:
-- 1 Blue Sack of Gems, 20% chance.
-- 1 Gray Sack of Gems, 20% chance.
-- 1 Green Sack of Gems, 20% chance.
-- 1 Yellow Sack of Gems, 20% chance.
-- 1 Red Sack of Gems, 20% chance.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 17962, 20, 2, 1, 1, 0),
(60748, 17964, 20, 2, 1, 1, 0),
(60748, 17963, 20, 2, 1, 1, 0),
(60748, 17965, 20, 2, 1, 1, 0),
(60748, 17969, 20, 2, 1, 1, 0);
-- Loot Group 3:
-- 1 Dreamscale, 100% chance.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 20381, 100, 3, 1, 1, 0);
-- Loot Group 4:
-- 1 Glyph of the Dreamkin, 15% chance
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 51361, 15, 4, 1, 1, 0);
-- Loot Group 5:
-- 1 Bag of the Vast Conscious, 25% chance
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 61196, 25, 5, 1, 1, 0);
-- Loot Group 6:
-- 1 Smoldering Dream Essence, 35% chance
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 61444, 35, 6, 1, 1, 0);
-- Loot Group 7:
-- 1 Fading Dream Shard, 100% chance.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 61197, 100, 7, 1, 1, 0);
-- Loot Group 8:
-- 1 Robe of the Dreamways, 16,7% chance.
-- 1 Staff of the Dreamer, 16,7% chance.
-- 1 Sandals of Lucidity, 16,7% chance.
-- 1 Mantle of the Wakener, 16,7% chance.
-- 1 Ring of Nature's Duality, 16,7% chance.
-- 1 Shard of Nightmare, 16,7% chance.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30596, 61206, 0, 8, 1, 1, 0),
(30596, 61208, 0, 8, 1, 1, 0),
(30596, 61211, 0, 8, 1, 1, 0),
(30596, 61214, 0, 8, 1, 1, 0),
(30596, 61205, 0, 8, 1, 1, 0),
(30596, 61209, 0, 8, 1, 1, 0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 30596, 100, 8, -30596, 1, 0);
-- Loot Group 9:
-- 1 Ancient Jade Leggings, 16,7% chance.
-- 1 Axe of Dormant Slumber, 16,7% chance.
-- 1 Sanctum Bark Wraps, 16,7% chance.
-- 1 Talonwind Gauntlets, 16,7% chance.
-- 1 Veil of Nightmare, 16,7% chance.
-- 1 Jadestone Helmet, 16,7% chance.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30597, 61239, 0, 9, 1, 1, 0),
(30597, 61448, 0, 9, 1, 1, 0),
(30597, 61212, 0, 9, 1, 1, 0),
(30597, 61213, 0, 9, 1, 1, 0),
(30597, 61210, 0, 9, 1, 1, 0),
(30597, 61207, 0, 9, 1, 1, 0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 30597, 100, 9, -30597, 1, 0);
-- Loot Group 10:
-- 1 Libram of the Dreamguard, 16,7% chance.
-- 1 Totem of the Stonebreaker, 16,7% chance.
-- 1 Idol of the Emerald Rot, 16,7% chance.
-- 1 Scaleshield of Emerald Flight, 16,7% chance.
-- 1 Mallet of the Awakening, 16,7% chance.
-- 1 Aspect of Seradane, 16,7% chance.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30598, 61203, 0, 10, 1, 1, 0),
(30598, 61204, 0, 10, 1, 1, 0),
(30598, 61455, 0, 10, 1, 1, 0),
(30598, 61238, 0, 10, 1, 1, 0),
(30598, 61237, 0, 10, 1, 1, 0),
(30598, 41076, 0, 10, 1, 1, 0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 30598, 100, 10, -30598, 1, 0);
-- Loot Group 11:
-- 1 Head of Solnius, 100% chance
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 61215, 100, 11, 1, 1, 0);
-- Loot Group 12:
-- 1 Recipe: Elixir of Greater Nature Power, 4% chance.
-- 1 Enchant Chest - Mighty Mana, 4% chance.
-- 1 Plans: Dreamsteel Mantle, 4% chance.
-- 1 Pattern: Dreamthread Mantle, 4% chance.
-- 1 Pattern: Dreamhide Mantle, 4% chance.
-- 1 Formula: Enchant Gloves - Nature Power, 4% chance.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 61218, 4, 12, 1, 1, 0),
(60748, 61217, 4, 12, 1, 1, 0),
(60748, 61424, 4, 12, 1, 1, 0),
(60748, 61432, 4, 12, 1, 1, 0),
(60748, 61428, 4, 12, 1, 1, 0),
(60748, 70000, 4, 12, 1, 1, 0);
-- Loot Group 13:
-- 1 Formula: Eternal Dreamstone Shard, 1% chance
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 61733, 1, 13, 1, 1, 0);

-- Favor of Erennius Changes:
-- Make the Loot Group 2's Fading Dream Shard 100% chance to drop instead of 48%.
update gameobject_loot_template set ChanceOrQuestChance = 100 where entry = 2020042 and item = 61197;
-- Add a new Loot Group 3 with 1 Bag of the Vast Conscious with 100% chance to drop.
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2020042, 61196, 100, 2, 1, 1, 0);

-- C'thun hood for C'thun:
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, stat_type2, stat_value2, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, random_property, required_reputation_faction, required_reputation_rank) values (41077, 'Yshgo\'lar, Cowl of Fanatical Devotion', 'You can feel the tendrils boring into the back of your head.', 4, 1, 7, 4, 67818, 1, 60, 1, -1, -1, 404848, 101212, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 60, 108, 0, 0, 88, 0, 65, 0, 0, 0, 0, -20, 0, 5, 22, 6, 17, 17367, 1, 0, 0, -1, 0, -1, 18382, 1, 0, 0, -1, 0, -1, 23729, 1, 0, 0, -1, 0, -1, 0, 0, 0);
-- Add this item to Loot Group 3 with a 8% chance to NPC ID 15727.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(15727, 41077, 8, 3, 1, 1, 0);

-- Apply new fix spells.
update item_template set spellid_1 = 45076, spellppmrate_1 = 0.7 where entry = 40080; -- Thunderforge Lance
update item_template set spellid_1 = 45077, spellcooldown_1 = 900000, description = '' where entry = 41060; -- Refined Plague Strain
update item_template set spellid_1 = 45075 where entry = 62008; -- Thornpod
update item_template set stat_value2 = 0, spellid_1 = 23729 where entry = 61564; -- Chromie's Broken Pocket Watch
update item_template set fire_res = 10 where entry = 51265; -- Blast Shield