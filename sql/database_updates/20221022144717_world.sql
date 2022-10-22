-- Chen Stormstout, Displayid 18251, Faction: 35, Level 60, humanoid, scale 1.1, has quest and greeting flags, greeting text : "You walk with your eyes open, $r, but do you truly see? Have you taken a moment to appreciate the world around you recently? \n\n The lifted leaves on the wind, the fervent waves of the sea, the bustling pace in the city. There is majesty all around you, even in times of war, and there are always things to appreciate. \n\n Now... how about a drink?"
-- Stormwind Commoner, display ID 1720, faction 12 , level 25, humanoid, scale 1, quest flags
-- Orgrimmar Commoner, display ID 3751, faction 29 , level 25, humanoid, scale 1, quest flags,
REPLACE INTO creature_template VALUES
(61053, 18251, 0, 0, 0, 0, 'Chen Stormstout', NULL, 0, 60, 60, 3997, 4120, 0, 0, 3640, 35, 3, 1, 1.14286, 1.1, 18, 5, 40, 0, 1, 104, 130, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72, 99, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 136, 183, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61054, 1720, 0, 0, 0, 0, 'Stormwind Commoner', NULL, 0, 25, 25, 712, 712, 0, 0, 1026, 12, 2, 1, 1.14286, 0, 18, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61055, 3751, 0, 0, 0, 0, 'Orgrimmar Commoner', NULL, 0, 25, 25, 712, 712, 0, 0, 1026, 29, 2, 1, 1.14286, 0, 18, 5, 0, 0, 1, 37, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 39.5824, 54.4258, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 34, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41265; set @magic_number = 61053;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You walk with your eyes open, $r, but do you truly see? Have you taken a moment to appreciate the world around you recently?\n\nThe lifted leaves on the wind, the fervent waves of the sea, the bustling pace in the city. There is majesty all around you, even in times of war, and there are always things to appreciate.\n\nNow...how about a drink?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- A Pandaren Brewmaster
delete from quest_template where entry = 40684;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40684,2,1519,60,15,0,0,'A Pandaren Brewmaster','Hello $r, Have you heard? A Pandaren, one of the most reclusive races, has been seen in Ratchet.\n\nThe merchants say he is celebrating a festival native to his homeland. If you have some free time perhaps you could go and see this Pandaren and what this festival is about.','Track down this Pandaren in Ratchet and see what the fuss is about.','Oho, what have we here?','Hail to you friend, I am Chen Stomstout, Brewmaster from Pandaria, and perhaps you can aid me with a little something in return for a jolly time!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61054, 40684);
replace into creature_involvedrelation	(id, quest) values (61053, 40684);

-- The Return of Stormstout
delete from quest_template where entry = 40685;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40685,2,1519,60,15,0,0,'The Return of Stormstout','Lok\'tar $r! Have you heard the news? Chen Stormstout has returned to Kalimdor! Chen Stormstout was integral in the founding and defense of Orgrimmar alongside the likes of Rok\'han, Cairne, and Rexxar!\n\nMany are journeying to Ratchet to meet him, perhaps you would be interested as well, rumor is that he is looking for something and may reward whoever assists him.','Travel to Ratchet and meet Chen Stormstout.','Oho, what have we here?','Hail to you friend, I am Chen Stomstout, Brewmaster from Pandaria, and perhaps you can aid me with a little something in return for a jolly time!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61055, 40685);
replace into creature_involvedrelation	(id, quest) values (61053, 40685);

-- A Pandaren Brewmaster
delete from quest_template where entry = 40686;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40684,40686,2,17,60,15,512,0,'A Pandaren Brewmaster','I have come to visit my good friend Drohn, celebrate the festivities of the Brew festival from my homeland, and to create a new brew.\n\nDrohn has gathered some exotic ingredients that would make for a very interesting and potent brew. Mayhap you would be interested in assisting me too, yes? I would share my newest surprise brew with you in return.\n\nAcquire the following for me, A pinch of Magic Dust, Four Hops, and some Goldthorn Tea. The ingredients can be found around the world so you may have to travel to exotic locations and markets.','Chen Stormstout has asked you to gather 1 Magic Dust, 12 Hops, and 1 Goldthorn Tea to help create his special Stormstout Surprise! (You can\'t give up this OPPORTUNITY!)','Did you get the ingredients? Yes?','Ah, Wonderful! I shall then prepare something really special for you. These were the final ingredients I needed for the Stormstout Surprise! Go ahead and enjoy it to your heart\'s content.\n\nAh this has brought back some good memories of my homeland where many of my people would be competing and collaborating to make the brew of the year. I believe I will go a step further with the festivities here next year and organize something grand, yes? It shall be Pandemonium!',2091,1,1274,12,10841,1,0,0,0,0,0,0,0,0,0,0,0,0,10000,820,0,0,0,0,0,0,0,0,0,0,0,60925,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation		(id, quest) values (61053, 40686);
replace into creature_involvedrelation	(id, quest) values (61053, 40686);

update quest_template set exclusivegroup = 40684 where entry in (40684,40685);

replace into item_template values
 ('60925', '0', '0', 'Stormstout Surprise Stein', '', '50195', '3', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);