-- Zalazane's Fall
delete from quest_template where entry = 40389;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (826,40389,2,14,10,7,512,0,'Zalazane\'s Fall','If you do not need aid from my assistant, perhaps you can do our tribe one last favor. Our chieftain, Vol\'jin, remains in Grommash Hold to provide counsel to the Warchief while his heart aches for several losses he has endured since departing Stranglethorn.\n\nTake Zalazane\'s head to Vol\'jin and reassure him that his people remain ready to share his burdens.','Take Zalazane\'s Head to Vol\'jin in Grommash Hold.', 'I do not have long to speak, $c. What is it you bring to me?','The head of Zalazane? No, it could never be that easy.\n\n<As you and the great chieftain observe the witchdoctor\'s head, it slowly loses its form and resembles that of another troll, perhaps a mindslave>.\n\nIt will not be so easy to reclaim the Echo Isles from Zalazane and his army of slaves, but at least we have contained the threat for now.\n\nThere are those who will not understand my decision to keep Thrall from reclaiming the isles for my tribe, but we are indebted once to the Warchief and his people and now we will prove that their faith was not misplaced. When the time comes, $N, I hope to see you on the battlefield beside my tribe.',4866,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4866,1,175,680,530,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3188, 40389);
replace into creature_involvedrelation (id, quest) values (10540, 40389);