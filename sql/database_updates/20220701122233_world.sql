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