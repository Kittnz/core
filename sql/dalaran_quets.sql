-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

delete from quest_template where entry = 40122;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,40122,2,16,52,40,0,0,'The Azshara Dampening','I recieved word from a colleague within Azshara quite some time ago about a powerful energy that is dampening magic within the region. If such a threat could pose itself close to Dalaran then much of our spells, magic, and protections would be nullified.\n\nI would like you to travel there, assess if this will be a threat to Dalaran itself, and to see if action is needed to be done. You can find Magus Bromley located just south of the Ruins of Eldarath camped upon the ridgeline, seek him out, and get answers.','Head to Magus Bromley in Azshara.','Hello $r, it is good to see a friendly face in such a worn landscape.','Ahh, so Ansirem sent you, good, I forwarded a letter to him quite a while ago and it seems that this magical interference has grown ever more potent.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2175,61,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2543,40122);
replace into creature_involvedrelation (id, quest) values (91350,40122);


delete from quest_template where entry = 40123;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40122,40123,2,16,52,40,0,0,'The Dampening Mystery','My studies have been ongoing for the last few months, and from what I can tell the energy within the region has been slowly fading away. Even my own magic hasn\'t been as potent! If whatever is causing this is able to harness even more power, this could be quite damaging for magic across the entire continent, and potentially even Dalaran in the future!\n\nI have a few leads that I want to look into, and the first is the ley-shards that occupy the once great city of Eldarath. Just north of us are the ruins of the once mighty city, travel there and look for shards of its ley-energy. Gather five, and bring them to me for study to see if their power is waned.','Gather 5 Eldarath Ley-Shard\'s and bring them to Magus Bromley.','Have you gathered the Ley-Shard\'s yet?','Splendid, magnificent infact! I shall begin my testing at once.',81324,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5100,61,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91350, 40123);
replace into creature_involvedrelation (id, quest) values (91350, 40123);

delete from quest_template where entry = 40124;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, objectivetext2) values (40123,40124,2,16,52,40,0,0,'Interfering Naga','Even the Ley-Shard\'s of the city of Eldarath have their energies compromised. This could be the work of the Naga that have encroached and invaded from the ocean depths. I would not put it past the beasts, as savage as they are, for attempting to claim dominion over the landscape.\n\nWe must look into this matter further before claiming we have gotten this solved. I have prepared a scroll of dispelling, use it upon the Spitelash Shrine in their clutches. If they are behind this dampening, this should solve the problem. While you\'re there, slay their sirens as well, they are the ones who wield a crude, and foul magic.','Slay 15 Spitelash Siren\'s and dispell the magic at the Spitelash Shrine.','Have the Naga been dealt with?','It has been done? You have dispelled the shrine? Let us see just how much of an effect this has had on our magics, let us hope this is done, once and for all.',0,0,0,0,0,0,0,0,6195,15,60312,1,0,0,0,0,60113,1,0,6000,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Use Bromley\'s Dispelling Scroll near Spitelash Shrine');

replace into creature_questrelation (id, quest) values (91350, 40124);
replace into creature_involvedrelation (id, quest) values (91350, 40124);

delete from quest_template where entry = 40125;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40124,40125,2,16,52,40,0,0,'Out of Options','It would appear I have run out of ideas in what may be causing this. I hate to admit intellectual defeat, but I must turn to another for an answer. Archmage Ansirem Runeweaver is well versed in more then I know, I need you to travel to him with a crate of the Ley-Shard\'s you gathered earlier.\n\nIf there is any clues, or magic that lingers upon them, perhaps he will have some answers for them, and know their origination to help me here in Azshara. Please, take these coins for the journey, Dalaran is but far away, and I will assist in what way I can.','Travel to Dalaran, and deliver the Crate of Ley-Shard\'s to Archmage Ansirem Runeweaver.','What brings you to Dalaran?','Magus Bromley sent you? Well, it is good to hear from him at the least, if he desires these shard\'s to be examined I will begin at once.',60114,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60114,1,10000,2150,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (91350,40125);
replace into creature_involvedrelation (id, quest) values (2543,40125);

delete from quest_template where entry = 40126;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (40125,40126,2,16,52,40,0,0,'Discovering the Source','<The Archmage would take his time in studying the magic>.\n\nHmm, I can hardly believe this, why would they... <Ansirem mumbles quietly to himself>.\n\n$N, what we are dealing with is much more serious then I had originally thought. The magic remnants upon the Ley-Shard\'s are that of a draconic origin. What the Dragonflights would want, or need from dampening magic in Azshara is a great mystery but at the least we now have a source.\n\nI have prepared this letter for Bromley, take it to him, and let him know that the Blue Dragonflight is responsible.','Take Archmage Ansirem\'s Letter to Magus Bromley in Azshara.','So, you return, what did Ansirem say about the Ley-Shard\'s?','<Magus Bromley begins to read the letter>.\n\nOh... Well, things have gotten a whole lot more complicated if this is the case.',60115,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60115,1,0,2150,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2543,40126);
replace into creature_involvedrelation (id, quest) values (91350,40126);

delete from quest_template where entry = 40127;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, type, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, objectivetext2) values (40126,40127,2,16,52,40,1,0,0,'The Dampening Must End','It seems as though there is only one thing left. I cannot believe the Blue Dragonflight would be responsible for such a thing, if their enemy is magic then that means their enemy is Dalaran. We cannot allow their plans to take fruition and must deal with them now and with due haste in our actions.\n\nJust south of here is Lake Mennar it is where the Blue Dragonflight has gathered, the cause of which was unknown until now. Head there, slay their Magelords, and kill the leader, Lieutenant Azsalus.\n\nI would advise, the Blue Dragonflight is not a foe to be under-estimated, find a band of mercenaries, or like minded heroes. You will need them to battle with the dragonkin, or to stand a chance.','Slay 3 Draconic Magelord\'s and Kill Lieutenant Azsalus.','Have you ended the dampening upon Azshara?','It is done? Truly?\n\nYou have my thanks hero, your name shall go down with glory in Dalaran, a defender of magic is truly one that stands for virtue, please, take one of these artifacts, it is the least I can offer. May it serve you well.',0,0,0,0,0,0,0,0,91283,1,6129,3,0,0,0,0,0,0,0,7150,61,500,0,0,0,0,0,0,10157,10157,0,0,0,0,0,0,0,0,0,60116,1,60117,1,60118,1,0,0,'');

replace into creature_questrelation (id, quest) values (91350, 40127);
replace into creature_involvedrelation (id, quest) values (91350, 40127);

delete from creature_template where entry = 60312;
replace into creature_template (entry, name, display_id1) values (60312 , 'quest_40124_dummy_triger', 328);

delete from gameobject_template where entry = 2010801;
replace into gameobject_template values
(2010801, 0, 0, 26036, 'Spitelash Shrine', 0, 32, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from item_template where entry = 60113;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, spellid_1, spelltrigger_1) values (60113,11161,'Bromley\'s Dispelling Scroll',0,1,1,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,0);

delete from item_template where entry = 60114;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description) values (60114,7913,'Crate of Ley-Shard\'s',12,1,1,1,-1,-1,1,1,-1,-1,-1,-1,4,'');

delete from item_template where entry = 60115;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, page_text, page_material) values (60115,3033,'Archmage Ansirem\'s Letter',12,1,1,1,-1,-1,1,1,-1,-1,-1,-1,4,50500,1);

 delete from item_template where entry = 60116;
 replace into item_template values
 ('60116', '0', '4', '1', 'Dalaran Wizard\'s Hat', '', '26309', '3', '0', '1', '50984', '12746', '1', '-1', '-1', '57',
 '', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '23', '6', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '66', '0', '0', '0',
 '0', '0', '5', '9345', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
 delete from item_template where entry = 60117;
 replace into item_template values
 ('60117', '0', '4', '4', 'Cuirass of the Kirin-Eye', '', '4085', '3', '0', '1', '71364', '17841', '5', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '24', '7', '12',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '612', '0', '0', '0',
 '0', '0', '5', '9140', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '135', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);
 
 delete from item_template where entry = 60118;
 replace into item_template values
 ('60118', '0', '4', '3', 'Kirin Tor Watch Grips', '', '30720', '3', '0', '1', '59948', '14987', '10', '-1', '-1', '57',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '5', '10',
 '7', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '204', '0', '0', '0',
 '0', '0', '5', '20732', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '40', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);

delete from gameobject where id = 2010801;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2010801, 1, 3471.790, -5168.149, 85.351, 4.68);

delete from gameobject_loot_template where entry = 1000251;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (1000251,81324,-100,1,1,0,10);

delete from page_text where entry = 50500;
replace into page_text (entry, text, next_page) value (50500,'To Magus Bromley\n\nThe Ley-Shard\'s you sent me were magnificent to behold. The way in which the Highborne have channeled magic has always been interesting to me, and shall advance the research of Dalaran well.\n\nThough, that is not why you have sent them. After some studying of the Ley-Shard\'s I have found traces of a foreign magic lingering upon the crystals and exhausting their magical potency. This all but confirms there is tampering going on within the region of Azshara as you have thought.',50501);

delete from page_text where entry = 50501;
replace into page_text (entry, text, next_page) value (50501,'Whilst, I have given you good news, I must also deliver bad. The foreign magic is that of a Draconic nature, we have many examples and studies done, so I am completely certain. The only group operating in that region would be the Blue Dragonflight. The reason they would have to do so I cannot give you, but it is their magic lingering upon the Shard\'s. I wish you luck in resolving this, and advise you look for outside help, rather then tackling the Dragonflight on your own.\n\nA friend, Archmage Ansirem Runeweaver of Dalaran.',0);

update creature_template set script_name = 'npc_magus_bromley' where entry = 91350;