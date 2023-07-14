-- Elvanor Heartsong <Armory Master>, display ID 2244, faction 35, level 61 elite, humanoid, scale 1, quest/gossip flags, gossip text : "My duty is to ensure the safety of our armory. I can also reward those who have been extremely helpful here with powerful armor and weapons."
REPLACE INTO creature_template VALUES
(61607, 2244, 0, 0, 0, 0, 'Elvanor Heartsong', 'Armory Master', 0, 61, 61, 11891, 11891, 0, 0, 3900, 35, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 751, 809, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41517; set @magic_number = 61607;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My duty is to ensure the safety of our armory. I can also reward those who have been extremely helpful here with powerful armor and weapons.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Drape of Nordrassil
delete from quest_template where entry = 41056;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41056,2,616,60,55,0,0,'Drape of Nordrassil','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Drape of Nordrassil, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61753,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41056);
replace into creature_involvedrelation	(id, quest) values (61607, 41056);

replace into item_template values
 ('61753', '4', '0', 'Drape of Nordrassil', '', '23057', '4', '0', '1', '93552', '23388', '16', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '0', '0', '48045', '1', '0', '0', '-1', '0', '-1', '9411', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Deepwood Pipe
delete from quest_template where entry = 41057;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41057,2,616,60,55,0,0,'Deepwood Pipe','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Deepwood Pipe, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61754,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41057);
replace into creature_involvedrelation	(id, quest) values (61607, 41057);

replace into item_template values
 ('61754', '4', '0', 'Deepwood Pipe', 'One puff is enough to knock the user unconcious.', '1611', '4', '0', '1', '204816', '51204', '12', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9458', '0', '0', '0', '3600000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Stagwood Grasp
delete from quest_template where entry = 41058;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41058,2,616,60,55,0,0,'Stagwood Grasp','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Stagwood Grasp, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61755,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41058);
replace into creature_involvedrelation	(id, quest) values (61607, 41058);

replace into item_template values
 ('61755', '2', '13', 'Stagwood Grasp', '', '67801', '4', '0', '1', '286372', '71593', '22', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1700', '0',
 '0', '45', '94', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '8815', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Nordanaar Guardian Spaulders
delete from quest_template where entry = 41059;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41059,2,616,60,55,0,0,'Nordanaar Guardian Spaulders','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Nordanaar Guardian Spaulders, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61756,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41059);
replace into creature_involvedrelation	(id, quest) values (61607, 41059);

replace into item_template values
 ('61756', '4', '2', 'Nordanaar Guardian Spaulders', '', '29027', '4', '0', '1', '0', '0', '3', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '22', '7', '11',
 '4', '8', '6', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '138', '0', '0', '0',
 '0', '0', '0', '14027', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '70', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

