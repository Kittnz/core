-- Summons by Lady Windrunner
delete from quest_template where entry = 40393;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40379,40393,2,2040,44,44,512,0,'Summons by Lady Windrunner','Greetings $N, I have received word from Alah\'thalas that Speaker Vereesa Windrunner herself is requesting your presence. I wouldn\'t keep her waiting $N.','Travel to Alah\'thalas and speak to Vereesa Windrunner.','Oh, hello there!','Thank you for coming $N. As you can surmise this is not a visit of convenience. I need your help.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,840,1875,269,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (60429, 40393);
replace into creature_involvedrelation (id, quest) values (80877, 40393);