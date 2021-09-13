-- Appealing tp the Alliance

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80256,80750,2040,20,20,0,0,'Appealing to the Alliance','Greetings, $N. I am Ranger-General Damilara Sunsorrow of the Alah\'thalas council.\n\nI\'ve heard of you and your efforts. You have my thanks. There\'s a sensitive matter to discuss. But first, these missives must be delivered to the Alliance.\n\nAlah\'thalas is growing into a proper settlement, and we would like to formally join the Alliance. We will need the support of all the members of the Alliance to make this happen.\n\nPlease take these sealed missives to Sir Bolvar Fordragon, King Magni Bronzebeard, High Tinker Gelbin Mekkatorque, and Priestess Tyrande Whisperwind.\n\nOnce you receive their replies return to me.','Take sealed missives to all four Alliance leaders.','Did you get their replies?','It is as I feared... The night elves continue to hold their ancient grudge. Worry not, I had expected this.\n\nBut now that we have formal replies we can work on earning their trust.\n\nI hope I can count on you later. Keep helping us and I will enlist your aid when I can.',83016,1,83017,1,83018,1,83019,1,0,0,0,0,0,0,0,0,83015,4,0,1650,269,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into item_template values
(83015, 0, 12, 0, 'Sealed Missive', '', 3029, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(83016, 0, 12, 0, 'Sealed response from Stormwind', '', 9148, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(83017, 0, 12, 0, 'Sealed response from Ironforge', '', 9148, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(83018, 0, 12, 0, 'Sealed response from Darnassus', '', 9148, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(83019, 0, 12, 0, 'Sealed response from Gnomeregan', '', 9148, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set stackable = 4 where entry = 83015; 
update item_template set max_count = 1 where entry = 83017; 
update item_template set max_count = 1 where entry = 83018; 
update item_template set max_count = 1 where entry = 83019; 
update item_template set max_count = 1 where entry = 83019; 

update quest_template set objectivetext1 = 'Deliver a Sealed Missive to Bolvar Fordragon' where entry = 80750;
update quest_template set objectivetext2 = 'Deliver a Sealed Missive to Magni Bronzebeard' where entry = 80750;
update quest_template set objectivetext3 = 'Deliver a Sealed Missive to High Tinker Gelbin Mekkatorque' where entry = 80750;
update quest_template set objectivetext4 = 'Deliver a Sealed Missive to Tyrande Whisperwind' where entry = 80750;

update creature_template set script_name = 'npc_faction_leader' where entry in (1748, 7999);
update creature_template set npc_flags = 3 where entry in (1748, 2784, 7937, 7999);

replace into creature_questrelation (id, quest) values (80245, 80750);
replace into creature_involvedrelation (id, quest) values (80245, 80750);

-- Reserved.
-- quest_template			40000-40200
-- creature_template		60300-60500
-- gameobject_template		2010700-2010900
-- item_template			60000-60200

--The Kaldorei Problem--
delete from quest_template where entry = 40049;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (80750,40049,2,2040,30,25,0,0,'The Kaldorei Problem','You have done well, I believe it is time you meet with the true leader of the Silvermoon Remnant. Due to our fragile state and the threats we\'ve faced, she let me act as the public leader of our people, yet it is she who has brought us together. Proceed to the very summit of the Citadel, you will find her there donning our tabard. She requires your help with a plan to earn an audience with the Kaldorei.','Ascend the summit of the Citadel of the Sun and speak to the leader of the Silvermoon Remnant.','Ah you must be $n.','My name is Vereesa Windrunner... Yes, sister to the lost Hero Alleria, and to what...Sylvanas has become. Thank you for coming to me $n, I believe it is time to set our plan in motion.',0,0,0,0,0,0,0,0,60314,1,0,0,0,0,0,0,0,0,1240,528,269,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,9000,'Speak to the leader of the Silvermoon Remnant');

replace into creature_questrelation (id, quest) values (80245, 40049);
replace into creature_involvedrelation (id, quest) values (80877, 40049);

replace into creature_template (entry, name, display_id1) values (60314,'quest_40049_dummy_triger',328);

update creature_template set npc_flags = 19 where entry = 80245;
update creature_template set phase_quest_id = 80750 where entry = 80877;
update creature_template set script_name = 'npc_vereesa_windrunner' where entry = 80877;

--Breaking the Felstar--
delete from quest_template where entry = 40050;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40049,40050,2,331,30,25,0,0,'Breaking the Felstar','I am aware of your foray to the Alliance members. I knew from the start that it would be difficult to earn the trust of the Kaldorei. A long time ago they welcomed us in their home as kin provided we abandon magic. For two millenia we lived as one until our ancestor\'s addiction grew out of control. To spite the Kaldorei they unleashed a terrible magical storm over Ashenvale. It is then fitting that it is Ashenvale we shall save. A powerful Satyr leading a band of demons is preparing an incursion into Ashenvale from Felwood. Several of our best Rangers have risked their lives to retrieve this information. They await you at the border to Felwood north of Raynewood\'s Retreat where the fiend has summoned a Felstone. Meet up at the border to Ashenvale and help them stop this incursion, take the Satyr\'s horns as proof. Once that is done, speak to Ashylah Starcaller in Darnassus, she is an ally to our cause.','Rendezvous with the Rangers and defeat the Satyr threat to Ashenvale. Take the Satyr horns to Ashylah Starcaller in Darnassus.','Ah $r what can I do for you?.','You have defeated Dra\'lox Felstar? After ten thousand years... It seems I was right to trust the Quel\'dorei. I will explain anon.',60148,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3180,3228,269,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,9000,'');

replace into creature_questrelation (id, quest) values (80877, 40050);
replace into creature_involvedrelation (id, quest) values (80242, 40050);

delete from creature_template where entry = 60425;
REPLACE INTO `creature_template` VALUES (60425, 0, 12334, 0, 0, 0, 'Dra\'lox Felstar', NULL, 0, 30, 31, 2865, 3018, 0, 0, 1061, 90, 0, 1, 1.14286, 0, 30, 30, 0, 1, 1, 193, 249, 0, 126, 1, 2000, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 44.84, 61.655, 100, 7, 0, 60425, 0, 0, 0, 0, 0, 0, 0, 0, 7164, 8258, 15572, 0, 0, 0, 180, 240, 'EventAI', 0, 1, 0, 0, 3, 4623, 0, 0, 0, 0, 0, 0, 'npc_dralox_felstar');

delete from creature_template where entry = 60426;
REPLACE INTO `creature_template` VALUES (60426, 0, 2011, 0, 0, 0, 'Felstone Guardian', NULL, 0, 29, 30, 650, 850, 0, 0, 1200, 90, 0, 1, 1.14286, 0, 30, 30, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 3, 0, 6073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 4, 0, 0, '');

delete from creature_template where entry = 60427;
REPLACE INTO `creature_template` VALUES (60427, 0, 1185, 0, 0, 0, 'Felstone Guardian', NULL, 0, 29, 30, 650, 850, 0, 0, 1200, 90, 0, 1, 1.14286, 0, 30, 30, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 3, 0, 6073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 4, 0, 0, '');

delete from creature_template where entry = 60428;
REPLACE INTO `creature_template` VALUES (60428, 0, 10905, 0, 0, 0, 'Corrupted Felstone', NULL, 0, 29, 30, 950, 1002, 0, 0, 1200, 0, 1, 1, 1.14286, 0, 0, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 256, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 3, 0, 6073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 4, 0, 0, 'npc_felstone');

delete from creature_template where entry = 60429;
REPLACE INTO `creature_template` VALUES (60429, 0, 18220, 18221, 18222, 18223, 'High Elf Ranger', NULL, 0, 30, 32, 950, 1002, 0, 0, 1200, 231, 1, 1, 1.14286, 0, 50, 30, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 80216, 0, 0, 0, 0, 525312, 0, '');

replace into creature_template_addon (entry, bytes1) values (60428,7);

delete from item_template where entry = 60148;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60148,6478,'Dra\'lox\'s Horn',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where entry = 60425 and item = 60148;
replace into creature_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id, patch_max) values (60425,60148,-100,1,1,0,10);

delete from creature where id = 60428;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60428, 1, 3536.35, -1570.49, 170.42, 1.24, 300, 300, 3, 100, 1, 10);

--Thalassian Ascension--
delete from quest_template where entry = 40058;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (40050,40058,2,2040,30,25,0,0,'Thalassian Ascension','Dra\'lox Felstar has long caused pain and suffering to our people. Your actions may be able to sway the High Priestess. Please take this writ to the Temple of the Moon and present it to the High Priestess. I cannot let you take the horns to such a sacred place.','Present the Sealed Writ to Tyrande Whispermind and the Darnassian Endorsement to Bolvar Fordragon and then return to Vereesa Windrunner.','What news do you bring?','Then it is done. Our people are part of the Alliance once more. We are no longer mere refugees living off scrap but equals. We still have a long journey ahead of us, but the first step has been done. I will call upon again once the time is right. May the sun guide you.',0,0,0,0,0,0,0,0,60315,1,60316,1,0,0,0,0,60154,1,10000,1228,269,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,9000,'Deliver the Sealed Writ.','Deliver the Darnassian Endorsement.');

replace into creature_questrelation (id, quest) values (80242, 40058);
replace into creature_involvedrelation (id, quest) values (80877, 40058);

delete from creature_template where entry = 60315;
replace into creature_template (entry, name, display_id1) values (60315, 'quest_40058_dummy_triger', 328);

delete from creature_template where entry = 60316;
replace into creature_template (entry, name, display_id1) values (60316, 'quest_40058_dummy_triger', 328);

delete from item_template where entry = 60154;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60154,3022,'Sealed Writ',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from item_template where entry = 60155;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60155,3018,'Darnassian Endorsement',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);