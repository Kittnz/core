-- Thalassian Diplomacy
delete from quest_template where entry = 40514;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40514,2,1537,10,4,0,0,'Thalassian Diplomacy','Warm greetings friend.\n\nI am Meldralis, a diplomat. I have been sent from the Farstrider Lodge to thank our forever friends, the dwarves, for their hospitality. We are preparing a gift for King Magni and his daughter, Princess Moira.\n\nAlas, that is for Nel\'doriel to explain. He will probably need your aid as well! My task is to give this pamphlet to Illyanah in Stormwind City. The Humans of Stormwind were kind enough to offer us a small place in the Dwarven District, we have called it Little Silvermoon.\n\nYour kindness and help are highly appreciated, friend. May the Eternal Sun guide your steps.','Take Meldralis\'s Pamphlet to Illyanah Dawnstar in Little Silvermoon, Stormwind.','Bal\'a dash.','Ah, you bring news from Lady Meldralis. Much appreciated friend, I am glad to know the diplomatic representative has made it that far through the mountains. I am more than sure she will strengthen the bond.',60753,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60753,1,0,450,269,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60874, 40514);
replace into creature_involvedrelation (id, quest) values (80405, 40514);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60753,7629,'Meldralis\'s Pamphlet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Thalestien's Notes
delete from quest_template where entry = 40516;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40515,40516,2,1537,10,6,0,0,'Thalestien\'s Notes','A student of Thalestien? How exciting!\n\nThalestien was not exactly like the rest of the High Elves, he really enjoyed tinkering with gizmos and scraps as much as we did! But his craft also used a hefty amount of the Arcane, which in truth was a very smart choice. It\'s no less to tell that people like him were a true inspiration to Engineering today.\n\nThe Arcane Golems were the product of high ingeniosity, but I\'m afraid Thalestien\'s notes are lost. The last time I had them I was in a small house North West of Brewnall Village, you could try there. Just be aware that Leper Gnomes might guard the area. If you were to get those notes, I believe a new age for Engineering could begin! Working with the High Elves from this aspect would be very exciting.','Find Thalestien\'s notes North West of Brewnall Village for Masey Wirefuse in Ironforge.','Did you find them?','Great, great news $N, I haven\'t seen these in quite a while now!',60754,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,820,269,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60872, 40516);
replace into creature_involvedrelation (id, quest) values (60872, 40516);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60754,7596,'Thalestien\'s Notes',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into gameobject_template values
(2010914,3,24074,'Elvish Notes',0,4,1,43,2010914,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010914,60754,-100,0,1,1,0);

-- Back to Nel'doriel
delete from quest_template where entry = 40517;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40516,40517,2,1537,10,6,0,0,'Back to Nel\'doriel','A student of Thalestien? How exciting!\n\nThalestien was not exactly like the rest of the High Elves, he really enjoyed tinkering with gizmos and scraps as much as we did! But his craft also used a hefty amount of the Arcane, which in truth was a very smart choice. It\'s no less to tell that people like him were a true inspiration to Engineering today.\n\nThe Arcane Golems were the product of high ingeniosity, but I\'m afraid Thalestien\'s notes are lost. The last time I had them I was in a small house North West of Brewnall Village, you could try there. Just be aware that Leper Gnomes might guard the area. If you were to get those notes, I believe a new age for Engineering could begin! Working with the High Elves from this aspect would be very exciting.','Return to Nel\'doriel in the Mystic Ward, with Thalestien\'s notes.','Hard at work.','You return with the notes! Much appreciated friend. Now I can finally start working on this thing again. I\'m glad Masey would like to help me because this is meant to be a gift for Princess Moira, her own personal bodyguard!\n\n Here this is for you.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,230,350,269,150,0,0,0,0,0,0,0,0,0,60755,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60872, 40517);
replace into creature_involvedrelation (id, quest) values (60875, 40517);

replace into item_template values
 ('60755', '4', '2', 'Elven Repair Gloves', '', '37534', '2', '0', '1', '408', '102', '10', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '1', '6', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '20', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- The Ramolus Gem
delete from quest_template where entry = 40518;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40518,2,1537,12,7,512,0,'The Ramolus Gem','My trip to Ironforge has been a failure, and truth be told, I don\'t really have the courage to return just yet.\n\nI was ambushed by a group of troggs heading to Ironforge, and I just so happened to drop the most important item on me, The Ramolus Gem. The Trogg that happened to take it was enfused with the latent arcane power of the gem, and now has some ability with magic... Or so I heard.\n\n<Ansela pouts.>\n\nCan you recover it for me by chance? The Trogg named Grash can be found deep in the Gol\'Bolar Quarry.','Recover the Ramolus Gem for Ansela Dawnshield in Ironforge.','Yes, have you had any luck?','<Excitement perks across Ansela\'s face!>\n\nOh, oh thank you! I cannot express my excitement, I never thought I\'d get this back.\n\n I thought I\'d have to go get a stern talking to in Little Silvermoon about my failure. Here, take this, as thanks for helping me out.',60756,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,510,850,269,150,0,0,0,0,0,0,0,0,0,60757,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60877, 40518);
replace into creature_involvedrelation (id, quest) values (60877, 40518);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60756,13496,'Ramolus Gem',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60630,60756,-100,1,1,1,0);

replace into item_template values
 ('60757', '2', '4', 'Dawnshield Mace', '', '40046', '2', '0', '1', '2832', '708', '13', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '13', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '50', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- Drifting Across the Sand
delete from quest_template where entry = 40519;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40519,2,978,46,40,512,0,'Drifting Across the Sand','<The trolls ghostly visage speaks in a broken, howling tone that is hard to understand fully.> I... be lost... Forever wandering across.. the desert to try.. and find a way out.\n\nBut it doesn\'t feel like... there be a way out.\n\nGo to Zul\'Farrak... the place where my body is... and find the Ancient Troll Remains... of myself locked away...\n\nFree me mon, from this... eternal torture...','Venture in Zul\'Farrak, and find the Ancient Troll Remains, return them to Hansu Go\'sha who wanders around the Southmoon Ruins in Tanaris.','<The wind howls across the sand.>','<With the remains close to the spirit, the howling tone becomes more clear.> I can feel the end, it is in sight, my vision is no longer blurred and faded mon, you have shown me the way.\n\n That cursed Zum\'rah and his magic brought me back from my rest, and left me to wander aimlessly.\n\nBut I got no grudges mon, for I am free now.\n\nI will find de way, thanks to you.\n\n<The spirit drops a chained necklace onto the sand below, leaving it as a reward as he collects his remains.>',60758,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2340,3850,0,0,0,0,0,0,0,0,0,60759,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60856, 40519);
replace into creature_involvedrelation (id, quest) values (60856, 40519);

update quest_template set type = 81 where entry = 40519;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60758,1274,'Ancient Troll Remains',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into gameobject_template values
(2010915,3,23468,'Ancient Burial Container',0,4,1,43,2010915,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_loot_template values
(2010915,60758,-100,0,1,1,0);

replace into item_template values
 ('60759', '4', '0', 'Southmoon Pendant', '', '32073', '2', '0', '1', '43732', '10933', '2', '-1', '-1', '52',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '10',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);

-- Da Unforgiving Lands
delete from quest_template where entry = 40520;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40520,2,440,45,40,0,0,'Da Unforgiving Lands','Ever since we left Zul\'Farrak, hunger and thirst be constant companions for us. Da greedy goblins of Gadgetzan control da Wastes and dey do not see us any different than our Sandfury brethrens.\n\nMon, our village needs ya help. We are starving here. I plead, venture into the desert and find some meat. Meat of da roc, while not tasty, is nutritious enough to keep ya alive. And while ya be out there, gather some hyena skins as well. Hingozu make ya armor for da effort.','Bring 12 Roc Meat and 8 Hyeana Skins to Hingozu at Sandmoon Village in Tanaris.','Do ya have da food and skins?','Thank ya, mon. These supplies won\'t be lasting for long, but they will allow us to live for a few more days at least. Here, take this as a reward mon.',60760,12,60761,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2160,4100,0,0,0,0,0,0,0,0,0,60762,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60751, 40520);
replace into creature_involvedrelation (id, quest) values (60751, 40520);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60760,4112,'Roc Meat',12,1,2048,1,-1,-1,1,12,-1,-1,-1,-1,4,'',0),
(60761,4676,'Hyena Skin',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5428,60760,-80,1,1,1,0),
(5429,60760,-80,1,1,1,0),
(5430,60760,-80,1,1,1,0),
(8207,60760,-80,1,1,1,0),
(5427,60761,-80,1,1,1,0),
(5425,60761,-80,1,1,1,0),
(8208,60761,-80,1,1,1,0),
(5426,60761,-80,1,1,1,0);

replace into item_template values
 ('60762', '4', '0', 'Sandwalker Shawl', '', '23101', '2', '0', '1', '24548', '6137', '16', '-1', '-1', '48',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '32', '0', '13', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);

-- Desert Voodoo
delete from quest_template where entry = 40521;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40521,2,440,47,40,0,0,'Desert Voodoo','You. You can help me, us. The ogres of Dunemaul be driving us away from our ancient temples. I will not tolerate them defilin\' our sacred gods and their symbols.\n\nTheir foul warlock and mages tarnish the idols of our gods. Venture sounth, where the Dunemaul reside and slay them. Retrieve three Loa Charms from and bring them to me. We shall unleash their wrath upon dem!','Bring 3 Ancient Loa Charms to Seer Maz\'ek in Sandmoon Village.','Our mad brethren in Zul\'Farrak no longer revere our gods as dey should. Only we can stop the ogres.','Da ogres will fear da might of our gods. Their vengeance be scary, no mercy be shown. Curse de ogres. Theey will learn not to mess with da Sandmoon.',60763,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2040,3500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60752, 40521);
replace into creature_involvedrelation (id, quest) values (60752, 40521);

update creature_template set script_name = 'npc_seer_mazek' where entry = 60752;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60763,31899,'Ancient Loa Charm',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5473,60763,-15,1,1,1,0),
(5475,60763,-15,1,1,1,0);

