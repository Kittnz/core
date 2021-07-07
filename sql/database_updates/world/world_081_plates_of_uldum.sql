-- Plates of Uldum (Alliance)

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (2964,50228,1537,60,60,0,0,'Plates of Uldum','I got it, $N! By Magni’s beard, I got it!\n\nWhat if the Plates of Uldum are right there, at the gates, hidden in plain sight? Maybe it seems too far-fetched but we can at least try, right?\n\nTake the discs back to the gates of Uldum and place them again on the pedestal but this time try to put them the other way around!\n\nI have no idea if I am right or not, $N, but I have a bad feeling about it.\n\nMaybe try to find some like minded individuals to come and seek the secrets with you, better to be with someone rather than alone.','Bring the miniature platinum discs to the gates of Uldum in Tanaris and put them on pedestal, this time try to turn them other way around. Report back to Ironforge with the result of your research.','I am very eager to find out how this turned out.','I was right!\n\nHold on a minute you fought a what?\n\nOh by Brann’s hat the plates are broken, $g: lad:lass, you were a bit too harsh on the construct.\n\nNevertheless you did a great job, now we can inspect them and who knows maybe one day reach inside Uldum itself.',6064,1,0,0,0,0,0,0,80935,1,50663,1,0,0,0,0,6064,1,0,0,47,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5387, 50228);
replace into creature_involvedrelation (id, quest) values (5387, 50228);

update quest_template set type = 61 where entry = 50228;
update quest_template set objectivetext2 = 'Place disks on a Pedestal of Uldum' where entry = 50228;
replace into creature_template (entry, name, display_id1) values (50663, 'Quest 50228 Custom Trigger', 328);
