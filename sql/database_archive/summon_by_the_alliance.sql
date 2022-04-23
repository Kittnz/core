-- Summons by the Alliance
delete from quest_template where entry = 40394;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40384,40394,2,2040,60,60,512,0,'[CANCELLED] Summons by the Alliance','Greetings $N, I have received urgent news. Speaker Vereesa Windrunner needs your help as a dangerous situation has begun to escalate and the Alliance leaders are gathering. Please make your way to Alah\'thalas and speak with her.','Travel to Alah\'thalas and speak to Vereesa Windrunner.','Hello.','Thank you for coming my friend. I may need your help as a dangerous situation is unfolding.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2040,0,269,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60429, 40394);
replace into creature_involvedrelation (id, quest) values (80877, 40394);

-- Temp. disable:

delete from creature_questrelation where quest = 40394;
delete from creature_involvedrelation where quest = 40394;