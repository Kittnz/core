replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55200,4018,26,20,0,0,'Preparations for Adventure!','Hello there friend, have you seen the world? Explored all of the nooks of Azeroth and truly taken in it\'s beauty?\n\nI don\'t think a soul has, but the very prospect of it is enticing, no? I am preparing for a trip to see the world and I still need supplies, one of which, is torches.\n\nThe ooze\'s to the north around Ironbeard\'s Tomb have been something I\'ve used in the past, get me 5 Sticky Ooze-Tar and 5 Simple Wood from any trade vendor.','Gather 5 Sticky Ooze-Tar and 5 Simple Wood for Samuel Vickers.','Have you had any chance in gathering the materials for my adventure?','Quicker then I had imagined, you must be a seasoned explorer, hopefully one day I will see as much as you have, thanks, $N.',81400,5,4470,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,1750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (52015, 55200);
replace into creature_involvedrelation (id, quest) values (52015, 55200);

replace into item_template values
(81400, 0, 12, 0, 'Sticky Ooze-Tar', '', 9518, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set stackable = 5 where entry = 81400;

update creature_template set npc_flags = 3 where entry = 52015;

replace into creature_loot_template values 
(1032, 81400, -8, 6, 1, 1, 0, 0, 10),
(1031, 81400, -10, 6, 1, 1, 0, 0, 10),
(1033, 81400, -12, 6, 1, 1, 0, 0, 10);