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


delete from quest_template where entry = 40052;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40051,40052,2,876,60,5,0,0,'Cow Scroll II','You have found the First Clue, there is a future yet for you little moo. The second clue will be found far to the west, in a mine named after the humans most valuable currency.','Find the Second Clue.','','<Upon searching within the Muddy Pile, you find yet another Clue>.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation (id, quest) values (2010810, 40052);
replace into gameobject_involvedrelation (id, quest) values (2010811, 40052);

delete from gameobject_template where entry = 2010811;
replace into gameobject_template values
(2010811, 0, 2, 49, 'Mysterious Muddy Pile', 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


delete from quest_template where entry = 40053;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40052,40053,2,876,60,5,0,0,'Cow Scroll III','The Second Clue is yours, but the next will be much more dangerous. Keep your wits about you, and be safe. One that I called friend died a long time ago, and was buried in a large graveyard, bigger then most. Find this grave, and you will find your clue.','Find the Third Clue.','','<Upon searching within the Mysterious Grave, you find yet another Clue>.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation (id, quest) values (2010811, 40053);
replace into gameobject_involvedrelation (id, quest) values (2010812, 40053);

delete from gameobject_template where entry = 2010812;
replace into gameobject_template values
(2010812, 0, 2, 23124, 'Mysterious Grave', 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


delete from quest_template where entry = 40054;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40053,40054,2,876,60,5,0,0,'Cow Scroll IV','With the Third Clue you get close little one, there is still searching to do, and this will be harder for you. The next clue is in a land the trolls call home and fight with one another. Where the animals lurk in the deep woods. You will find this clue there, by water.','Find the Fourth Clue.','','<Upon searching within the Mysterious Sunken Chest, you find yet another Clue>.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation (id, quest) values (2010812, 40054);
replace into gameobject_involvedrelation (id, quest) values (2010813, 40054);

delete from gameobject_template where entry = 2010813;
replace into gameobject_template values
(2010813, 0, 2, 22656, 'Mysterious Sunken Chest', 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


delete from quest_template where entry = 40055;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40054,40055,2,876,60,5,0,0,'Mysterious Cow Scroll V','The hunt for the final clue. It will be incredibly dangerous, handle yourself with care little moo. It is a place where those with green skin came to our world.','Find the Final Clue.','','<Hidden within the Mysterious Charred Locker you find a secretive scroll>.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation (id, quest) values (2010813, 40055);
replace into gameobject_involvedrelation (id, quest) values (2010814, 40055);

delete from gameobject_template where entry = 2010814;
replace into gameobject_template values
(2010814, 0, 2, 23430, 'Mysterious Charred Locker', 0, 4, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');