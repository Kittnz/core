-- Need Claws
delete from quest_template where entry = 40402;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40402,2,15,35,30,0,0,'Need Claws','You, $r. Tharg sad. Tharg angry!\n\nTharg lost his hitting stick. Hitting stick special, hitting stick made by friend.\n\nTharg\'s friend angry with Tharg, Tharg angry with Tharg. Give friend gift, friend not angry! Bring claws, Bloodfen claws only! Me give reward.','Collect 5 Bloodfen Claw\'s for Tharg in Dustwallow Marsh.','Tharg friend angry with Tharg.','Claws perfect, Tharg thanks new friend.',60583,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3500,2750,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (4502, 40402);
replace into creature_involvedrelation (id, quest) values (4502, 40402);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60583,1499,'Bloodfen Claw',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

REPLACE INTO creature_loot_template VALUES
(4351, 60583, -85, 0, 1, 1, 0);