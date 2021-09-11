-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

delete from quest_template where entry = 40051;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40051,2,876,60,5,0,0,'Cow Scroll I','Little one, the promised land is far away, and there is much to do. If you wish to go there you must retrieve clues dotted across the landscape and follow my instructions in order to do so. Do this with patience, and act with caution, we must act as if all is normal.\n\nThe first clue will be placed within a farm containing elements of the Hallow\'s End Festival.','Find the First Clue.','','<Upon searching within the Trunk, you find yet another Clue>.',60149,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60149,1,0,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_involvedrelation (id, quest) values (2010810, 40051);

delete from item_template where entry = 60149;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, start_quest) values (60149,1301,'Mysterious Cow Scroll',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',40051);

delete from gameobject_template where entry = 2010810;
replace into gameobject_template values
(2010810, 0, 2, 24202, 'Mysterious Trunk', 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
