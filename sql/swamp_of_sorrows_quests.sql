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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40072,2,8,37,30,0,0,'Arenytall Family Value','The Areyntall family has been a noble house within Stormwind for quite some time, and Lordaeron before that. We made our fortunes from naval trade and procuring rare materials from far away lands to sell within the Kingdom.\n\nI cannot take full credit of course, it was my fathers doing, but I hoped to live up the same legacy as he. I did well for a while anyway, and ran my families ship, the Crownguard for a few months. It is a tragedy that it was scuttled, and sank, along with part of my families goods with it.\n\nYou can find the wreck, off the eastern coast, sunken deep in the ground, if you could go there, and search the wreckage for my families Strongbox, I would make it worth your while.','Collect the Areyntall Strongbox for Sir Areyntall.','I don\'t want to lose my father legacy, have you had any luck?','I cannot describe how eased I am, I had generations looking down upon me with anger, and I feel that things have come to ease. Maybe soon I can return to Stormwind now that this has been returned, thanks again.',60167,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2750,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (92017, 40072);
replace into creature_involvedrelation (id, quest) values (92017, 40072);

delete from item_template where entry = 60167;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60167,12331,'Areyntall Strongbox',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from gameobject_template where entry = 2010819;
replace into gameobject_template values
(2010819, 0, 3, 23430, 'Small Chest', 0, 4, 1, 43, 2010819, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010819;
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (2010819,60167,-100,1,1,0,10);
