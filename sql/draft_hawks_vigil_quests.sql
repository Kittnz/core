replace into item_template values
(81400, 0, 12, 0, 'Sticky Ooze-Tar', '', 9518, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(81401, 0, 12, 0, 'Mottled Talon', '', 1499, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into item_template values
 ('81402', '0', '4', '3', 'Mountain Watcher\'s Crown', '', '30091', '2', '0', '1', '8456', '2114', '1', '-1', '-1', '31',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '4', '3',
 '3', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '161', '0', '0', '0',
 '5', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update item_template set stackable = 5 where entry in (81400, 81401);

update creature_template set npc_flags = 3 where entry = 52015;

replace into creature_loot_template values 
(1032, 81400, -8, 6, 1, 1, 0, 0, 10),
(1031, 81400, -10, 6, 1, 1, 0, 0, 10),
(1033, 81400, -12, 6, 1, 1, 0, 0, 10),
(1021, 81401, -20 6, 1, 1, 0, 0, 10),
(1020, 81401, -20, 6, 1, 1, 0, 0, 10);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55200,4018,26,20,0,0,'Preparations for Adventure!','Hello there friend, have you seen the world? Explored all of the nooks of Azeroth and truly taken in it\'s beauty?\n\nI don\'t think a soul has, but the very prospect of it is enticing, no? I am preparing for a trip to see the world and I still need supplies, one of which, is torches.\n\nThe ooze\'s to the north around Ironbeard\'s Tomb have been something I\'ve used in the past, get me 5 Sticky Ooze-Tar and 5 Simple Wood from any trade vendor.','Gather 5 Sticky Ooze-Tar and 5 Simple Wood for Samuel Vickers.','Have you had any chance in gathering the materials for my adventure?','Quicker then I had imagined, you must be a seasoned explorer, hopefully one day I will see as much as you have, thanks, $N.',81400,5,4470,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,1750,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (52015, 55200);
replace into creature_involvedrelation (id, quest) values (52015, 55200);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55201,11,26,20,0,0,'Retaking The Roadways','The ground connection to Menethil harbor has been severed ever since Raptor\'s have moved in and claimed it.\n\nWe haven\'t had the man power to press them back, or even reclaim it, now we\'re stuck up here.\n\nHead down to the base of the mountain and kill the raptors there, collect for me 5 of their talons as proof.','Collect 5 Mottled Talon\'s for Captain Snowbeard.','Have you slain some of the beasts blocking our path?','Less raptors stalking at the base of our hills makes me all the happier, thanks for the work, $N.',81401,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,2175,47,150,0,0,0,0,0,0,0,0,0,81402,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (52095, 55201);
replace into creature_involvedrelation (id, quest) values (52095, 55201);

