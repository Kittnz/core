-- Fix faction:
update creature_template set faction = 371 where entry in (60810,60811,60851);
update creature_template set faction = 57 where entry = 60812;

-- new GO THE OLD CHURCH OF WESTFALL IS CLOSED:
REPLACE INTO gameobject_template VALUES
(2010892, 5, 24305, 'THE OLD CHURCH OF WESTFALL IS CLOSED', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- quest 40255 fix objectives:
update quest_template set objectives = 'Report to Watch Paladin Janathos at Sorrowguard Keep in Swamp of Sorrows.' where entry = 40255;

-- The Garrison Armory Disaster
delete from quest_template where entry = 40428;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40428,2,4,54,45,0,0,'The Garrison Armory Disaster','Hey you, do you think you can help?\n\nThe Garrison Armory is nothing more than a trogg infestation. A trogg infestation that claimed the lives of twelve workers. It was one of the last dangers we ever expected to face, but when they came in, they came in fast.\n\nThe dead need to be avenged, and the mine needs to be cleared out for our own security. The miner\'s and I have collected enough coin to pay for someone to do the job right, go in there and clean it out good, don\'t show them mercy.','Slay 10 Boulderclaw Tunnelers, 8 Boulderclaw Geomancers, 8 Boulderclaw Bashers, and 6 Boulderclaw Ambusher\'s for Foreman Tanoth at the Garrison Armory in Blasted Lands.','Has the infestation been cleansed?','The dead will not be forgotten, but at the least we have avenged their deaths. Thanks again for everything that you have done.\n\nTake this coin, it is from all of us.',0,0,0,0,0,0,0,0,60838,10,60839,8,60842,8,60840,6,0,0,10000,4850,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60855, 40428);
replace into creature_involvedrelation (id, quest) values (60855, 40428);

update creature_template set  script_name = 'npc_foreman_tanoth' where entry = 60855;

-- Additional notes: Upon quest completion, have random Nethergarde Miner's (5996) near the player say the following lines.
-- "Thank you $C"
-- "You've made our lives much easier now."
-- "Light bless you."
-- "You stuck it to those blasted Troggs."

-- Recovering Armory Supplies
delete from quest_template where entry = 40429;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40429,2,4,54,45,0,0,'Recovering Armory Supplies','The Garrison Armory is a place Nethergarde has stored extra supplies for some time now, and before long there will not be anything left if the troggs trample, and destroy it all.\n\nI need you to go in there, and recover atleast ten Garrison Armory Supply Caches, that way when this mess is over, and the dead are buried, we can return to work, and still have the tools to do so.\n\nVenture inside, and see if you can recover them for me.','Collect 10 Garrison Supply Caches within the Garrison Armory for Foreman Tanoth at the Garrison Armory in Blasted Lands.','Have you recovered the Caches?','<Foreman Tanoth lets out a heavy sigh of relief.>\n\nWell, that gives me some breathing room. It seems like you got to the Caches before the troggs mindlessly trampled over them, thanks for the hard work, I\'m sure it wasn\'t an easy task.',60627,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,4850,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60855, 40429);
replace into creature_involvedrelation (id, quest) values (60855, 40429);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60627,8928,'Garrison Supply Cache',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010892;
replace into gameobject_template values
(2010892,3,24112,'Garrison Supply Cache',0,4,1,43,2010892,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

delete from gameobject_loot_template where entry = 2010892;
replace into gameobject_loot_template values
(2010892,60627,-100,0,1,1,0);

-- Dreadmaul Skull Bounty
delete from quest_template where entry = 40430;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40430,2,4,54,45,0,0,'Dreadmaul Skull Bounty','Ogres, oh how I hate em! If it aint demons then it\'s ogres!\n\nThe Dreadmaul came with the orcs during the First War, and they\'ve been a sore on these lands ever since they arrived. They are responsible for a lot of the dead and they need to be dealt with.\n\n We currently have a bounty on their skulls, bring me thirty of them, and I\'ll give you something worth your time $c.\n\nYou can find the Dreadmaul to the west, and southwest, goodluck!','Collect 30 Dreadmaul Skulls from Dreadmaul Ogres in the Blasted Lands for Harguf at Nethergarde Keep.','You got them skulls I asked for?','Ahh, someone of action I see, you remind me of a young Harguf, bashin\' skulls and the like, here, as I promised.',60628,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4800,61,200,0,0,0,0,0,0,0,0,0,60629,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60795, 40430);
replace into creature_involvedrelation (id, quest) values (60795, 40430);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60628,1273,'Dreadmaul Skull',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60629', '2', '5', 'The Skull Smasher', '', '11271', '2', '0', '1', '192656', '48164', '17', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '14', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '112', '176', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template values
(5974,60628,-100,1,1,1,0),
(5975,60628,-100,1,1,1,0);

-- Shadowsworn Pendant Bounty
delete from quest_template where entry = 40431;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40431,2,4,54,45,0,0,'Shadowsworn Pendant Bounty','Lookin\' for some work eh? Well we got a bounty on those Shadowsworn cultist types if you\'re interested. Not sure when they started coming around, but more and more of em been gathering over the last couple months.\n\n Now I don\'t know a thing about dark magic, but it certainly isn\'t good! If you don\'t know where to look, search in the south, and southwest, you\'ll find them quick!\n\nCollect me twenty of their pendants, and come back, I\'ll see to it that you get something worth the effort.','Collect 20 Shadowsworn Pendant\'s from Shadowsworn in the Blasted Lands for Harguf at Nethergarde Keep.','Any luck on collecting them pendants?','Well, look at that, you do some good work, well, as I promised, here you are.',60630,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60631,1,60632,1,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60795, 40431);
replace into creature_involvedrelation (id, quest) values (60795, 40431);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60630,609,'Shadowsworn Pendant',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60631', '4', '1', 'Riftwatcher Gloves', '', '35545', '2', '0', '1', '31820', '7955', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '11', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '46', '0', '0', '0',
 '0', '0', '0', '23727', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60632', '4', '2', 'Riftseeker Gloves', '', '5928', '2', '0', '1', '37368', '9342', '10', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '13', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '93', '0', '0', '0',
 '0', '0', '0', '9331', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '8', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template values
(6004,60630,-100,1,1,1,0),
(6006,60630,-100,1,1,1,0),
(6009,60630,-100,1,1,1,0);

-- The Smasher and the Trampler
delete from quest_template where entry = 40432;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40432,2,4,54,45,0,0,'The Smasher and the Trampler','The Garrison Armory is a disaster, many of our miners have been slain, and troggs run loose destroying our progress.\n\nIf work is to ever continue there, we must do more than kill some troggs, we must cut the head off the beast, and slay their leaders.\n\nThe troggs that took over the Garrison Armory go by the name \'Boulderclaw\' and are led by two big monsters named Kroshmak and Gorlush.\n\nTravel into the depths of the mine to the west, and slay their leaders, bring me one of their claws as proof.','Gather the claw\'s of Gorlush the Trampler, and Kroshmak the Smasher in the Garrison Armory for Commander Baelos at Nethergarde Keep.','Have you avenged the dead, has the mine been reclaimed?','You have done Nethergarde a great service, I must thank you for the hard work. Without you, who knows how long we would have had to wait until we could flush them out.',60633,1,60634,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5200,61,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60793, 40432);
replace into creature_involvedrelation (id, quest) values (60793, 40432);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60633,1499,'Claw of Gorlush',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60634,1498,'Claw of Kroshmak',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set loot_id = 60843 where entry = 60843;
update creature_template set loot_id = 60844 where entry = 60844;

replace into creature_loot_template values
(60844,60633,-100,1,1,1,0),
(60843,60634,-100,1,1,1,0);

-- Report from Burnside
delete from quest_template where entry = 40433;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40433,2,4,45,45,0,0,'Report from Burnside','Nethergarde is an isolated, and rather desolate place. We rely on a large garrison to help stem the tide of a potential demonic invasion, should such an occasion ever occur.\n\nThe soldiers under my command have homes and families, and morale here is paramount. I rely on my sergeants to give me a situation report on the status of those beneath me.\n\nAs of current the only one I am waiting from is from Sergeant Burnside, would you do me a favor, and collect it from him? You can find him somewhere outside the gate, he is probably with his troops.','Find Sergeant Burnside and collect his report, deliver the Report from Burnside to Commander Baelos at Nethergarde Keep.','Have you found Sergeant Burnside yet?','<The Commander would take some time to look over the situation report.>\n\nI see, well thanks again for your work, I don\'t have all day to look for everyone, take some silver for the trouble.',60635,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,850,61,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60793, 40433);
replace into creature_involvedrelation (id, quest) values (60793, 40433);

update creature_template set script_name = 'npc_sergeant_burnside' where entry = 60792;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60635,3020,'Report from Burnside',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Suppressing the Dreadweaver's
delete from quest_template where entry = 40434;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40434,2,4,54,45,0,0,'Suppressing the Dreadweaver\'s ','It has come to my attention that a dark magic has been growing in power within the region. Our Analyser Wigglestip has documented an extensive amount of magic being introduced into the area.\n\nThere is no doubt that the Shadowsworn would be the ones utilizing such forces. Those that gather around the Altar of Storms are to blame, and our reports only confirm that.\n\nI need someone to dispatch of the Dreadweaver\'s that spread the corruption. Who knows what plans they have in motion, but I do not intend to sit around to find out.','Slay 8 Shadowsworn Dreadweaver\'s for Commander Baelos at Nethergarde Keep.','The defense of Nethergarde requires us to be steadfast.','I must commend you for your work, I am sure many of those here are relieved to have one less threat be waiting at the doorstep.\n\nI have gathered a suitable reward for the work you have put in, may it help you on your journey.',0,0,0,0,0,0,0,0,6009,8,0,0,0,0,0,0,0,0,2500,4750,61,250,0,0,0,0,0,0,0,0,0,13446,2,60636,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60793, 40434);
replace into creature_involvedrelation (id, quest) values (60793, 40434);

replace into item_template values
 ('60636', '4', '3', 'Helm of Nethergarde', '', '15811', '2', '0', '1', '63508', '15877', '1', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '12', '5', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '251', '0', '0', '0',
 '0', '5', '0', '9142', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '60', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

-- Genetic Alteration Anomaly!
delete from quest_template where entry = 40435;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40435,2,4,53,47,0,0,'Genetic Alteration Anomaly!','The energy radiating off of the Dark Portal is sheerly astounding, and it\'s given me so many research opportunities that I do not know where to start! I was employed here as an analyst to watch the ever shifting arcane magic within the region, and its incredibly unstable, so unstable infact that it has warped the boars close to the portal itself, turning them into \'Helboar\'!\n\nI know it sounds like something straight out of fantasy!\n\nI need you to get me a Pristine Helboar Brain, to see just how much the creature has been altered by the intense energy of the Dark Portal.','Collect a Pristine Helboar Brain for Engineer Wigglestip at Nethergarde Keep.','Twenty eight, carry the seven, account for arcane disturbances... Oh- it\'s you, have you had any luck?','Ahh, this is a fine specimen, take long to find?',60637,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,61,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60794, 40435);
replace into creature_involvedrelation (id, quest) values (60794, 40435);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60637,10923,'Pristine Helboar Brain',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(5993,60637,-10,1,1,1,0);

-- Finding Private Holson
delete from quest_template where entry = 40436;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40436,2,4,54,45,0,0,'Finding Private Holson','Hey, you there, I need your help.\n\nAbout a week ago on one of our patrols we ended up being attacked by a group of ogres, these ogres were fierce enough to make us retreat. During the struggle one of my Private\'s was captured by the Dreadmaul.\n\nI don\'t know where they have taken him, but I want you to find him, I can\'t risk any more of my soldiers on such a mission.\n\nIf I was you I would search their camps, both to the west, and southwest, he may be in one of them.','Find Private Holson in the Blasted Lands.','Yes?','<The Corpse of the soldier remains lifeless, battered and bruised it would appear that the body was beaten mercilessly. An abrasion can be seen upon the neck, where a medallion or necklace was torn off.>',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2150,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60792, 40436);
replace into creature_involvedrelation (id, quest) values (60862, 40436);

-- Finding Private Holson II
delete from quest_template where entry = 40437;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40436,40437,2,4,54,45,512,0,'Finding Private Holson II','<The corpse of the soldier appears to not have any marks of identity, you are sure that the mark on the neck is indicative of an amulet being removed, there is no doubt that the identification of this soldier is in the hands of one of the nearby ogres, you feel obligated to retrieve it, and return it to Sergeant Burnside at Nethergarde Keep.','Retrieve Holson\'s Amulet from the nearby ogres and return it to Sergeant Burnside at Nethergarde Keep.','Have you found anything, or any clues?','<Sergeant Burnside would let out a quiet sigh>\n\nI feared it would have come to this, it always hurts to lose someone, especially those under your command. I will forever wonder if there is more I could have done to save a life.\n\nThank you $C, for risking your own safety to let us know the truth.\n\nTake this amulet, I am sure Holson would respect it being in your hands after delivering this news.',60638,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3950,61,150,0,0,0,0,0,0,0,0,0,60639,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60862, 40437);
replace into creature_involvedrelation (id, quest) values (60792, 40437);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60638,2624,'Holson\'s Amulet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60639', '4', '0', 'Holson\'s Amulet', '', '2624', '2', '0', '1', '24216', '6054', '2', '-1', '-1', '57',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13669', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);

replace into creature_loot_template values
(5977,60638,-30,1,1,1,0),
(5978,60638,-30,1,1,1,0);

-- Fel Energy Irregularities I
delete from quest_template where entry = 40438;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40438,2,4,54,45,0,0,'Fel Energy Irregularities I','Why, you wouldn\'t happen to have some spare time would you?\n\nThe master of this tower has been hard at work and has given me the task of gathering a report from Engineer Wigglestip. Sadly to say, I haven\'t had the opportunity to leave just yet, nor do I know how to find our gnomish friend!\n\nDo you think you could speak with Wigglestip and gather the report from him? Once you\'ve obtained it, you can bring it to Watcher Mahar Ba at the top of the tower.','Speak with Engineer Wigglestip and gather his report, bring it to Watcher Mahar Ba.','Yes, can I help you?','So that is why you are here, this is the report from Wigglestip yes?\n\n<Mahar Ba would take the report, beginning to read it with caution.>\n\nInteresting...',60640,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,650,61,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60791, 40438);
replace into creature_involvedrelation (id, quest) values (5385, 40438);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60640,7743,'Engineer Wigglestip\'s Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_engineer_wigglestip' where entry = 60794;

-- Fel Energy Irregularities II
delete from quest_template where entry = 40439;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40438,40439,2,4,54,45,0,0,'Fel Energy Irregularities II','Well, this news certainly reinforces my assumptions, and what I have been studying. The Blasted Land\'s has become even more unstable, the energies within the region are beginning to grow in power.\n\nI have been preparing a report that I need delivered to my superior\'s in the Kirin Tor, and I need you to deliver it at once. Communication at such a distance is impossible with the raging storms so I am relying on you.\n\n Travel to Dalaran at once, and deliver this report to Archmage Ansirem Runeweaver.','Travel to Dalaran, and deliver the Sealer Nethergarde Report to Archmage Ansirem Runeweaver.','Yes?','Ahh yes, I sensed that you would be coming, I can practically feel the energy from the letter you carry.\n\n<Upon taking the report, Ansirem Runeweaver would read with caution.>\n\nI see.\n\nSo it is going as predicted, it would appear we may need to be more hands on to manage the growing instability within the Blasted Lands, let us hope there is no outside interferance that is causing the increased magical irregularities.',60641,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60641,1,0,2650,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5385, 40439);
replace into creature_involvedrelation (id, quest) values (2543, 40439);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60641,3018,'Sealed Nethergarde Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Fel Energy Irregularities III
delete from quest_template where entry = 40440;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40439,40440,2,4,54,45,0,0,'Fel Energy Irregularities III','It would appear that fel energy has indeed begun to ripple across the Blasted Lands, sending the region into a swirl of irregularities, and unstable conditions. Let us hope this is simply caused from the Dark Portal itself, and not its reactivation.\n\nIt will take many more of our kin to keep everything under control.\n\nNow then, I am asking you to deliver an important letter, one that is magically sealed, breaking it, will destroy the parchment.\n\nI trust that you will do for the good of the Kirin Tor, and for the Alliance itself.\n\nMake sure this reaches Mahar Ba, so that he may begin the neccesary tests and preparations.','Return to Nethergarde, and deliver the Magically Sealed Dalaran Report to Watcher Mahar Ba.','Have you travelled to Dalaran, and spoken with Ansirem Runeweaver?','It is as I feared, the magical energies are that of fel.',60642,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60642,1,0,2650,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (2543, 40440);
replace into creature_involvedrelation (id, quest) values (5385, 40440);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60642,15274,'Magically Sealed Dalaran Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

update creature_template set script_name = 'npc_watcher_mahar_ba' where entry = 5385;

-- Fel Energy Irregularities IV
delete from quest_template where entry = 40441;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40440,40441,2,4,54,45,0,0,'Fel Energy Irregularities IV','The Riftwatchers and myself have much work to do in our studying now that we know what is happening. I will need you to assist and gather some items from the demons nearest to the Dark Portal.\n\nFrom the Felguard Sentry, and Felhounds, we will need to analyze to see if these demons are fresh from the portal, in doing so we need specific items.\n\nFrom the Felguard\'s, gather Felguard Cuffs, from the Felhounds, gather Felhound Claws.\n\nOnce they are obtained, return them to me, at once, three of each should suffice.','Gather 3 Felguard Cuffs, and 3 Felhound Claws for Watcher Mahar Ba in Nethergarde Keep at the Blasted Lands.','Have the items been recovered yet $C?','Good work, now, let us see what mysteries these may contain.',60643,3,60644,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4650,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5385, 40441);
replace into creature_involvedrelation (id, quest) values (5385, 40441);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60643,18959,'Felguard Cuff',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0),
(60644,1499,'Felhound Claw',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(6011,60643,-80,1,1,1,0),
(6010,60644,-80,1,1,1,0);

-- Fel Energy Irregularities V
delete from quest_template where entry = 40442;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40441,40442,2,4,60,45,0,0,'Fel Energy Irregularities V','We have spent many months studying and preparing for the future, and it appears the future may be upon us sooner then we had realized.\n\nThere is one I have not spoken with for a long, long time. An old friend who once studied within the Kirin Tor, lost to the ways of demonic, and dark magic.\n\nI will simply say that he owes me a favor, and I ask of you to reach him, so that he may answer my questions about the Dark Portal and the irregularities of the magic in the region.\n\nTravel to the Southwest, and venture within the Tainted Scar, find Daio the Decrepit, an old warlock who resides there, ask him if he knows anything, I would suggest bringing a friend, or recruiting mercenaries, it is a dangerous place there.','Travel to the Tainted Scar, and speak with Daio the Decrepit.','Yes?','So.. Mahar Ba sent you, did he?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2650,61,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5385, 40442);
replace into creature_involvedrelation (id, quest) values (14463, 40442);