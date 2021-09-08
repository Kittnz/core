-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

delete from quest_template where entry = 40049;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (80750,40049,2,2040,30,25,0,0,'The Kaldorei Problem','You have done well, I believe it is time you meet with the true leader of the Silvermoon Remnant. Due to our fragile state and the threats we\'ve faced, she let me act as the public leader of our people, yet it is she who has brought us together. Proceed to the very summit of the Citadel, you will find her there donning our tabard. She requires your help with a plan to earn an audience with the Kaldorei.','Ascend the summit of the Citadel of the Sun and speak to the leader of the Silvermoon Remnant.','Ah you must be $n.','My name is Vereesa Windrunner... Yes, sister to the lost Hero Alleria, and to what...Sylvanas has become. Thank you for coming to me $n, I believe it is time to set our plan in motion.',0,0,0,0,0,0,0,0,60314,1,0,0,0,0,0,0,0,0,1240,528,269,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,9000,'Speak to the leader of the Silvermoon Remnant');

replace into creature_questrelation (id, quest) values (80245, 40049);
replace into creature_involvedrelation (id, quest) values (80877, 40049);

replace into creature_template (entry, name, display_id1) values (60314,'quest_40049_dummy_triger',328);

update creature_template set npc_flags = 19 where entry = 80245;
update creature_template set phase_quest_id = 80750 where entry = 80877;
update creature_template set script_name = 'npc_vereesa_windrunner' where entry = 80877;