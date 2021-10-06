-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

-- In Need of Assistance --
delete from quest_template where entry = 40080;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40080,2,130,15,14,0,0,'In Need of Assistance','Ah, you are just who I need. A few days ago, Duchess Grelda of the Tirisfal Uplands asked for assistance. I already sent a detachment of my warriors, but another letter came today asking for further help.\n\nOur forces in Silverpine are already stretched thin as it is, which is why I need someone with your set of skills to head there and see what you can do to assist them.\n\nThe path to Tirisfal Uplands is just north of The Dead Field, the Duchess herself is hold up there at her manor along the road. You can\'t miss it.','Talk to the Duchess Grelda at the manor along the road to Western Tirisfal.','And who might you be?','So Hadrec refuses to send more troops, but, instead he sends you? The audacity.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,125,68,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (1952, 40080);
replace into creature_involvedrelation (id, quest) values (91711, 40080);
