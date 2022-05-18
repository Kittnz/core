-- Return to Tharg
delete from quest_template where entry = 40404;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40403,40404,2,15,35,30,0,0,'Return to Tharg','Me bit happy now, Tharg gave beautiful gift! I send Tharg some big lizard meat, he loves big lizard meat.\n\nMe wishes me had another funny hitting stick for Tharg but me have to ask goblin friend. Me send it later, but no tell! Big surprise!\n\n<Bourok raises his arm in the air.>\n\nGive sack to Tharg, Tharg happy! Goodbye Tharg and me new friend.','Bring the Big Sack of Big Lizard Meat to Tharg in Dustwallow Marsh.','Big sack!','Tharg friend sent him meat? Tharg love meat! Tharg love old friend, new friend too.\n\nHere, Tharg had gift for new friend for help.\n\nTharg loves new friend.',60586,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60586,1,3500,2750,76,150,0,0,0,0,0,0,0,0,0,60587,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (80960, 40404);
replace into creature_involvedrelation (id, quest) values (4502, 40404);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60586,8442,'"Big Sack of Big Lizard Meat"',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'It stinks.',0);

replace into item_template values
 ('60587', '4', '0', 'Tharg\'s Rock of Friendship', 'To new friend! Tharg love you.', '4719', '2', '0', '1', '2000', '500', '12', '-1', '-1', '35',
 '30', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '6', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);