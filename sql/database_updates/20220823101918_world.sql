-- An Unusual Find
delete from quest_template where entry = 40540;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40540,2,47,45,40,0,0,'An Unusual Find','As you walk across the shore, you notice something out of the ordinary. A murloc tadpole, left alone in the reeds. It looks malnourished. You should feed it. It probably likes turtle meat.','Find some turtle meat for the murloc tadpole in Hinterlands.','<The murloc tadpole gurgles.>','You pass the meat to the murloc. Let\'s see if it really was that hungry.',3712,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60946, 40540);
replace into creature_involvedrelation	(id, quest) values (60946, 40540);

REPLACE INTO gameobject_template VALUES
(2010917, 1, 29560, 'Turtle Meat', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Upon completion, spawn a gobject that looks like meat close to Murloc Tadpole. He should walk up to it, then stand for a while, and emote should show:
-- ‘Murloc Tadpole eats the turtle meat with an avidity you\'ve never seen before.\'
-- Turtle meat should disappear, and Murloc Tadpole should go back to his original position

-- Family Above All
delete from quest_template where entry = 40541;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (40540,40541,2,47,45,40,0,0,'Family Above All','The murloc tadpole stares at you, like it still wants something. But what? More food? No, it\'s impossible. Maybe it got lost and is looking for its parents? You should look on the shore, they must be somewhere around here.','Search for the parents of the lost murloc, then return to the murloc tadpole. They should be somewhere on the shore.','Gurglglgl!','Poor little murloc. The search yielded no results. Maybe the locals would know what happened to the murloc family?',0,0,0,0,0,0,0,0,60383,1,60384,1,0,0,0,0,0,0,0,2000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Murloc Hut checked','Murloc Nest searched');

replace into creature_questrelation		(id, quest) values (60946, 40541);
replace into creature_involvedrelation	(id, quest) values (60946, 40541);

REPLACE INTO creature_template VALUES
(60383, 328, 0, 0, 0, 0, 'quest_40541_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60384, 328, 0, 0, 0, 0, 'quest_40541_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO gameobject_template VALUES
(2010918, 1, 23009, 'Abandoned Murloc Hut', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_abandoned_murloc'),
(2010919, 1, 27020, 'Abandoned Murloc Nest', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_abandoned_murloc');

replace into npc_text (ID, BroadcastTextID0) values (30033,30033);
replace into npc_text (ID, BroadcastTextID0) values (30034,30034);
REPLACE INTO broadcast_text VALUES
(30033, 'The murloc hut looks abandoned, and unkempt.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30034, 'The nest is empty.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Loneliest Murloc in the World (A)
delete from quest_template where entry = 40542;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40541,40542,2,47,45,40,0,0,'Loneliest Murloc in the World','If anyone here could know anything about the murloc family, it would be the gryphon riders of Aerie Peak. Maybe they have noticed something unusual during one of their flights? You should ask.','Venture to Aerie Peak and ask about the murloc family.','The Aerie Peak welcomes you, outsider.','Weird question, $r. But to my knowledge, none of my gryphon riders reported murloc presence on the shore. Revantusk, yes, but no murlocs. Are you sure your information is correct?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60946, 40542);
replace into creature_involvedrelation	(id, quest) values (5635 , 40542);
update quest_template set requiredraces = 589		where  entry = 40542;

-- Loneliest Murloc in the World (H)
delete from quest_template where entry = 40543;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40541,40543,2,47,45,40,0,0,'Loneliest Murloc in the World','If anyone here could know anything about the murloc family, it would be the Revantusk trolls. Maybe they have noticed something? You should ask.','Venture to Revantusk Village and ask about the murloc family.','Katoom be fishin\', mon. Be quiet.','Kattom be not seein\' any murlocs around here, mon. Da turtles ate dem all. Murlocs be good snack, taste like fish, but betta\'.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60946, 40543);
replace into creature_involvedrelation	(id, quest) values (14740, 40543);
update quest_template set requiredraces = 434		where  entry = 40543;

-- Nat Pagle, Murloc Expert (H)
delete from quest_template where entry = 40544;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40543,40544,2,47,45,40,0,0,'Nat Pagle, Murloc Expert','If ya be wanting to help your little murloc friend, ya better find Nat Pagle. He be the best fishermon in da world. He be legendary among us. Katoom knows dat he be spending a lot of time among murlocs, to learn fishing from dem, mon. He must be knowing somethin\'!\n\nKatoom be not knowing where to find Nat Pagle. He traveled to Kalimdor some time ago.','Find Nat Pagle and ask him about murloc customs.','I am Nat Pagle, master fisherman. What can I help you with?','Murlocs... I have spent months amongst them, trying to learn their fishing techniques. During this time, I learned a lot about their customs and behavior.\n\nSometimes, I feel like I can understand their language. It creeps me out.\n\nRegardless, when it comes to your little friend, I don\'t have good news...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (14740, 40544);
replace into creature_involvedrelation	(id, quest) values (12919, 40544);
update quest_template set requiredraces = 434		where  entry = 40544;

-- Nat Pagle, Murloc Expert (A)
delete from quest_template where entry = 40545;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40542,40545,2,47,45,40,0,0,'Nat Pagle, Murloc Expert','So you want to help the little murloc? Valiant effort. We, the Wildhammer, value compassion above all. Unfortunately, I can\'t help you find his parents.\n\nBut I know one person who could.\n\nNat Pagle. The legendary fisherman. When I last met him, he wanted to learn fishing secrets from murlocs. If you are committed, you could try to find him. Maybe he knows their language? I heard he is now in Kalimdor.','Find Nat Pagle and ask him about murloc customs.','I am Nat Pagle, master fisherman. What can I help you with?','Murlocs... I have spent months amongst them, trying to learn their fishing techniques. During this time, I learned a lot about their customs and behavior.\n\nSometimes, I feel like I can understand their language. It creeps me out.\n\nRegardless, when it comes to your little friend, I don\'t have good news...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5635 , 40545);
replace into creature_involvedrelation	(id, quest) values (12919, 40545);
update quest_template set requiredraces = 589		where  entry = 40545;

-- Small Murloc in a Big Pond (A)
delete from quest_template where entry = 40546;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40545,40546,2,47,45,40,0,0,'Small Murloc in a Big Pond','It pains me to tell this, but his parents are probably... ehm, dead. Murlocs, while ferocious and territorial, care deeply for their tadpoles. I have seen them sacrificing themselves so their children could live. Truly, we should appreciate these creatures more.\n\nAnd one more thing. If you want this little murloc to live, it will need your help. Hinterlands are dangerous. It won\'t survive on its own.','Go back to the murloc tadpole in Hinterlands.','Grmrglgl!','The tadpole is waiting for you. You are the only one who can save him now. You will become his new family, his new friend.\n\nBut wait, it needs a name. Gurky! Gurky is perfect.\n\n<Gurky hops into your pocket.>\n\nOh, the adventures you will have together!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,0,0,0,0,0,0,0,0,0,0,0,22114,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (12919, 40546);
replace into creature_involvedrelation	(id, quest) values (60946, 40546);
update quest_template set requiredraces = 589		where  entry = 40546;

-- Small Murloc in a Big Pond (H)
delete from quest_template where entry = 40547;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40544,40547,2,47,45,40,0,0,'Small Murloc in a Big Pond','It pains me to tell this, but his parents are probably... ehm, dead. Murlocs, while ferocious and territorial, care deeply for their tadpoles. I have seen them sacrificing themselves so their children could live. Truly, we should appreciate these creatures more.\n\nAnd one more thing. If you want this little murloc to live, it will need your help. Hinterlands are dangerous. It won\'t survive on its own.','Go back to the murloc tadpole in Hinterlands.','Grmrglgl!','The tadpole is waiting for you. You are the only one who can save him now. You will become his new family, his new friend.\n\nBut wait, it needs a name. Gurky! Gurky is perfect.\n\n<Gurky hops into your pocket.>\n\nOh, the adventures you will have together!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2500,0,0,0,0,0,0,0,0,0,0,0,22114,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (12919, 40547);
replace into creature_involvedrelation	(id, quest) values (60946, 40547);
update quest_template set requiredraces = 434		where  entry = 40547;

-- Report from Falgran
delete from quest_template where entry = 40548;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (1284,40548,2,15,35,30,0,0,'Report from Falgran','Alright, $c. While you were gone I received a report from Falgran, the scout who I sent to investigate the footprints. He requires your immediate assistance. He set up a camp somewhere close to the border with the Barrens, between Shady Rest and Lost Point.','Report to Falgran Hastil close to the border with the Barrens.','$N, right? Thanks for coming so fast.','I followed the footprints and I found our suspect. I couldn\'t do much more. I\'m just a scout.\n\nThat\'s why you are here.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40548);
replace into creature_involvedrelation	(id, quest) values (5088, 40548);

update quest_template set exclusivegroup = -1284 where entry IN (1284,1287,1320);

update creature_template set npc_flags = 3 where entry = 5088;
set @gossip_menu_id = 41209; set @magic_number = 50880;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What is it you need?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 5088;

-- The Quillboar Suspects
delete from quest_template where entry = 40549;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40548,40549,2,15,35,30,512,0,'The Quillboar Suspects','So, $N, the footprints were definitely quillboar hooves. I followed them well into the Barrens, thinking they would lead me to the Razorfen Kraul. I was wrong. The raiding party actually stopped just outside of it, which makes your job easier.\n\nVenturing into the Kraul... The mere thought makes me shudder.\n\nBack to the topic. The camp is north of the Kraul, close to the road. You should have no trouble finding it. Try to sneak in, or kill them all. Doesn\'t matter to me. What is important - find some evidence, maybe some items that could\'ve been taken from the inn.','Investigate the quillboar camp north of Razorfen Kraul for any evidence.','Back so soon? The camp is west of here.','You say that their chieftain had this tablet with drawings resembling the burned in... curious. We will need someone able to read the quillboar scripture.',60810,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2750,1011,100,0,0,0,0,0,0,0,0,0,60810,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5088, 40549);
replace into creature_involvedrelation	(id, quest) values (5088, 40549);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60810,31287,'Quillboar Tablet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- The Goblin Linguist
delete from quest_template where entry = 40550;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40549,40550,2,15,35,30,0,0,'The Goblin Linguist','Let\'s think... If anyone is able to translate this, it would be some goblin. These fellows do trade with everyone, there must be someone who has at least a basic understanding of this language. Could you please take this to Ratchet? I will stay here for now and observe the camp.','Find someone who is able to translate the tablet. Ratchet is a good place to start.','New customer?','Ah yes, quillboar writing. Very hard to learn, very hard. I can read it, though. Did some business with them a long time ago. Nasty bunch, I tell you.\n\nHowever, you know how it is here. Everything has a price.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,600,1011,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5088, 40550);
replace into creature_involvedrelation	(id, quest) values (3442, 40550);

-- A Strangle Favor
delete from quest_template where entry = 40551;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40550,40551,2,15,35,30,0,0,'A Strangle Favor','While I am busy translating this, you help me. Easy.\n\nI need something from Stranglethorn Vale. I know, it\'s far, but fortunately, we have a beautiful ship that will take you straight to Booty Bay! Wonderful, isn\'t it?\n\nI heard about some mining operations being done in the northern region, close to some lake or something. By no other than our competitor, Venture Company. I need you to go there and, ehm, borrow some stuff from them.\n\nBring me 10 samples of ‘the thing\' they are excavating. I heard it\'s some blue crystals. I think you will be able to find them on their dead bodies. But you didn\'t hear that from me.','Bring 10 Strange Blue Shards from the Venture Company in Stranglethorn Vale for Sputtervalve in Ratchet.','Got it?','Hah, good job. I hope you didn\'t have to dispose of too many Venture Co. workers... And I hope their insurance covers this!\n\n<Sputtervalve laughs.>\n\nLet\'s get to translating this thing.',60811,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2800,470,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3442, 40551);
replace into creature_involvedrelation	(id, quest) values (3442, 40551);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60811,20657,'Strange Blue Shard',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(1096, 60811, -80, 0, 1, 1, 0),
(1097, 60811, -80, 0, 1, 1, 0),
(1094, 60811, -80, 0, 1, 1, 0),
(921 , 60811, -80, 0, 1, 1, 0);

-- Back to Falgran
delete from quest_template where entry = 40552;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40551,40552,2,15,35,30,0,0,'Back to Falgran','<Sputtervale focuses on the tablet.>\n\nTheir writing is not exactly like ours. They just draw some pictures, and you have to interpret it on your own. There are some clues that help you with grasping the meaning but...\n\nYou probably aren\'t interested in quillboar lore, yeah.\n\nSo, what I get from this: a band of quillboars wants to attack an inn. They go there with a raiding party, but they find the inn already burned to the ground. Then some angry pictures. I guess they wanted violence.\n\nSo, yeah. This is what I got from this, pal.','Report back to Falgran on the border with Barrens.','Were you able to translate the tablet?','So it wasn\'t them... Unless the quillboars are the masters of deception, we reached a dead end.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,1011,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3442, 40552);
replace into creature_involvedrelation	(id, quest) values (5088, 40552);

-- Suspicious No More
delete from quest_template where entry = 40553;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40552,40553,2,15,35,30,0,0,'Suspicious No More','Go and report our findings to Captain Vimes. I will stay here for some time, to watch over the inn. I got some reports that the Horde is sniffing around.\n\nIt can\'t mean anything good.','Report back to Captain Garran Vimes in Theramore.','Welcome back, $N. What did you discover?','Damn it. If it was the quillboars, it would make it so easy. Shame, but at least we ruled out one of the suspects.\n\nNevertheless, good work. Finally we got at least a step closer to solving this mystery. Please, take this gold as a reward from lady Jaina herself.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,500,1011,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (5088, 40553);
replace into creature_involvedrelation	(id, quest) values (4944, 40553);

-- The Shield's Owner
delete from quest_template where entry = 40554;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2,objectivetext3) values (40553,40554,2,15,35,30,0,0,'The Shield\'s Owner','I had a talk with one of our scouts. He is, well, responsible for spying on Camp Taurajo, deep in the barrens. And he is certain, and I believe him, that no Taurajo tauren ever wielded this shield.\n\nI tell you about this, because if it was really of Tauren craftsmanship, then the owner of the shield  must\'ve lived in the swamp for some time.\n\nI sent our infiltrators to check upon the Brackenwall Village, the horde outpost here for any sign of Taurens. While they are on their mission, I have a request. Gather intel from our watchtowers in the marsh. Maybe our soldiers remember something remarkable.','Gather information from the nearby watchtowers and return to Captain Garran Vimes in Thermore.','Were our scouts of any use?','So this is all we have. Well, it is a lead as good as any other. But what can we do with this information?',0,0,0,0,0,0,0,0,60385,1,60386,1,60387,1,0,0,0,0,0,950,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Report from Talmand','Report from Sleightor','Report from Valnor');

replace into creature_questrelation		(id, quest) values (4944, 40554);
replace into creature_involvedrelation	(id, quest) values (4944, 40554);

REPLACE INTO creature_template VALUES
(60385, 328, 0, 0, 0, 0, 'quest_40554_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60386, 328, 0, 0, 0, 0, 'quest_40554_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60387, 328, 0, 0, 0, 0, 'quest_40554_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- The Search for the Grave
delete from quest_template where entry = 40555;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40554,40555,2,15,35,30,0,0,'The Search for the Grave','These Grimtotem have been under our constant observation since they moved into Dustwallow. They are a nasty bunch, but I assure you, if it was them, we would already know. However, if this tauren the scouts spoke of really existed, we could ask about him in Brackenwall Village.\n\nIn theory.\n\nTensions with the Horde are high, and I don\'t want my men to see us negotiate with them. I had way too many deserters in recent months. You could try to find his grave. The tauren mummify their dead, but since he was the only one here, I doubt the ogres knew about it. Just search for a graveyard, or something like this close to Brackenwall. I doubt you will find anything, but it is the only lead we have.\n\nAnd let\'s hope Lieutenant Caldwell returns soon with some information about Reethe.','Find the grave of a tauren warrior close to Brackenwall Village.','This grave is big enough to fit a tauren for sure. It\'s worth investigating.','In the grave, you find skeletal remains of a tauren. He must\'ve died at least a few years ago.\n\nThe grave, however, has been recently dug up and hastily buried with earth. The dirt is still loose, it must\'ve been no longer than a few weeks.\n\nSome equipment is buried with the tauren too. Leather straps, metal coins and pauldrons, and a beautiful, one handed axe.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,850,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40555);
replace into gameobject_involvedrelation (id, quest) values (2010920, 40555);

replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010920, 2, 49, 1, 'Turmoiled Grave', 32, '');

-- Another Mystery to Solve
delete from quest_template where entry = 40556;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40555,40556,2,15,35,30,0,0,'Another Mystery to Solve','Who dug up the grave? Why? Did they take the shield from it?\n\nMore questions, still no answers. You should report back to Captain Garran Vimes.','Go back to Captain Garran Vimes at Theramore Keep with your findings.','Have you found anything?','A dug-up grave of a tauren warrior... Another mystery, another question.\n\nLet me gather my thoughts on this.\n\nSo, $N, you say that he died a long time ago. It is no coincidence. The shield must\'ve been taken from his grave. But... why?\n\nWhy would anyone do this? This doesn\'t make any sense. If someone wanted us to blame the Horde, they could\'ve found a better way to do it for sure...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into gameobject_questrelation	(id, quest) values (2010920, 40556);
replace into creature_involvedrelation	(id, quest) values (4944, 40556);

-- The Troubles Ahead
delete from quest_template where entry = 40557;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40553,40557,2,15,35,30,0,0,'The Troubles Ahead','Lieutenant Caldwell still hasn\'t returned from his mission to find Paval Reethe. I fear the worst. But, alas, we can only wait.\n\nWhen it comes to our investigation. Well, another dead end.\n\nHowever, Falgran reported that the horde has been sniffing around the inn. Please, assist him with this matter. He is where you met him before.','Meet with Falgran Hastil on the road between Shady Rest Inn and the Lost Point in Dustwallow Marsh.','$N! Nice to see you.','I suspect they might know something...',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40557);
replace into creature_involvedrelation	(id, quest) values (5088, 40557);

update quest_template set exclusivegroup = -40553 where entry IN (40553,40556);

-- The Meeting with the Enemy
delete from quest_template where entry = 40558;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40557,40558,2,15,35,30,0,0,'The Meeting with the Enemy','The Horde diplomat will be here any moment now. I wonder what they have to say...\n\nAnd, $N, please, try to remain calm and do not provoke them. I know it may prove hard because of our history, but they are just like you and me.\n\nJust much more green.','Assist Falgran with the meeting.','Back already? What did you learn?','You met with the Horde unauthorized? This could\'ve provoked a major diplomatic incident!\n\nAt least you learned important information.',0,0,0,0,0,0,0,0,60388,1,0,0,0,0,0,0,0,0,0,1050,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Assist Falgran with the meeting');

replace into creature_questrelation		(id, quest) values (5088, 40558);
replace into creature_involvedrelation	(id, quest) values (4944, 40558);

REPLACE INTO creature_template VALUES
(60388, 328, 0, 0, 0, 0, 'quest_40558_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Upon quest start, spawn NPC Kagoro (4972) at the following : Map1, X-3810.79, Y:-2763.20, Z: 34.60, Orientation: 2.394
-- Have NPC Falgran Hastil walk towards the following coordinates. : Map1, X:-3809.80, Y:-2759.96, Z:35.37, Orientation : 5.29
-- As Falgran is walking down, have him say the following line 2 seconds after he starts to move. 
-- F: Remain calm...
-- (Wait 8 seconds, and begin dialogue in /say.
-- K: Hail, human. I am Kagoro, scout of the Horde 
-- (Wait 5 seconds)
-- F: I am Falgran Hastil, scout of Theramore. And this is $N. Why did you call for this meeting?
-- (Wait 7 seconds)
-- K: We saw you investigate the inn. We wanted to assure you it is not the Horde's doing.
-- (Wait 7 seconds)
-- F: We found this shield strapped to the wall of the inn. Do you have any recollection of this object?
-- (Wait 8 seconds)
-- K: Let me see.
-- (EMOTE) <Kagoro investigates the shield thoroughly>
-- (Wait 8 seconds)
-- K: By the ancestors. Yes, I know this shield. It belonged to Wattapo, a tauren warrior who once lived in the Brackenwall Village. He died a long time ago.
-- (Wait 10 seconds)
-- F: Do you know how it could've ended up in the inn? We found his grave. It was recently disturbed.
-- (Wait 6 seconds)
-- K: To disturb the grave of a fallen warrior... I assure you, I know nothing of this.
-- (Wait 5 seconds)
-- F: It seems like someone wanted to make us blame you for the burning of the inn.
-- (Wait 7 seconds)
-- K: Indeed. Have you found anything else in the investigation?
-- (Wait 6 seconds)
-- F: Yes, quillboar footprints...
-- (Wait 4 seconds)
-- K: False lead.
-- (Wait 3 seconds)
-- F: I see you did some work too.
-- (Wait 2 seconds)
-- (EMOTE)<Kagoro nods>
-- (Wait 3 seconds)
-- F: And the badge of one of the deserters. Paval Reethe. We couldn't find Reethe, though. Have you seen him, by any chance?
-- (Wait 8 seconds)
-- K: This is... a delicate matter, and the actual reason I called for the meeting. Paval Reethe is dead.
-- (Wait 7 seconds)
-- F: He was a deserter. While I still would've preferred to arrest him and allow for a just trial, I understand that you killed him. We do not blame you.
-- (Wait 9 seconds)
-- K: If it only was that simple. We knew he was connected to the burning of the inn, and we wanted to investigate him. Before he could talk... we were attacked. By Theramore soldiers. One of them bore the name Caldwell.
-- (Wait 10 seconds)
-- F: Attacked? Unprovoked, by Theramore soldiers? I swear to the Light, orc. If you are lying...
-- (Wait 6 seconds)
-- K: I swear upon my ancestors and my warchief. They killed him in cold blood. Quick arrow pierced his heart. We also barely made it out alive.
-- (Wait 8 seconds)
-- F: Theramore soldiers would never... We shall investigate this. But if we find out that your words aren't true...
-- (Wait 5 seconds)
-- K: I am sorry for the loss of your comrades. While you investigate this, we shall follow another lead we have. Black dragonflight.
-- (Wait 8 seconds)
-- F: And we will investigate in Theramore. But be warned, orc. Your story doesn't add up.
-- (Wait 6 seconds)
-- K: Let's meet here once we know more. I hope you will find truth in your city of stones. Farewell.
-- (Wait 6 seconds)
-- F: Farewell, orc.
-- Kagoro despawns 
-- F: We are in deep trouble, $N. Report to Garran Vimes at once!
-- (Wait 10 seconds, and reset Falgran Hastil to his original position)

-- The Betrayal from Within
delete from quest_template where entry = 40559;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40558,40559,2,15,35,30,0,0,'The Betrayal from Within','So the shield really belonged to the tauren from Brackenwall. Good work.\n\nOn the other hand, the reported killing of Paval Reethe by our soldiers is troubling. Deeply troubling. I cannot just trust the Horde on this. My role, as a captain, is not only to order, but also to serve.\n\nI\'m worried that Lieutenant Caldwell only acted in his self defence. But, if the orc was really speaking the truth, you may find some evidence in Caldwell\'s belongings. You can find his quarters downstairs. He was sent there with a soldier named Hallan, check hers too.\n\nI will prepare the report for lady Jaina.','Check the belongings of Caldwell and Hallan downstairs, then report to Captain Vimes.','Have you found their rooms? They should be downstairs.','This is embarrassing. Especially for me, as a Captain.',60812,1,60813,1,60814,1,0,0,0,0,0,0,0,0,0,0,0,0,0,850,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40559);
replace into creature_involvedrelation	(id, quest) values (4944, 40559);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60812,18815,'Kul Tiran Badge',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60813,4804,'Hidden Weapons',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60814,13430,'Letter to Voss',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50549);

REPLACE INTO page_text VALUES
(50549, 'Voss,\n\nMy sabotage is working. Day by day, weapons are disappearing from the armory and no one notices. Soon, soldiers will fight with wooden sticks.\n\nI can\'t hide here anymore. Mere thought of staying here for a second longer with these traitors makes me sick. Let me and Hallan join you and your men. Soon, we will outnumber soldiers of Theramore. And then...\n\nHe will have his vengeance.\n\nCaldwell.', 0);

REPLACE INTO gameobject_template VALUES
(2010921, 3, 259, 'Theramore Trunk', 0, 4, 0.5, 43, 2010921, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2010922, 3, 24637, 'Personal Belongings', 0, 4, 1, 43, 2010922, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2010921,60812,-100,0,1,1,0),
(2010921,60813,-100,0,1,1,0),
(2010922,60814,-100,0,1,1,0);

-- The Betrayal from Within
delete from quest_template where entry = 40560;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40559,40560,2,15,35,30,0,0,'The Betrayal from Within','So it is true. My soldiers, whomst I thought as most loyal, were actually deserters. I wonder how many more hide in our midst.\n\nBut for now, let\'s gather the information. Caldwell and Hallan were deserters. They killed Paval Reethe, when he was questioned by the Horde. Did they do it just to spite the Horde, or... He knew something...\n\nOnce again, our findings lead us to the deserters in the swamp. Well, I doubt that we could make them talk. They hate us, maybe even more than they hate the Horde. Any mindless attack on their abode will not provide us with answers.\n\nWe need to turn to magic. Forbidden magic. If we had something that belonged to Paval Reethe, we could commune with his spirit. It is a dangerous practice, many would even consider it unethical.\n\nThe ends justify the means. And fortunately, we have his badge. Since he passed recently with unfinished business, his spirit may still be in Azeroth.\n\nGo to the Mage Tower here and explain the situation to Magus Halister.','Speak with Magus Halisterat the tower of Theramore Isle in Dustwallow Marsh.','I studied the Arcane Arts for decades. Yet I always craved... Something more.','The Ritual of Divination. Yes, I am able to perform it. But be wary, $r. It is extremely dangerous for the spirit, and for the caster.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,350,1011,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944 , 40560);
replace into creature_involvedrelation	(id, quest) values (60731, 40560);

-- Preparation for Divination
delete from quest_template where entry = 40561;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40560,40561,2,15,35,30,0,0,'Preparation for Divination','Very well. If it is Captain Vimes wish... who am I to say no. But, if we are to make the ritual as safe as possible to the spirit, and to us, I will need some rare ingredients. Your best bet would be buying them in Dalaran, if, well, it still existed.\n\nI have heard rumors that Kirin Tor is trying to rebuild the magical city, so if you don\'t mind traveling... Maybe they have some ingredients needed. The rest can be found in these swamps, if you have a keen eye.\n\nI need 1 Arcane Resonator from Dalaran, 3 Moonstones and 10 Swamp Ooze Ichors. I heard reports of ooze abominations in the south.','Bring 1 Arcane Resonator, 3 Moonstones and 10 Swamp Ooze Ichors to Magus Halister at Theramore Isle in Dustwallow Marsh.','Back from Dalaran already?','Ah, the Arcane Resonator. I thought this technology to be lost when Archimonde crushed Dalaran. Fortunately, Kirin Tor is tougher than I expected.\n\nShall we begin?',60815,1,1705,3,60816,10,0,0,0,0,0,0,0,0,0,0,0,0,0,2750,1011,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (60731, 40561);
replace into creature_involvedrelation	(id, quest) values (60731, 40561);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60815,31205,'Arcane Resonator',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0),
(60816,3663,'Swamp Ooze Ichor',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(4391,60816,-85,0,1,1,0),
(4392,60816,-90,0,1,1,0),
(4393,60816,-90,0,1,1,0);

-- Ritual of Divination
delete from quest_template where entry = 40562;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40561,40562,2,15,35,30,3,0,'Ritual of Divination','I shall need your protection during the ritual. Some unwanted spirits may also come. Dispose of them.\n\nLet\'s begin.','Protect Magus Halister during the ritual and report the finding to Garran Vimes at Theramore Isle in Dustwallow Marsh.','I heard terrible noises coming from the Mage Tower. What happened?','So it was the deserters. Very well, I suspected it, to be honest. These people have no honor. We shall send our best men to deal with them. But before this, I think the Horde should also get an explanation and... an apology.\n\nAnd when it comes to this Mariner, let me consult with some of my advisors. I think I may have heard of this man before.',0,0,0,0,0,0,0,0,60389,1,0,0,0,0,0,0,0,0,0,2850,1011,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Protect Magus Halister');

replace into creature_questrelation		(id, quest) values (60731, 40562);
replace into creature_involvedrelation	(id, quest) values (4944 , 40562);

update creature_template set script_name = 'npc_magus_halister' where entry = 60731;

REPLACE INTO creature_template VALUES
(60389, 328, 0, 0, 0, 0, 'quest_40562_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Upon accepting the quest, Magus Halister begins to cast a spell.
-- Magus Halister: Spirits! I call upon thee! If one called Paval Reethe is listening, come! We need your help!
-- Two 'Disturbed Ghost' should spawn and attack Magus Halister and Magus Halister. If a player or magus dies the quest is failed.
-- Upon defeating two spirits:
-- Magus Halister says the following lines
-- Paval Reethe! Come, if you want to see justice, I call upon you!
-- Paval Reethe spawns at the location : Map1, X:-3748.31, Y:-4440.36, Z: 30.56, Orientation:2.75
--  (Put a ghost effect on Pavel Reethe)
-- (wait 2 seconds)
-- Paval Reethe: Who disturbs my rest? Do I owe my service to the Alliance even in death? Let me pass to the Spirit Realm in peace.
-- (Wait 5 seconds)
-- Magus Halister: Paval Reethe. In life, you failed to uphold honor. You deserted your friends, your family. Now you have a chance to redeem yourself.
-- (Wait 7 seconds)
-- Paval Reethe: What do you want? Is this about Shady Rest Inn? You still haven\'t figured it out?
-- (Wait 5 seconds)
-- Magus Halister: Indeed. Tell us, what happened. Who burned the inn?
-- (Wait 4 seconds)
-- Paval Reethe: Isn\'t it obvious? The deserters did it. Not me, though. In my last days, I did what was right. I tried to stop them. That\'s why they left me in the swamp.
-- (Wait 8 seconds)
-- Magus Halister: Why? Why did they burn it?
-- (Wait 4 seconds)
-- Paval Reethe: Shady Rest Inn was open to everyone. Even us. We have spent many evenings there, laughing and drinking. But one time, some of our people got too drunk. They started meddling with the innkeeper. Until they said too much. Something about the Vengeful Mariner. They couldn\'t allow this to reach Theramore, so they burned the inn. No witnesses.
-- (Wait 13 seconds)
-- Magus Halister: Vengeful Mariner? 
-- (Wait 3 seconds)
-- Paval Reethe: I wanted to stop them, I wanted them to just, you know, talk it out. But they wouldn\'t listen. They beat me unconscious and threw me out in the swamp to die. After this, some of them wanted to blame it on the Horde, but in their drunken state, they could only find some old shield. Nonsense.
-- (Wait 15 seconds)
-- Magus Halister: Who is this Vengeful Mariner? Why couldn\'t the news about him reach Theramore? Speak, spirit!
-- (Wait 8 seconds)
-- Paval Reethe: I couldn't do anything to save them, right? I was alone. I couldn\'t save his family. I couldn\'t save his wife... his little son. Oh, what have we done...
-- (Wait 8 seconds)
-- Magus Halister: Paval Reethe, I command you to speak! Who is the Vengeful Mariner!?
-- (Wait 6 seconds)
-- Paval Reethe: You old fool. Do you really think so many deserters rally behind this halfwit Voss? Vengeful Mariner is our true leader. He is... you wouldn\'t understand, anyway.
-- (Wait 10 seconds)
-- (Delete the NPC of Pavel Reethe)
-- Magus Halister: Paval! I curse you, come back! Reethe!
-- (Wait 5 seconds)
-- Magus Halister: Who is the Vengeful Mariner!? 
-- (Wait 5 seconds)
-- (EMOTE)Magus Halister sighs.
-- Magus Halister: Well, looks like he left us for good. At least we got some answers out of him. Now, go back to Captain Garran 
-- Vimes. He will know what to do next.
-- (Wait 7 seconds, and complete quest) 

-- To Meet Again
delete from quest_template where entry = 40563;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40562,40563,2,15,35,30,0,0,'To Meet Again','Go to Falgran and tell him to arrange the meeting with the Horde. Explain the situation to them and... apologize for us blaming them. We need to make this right and show our good will.\n\nAfter this, meet me at the deserter\'s tower. We are going to deal with them.','Report back to Falgran Hastil on the road between Shady Rest Inn and the Lost Point.','Did our people really betray us?','The deserters. I knew they were vile people, but to burn innocents alive... Light, save the souls of these poor people.\n\nSo be it. Kagoro is already around here, we should meet him at once.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,800,1011,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40563);
replace into creature_involvedrelation	(id, quest) values (5088, 40563);

-- The Second Meeting
delete from quest_template where entry = 40564;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40563,40564,2,15,35,30,0,0,'The Second Meeting','Go to Falgran and tell him to arrange the meeting with the Horde. Explain the situation to them and... apologize for us blaming them. We need to make this right and show our good will.\n\nAfter this, meet me at the deserter\'s tower. We are going to deal with them.','Assist Falgran with the meeting.','Finally.','I hope Captain Vimes will share Kagoro\'s enthusiasm about this...',0,0,0,0,0,0,0,0,60390,1,0,0,0,0,0,0,0,0,0,750,1011,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Assist Falgran with the meeting');

replace into creature_questrelation		(id, quest) values (5088, 40564);
replace into creature_involvedrelation	(id, quest) values (4944, 40564);

REPLACE INTO creature_template VALUES
(60390, 328, 0, 0, 0, 0, 'quest_40564_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Additional notes:
-- (SAME AS THE FIRST MEETING QUEST)
-- Upon quest start, spawn NPC Kagoro at the following : Map1, X-3810.79, Y:-2763.20, Z: 34.60, Orientation: 2.394
-- Have NPC Falgran Hastil walk towards the following coordinates. : Map1, X:-3809.80, Y:-2759.96, Z:35.37, Orientation : 5.29
-- 
-- (Wait 11 seconds)
-- F: Kagoro! We are ready.
-- (Wait 3 seconds)
-- K: Falgran. 
-- (Wait 2 seconds)
-- F: Kagoro, on the behalf of the Alliance and the City of Theramore, I would like to apologize for not believing you and my false accusations. We are now certain that the deserters burned the inn.
-- (Wait 10 seconds)
-- K: I am relieved to hear it. Our investigation of Black Dragons yielded no results. But how did you learn of the truth?
-- (Wait 7 seconds)
-- F: Through the power of magic, of course. Arts of Divination. We communed with the spirit of Paval Reethe.
-- (Wait 8 seconds)
-- K: Extraordinary. Incredible sorcery, as always. But... why? Why did they burn the inn? 
-- (Wait 6 seconds)
-- F: Well. This is where it gets a bit complicated. The deserters were regular patrons of the inn. In their drunken state, they confessed... something to the innkeeper. In fear of the information reaching Theramore, they preferred to kill him and leave false evidence.
-- (Wait 13 seconds)
-- K: The shield... Yes, it makes sense.
-- (Wait 3 seconds)
-- F: Paval Reethe wanted to stop them. He may have been a deserter, but he had some of his honor still left in his heart.
-- (Wait 8 seconds)
-- K: That\'s why they left him in the swamp. But, what was the information that was so precious to the deserters?
-- (Wait 7 seconds)
-- F: About this, we are not sure. Something about the Vengeful Mariner, their rumored true leader. Have you heard about him?
-- (Wait 8 seconds)
-- K: Vengeful Mariner... The Ogres speak of a haunted sailor terrorizing the shores, but I doubt it\'s connected.
-- (Wait 8 seconds)
-- F: We will soon bring justice to the deserters for their crimes, thank you for your information Kagoro, the horde has helped plenty in these lands.
-- (wait 10 seconds)
-- K: We believe in justice the same way you alliance do, go with honor friend.
-- (Wait 6 seconds, and have Kagoro dissapear)
-- F:We should report to Captain Garran Vimes and let him know our discoveries.
-- (Wait 10 seconds, and have Falgrin Hastil respawn in his original position)
-- (QUEST IS COMPLETED) 

-- And Justice for All
delete from quest_template where entry = 40565;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40564,40565,2,15,35,30,0,0,'And Justice for All','It does appear that the Deserter\'s are behind the burning of the inn. If there is ever to be justice, we must stop them from continually dragging more and more of our most loyal into their ranks.\n\nThere shall be no quarter, they are wanted and we shall dole out justice, for all of the lives lost. For the deceit caused.\n\nDirectly to the west of Theramore, to the north eastern edge of the Quagmire is the Deserter\'s Hideout, it is there that they gain their strength. Find Sellick Voss, the new leader of the camp, slay him, and bring his medallion to me as proof of the deed.','Find Sellick Voss, slay him, and bring his medallion to Captain Garran Vimes at Theramore Isle in Dustwallow Marsh.','You fought well. I wish you could stay with me in Theramore as my personal assistant, but I know that adventure calls.','Without you, we would still be in the dark. Who knows, maybe you stopped another war between the Horde and the Alliance? You are a hero of Theramore, for all of the work you have done to ease the tensions, and solve this mystery.\n\nFor this, I would like you to take one of these weapons from my personal armory.\n\nConcerning the Vengeful Mariner. Sailors coming to Theramore have reported seeing a shadowy figure stalking the coast. Some of our fishermen have gone missing in recent months, too. It may be connected. But, a question remains. Why was he so important to the deserters, that they killed innocents to keep this a secret for just a while longer? We need to get to the bottom of this.',60817,1,0,0,0,0,0,0,60941,1,0,0,0,0,0,0,0,0,10000,3950,1011,1500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60818,1,60819,1,60820,1,60821,1,0,0,'');

replace into creature_questrelation		(id, quest) values (4944, 40565);
replace into creature_involvedrelation	(id, quest) values (4944, 40565);

update quest_template set type = 1 where entry = 40565;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60817,1012,'Medallion of Voss',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into item_template values
 ('60818', '2', '6', 'Garran\'s Pike', '', '22235', '3', '0', '1', '66820', '16705', '17', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '16', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '0',
 '0', '81', '125', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '2', '0', '0', '100', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60819', '4', '6', 'Dustwallow Defender', '', '7559', '3', '0', '1', '30420', '7605', '14', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '1108', '0', '0', '5',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '4', '0', '0', '100', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60820', '2', '15', 'Ornate Dagger of Jalvan', '', '20383', '3', '0', '1', '50624', '12656', '13', '-1', '-1', '42',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '-3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1500', '0',
 '0', '31', '47', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9397', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '65', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60821', '2', '18', 'Theramore Arbalest', '', '10671', '3', '0', '1', '39220', '9805', '15', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '100',
 '2', '59', '74', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '44', '0', '0', '0',
 '0', '1', NULL);

-- Sleep Paralysis
delete from quest_template where entry = 40566;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40566,2,11,21,17,0,0,'Sleep Paralysis','Excuse me, $c!\n\n<The lady seems to force a smile, but her eyes betray a deep fury.>\n\nYou look the gallant sort, the sort to help a poor damsel, yes? I find myself in need of some rather... odd substances. They may even be dangerous to acquire, but looking at you – I think you can certainly handle it. I will even pay some decent coin for your troubles!\n\nI need some poison. But not just any poison. There are spiders in a cave somewhere East of here, that have a very painful bite, even causing brief paralysis. If you could collect for me a few vials of their venom, I would be eternally grateful! Surely you aren\'t afraid of a few little arachnids, no?\n\nAnd what do you mean, why? Are you truly asking a lady her personal business?','Acquire five Leech Stalker Venom samples for Rose Dolohov.','Have you got what I need, or are you just being nosy?','Oh perfect, thank you! This should teach him a lesson. here\'s your silver, now shoo!',60822,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,1500,72,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (52045, 40566);
replace into creature_involvedrelation	(id, quest) values (52045, 40566);

update creature_template set npc_flags = 3 where entry = 52045;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60822,11980,'Leech Stalker Venom',12,1,2048,1,-1,-1,1,5,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(4040,60822,-35,0,1,1,0),
(1111,60822,-35,0,1,1,0);

-- Sleepwalking at Day
delete from quest_template where entry = 40567;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40566,40567,2,11,21,18,0,0,'Sleepwalking at Day','Oh, I can\'t do this.\n\n<She sighs loudly and massages her eyes.>\n\nMy fiancé is dog-tired all the time, disappears randomly during the night, and recently I found long black hair on his clothes.\n\nI just can\'t figure out how he could do this to me! But I must be certain. Please, $C, can you go look into this for me? Before I do anything rash. I can\'t even bear to speak to him, never mind go back to our old bedroom. Just find out his damned side of things, and tell me what lies he speaks. Any extra evidence you can find would be good too, I suppose.\n\n<She screws her face up tightly.> He\'s probably avoiding me and pretending to be useful, chopping wood by the lumber mill. Bert Mano is his name.','Speak to Bert Mano in Hawk\'s Vigil, and see where your investigation leads.','Can I help you?','Poison? Wow, this complicates things greatly. We may need to take a more direct approach.',0,0,0,0,0,0,0,0,60391,1,0,0,0,0,0,0,0,0,0,450,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Speak to Bert Mano');

replace into creature_questrelation		(id, quest) values (52045, 40567);
replace into creature_involvedrelation	(id, quest) values (52039, 40567);

update creature_template set script_name = 'npc_bert_mano' where entry = 52017;

REPLACE INTO creature_template VALUES
(60391, 328, 0, 0, 0, 0, 'quest_40567_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into broadcast_text (entry, Male_Text) values (30035, 'What? She told this to a stranger? Oh by the light, this is… this is worse than I thought. Please, speak to Marge Blackwood, she is the investigator in this town, and responsible for several cases currently. Speak to her, she will explain it all. Somehow I think I\'m sleeping outside tonight anyhow.');
replace into npc_text (ID, BroadcastTextID0) values (30035, 30035);

-- Daydreaming at Night
delete from quest_template where entry = 40568;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40567,40568,2,11,22,18,0,0,'Daydreaming at Night','Okay, okay, I know it looks bad. But Bert has been suffering with sleep paralysis of a very interesting kind, you see. The poor soul has something, and I have my suspicions what, reaching out to him during his dreams. I was skeptical too, until I witnessed it myself while observing him slumber.\n\nI am sure it is a demon! The peasants have countless stories of this sort of thing, but it\'s the first time I\'ve gotten irrefutable evidence of it happening! Regardless, my studies must be put on hold, if his marriage and, if you are correct, his life may be in danger.\n\nThis demon must be either expelled or brought into the physical plane, then killed. Unfortunately, I have very little idea how to do so directly. \n\n But I know who does. I made contact with a shady fellow in Stormwind. He conducts his business from a cabal hidden away in the basement of a tavern there. I do not know which one unfortunately. His name is Gakin the Darkbinder.\n\nPlease, hurry, $C. Bert isn\'t a perfect man, but he doesn\'t deserve this.','Find Gakin the Darkbinder in the basement of a tavern at Stormwind City.','Hmm?','From Hawk\'s Vigil? What a juicy predicament indeed!\n\n<He trails off into a quiet, throaty laughter.>',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500,72,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (52039, 40568);
replace into creature_involvedrelation	(id, quest) values (6122 , 40568);

-- Sweet Dreams are Made of This
delete from quest_template where entry = 40569;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40568,40569,2,11,24,18,0,0,'Sweet Dreams are Made of This','Okay, $R  your first task for me.\n\nWhat, you thought I would do this for free? No, no no! Oh by fel no. In any normal circumstance I would have you killed for stumbling down here, but it just so happens, I need some materials myself, and some of these will also be required to solve your. Predicament.\n\nA connection to the void will be required, plus some sort of tonic that elicits lucid dreaming to bring forth this night-demon of yours, and banish it. My colleagues have whispered about a certain location that may just do the trick!\n\n<He smirks wickedly.> \n\n Fire Scar Shrine. Name ring a bell? I doubt it. You can find it in Ashenvale, south west of Astranaar. There are foul beasts dwelling there, dog-like, ravenous and demonic. I need you to go there, kill them, and bring me their hearts. I will need one for you, but I never, ever work for free. Make it ten.','Go to Fire Scar Shrine in Ashenvale and gather the hearts of the demons described there for Gakin the Darkbinder at the Slaughtered Lamb in Stormwind City.','Have you given up yet?','Well well, look at those beautifully tainted hearts. Perfect. You have done me a great service today, $r. Here... When you feel strong enough, take one of my special creations, a token of thanks.',60823,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1750,0,0,0,0,0,0,0,0,0,0,0,9197,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (6122, 40569);
replace into creature_involvedrelation	(id, quest) values (6122, 40569);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60823,3320,'Lesser Felguard Heart',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(3772,60823,-85,0,1,1,0);

-- Back to Reality
delete from quest_template where entry = 40570;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40569,40570,2,11,24,18,0,0,'Back to Reality','You know what? You\'ve actually impressed me, $r. I will consider your payment complete. Take this pendant back with you. It has a powerful tether which will draw demonic energies into our world. Needless to say it is HIGHLY forbidden, so do not show it to anyone but the one who sent you here.','Bring the Felbound Pendant to Marge Blackwood at Hawk\'s Vigil in Wetlands.','You have returned! What news do you bring?','This? This will do what I think it will, yes? Then I think I have one more thing to ask of you, $C.',60824,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60824,1,0,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (6122 , 40570);
replace into creature_involvedrelation	(id, quest) values (52039, 40570);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60824,32073,'Felbound Pendant',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Strange Bedfellows
delete from quest_template where entry = 40571;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40570,40571,2,11,25,18,0,0,'Strange Bedfellows','This is it. If you have any friends who can work discreetly, I suggest you contact them now.\n\nThe energy will be strongest either around Bert himself or where he sleeps. Hold out the pendant and see if it reacts. Hopefully, this will give you the opportunity to confront this demon and put an end to the torment.\n\nYou should probably take some evidence of its existence once you kill it, too, you know. So he can prove his situation and resolve the troubles with his fiance.','Find a way to summon the demon, slay it, and take its head to Bert Mano.','I haven\'t slept a wink. Not only with this damn evil presence, but my wife kicked me out the house too!','By the light, what is that! This is what tormented me for months? I... I think I remember those eyes, yes.\n\nAs much as it pains me to do so, I must show this to Rose. There is no other way to prove what she means to me, that I would never do what she thinks I did!\n\nAnd your name, friend? Ah, thank you $N.',60825,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5000,2500,72,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60826,1,60827,1,60828,1,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (52039, 40571);
replace into creature_involvedrelation	(id, quest) values (52017, 40571);

update quest_template set type = 1 where entry = 40571;
update creature_template set npc_flags = 3 where entry = 52017;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60825,4777,'Hedania\'s Heart',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(60954,60825,-100,0,1,1,0);

replace into item_template values
 ('60826', '4', '0', 'Discarded Engagement Ring', '', '224', '2', '0', '1', '6240', '1560', '11', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '2', '5', '3',
 '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60827', '4', '1', 'Satin Blindfold', '', '12537', '2', '0', '1', '4412', '1103', '1', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '0', '0', '0',
 '0', '0', '0', '7676', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '45', '0', '0', '0', '0', '4', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('60828', '2', '15', 'Jeweled Letter Opener', '', '6460', '2', '0', '1', '8352', '2088', '13', '-1', '-1', '25',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '2', '3', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1800', '0',
 '0', '15', '34', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '45', '0', '0', '0', '0', '22', '0', '0', '0',
 '0', '1', NULL);

-- Aid Kagoro
delete from quest_template where entry = 40572;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40572,2,17,35,30,0,0,'Aid Kagoro','Kagoro had just left to investigate the hoofprints. He should be scouting the road to the Southern Barrens. A scout like no other, that orc, for many days has he tried to be worthy of a surname.\n\n His actions will one day speak, and when that day comes he will earn his honor. I hold high respect for Kagoro, $R, but I believe he will be in need of your help if you were willing to offer it.','Find Kagoro on the road to the Barrens in Dustwallow Marsh.','Yes?','Krog says you were the one to find the hoofprints. You have a keen eye, I\'m more than willing to accept your aid.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4926, 40572);
replace into creature_involvedrelation	(id, quest) values (4972, 40572);

update creature_template set npc_flags = 2 where entry = 4972;

-- On a Boar's Trail
delete from quest_template where entry = 40573;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40572,40573,2,17,35,30,512,0,'On a Boar\'s Trail','Krog\'s suspicions were founded, he was right to believe the quilboar may have had something to do with the burning of the inn.\n\nBefore you arrived, so did I. I followed a track, or should I say smell towards a pack of quilboar, they donned the colour of war and were headed towards the Razorfen Kraul, their main den.\n\nLuckily for us, they have stopped in their trails close to it, conveniently near the road.\n\nYour task will be to extract information from them, if any. Although I highly trust my tracking skills, I find my brute force lacking. Judge me if you must, but see the deed done.','Hunt the quilboar party in the Barrens near Razorfen Kraul and retrieve the Quilboar Tablet for Kagoro in Dustwallow Marsh.','Have you found anything?','This isn\'t much $N, but we\'ll make do.\n\nSomething seems to be scribbled on this tablet, you said you found it on one of them?',60810,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2650,76,150,0,0,0,0,0,0,0,0,0,60810,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4972, 40573);
replace into creature_involvedrelation	(id, quest) values (4972, 40573);

-- Someone With A Pig's Tongue
delete from quest_template where entry = 40574;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40573,40574,2,17,35,30,0,0,'Someone With A Pig\'s Tongue','I\'m afraid I can\'t make anything out of these symbols, we must find someone who knows this type of speech and who would be willing to aid us.\n\n<Kagoro ponders for a moment.>\n\nI hear the Tauren of Camp Taurajo recently captured a quilboar, perhaps he\'s willing to hold a conversation. Nothing to lose after all, he\'s a prisoner, force him if he\'s not willing.','Speak with the Quilboar Mangletooth in Camp Taurajo for more information.','Speak.','Mangletooth\n\n<snorts.>\n\ngreets you $R.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,600,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4972, 40574);
replace into creature_involvedrelation	(id, quest) values (3430, 40574);

-- Willing to Serve
delete from quest_template where entry = 40575;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40574,40575,2,17,35,30,0,0,'Willing to Serve','You need Mangletooth to translate you a <snort.> tablet?\n\nMangletooth will do so for a special treat!<snort.>Mangletooth craves for basilisk eyes, down in Thousand Needles you will find <snort.> Saltstone Basilisks, at Shimmering Flats!\n\nBring about <snort.> 20 of them and Mangletooth translates, favor for a <snort.> favor!','Brink 20 Saltstone Eyes from basilisks in the Shimmering Flat to Mangletooth.','Mangletooth could <snort>. really <snort.> <snort.> REALLY enjoy some <snort.> eyes right now.','Mangletooth happy, give Mangletooth eyes!\n\n<Mangletooth snorts loudly as he munches the eyes with gluttony, a real pig in your eyes.>',60829,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2800,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3430, 40575);
replace into creature_involvedrelation	(id, quest) values (3430, 40575);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60829,13012,'Saltstone Eye',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

replace into creature_loot_template values
(4147, 60829, -100, 0, 1, 1, 0),
(4150, 60829, -100, 0, 1, 1, 0),
(4151, 60829, -100, 0, 1, 1, 0);

-- A Glutton's Honesty
delete from quest_template where entry = 40576;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40575,40576,2,17,35,30,0,0,'A Glutton\'s Honesty','<Snorts happily.>\n\nA feast! A feast for Mangletooth! Now about that <snort.> tablet. It was meant to <snort.> reach the leader of the Kraul as report that the quilboar did indeed <snort.> wish to attack the inn but when they reached it, it was already <snort.> burnt!\n\nNot sure which <snort.> inn they are talking about <snort.>, but seems like you do.\n\nMangletooth happy to <snort.> help, the Tauren are really nice to Mangletooth.\n\nEven this cage is <snort.> now open, but I choose to <snort.> stay.','Report back to Kagoro.','Something to say?','This makes no sense, $N, the quilboar were a good lead but it only sent us to a dead end.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,450,76,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (3430, 40576);
replace into creature_involvedrelation	(id, quest) values (4972, 40576);

-- Behind the Hoofprints
delete from quest_template where entry = 40577;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40576,40577,2,17,35,30,0,0,'Behind the Hoofprints','I\'ll keep looking around the ruins, meanwhile you should go back to Krog, and inform him of our findings.\n\nThere\'s simply nothing more we can do here $N. As little as it may mean, you have my appreciation for the help, Lok\'tar.','Bring news to Krog at Brackenwall Village in Dustwallow Marsh.','Quickly now.','From frog in the well to frog in the ocean it is then. It would\'ve been so easy if the quilboar had done it, but the ancestors test us still.\n\nIt is time to evaluate the evidence we have and look to the other leads perhaps.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10000,800,76,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (4972, 40577);
replace into creature_involvedrelation	(id, quest) values (4926, 40577);