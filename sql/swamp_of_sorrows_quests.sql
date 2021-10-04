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