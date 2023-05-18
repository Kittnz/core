-- A Mysterious Missive
delete from quest_template where entry = 40914;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40914,2,41,60,55,0,0,'A Mysterious Missive','The letter appears before you: unsealed, but very much untouched. Inside, the letter has been scribbled in a harsh and crude manner, the words entirely foreign.$B$BSomething feels very wrong about this. A familiar, dreadful voice appears in your head; you are drawn to the Master\'s Cellar near Karazhan.','Seek out this mysterious energy at the Master’s Cellar in the Deadwind Pass.','<Silence.>','<A familiar voice penetrates your mind.>$B$BGood, you have made it. The sender of this letter has already failed me. Perhaps you will not.',61457,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 100,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_involvedrelation	(id, quest) values (2020028, 40914);

replace into item_template values
 ('61457', '12', '0', 'A Mysterious Missive', 'A feeling of dread lingers upon this letter.', '5567', '1', '0', '1', '0', '0', '0', '-1', '-1', '60',
 '55', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

update item_template set start_quest = 40914 where entry = 61457;

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020028, 2, 27514, 'Mysterious Mailbox', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_mysterious_mailbox');

REPLACE INTO broadcast_text VALUES (30116, 'This mailbox appears to have been here for some time.$B$BAn aura of dread seems to emanate from it, you should not linger long.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into npc_text (ID, BroadcastTextID0) values (30116, 30116);

