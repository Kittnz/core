-- By Any Means Necessary V
delete from quest_template where entry = 40401;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40400,40401,2,361,54,47,0,0,'By Any Means Necessary V','All that remains is my mark upon the blade to give it the power required for the purpose it was intended. Give me time to concentrate, and channel my energy, only then will the blade be ready.','Wait for Niremius Darkwind to finish crafting the Glaive.','This will take time.','My work is done, as I have promised, a Glaive worthy of my namesake. Use it well, and keep Azeroth safe.',0,0,0,0,0,0,0,0,60370,1,0,0,0,0,0,0,0,0,0,6350,69,200,0,0,0,0,0,0,0,0,0,60536,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wait for Niremius Darkwind to finish crafting the Glaive.');

replace into creature_questrelation (id, quest) values (60710, 40401);
replace into creature_involvedrelation (id, quest) values (60710, 40401);

replace into item_template values
 ('60536', '2', '7', 'Darkwind Glaive', 'Perfectly balanced to combat corruption.', '25504', '3', '0', '1', '154416', '38604', '13', '-1', '-1', '57',
 '52', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '12', '3', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2500', '0',
 '0', '67', '112', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '5', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '90', '0', '0', '0', '0', '47', '0', '0', '0',
 '0', '1', NULL);