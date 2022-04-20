-- Aggression's End
delete from quest_template where entry = 40390;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40390,2,14,10,5,512,0,'Aggression\'s End','Through hard fought victory, you stand above the fallen centaur warlord and before the corpse can run cold, you take a trophy as proof of your battle.\n\nSomeone in Sen\'jin Village would be interested in this.','Take the head of Warlord Kolkanis to Master Gadrin in Sen\'jin Village.','What do you have there, $c?','The Kolkar have proven a long-standing threat to our people since settling on these shores, but it appears they will trouble us no further. Your victory over the centaur today is just one step closer to securing Durotar from local threats.',60521,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,880,76,100,530,100,76,100,0,0,0,0,0,0,0,0,0,0,0,0,0,60522,1,60523,1,60524,1,0,0,0,0,'');

replace into creature_involvedrelation (id, quest) values (3188, 40390);

REPLACE INTO item_template VALUES
(60521, 12, 0, 'Warlord Kolkanis\' Head', '', 12904, 1, 2048, 1, 0, 0, 0, 32767, -1, 10, 10, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 50527, 0, 0, 40390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update creature set spawntimesecsmin = 5400, spawntimesecsmax = 5400 where id = 5808;

delete from creature_loot_template where item = 60520;
replace into creature_loot_template values
(5808, 60521, 100, 1, 1, 1, 0);

delete from item_template where entry in (60522,60523,60524);
replace into item_template values
 ('60522', '2', '10', 'Hexxer Staff', '', '18289', '2', '0', '1', '0', '592', '17', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '2', '7', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '23', '35', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '50', '0', '0', '0', '2048', '21', '0', '0', '0',
 '0', '1', NULL),
 ('60523', '4', '6', 'Sen\’jin Buckler', '', '4662', '2', '0', '1', '0', '300', '14', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '1', '3', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '274', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '4', '0', '0', '50', '0', '0', '0', '2048', '1', '0', '0', '0',
 '0', '1', NULL),
 ('60524', '4', '2', 'Horseskin Boots', '', '703', '2', '0', '1', '0', '250', '8', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '7', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '2048', '1', '0', '0', '0',
 '0', '1', NULL);


