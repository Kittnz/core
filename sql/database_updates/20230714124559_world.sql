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

-- Dreambreeze Cowl
delete from quest_template where entry = 41060;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41060,2,616,60,55,0,0,'Dreambreeze Cowl','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Dreambreeze Cowl, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61757,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41060);
replace into creature_involvedrelation	(id, quest) values (61607, 41060);

replace into item_template values
 ('61757', '4', '1', 'Dreambreeze Cowl', '', '19930', '4', '0', '1', '80752', '20188', '1', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '37', '6', '14',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '79', '0', '0', '7',
 '0', '0', '0', '9408', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '60', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Cloverlink Belt
delete from quest_template where entry = 41061;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41061,2,616,60,55,0,0,'Cloverlink Belt','Stored within the armory are many weapons, armor and great relics of old. These items are extremely powerful, and laden with intense enchantments. I have been authorized to offer such items to those who have proved themselves as worthy allies here in Hyjal.$B$BIf you desire the Cloverlink Belt, bring me one hundred and fifty Bright Dream Shards, and it shall be yours.','Gather 150 Bright Dream Shards for Elvanor Heartsong at Nordanaar in Hyjal.','Have you brought the Dream Shards adventurer?','May this relic from our armory serve you well, and assist you in whatever battles may yet come.',61199,150,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61758,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61607, 41061);
replace into creature_involvedrelation	(id, quest) values (61607, 41061);

replace into item_template values
 ('61758', '4', '3', 'Cloverlink Belt', '', '26947', '4', '0', '1', '105672', '26418', '6', '-1', '-1', '64',
 '59', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '17', '4', '14',
 '7', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '231', '0', '0', '0',
 '0', '0', '0', '18185', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '50', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Scythe of the Goddess
delete from quest_template where entry = 41062;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41062,2,3457,60,60,0,0,'Scythe of the Goddess','In your grasp rests the elusive Scythe of Elune, an ancient artifact veiled in mystery and pulsating with unimaginable power. Its journey to this very moment remains an enigma—how it arrived here and why, questions that demand answers. Yet, for now, the imminent priority is to quell the devastation wrought by this extraordinary relic.$B$BSlay Clawlord Howlfang, leader of the worgen in Karazhan. Only by severing his tyrannical grasp over the worgen can you hope to restore order amidst the chaos.$B$BOnce accomplished, seek answers from Lord Ebonlocke about the enigmatic Scythe.','Slay Clawlord Howlfang and report to Lord Ebonlocke.','Yes, mortal? How can I assist you?','The Scythe of Elune... A cursed artifact of profound power, was brought to this sacred ground of Karazhan by one of the Dark Riders—a being bound by both time and shadows. The memory of their arrival, though it feels both recent and ancient, is hazy, for time weaves a tapestry that confounds my mind.$B$BBlackwald, that wretched being reveled in the acquisition of the Scythe. His malevolence knew no bounds, finding delight in the possession of such a powerful relic. The halls of Karazhan resonated with his twisted satisfaction.$B$BDo not dare to even think of using it now. It has been in the possession of a dark power for far too long, and I fear that it would only bring more destruction, even if your intentions are just.',61184,1,0,0,0,0,0,0, 61223,1,0,0,0,0,0,0, 0,0, 0,39300,6550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

update item_template set start_quest = 41062 where entry = 61184;
replace into creature_involvedrelation	(id, quest) values (61255, 41062);
update quest_template set type = 64 where entry = 41062;

-- Scythe of the Goddess
delete from quest_template where entry = 41063;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41062,41063,2,10,60,60,0,0,'Scythe of the Goddess','I wish I could tell you more about it, but alas, in my state, I was unable to procure any meaningful information. Lord Blackwald used it to summon the worgen to Karazhan, and they more or less obeyed his command. $B$BAs for the Dark Riders, they are cursed to be artifact hunters, crafted in the twisted image of the righteous knights by Medivh himself. Though his presence has long faded, these relentless hunters continue their pursuit, tirelessly acquiring treasures for an unknown master.$B$BOh, how I long for the ability to unmask the hidden purpose behind this mysterious relic. However, I offer you a glimmer of hope in your quest. Seek those who, perhaps unwittingly, aided the Dark Riders in their pursuit. Turn your gaze towards my former realm, once known as Great Hamlet, where secrets and whispers intertwine. It is there that your search may bear fruit, as rumors tell of worgen now roaming the kingdom, their presence a testament to a connection with the Scythe.','Find someone in Duskwood who might know more about the Scythe of Elune.','Y-yes?','I beg you, stay away from the Scythe of Elune! It brought doom upon Duskwood when I last touched it. I am haunted by the consequences of that cursed relic. Please, abandon any thought of seeking it. Its power is a poison that twists fate and brings tragedy. Let it remain forgotten, its dark legacy buried in shadow.',61759,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 0,21300,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61255, 41063);
replace into creature_involvedrelation	(id, quest) values (  288, 41063);

update creature_template set faction = 35 where entry = 288;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61759,61041,'The Scythe of Elune',12,3,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,1);

-- Scythe of the Goddess
delete from quest_template where entry = 41064;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41063,41064,2,10,60,60,0,0,'Scythe of the Goddess','You have it in your possession? No, no, no! It\'s awful, IT should\'ve never been found! The return of the dreaded Dark Riders looms on the horizon, their vengeance seeking to claim my life and unleash ruin upon the entirety of Duskwood!$B$BYet, twisted as it may be, it is still preferable that the Scythe rests in your hands rather than theirs. However, I must confess that my knowledge of this relic is scarce. Although I held it in my grasp for a fleeting moment, I swear upon my fragile existence that I am oblivious to its true nature. I know nothing!$B$BIt was in the desolate depths of the old mine, known as Roland\'s Doom, that fate thrust the Scythe into my trembling hands. Go there, if you must. But be wary- it\'s overrun by worgen, or even darker beings.','Travel to Roland\'s Doom and find any clues about the Scythe of Elune.','I sense the Scythe of my Goddess... Who are you?','l, stand before you, observing the return of the Scythe to me, now wielded by unfamiliar hands. A sense of both relief and concern washes over me, for my spirit could never find solace while this sacred relic remained lost to the ages.$B$BTell me, brave one, how did you come to possess the Scythe?',61759,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 0,21300,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 288, 41064);
replace into creature_involvedrelation	(id, quest) values (3946, 41064);

update creature_template set npc_flags = 2, faction = 35, script_name = 'npc_velinde_starsong' where entry = 3946;

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020048, 2, 23388, 'Velinde\'s Memory', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_velindes_memory');

-- Scythe of the Goddess
delete from quest_template where entry = 41065;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41064,41065,2,10,60,60,0,0,'Scythe of the Goddess','Dark Riders... Their relentless pursuit was swift, sensing my presence the moment I stepped into Duskwood. Fleeing was futile, they hungered for the power of the Scythe, their insatiable desire driving them forward without respite. I fortified my position, calling upon my loyal worgen companions to stand by my side, yet their might proved overwhelming, and I fell beneath their dark influence. In my final act of defiance, I pierced their heart with my spear, knowing my sacrifice would not be in vain.$B$BAlas, it appears that the Scythe was ultimately retrieved by those malevolent beings. I shudder to contemplate the vile purposes they intended to unleash upon the world with its power. It is a relief to know that the artifact now rests within your hands, for I believe there is still hope that you may wield it with its original purpose.$B$BWait. Do you hear that?','Defeat the Dark Rider.','Something is amiss...','You\'ve seen it.They will not stop until the Scythe is back in their hands. You may run, you may hide, but it is pointless. They will find you.$B$BHowever, there is still a chance.',61759,1,0,0,0,0,0,0, 61608,1,0,0,0,0,0,0, 61759,1, 0,39300,6550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (3946, 41065);
replace into creature_involvedrelation	(id, quest) values (3946, 41065);
update quest_template set type = 1 where entry = 41065;

-- Additional notes: After accepting the quest, spawn a Dark Rider at the following coordinates : Map:0, X:-11141.1318, Y:-1166.9799, Z:42.8755, Orientation:2.7963
-- Upon aggro npc should say:
-- Give up the Scythe, and you may yet be spared.
-- Upon death npc should say:
-- We will find you...
-- This NPC should despawn after 5 minutes if not killed. 

-- Dark Rider(display id 18227, faction 24, level 61 elite, undead, scale 1, weapon 22807, has 32468 hp, 3791 armor, 150 Shadow Resistance, 150 Nature Resistance, 644-803 Damage, casts 11713 every 24 seconds, 25309 every 17 seconds)
REPLACE INTO creature_template VALUES
(61608, 18227, 0, 0, 0, 0, 'Dark Rider', NULL, 0, 61, 61, 32468, 32468, 0, 0, 3791, 24, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 644, 803, 5, 278, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 6, 0, 61608, 0, 0, 0, 0, 150, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20427; set @weapon_1 = 22807; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61608;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30129, 'Give up the Scythe, and you may yet be spared.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30130, 'We will find you...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_scripts where id in (2200035,2200036);
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30129, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Rider - Say on Aggro'),
(2200036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30130, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Rider - Say upon Death');

delete from creature_ai_events where id in (2200035,2200036);
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200035, 61608, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200035, 0, 0, 'Dark Rider - Say on Aggro'),
(2200036, 61608, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200036, 0, 0, 'Dark Rider - Say upon Death');

-- Dark Rider
set @creature_entry = 61608;
set @description = ': Dark Rider';
set @spell_list_id = 180217;

set @spellid_1 = 11713; -- Curse of Agony
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 24;
set @delayrepeatmax_1 = 24;

set @spellid_2 = 25309; -- Immolate
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 3;
set @delayinitialmax_2 = 3;
set @delayrepeatmin_2 = 17;
set @delayrepeatmax_2 = 17;

set @spellid_3 = 0;
set @probability_3 = 0;
set @casttarget_3 = 0;
set @castflags_3 = 0;
set @delayinitialmin_3 = 0;
set @delayinitialmax_3 = 0;
set @delayrepeatmin_3 = 0;
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0;
set @casttarget_4 = 0;
set @castflags_4 = 0;
set @delayinitialmin_4 = 0;
set @delayinitialmax_4 = 0;
set @delayrepeatmin_4 = 0;
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0;
set @probability_5 = 0;
set @casttarget_5 = 0;
set @castflags_5 = 0;
set @delayinitialmin_5 = 0;
set @delayinitialmax_5 = 0;
set @delayrepeatmin_5 = 0;
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0;
set @probability_6 = 0;
set @casttarget_6 = 0;
set @castflags_6 = 0;
set @delayinitialmin_6 = 0;
set @delayinitialmax_6 = 0;
set @delayrepeatmin_6 = 0;
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0;
set @probability_7 = 0;
set @casttarget_7 = 0;
set @castflags_7 = 0;
set @delayinitialmin_7 = 0;
set @delayinitialmax_7 = 0;
set @delayrepeatmin_7 = 0;
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0;
set @probability_8 = 0;
set @casttarget_8 = 0;
set @castflags_8 = 0;
set @delayinitialmin_8 = 0;
set @delayinitialmax_8 = 0;
set @delayrepeatmin_8 = 0;
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Scythe of the Goddess
delete from quest_template where entry = 41066;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41065,41066,2,616,60,60,0,0,'Scythe of the Goddess','I was gifted the Scythe at the Shrine of Mel\'Thandris. Its ability to summon worgen helped me to turn the tide in the fight against corruption of Felwood. Yet, I was losing control of them. I needed help.$B$BI departed from the forests of Ashenvale with a purpose in mind—to seek counsel from the wizard Arugal, who too had called upon the worgen.I yearned to understand the connection between these creatures and the favor bestowed upon them by Elune.$B$BBut... Arugal... dead? Elune\'s tears, the news strikes me with sorrow. In this moment, there is only one person we can turn to, one who possesses the wisdom and knowledge to guide us further. Arch Druid Dreamwind, a scholar of the otherworldly, may hold the key to unraveling the mysteries of our realms and beyond. Seek him out, and recount to him the tale that has befallen me. When I departed Kalimdor, he stood at the forefront of the efforts to heal Nordrassil.','Find Arch Druid Dreamwind in Nordanaar.','Welcome to Nordanaar. How may I assist you?','So this is the fate of sister Velinde. A tragic tale indeed.',61759,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 0,21300,3550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 3946, 41066);
replace into creature_involvedrelation	(id, quest) values (61512, 41066);

-- Scythe of the Goddess
delete from quest_template where entry = 41067;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41066,41067,2,2677,60,60,0,0,'Scythe of the Goddess','The name worgen resonates through the echoes of history, evoking memories of ancient times. Eons ago, during the reign of Queen Azshara, her mages delved into forbidden arts, opening portals to realms beyond mortal comprehension.$B$BWorlds of Buring Legion, engulfed by the Emerald Flame, worlds of absolute cold, worlds of inimaginable darkness.$B$BAmong these realms was one known as Vorgendor, world of Blood. The knowledge surrounding it has long faded, concealed in the annals of forgotten lore for good reason.$B$BHowever, in the depths of my ancient wisdom, I can guide you towards a beacon of knowledge. A human mage by the name of Ur dedicated himself to the study of this enigmatic realm. It is said that he penned a tome, a testament to his understanding and exploration of Vorgendor. If the mages of Dalaran are no longer in possession of this invaluable book, I believe it may be found within the expansive library of Lord Nefarius.','Retrieve a copy of "Vorgendor: Myths from the Blood Dimension" from Lord Victor Nefarius.','Yes?','It seems that only a few pages are intact. Shame, as the book will be no use for us in this state.$B$BThere is one other place where such book could be stored, but no one has stepped foot there in many years. Library of Karazhan...',61760,1,61759,1,0,0,0,0, 0,0,0,0,0,0,0,0, 61759,1, 0,57300,9550,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61512, 41067);
replace into creature_involvedrelation	(id, quest) values (61512, 41067);
update quest_template set type = 64 where entry = 41067;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61760,1134,'Burnt Copy of "Vorgendor"',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(11583,61760,-100,0,1,1,0);

-- Purple Lotus Collection
delete from quest_template where entry = 41068;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41068,2,2677,60,55,0,1,'Purple Lotus Collection','Purple Lotus is a somewhat common material that we are always using for various purposes. You would be surprised just what you can get done with this herb!$B$BIf you can amass a large bulk of Purple Lotus, we can trade this herb for a single Bright Dream Shard. Bring me eighty Purple Lotus and we can exchange at any time.','Gather 80 Purple Lotus for Tanalla Sagebranch at Nordanaar in Hyjal.','Have you had any luck $c?','Hmm, everything seems to be in order here, your assistance to our efforts is well appreciated, here, take this.',8831,80,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61327, 41068);
replace into creature_involvedrelation	(id, quest) values (61327, 41068);
