-- Mannoroc Demonic Sigil
delete from quest_template where entry = 40407;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40407,2,15,39,32,0,0,'Mannoroc Demonic Sigil','It has been years since the invasion of the Burning Legion during the Third War, and while they have been defeated, they still hold much sway upon Azeroth. Demonic magic is extremely potent, and it is something I have been tasked with studying.\n\nIn the region of Desolace within an area known as Mannoroc Coven there is quite a sizeable demonic presence. It is there that I ask of you to acquire a Mannoroc Demonic Sigil, finding one may be rare, but if we are to have a chance to defeat the Burning Legion, then we must know all that we can.\n\nSlay them, and bring me one of their sigils for study.','Acquire a Mannoroc Demonic Sigil for Magus Hallister at Theramore Isle in Dustwallow Marsh.','Have you found a sigil?','The power coming from this sigil is quite strong, and will prove useful for study, thanks again for everything you have done $C, I will make sure it is put to good use in defense of the realm.',60589,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2650,108,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60590,1,60591,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60731, 40407);
replace into creature_involvedrelation (id, quest) values (60731, 40407);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60589,34261,'Mannoroc Demonic Sigil',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60590', '4', '1', 'Isle Watcher\'s Sash', '', '28730', '2', '0', '1', '13096', '3274', '6', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '31', '0', '0', '0',
 '0', '0', '0', '14521', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60591', '4', '3', 'Hallister\'s Cuffs', '', '28596', '2', '0', '1', '18752', '4688', '9', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '109', '0', '0', '0',
 '0', '0', '0', '9141', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '35', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO creature_loot_template VALUES
(4681, 60589, -10, 1, 1, 1, 0),
(4676, 60589, -9, 1, 1, 1, 0),
(4677, 60589, -11, 0, 1, 1, 0),
(4679, 60589, -11, 0, 1, 1, 0),
(4668, 60589, -9, 0, 1, 1, 0),
(4680, 60589, -13, 0, 1, 1, 0),
(4684, 60589, -13, 0, 1, 1, 0),
(4685, 60589, -13, 0, 1, 1, 0);

-- Juicy Darkfang Legs!
delete from quest_template where entry = 40408;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40408,2,15,38,33,512,0,'Juicy Darkfang Legs!','Say, since you stopped by how about we have ourselves a nice meal, it\'s been a bit since I\'ve been able to enjoy my special recipe! I damn near hunted all the Darkfang in the area, so you\'ll have to venture further out into the swamp to go and get me some of their juicy legs!\n\nFive should do, the Darkfang spiders are practically everywhere in the swamp, but especially so around the Quagmire down in the south west.\n\nOh, and make sure they\'re extra juicy, I won\'t take no dang-nabbit unjuicy spider legs now, yahear?','Gather 5 Extra Juicy Darkfang Legs for "Swamp Eye" Jarl at Swamplight Manor in Dustwallow Marsh.','Ye wrangle up them spider legs? Remember to get the extra juicy ones.','Why look at this here, you out done yourself, truly! I haven\'t seen some dang-nab spider legs this juicy in a few years now, they\'ve been getting extra fat down there!\n\nNow we can have a real good meal!',60592,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,108,150,0,0,0,0,0,0,0,0,0,60593,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (4792, 40408);
replace into creature_involvedrelation (id, quest) values (4792, 40408);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60592,5825,'Extra Juicy Darkfang Leg',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60593', '0', '0', 'Jarl\'s Juicy Jumbly', 'The smell is surprisingly good.', '5825', '1', '0', '1', '436', '109', '0', '-1', '-1', '0',
 '35', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18230', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0',
 '0', '1', NULL);

REPLACE INTO creature_loot_template VALUES
(4411, 60592, -50, 0, 1, 1, 0),
(4412, 60592, -55, 0, 1, 1, 0),
(4413, 60592, -50, 0, 1, 1, 0),
(4414, 60592, -70, 0, 1, 1, 0),
(4415, 60592, -100, 0, 1, 1, 0);

-- The Mirefin Nuisance
delete from quest_template where entry = 40409;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40409,2,15,38,33,0,0,'The Mirefin Nuisance','I\'ve lived at this lighthouse for a long time now, and if there is anything that has bothered me most it\'s those damned Mirefin. They often venture deep out within the ocean and upon the shorelines to the north, but as of recently they have come down here if only to drive me mad and steal my things!\n\nThe Theramore Guard cannot have someone staying here full time, especially with us being seperated by a boat ride.\n\nI ask of you to rid me of their annoyance, and for good. I feel like its only a matter of time before they do something more serious. You can find them all along the coast up to the north and on small little islands. Bring me twenty of their claws and thin out their numbers so they think twice before coming so far south.','Collect 20 Mirefin Claws for Old Bryan at the Theramore Lighthouse.','I advise you to be careful when you\'re fighting them, they tend to stick together.','Well, I cannot thank you enough for what you\'ve done, with less murloc around it means I can do my job in peace without having to constantly watch the waterline.',60594,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2450,108,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60728, 40409);
replace into creature_involvedrelation (id, quest) values (60728, 40409);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60594,1499,'Mirefin Claw',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

REPLACE INTO creature_loot_template VALUES
(4358, 60594, -90, 0, 1, 1, 0),
(4359, 60594, -90, 0, 1, 1, 0),
(4360, 60594, -90, 0, 1, 1, 0),
(4361, 60594, -90, 0, 1, 1, 0),
(4362, 60594, -90, 0, 1, 1, 0),
(4363, 60594, -90, 0, 1, 1, 0);

-- Stolen Oil
delete from quest_template where entry = 40410;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40410,2,15,38,33,0,0,'Stolen Oil','It was about a week ago now when the damned Mirefin raided my Lighthouse and got off with all manner of supply I had been building up. A few weeks of food rations and some tools, but most importantly oil for the Lighthouse!\n\nThe Lighthouse in Theramore runs from oil collected in other parts of the world, and of which we only get a shipment in at the start of every month, without it, the Lighthouse will die out. I do not need to tell you how vital this Lighthouse is especially for a port city like Theramore.\n\nI ask of you to gather it back from the Mirefin Murlocs, no doubt they have it stashed among their hovels up to the north west, make sure to check the isles there, they practically infest them.','Gather the Lighthouse Oil Barrel for Old Bryan at the Theramore Lighthouse.','Every minute that burns away is a minute less that we have.','Ah, this is it, and it\'s still sealed, I would have expected those dumb creatures to pry it open, or use the oil to make a big fire or something, it seems they couldn\'t figure it out, or hadn\'t gotten around to it yet.\n\nThanks again for the help, you may have saved my hide here!',60595,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2650,108,250,0,0,0,0,0,0,0,0,0,60596,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60728, 40410);
replace into creature_involvedrelation (id, quest) values (60728, 40410);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60595,8381,'Lighthouse Oil Barrel',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010888, 3, 23078, 'Oil Barrel', 0, 4, 1.5, 43, 2010888, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010888;
replace into gameobject_loot_template values
(2010888,60595,-100,0,1,1,0);

replace into item_template values
 ('60596', '4', '2', 'Lighthouse Keeper Boots', '', '11373', '2', '0', '1', '18432', '4608', '8', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '6', '4',
 '4', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '77', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '45', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

-- The Good Snuff
delete from quest_template where entry = 40411;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40411,2,15,38,33,0,0,'The Good Snuff','Oh, how it is to be docked and not sailing the vast, and boring sea for months on end. All this time to myself and some dry land to stand upon, I just wish I had one thing.\n\nI have a contact out in Steamwheedle Port that has been my hookup for a while now, and if you wouldn\'t mind picking up a special \'package\' for me, it would be much appreciated!\n\nAt the port there is a goblin named Jabbey, he can almost get you anything you need, that is if you have the coin for his \'premium wares\' he calls it. Head out there, and pick up a package for \'Groy\' he\'ll know what I\'m looking for.','Pick up the special package and return it to Privateer Groy at Theramore Isle in Dustwallow Marsh.','I\'ve been waiting patiently, have you gotten it yet?','<Privateer Groy would practically snatch it from your hands, a wide grin upon his face.>\n\nAhh, its been a while, a long while, I suppose you want something in return for running all that way, here, some coin to cover the trip, if I ever need more, I\'ll let you know, heh.',60597,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1650,108,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (2616, 40411);
replace into creature_involvedrelation (id, quest) values (2616, 40411);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60597,2480,'\'The Good Snuff\'',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_jabbey' where entry = 8139;

-- Delivery Overdue
delete from quest_template where entry = 40412;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40412,2,15,35,30,0,0,'Delivery Overdue','You wouldn\'t mind running a delivery would you? I got one that\'s a bit overdue, and that\'s mostly because my main delivery guy got reassigned back to Stormwind.\n\nIf you don\'t mind a bit of dangerous trekking, I got a crate of goods that needs to be sent to Jarl out at Swamplight Manor. It shouldn\'t be too hard to find, just follow the road northwest out of Theramore, keep going for a while after Sentry Point Tower until you see a small dirt pathway that leads to the right.\n\nOnce you see it, you\'ll see it, Jarl usually leaves a bunch of torches lit, just- don\'t startle him, the guys a bit... Quirky.','Deliver Jarl\'s Package to "Swamp Eye" Jarl at Swamplight Manor in Dustwallow Marsh.','Can I help you?','What\'s this? For me?\n\nI\'ve been waiting a few weeks for this, didn\'t think it was even coming anymore! I don\'t go to Theramore much, but that yokel Lorman almost made me march down there I been waitin\' so long.',60598,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60598,1,0,850,108,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60733, 40412);
replace into creature_involvedrelation (id, quest) values (4792, 40412);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60598,7926,'Jarl\'s Package',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'"Smells awfully foul."',0);

-- Old Bryan's Food Delivery
delete from quest_template where entry = 40413;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40413,2,15,35,30,0,0,'Old Bryan\'s Food Delivery','Hey there, I\'m in need of assistance if you don\'t mind giving some. I have a delivery I need run to the Theramore Lighthouse to Old Bryan that resides there. His food delivery has run a little late and I need it to get to him as soon as possible.\n\nYou can find the Theramore Lighthouse just off the coast to the north east, the bright shining light should be enough to guide you.','Bring Bryan\'s Food Delivery to Old Bryan at the Theramore Lighthouse in Dustwallow Marsh.','Yes?','Ahh, about time, I hate having to ferry to Theramore for a meal!',60599,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60599,1,0,450,108,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60733, 40413);
replace into creature_involvedrelation (id, quest) values (60728, 40413);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60599,8928,'Bryan\'s Food Delivery',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Marglum Blood-eye
delete from quest_template where entry = 40414;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40414,2,15,40,35,0,0,'Marglum Blood-eye','The local murlocs are becoming more, and more of a threat as time continues, they are no longer confined to just the depths or the shore, and are often seen traveling inland, or harassing locals.\n\nThey are led by a large, foul beast named Marglum Blood-eye, a hulking abomination of a murloc that patrols the coastline to the northern-western shoreline.\n\nFind him, and bring his head to me, and I will make sure you are rewarded.','Find Marglum Blood-eye along coast north west of Theramore and bring his head to Sergeant Terresa on Theramore Isle.','Have you slain the foul monster?','This may not be the end of the murloc threat, but this will no doubt slow them down. Thanks again, as promised.',60600,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,2650,108,150,0,0,0,0,0,0,0,0,0,60601,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60732, 40414);
replace into creature_involvedrelation (id, quest) values (60732, 40414);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60600,9585,'Head of Marglum Blood-eye',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60601', '2', '4', 'The Murloc Clubber', '', '8287', '2', '0', '1', '73052', '18263', '13', '-1', '-1', '45',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '47', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '75', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO creature_loot_template VALUES
(60714, 60600, -100, 0, 1, 1, 0),
(60714, 1477, 0.272, 0, 1, 1, 0),
(60714, 1529, 0.016, 0, 1, 1, 0),
(60714, 1708, 2.591, 0, 1, 1, 0),
(60714, 1710, 1.393, 0, 1, 1, 0),
(60714, 1725, 0.039, 0, 1, 1, 0),
(60714, 2289, 0.218, 0, 1, 1, 0),
(60714, 3827, 0.801, 0, 1, 1, 0),
(60714, 3831, 0.008, 0, 1, 1, 0),
(60714, 3832, 0.008, 0, 1, 1, 0),
(60714, 3864, 0.093, 0, 1, 1, 0),
(60714, 3869, 0.008, 0, 1, 1, 0),
(60714, 3873, 0.008, 0, 1, 1, 0),
(60714, 3874, 0.008, 0, 1, 1, 0),
(60714, 4414, 0.008, 0, 1, 1, 0),
(60714, 4416, 0.008, 0, 1, 1, 0),
(60714, 4421, 0.156, 0, 1, 1, 0),
(60714, 4424, 0.148, 0, 1, 1, 0),
(60714, 4614, 0.054, 0, 1, 1, 0),
(60714, 4636, 0.039, 0, 1, 1, 0),
(60714, 5785, 12.286, 0, 1, 1, 0),
(60714, 5847, -33, 0, 1, 1, 0),
(60714, 6045, 0.008, 0, 1, 1, 0),
(60714, 6362, 4.583, 0, 1, 3, 0),
(60714, 7084, 0.008, 0, 1, 1, 0),
(60714, 7450, 0.008, 0, 1, 1, 0),
(60714, 7453, 0.023, 0, 1, 1, 0),
(60714, 7909, 0.016, 0, 1, 1, 0),
(60714, 7992, 0.016, 0, 1, 1, 0),
(60714, 8029, 0.31, 0, 1, 1, 4),
(60714, 10301, 0.008, 0, 1, 1, 0),
(60714, 11167, 0.008, 0, 1, 1, 0),
(60714, 17057, 28.929, 0, 1, 1, 0),
(60714, 17058, 29.567, 0, 1, 1, 0),
(60714, 30025, 0.5, 0, -30025, 1, 0),
(60714, 30026, 0.01, 0, -30026, 1, 0),
(60714, 30031, 0.5, 0, -30031, 1, 0),
(60714, 30032, 0.01, 0, -30032, 1, 0),
(60714, 30033, 0.5, 0, -30033, 1, 0),
(60714, 30034, 0.01, 0, -30034, 1, 0),
(60714, 30039, 2.5, 0, -30039, 1, 0),
(60714, 30040, 2.5, 0, -30040, 1, 0);

-- Reports of Dustwallow
delete from quest_template where entry = 40415;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40415,2,15,37,32,0,0,'Reports of Dustwallow','Hey there, you look tough enough to handle yourself, and Theramore is in need of some assistance. My last runner was ambushed on the roadway, and suffered a rather grevious wound. If we want to keep our defence of the roadway through Dustwallow then we need to remain steadfast.\n\nAs such, I haven\'t received the weekly reports from both Sentry Point, and North Point.\n\nI want you to report to Captain Wallace Cross at Sentry Point Tower, and Captain Harker at North Point Tower, and bring their reports back to me.','Collect the Sentry Point Report, and the North Point Report for Colonel Breen at Theramore Isle in Dustwallow Marsh.','Have you gotten those reports yet?','Well, thanks for gathering these reports, its good to hear news from the frontier, even if some of it is bad, take this coin as thanks for the work.',60602,1,60603,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,850,108,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60727, 40415);
replace into creature_involvedrelation (id, quest) values (60727, 40415);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60602,3048,'Sentry Point Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50534),
(60603,5646,'North Point Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50535);

REPLACE INTO page_text VALUES
(50534, 'Situation report for Sentry Point Tower\n\nLocal wildlife has been a nuisance, but we are managing fine, the Mirefin along the coast may soon cause trouble for Theramore given the movements we have been seeing.\n\nMorale is high, supplies are high.\n\nCaptain Wallace Cross.', 0),
(50535, 'Situation report for North Point Tower\n\nWe have lost one man, and had three more get wounded by the local Bloodfen Raptor\'s that have been stalking the northern wilds.\n\nWe have recently scouted Horde patrols and have deployed forward sentries and pickets further down the road to warn us ahead of time.\n\nMorale is manageable, supplies are dwindling, we request food.\n\nCaptain Harker.', 0);

update creature_template set script_name = 'npc_captain_wallace_cross' where entry = 60729;
update creature_template set script_name = 'npc_captain_harker' where entry = 60730;

-- Delivery to Cross
delete from quest_template where entry = 40416;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40416,2,15,37,32,0,0,'Delivery to Cross','I once came from the city of Stormwind, and travelled to Kul Tiras, that was before the fleet ventured here, to Theramore. Ever since me and my brother have been seperated and while I have heard good things about him, and his business I haven\'t had any opportunity to deliver a letter, especially being stuck here at my post.\n\nIf you ever find yourself in Stormwind, would you mind stopping by The Silver Shield in the Old Town of Stormwind? My brother Bryan is the one that runs the place, and it would mean the world to me if you could run him this letter.','Deliver Wallace\'s Letter to Bryan Cross in Stormwind City.','Yes?',' Well, I must say, this is the last thing I had expected to come into my shop, I haven\'t heard from Wallace in some time, not seeing family certainly makes you miss old times.',60604,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60604,1,0,700,108,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60729, 40416);
replace into creature_involvedrelation (id, quest) values (1319, 40416);

update creature_template set npc_flags = 16391 where entry = 1319;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60604,5646,'Wallace\'s Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50536);

REPLACE INTO page_text VALUES
(50536, 'Dear brother, it has been a long time since we have met, I have been meaning to send a letter, but have not had a reliable means.\n\nIf this letter does reach you, do know that I have been well, defending Theramore has been extremely rewarding, and this place is now my true home. The people in which I serve with are some of the best I have ever met, so do not fear, for I am truly in great hands.\n\nHearing about the success of your business has brought me great joy. I look forward to the day that we can meet again, and celebrate like old times.\n\n Wallace Cross.', 0);

-- Delivery to Wallace
delete from quest_template where entry = 40417;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40416,40417,2,15,37,32,0,0,'Delivery to Wallace','While you are still here, could I ask of you a favor? I desire to send my brother something that perhaps can assist him. As much as he down plays his work in Theramore, I do know from stories I have heard that the swamp is crawling with all manner of orc and dragon.\n\nI had a fireheated shield made some time ago, and haven\'t had the chance to sell it yet, I would much rather that it gets to him out there, then to sit in my shop and collect dust, aside, there is no finer gift I can give.\n\nTake this shield to him out in Dustwallow Marsh, it would mean quite a lot to me.','Deliver Bryan\'s Fireheated Shield to Captain Wallace Cross in Dustwallow Marsh.','Yes?','So, you have delivered the letter then? How did he like it?\n\nWait, he sent this? Truly this could have fetched a nobles wages in gold, I must thank you for not being a brigand and making off with it, I shall use it with great honor.\n\nThanks again, for all you\'ve done $N, take this coin for all the traveling you have done.',60605,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60605,1,1550,1250,108,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (1319, 40417);
replace into creature_involvedrelation (id, quest) values (60729, 40417);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60605,1644,'Bryan\'s Fireheated Shield',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);