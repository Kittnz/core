-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

-- Biggs Report to Sorrowguard --
delete from quest_template where entry = 40071;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40071,2,8,35,30,0,0,'Biggs Report to Sorrowguard','Traveler, please!\n\nI need this letter delivered and delivered quickly, it details everything that happened to the caravan. If you could be quick, it would be greatly appreciated, my commander is within the old Sorrowguard keep to the northwest, tucked within the mountains near Deadwind Pass. Take this to him, and at haste!','Deliver Biggs Report to Watch Paladin Janathos.','Yes, may I assist?','Thanks for delivering this report, I trust Biggs can manage on getting here. The Draenei of the region have become a problem that may need to be dealt with in the future.',60166,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60166,1,0,600,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (5476, 40071);
replace into creature_involvedrelation (id, quest) values (92017, 40071);

delete from item_template where entry = 60166;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60166,7629,'Biggs Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50507);

delete from page_text where entry = 50507;
replace into page_text (entry, text, next_page) value (50507,'To Watch Paladin Janathos\n\nMe and my company were attacked heading to the east by Lost One\'s of the Fallow Sanctuary. Many of the others were killed and our supplies were taken, I was able to escape and have been barely surviving in a camp I created. I will return soon, when I have gained some rest.',0);

-- Arenytall Family Value --
delete from quest_template where entry = 40072;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40071,40072,2,8,37,30,0,0,'Arenytall Family Value','The Areyntall family has been a noble house within Stormwind for quite some time, and Lordaeron before that. We made our fortunes from naval trade and procuring rare materials from far away lands to sell within the Kingdom.\n\nI cannot take full credit of course, it was my fathers doing, but I hoped to live up the same legacy as he. I did well for a while anyway, and ran my families ship, the Crownguard for a few months. It is a tragedy that it was scuttled, and sank, along with part of my families goods with it.\n\nYou can find the wreck, off the eastern coast, sunken deep in the ground, if you could go there, and search the wreckage for my families Strongbox, I would make it worth your while.','Collect the Areyntall Strongbox for Sir Areyntall.','I don\'t want to lose my father legacy, have you had any luck?','I cannot describe how eased I am, I had generations looking down upon me with anger, and I feel that things have come to ease. Maybe soon I can return to Stormwind now that this has been returned, thanks again.',60167,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2750,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92017, 40072);
replace into creature_involvedrelation (id, quest) values (92017, 40072);

delete from item_template where entry = 60167;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60167,12331,'Areyntall Strongbox',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010819;
replace into gameobject_template values
(2010819, 0, 3, 23430, 'Small Chest', 0, 4, 1, 43, 2010819, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010819;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010819,60167,-100,1,1,0,10);

-- Iron for Sorrowguard --
delete from quest_template where entry = 40073;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40073,2,8,37,30,0,0,'Iron for Sorrowguard','We were promised to be well supplied when we departed from Stormwind, only to be left out here with hardly anything to work with. What supplies we recieved Watch Paladin Janathos paid for mostly out of his own pocket from shipments on the eastern coast. Ever since those shipments have stopped we have gotten nothing.\n\nYou can\'t imagine how hard it is to maintain equipment with such a small supply of Iron that I have. If things keep up like this I will run out, which means Sorrowguard will fall.\n\nI suppose that is where you come in, if you can procure me 20 Iron bars, it will go a long way in keeping us in working order.','Gather 20 Iron Bars for Janet Hollowworth in Sorrowguard Keep.','Has it been done? The Iron supplies I have will not last forever.','I cannot thank you enough, this will mean a lot in the long term, it will be put to good use, I can assure you.',3575,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92019, 40073);
replace into creature_involvedrelation (id, quest) values (92019, 40073);

-- A Delivery of Swords --
delete from quest_template where entry = 40074;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40073,40074,2,8,37,30,0,0,'A Delivery of Swords','Watch Paladin Janathos requisitioned some swords a while ago, and whilst he paid me for the swords to be made, I have been having trouble finding a way to deliver them. The nearest Blacksmith with the proper materials was Darkshire.\n\nClarise Gnarltree was paid to craft swords for Sorrowguard, you shall find her there. Could you head to Darkshire and gather the swords for me? They will surely help ease the load on my crafting and make the bars you gave us go even farther.','Collect the Delivery of Swords from Clarise Gnarltree.','Welcome to our Blacksmith, can I help you?','Oh, you come from Sorrowguard? I swear, its been about a month since I heard from them, I assumed the worst.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,72,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92019, 40074);
replace into creature_involvedrelation (id, quest) values (3136, 40074);

-- Swords to Sorrowguard --
delete from quest_template where entry = 40075;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40074,40075,2,8,37,30,0,0,'Swords to Sorrowguard','It has been so long since I last heard from Sorrowguard, I honestly had assumed the orcs had taken or destroyed the keep. That or something equally as bad, I am not a downer, just a realist in a way, its a dangerous place that swamp!\n\nStill, I held onto the swords, just incase something as bad happened here, its better to have them, then have some coin I figure. Take them to Janet, she should be relieved I didn\'t happen to sell them off.','Take the Delivery of Swords to Janet Hollowworth in Sorrowguard Keep.','You return, good news I hope?','Thank the heavens, I have been worried about this order since the trouble with shipping weeks ago. At the least we have a stock of swords available should anything bad happen, and it has freed up my Iron for other things.\n\nHere, take one, as a way for me to pay you for the services.',60168,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60168,1,0,1850,72,100,0,0,0,0,0,0,0,0,0,60169,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3136, 40075);
replace into creature_involvedrelation (id, quest) values (92019, 40075);

delete from item_template where entry = 60168;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60168,7914,'Delivery of Swords',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from item_template where entry = 60169;
replace into item_template values
 ('60169', '0', '2', '7', 'Sorrowguard Shortsword', '', '28567', '2', '0', '1', '57064', '14266', '21', '-1', '-1', '43',
 '36', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '5', '4', '4',
 '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '45', '78', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '75', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
 
-- Food Improvision --
delete from quest_template where entry = 40076;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40076,2,8,38,30,0,0,'Food Improvision','I manage the supplies here in Sorrowguard and let me tell you we are getting close to rationing. Our supplies are well kept and managed, and I make sure that we have a lock on most things, but the one thing we are coming short on is food. If you can help me improvise for the next coming while, it would certainly mean a lot.\n\nThe Jaguars in the area are probably the closest thing to an actual decent meal. Collect 5 Heavy Jaguar Flanks for me, they should do me well enough in keeping everyone well fed.','Collect 5 Heavy Jaguar Flanks from Swamp Jaguar in Swamp of Sorrows for Quartermaster Davin.','Have you had any luck?','Well, these are quite heavy pieces of meat and will last me a while if I ration everything out, thanks again, you\'ve kept us fed.',60170,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2650,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92023, 40076);
replace into creature_involvedrelation (id, quest) values (92023, 40076);
 
delete from item_template where entry = 60170;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60170,25466,'Heavy Jaguar Flank',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 767 and item = 60170;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (767,60170,-14,1,1,0,10);

-- Sorrowmoss Mushrooms! --
delete from quest_template where entry = 40077;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40077,2,8,37,30,0,0,'Sorrowmoss Mushrooms!','Howdy partner! Don\'t see many new faces around here, especially in this old beaten up castle! Surely you\'ve heard the rumors, of brave defenders holding off the orcs for days on end before being destroyed! What a tale, I could also tell you stories about the mushrooms in Swamp of Sorrows, especially Sorrowmoss Mushrooms!\n\nSorrowmoss Mushrooms only grow within this region, and have a certain... Taste to them, once you figure out how to cook it properly, because if you don\'t, well its deadly! Let\'s just say, I have a few friends from back in my old home town that would love to try some, and you\'ll be a pal and help me get them, right?\n\nAll I need is 10, that should do just nicely partner!','Collect 10 Sorrowmoss Mushrooms for \'Sly\' Duncan.','Any luck? The swamp is a dangerous place, so be careful!','Huuha! you did it partner, now I can finally make some coin and sell off some of these, here, don\'t say I didn\'t cut you in on the profits!',60171,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,2750,72,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92022, 40077);
replace into creature_involvedrelation (id, quest) values (92022, 40077);

delete from item_template where entry = 60171;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60171,19488,'Sorrowmoss Mushroom',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010820;
replace into gameobject_template values
(2010820, 0, 3, 26317, 'Sorrowmoss Mushroom', 0, 4, 1, 43, 2010820, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010820;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010820,60171,-100,1,1,0,10);

-- The Murloc Menace --
delete from quest_template where entry = 40078;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40078,2,8,37,30,0,0,'The Murloc Menace','When we first were setting up we relied on supplies coming from the eastern shoreline, and travelled by wagon to us. It seemed like a safer journey then through all of the chaos of Deadwind pass. Now, with the insanity of Fallow Sanctuary, and the sinking of the Crownguard off the coast we have been hard pressed to get supplies.\n\nThe Murlocs who sank the ship have been a menace to us since we landed and need to be dealt with. You will find them on the eastern shoreline, dispatch them, and perhaps one day we will be able to reopen trade.','Kill 6 Marsh Inkspewer, 6 Marsh Murloc, 6 Marsh Flesheater for Watch Sergeant Arthur.','The murlocs, are they dealt with?','Well done, we are one step closer to salvation, the murlocs have been a thorn in our side for too long.',0,0,0,0,0,0,0,0,750,6,751,6,747,6,0,0,0,0,0,2750,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92012, 40078);
replace into creature_involvedrelation (id, quest) values (92012, 40078);

-- Avoiding Detection --
delete from quest_template where entry = 40079;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40079,2,8,37,30,0,0,'Avoiding Detection','Sorrowguard has stood since its construction before the first war, and while it was destroyed by the orcs during that war, the walls still stand. This is of course,is thanks to Watch Paladin Janathos. Without his efforts in bringing manpower here, and conducting repairs this place would be nothing more then a smoldering ruin.\n\nIt is with this knowledge of the past, that we must protect what we have done here, and the orcs of Stonard our are main enemy. We do not seek to cause an all out open war, but to be scouted by our foe would potentially cause our destruction.\n\nAlready Stonard Scouts have been probing eastward, and they must be stopped. Venture out there, and kill any you find, do so in the same of the brave footmen who died defending these walls years ago.','Kill 8 Stonard Scouts for Watch Sergeant Arthur.','Has it been done, have you kept our secrecy here?','You have done good work, for but a while longer we can remain undetected within the mountains, and hopefully keep the eyes of the Horde off of us.',0,0,0,0,0,0,0,0,861,8,0,0,0,0,0,0,0,0,0,2750,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92012, 40079);
replace into creature_involvedrelation (id, quest) values (92012, 40079);

update quest_template set type = 41 where entry = 40079;

-- The Rampant Groveweald --
delete from quest_template where entry = 40089;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40089,2,8,33,26,0,0,'The Rampant Groveweald','The Foulweald have long since lost their mind, set into a state of delusion and ferocity. When the tribe originally had begun to lose itself, many had set out toward the Crescent Grove to the south in hopes to escape this madness. I placed my hopes in my people but still they were lost to insanity.\n\nThe Furbolg who traveled to Crescent Grove may have sought refuge, and a new place to call home, but they did not escape that which sent the Foulweald into madness. They too have become aggresive, irrational, and uncaring for the world around them. Many of those I called friends, those I called family, went to the Groveweald, and they are nothing how I remember them.\n\nThe Groveweald must be stopped, gather what mercenaries, or fellow adventurers you can, and brave to the Crescent Grove, slay them there, and gather from them their Groveweald Badges as proof of the deed. It must be done for the good of the forest, and for the good of my people.','I have been tasked by Grol to bring 8 Groveweald Badges.','It pains me to ask, but have you gotten the badges?','So... It is done then, I hope in peace they may finally be let free from their delusions.',60176,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91285, 40089);
replace into creature_involvedrelation (id, quest) values (91285, 40089);

update quest_template set type = 81 where entry = 40089;

delete from item_template where entry = 60176;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60176,32282,'Groveweald Badges',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 92100 and item = 60176;
delete from creature_loot_template where entry = 92101 and item = 60176;
delete from creature_loot_template where entry = 92102 and item = 60176;
delete from creature_loot_template where entry = 92103 and item = 60176;
delete from creature_loot_template where entry = 92104 and item = 60176;
delete from creature_loot_template where entry = 92107 and item = 60176;
delete from creature_loot_template where entry = 92105 and item = 60176;
delete from creature_loot_template where entry = 92106 and item = 60176;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values 
(92100,60176,-40,1,1,0,10),
(92101,60176,-45,1,1,0,10),
(92102,60176,-55,1,1,0,10),
(92103,60176,-55,1,1,0,10),
(92104,60176,-65,1,1,0,10),
(92107,60176,-100,1,1,0,10),
(92105,60176,-100,1,1,0,10),
(92106,60176,-100,1,1,0,10);

-- The Unwise Elders --
delete from quest_template where entry = 40090;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40090,2,8,34,26,0,0,'The Unwise Elders','The Elders of the Foulweald were smart enough to leave once things had taken for the worse. They helped lead the fleeing tribes of Furbolg into the Crescent Grove to the south. It is there that they themselves slipped into madness, and further drove the tribes under their watchful gaze into a deep craze. They not only are seen as spiritual leaders, but as the word of truth and a guide for the Furbolg there.\n\nTheir delusions, and their madness, have only spurred the Groveweald to become an ever greater threat to those around them, and have lead to even more misery to nature in Ashenvale. If the Groveweald are to stopped, the Elders must cease their whisperings into the Grovetenders ears. I doubt he will let you stop them, and he will also need to be destroyed. Bring me the paw of Elder \'One Eye\' and Elder Blackmaw, as proof of their demise, you shall be rewarded for ending this cycle of destruction.','I have been tasked by Grol to bring Paw of Elder \'One Eye\' and Paw of Elder Blackmaw.','Have you gotten Paw of Elder \'One Eye\'? and Paw of Elder Blackmaw.','So... It is done then.',60177,1,60178,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,2750,0,0,0,0,0,0,0,0,0,0,0,60179,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (91285, 40090);
replace into creature_involvedrelation (id, quest) values (91285, 40090);

update quest_template set type = 81 where entry = 40090;

delete from item_template where entry = 60177;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60177,1496,'Paw of Elder \'One Eye\'',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from item_template where entry = 60178;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60178,940,'Paw of Elder Blackmaw',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from item_template where entry = 60179;
replace into item_template values
 ('60179', '0', '4', '0', 'Grol\'s Band', '', '9833', '3', '0', '1', '17224', '4306', '11', '-1', '-1', '36',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '7', '7', '5',
 '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);

delete from creature_loot_template where entry = 92105 and item = 60177;
delete from creature_loot_template where entry = 92106 and item = 60178;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values
(92105,60177,-100,1,1,0,10),
(92106,60178,-100,1,1,0,10);

-- The Crescent Grove --
delete from quest_template where entry = 40091;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40091,2,5077,37,28,0,0,'The Crescent Grove','The Crescent Grove was once a retreat for druids of our kind for many long years. As of recently something evil has lurked there. Keeper Ranathos was tasked with holding back the taint that plagued the area, but we have not been getting word from him as of late. His last message back was, also quite erratic, and unlike who Ranathos was. We druids had our suspicions of something much darker taking root within the Crescent Grove.\n\nRecently we have gotten a report from one of our druids of the place being corrupted, and warped. Arch Druid Staghelm has asked the Druids to assist with establishing control in Crescent Grove once again, but we are unable too as of current, perhaps you can assist.\n\nYou will find the entrance to the grove in the south of Ashenvale, at the waterfall to the Mystral Lake, the caves entrance lies above, venture forth, and destroy what evil lurks in that place. Make sure to bring assistance, there will be many hardships found inside.','Destroy the source of corruption inside Crescent Grove.','Have you ventured into the grove?','Arch Druid Staghelm will be overjoyed to hear such news! Please, on behalf of the Cenarion Circle, take one of these items.',0,0,0,0,0,0,0,0,92110,1,0,0,0,0,0,0,0,0,5000,3450,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60180,1,60181,1,60182,1,60183,1,0,0,'');

replace into creature_questrelation (id, quest) values (4218, 40091);
replace into creature_involvedrelation (id, quest) values (4218, 40091);

update quest_template set type = 81 where entry = 40091;

delete from item_template where entry = 60180;
delete from item_template where entry = 60181;
delete from item_template where entry = 60182;
delete from item_template where entry = 60183;
replace into item_template values
 ('60180', '0', '4', '3', 'Chain of Denatharion', '', '30866', '3', '0', '1', '28416', '7104', '5', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '16', '4', '10',
 '6', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '254', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '1', '0', '0', '120', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL),
 ('60181', '0', '4', '0', 'Cloak of Denatharion', '', '23029', '3', '0', '1', '14580', '3945', '16', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '7', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '0', '0', '7678', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL),
 ('60182', '0', '4', '1', 'Epaulets of Denatharion', '', '17192', '3', '0', '1', '16424', '4106', '3', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '15', '7', '4',
 '6', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL),
 ('60183', '0', '4', '2', 'Mask of Denatharion', '', '26305', '3', '0', '1', '20164', '5041', '1', '-1', '-1', '40',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '12', '3', '8',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0', '0',
 '0', '0', '0', '9140', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '60', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);
 
-- Lost and Stranded --
delete from quest_template where entry = 40092;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40092,2,409,51,40,0,0,'Lost and Stranded','The Tidemaster was sent off course after a scrap with some pirates, the next thing I knew pure chaos erupted as sailors were tossed into the ocean and ripped across jagged rocks! Murlocs attacked and the night erupted into screams and battle. I ran and found shelter upon this small island all the while my crewmates suffered a fate more horrible then you could imagine!\n\nI\'ve been trapped here ever since, the murlocs have been attempting to fight me, but they haven\'t had luck yet and mostly stick to their shore. On the last attack they ended up stealing a crate which had many of my belongings, but most importantly my compass. If I am ever to get back to Kul Tiras, it will be needed once I am prepared to go ashore. You should find their small camp down the hill on this island, among their hovels find my compass, and while you\'re there, kill some, in revenge for the Tidemaster!','Slay 6 Wallowfin Murlocs and find Wally Burnside\'s Compass on Crown Island.','They are a dreadful race of creature, murlocs, are they not?','This means a lot to me, when I get back home I will send a postcard and some coin for what you\'ve done, wish me luck for when I set off!',60184,1,0,0,0,0,0,0,91857,6,0,0,0,0,0,0,0,0,0,4450,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (90987, 40092);
replace into creature_involvedrelation (id, quest) values (90987, 40092);

delete from item_template where entry = 60184;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60184,1270,'Rusted Compass',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010821;
replace into gameobject_template values
(2010821, 0, 3, 24106, 'Cracked Crate', 0, 4, 1, 43, 2010821, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010821;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010821,60184,-100,1,1,0,10);