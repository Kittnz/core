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


-- The Kaldorei Problem --
delete from quest_template where entry = 40049;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (80750,40049,2,2040,30,25,0,0,'The Kaldorei Problem','You have done well, I believe it is time you meet with the true leader of the Silvermoon Remnant. Due to our fragile state and the threats we\'ve faced, she let me act as the public leader of our people, yet it is she who has brought us together. Proceed to the very summit of the Citadel, you will find her there donning our tabard. She requires your help with a plan to earn an audience with the Kaldorei.','Ascend the summit of the Citadel of the Sun and speak to the leader of the Silvermoon Remnant.','Ah you must be $n.','My name is Vereesa Windrunner. Yes, sister to the lost Hero Alleria, and to what. Sylvanas has become. Thank you for coming to me $n, I believe it is time to set our plan in motion.',0,0,0,0,0,0,0,0,60314,1,0,0,0,0,0,0,0,0,1240,528,269,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,9000,'Speak to the leader of the Silvermoon Remnant');

replace into creature_questrelation (id, quest) values (80245, 40049);
replace into creature_involvedrelation (id, quest) values (80877, 40049);

replace into creature_template (entry, name, display_id1) values (60314,'quest_40049_dummy_triger',328);

update creature_template set npc_flags = 19 where entry = 80245;
update creature_template set phase_quest_id = 80750 where entry = 80877;
update creature_template set script_name = 'npc_vereesa_windrunner' where entry = 80877;

-- Breaking the Felstar --
delete from quest_template where entry = 40050;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40049,40050,2,331,30,25,0,0,'Breaking the Felstar','I am aware of your foray to the Alliance members. I knew from the start that it would be difficult to earn the trust of the Kaldorei. A long time ago they welcomed us in their home as kin provided we abandon magic.\n\nFor two millenia we lived as one until our ancestor\'s addiction grew out of control. To spite the Kaldorei they unleashed a terrible magical storm over Ashenvale. It is then fitting that it is Ashenvale we shall save. A powerful Satyr leading a band of demons is preparing an incursion into Ashenvale from Felwood.\n\nSeveral of our best Rangers have risked their lives to retrieve this information. They await you at the border to Felwood north of Raynewood\'s Retreat where the fiend has summoned a Felstone.\n\nMeet up at the border to Ashenvale and help them stop this incursion, take the Satyr\'s horns as proof. Once that is done, speak to Ashylah Starcaller in Darnassus, she is an ally to our cause.','Rendezvous with the Rangers and defeat the Satyr threat to Ashenvale. Take the Satyr horns to Ashylah Starcaller in Darnassus.','Ah $r what can I do for you?.','You have defeated Dra\'lox Felstar? After ten thousand years. It seems I was right to trust the Quel\'dorei. I will explain anon.',60148,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3180,3228,269,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,9000,'');

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

delete from gameobject_template where entry = 2010699;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010699, 2, 0, 0.01, 'ivent_trigger', 32, '');

-- Thalassian Ascension --
delete from quest_template where entry = 40058;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (40050,40058,2,2040,30,25,0,0,'Thalassian Ascension','Dra\'lox Felstar has long caused pain and suffering to our people. Your actions may be able to sway the High Priestess. Please take this writ to the Temple of the Moon and present it to the High Priestess. I cannot let you take the horns to such a sacred place.','Present the Sealed Writ to Tyrande Whispermind and the Darnassian Endorsement to Bolvar Fordragon and then return to Vereesa Windrunner.','What news do you bring?','Then it is done. Our people are part of the Alliance once more. We are no longer mere refugees living off scrap but equals. We still have a long journey ahead of us, but the first step has been done. I will call upon again once the time is right. May the sun guide you.',0,0,0,0,0,0,0,0,60315,1,60316,1,0,0,0,0,60154,1,10000,1228,269,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,9000,'Deliver the Sealed Writ','Deliver the Darnassian Endorsement');

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

-- The Magical Ailment --
delete from quest_template where entry = 40059;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (40058,40059,2,2040,50,45,0,0,'The Magical Ailment','Hello again! Our formal ascension into the Alliance has been a great boon but a great problem remains to my people\'s livelihood.n\n\For over 7000 years did we benefit from the magic of the Sunwell, it coursed through us and filled us with power, even those who did not practice magic. The lack of the Sunwell is slowly consuming our sanity with strong addiction pangs.n\n\I believe a cure can be found but until such a time, we need something to help us deal with it. The Rangers who helped you take down Dra\'lox came upon mystical pool of water whose effect mimics the Sunwell on a smaller scale.n\n\Travel to the Kaldorei lands and ask Ashylah Starcaller about it, see if some of the water can be procured for us.','Travel to Darnassus and speak to Ashylah Starcaller.','Hello again, I take it the Quel\'dorei sent you, what can I do for you?','That is a Moonwell! Have they lost their minds?! A Moonwell is the sacred fount of Elune, it is absolutely not something that can be turned over to them!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4281,2578,269,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,21000,'','');

replace into creature_questrelation (id, quest) values (80877, 40059);
replace into creature_involvedrelation (id, quest) values (80242, 40059);

-- A Quest for the Moonwell --
delete from quest_template where entry = 40060;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (40059,40060,2,357,50,45,0,0,'A Quest for the Moonwell','A Moonwell is something we sentinels protect with everything we have. I symphatize with the Quel\'dorei\'s plight, but I would never betray my people and turn over the sacred waters to the Quel\'dorei.\n\nPerhaps there is another way, if they have no intention of using the water, then perhaps should you prove your worth to the Priesthood they would be willing to educate the Quel\'dorei on the goddess and erect a small well within Alah\'thalas. A well was erected in Stormwind after all, so it is not unfeasible.\n\nTravel to the Feathermoon Stronghold in Feralas and speak to Vestia Moonspear, she may be the only priestess sympatetic to your cause. Give this Missive to her and pay attention to what she has to say!','Travel to Feralas and deliver the Missive to Vestia Moonspear. Help Vestia cleanse the Moonwell outside Dire Maul.','It is you again $r. What brings you here?','It is taking all my wisdom and patience to not remove you for even suggesting that we hand over some of our sacred waters to the children of the Highborne! I hope you come bringing more than words.',0,0,0,0,0,0,0,0,60317,1,60318,1,0,0,0,0,60156,1,4281,578,269,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,21000,'Deliver the Missive to Vestia Moonspear','Help Vestia cleanse the Moonwell outside Dire Maul');

replace into creature_questrelation (id, quest) values (80242, 40060);
replace into creature_involvedrelation (id, quest) values (7999, 40060);

delete from creature_template where entry = 60317;
replace into creature_template (entry, name, display_id1) values (60317, 'quest_40060_dummy_triger', 328);

delete from creature_template where entry = 60318;
replace into creature_template (entry, name, display_id1) values (60318, 'quest_40060_dummy_triger', 328);

update creature_template set script_name = 'npc_vestia_moonspear' where entry = 7878;
update creature_template set npc_flags = 3 where entry = 7878;

delete from gameobject_template where entry = 2010815;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010815, 2, 6913, 0.2, 'Bowl of Sacred Water', 32, 'go_sacred_water');

delete from gameobject where id = 2010815 and position_x between -4506.40 and -4506.30;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (2010815, 1, -4506.33, 1263.66, 128.45, 1.12);

delete from creature_template where entry = 60430;
REPLACE INTO `creature_template` VALUES (60430, 0, 11533, 0, 0, 0, 'Furious Ogre', NULL, 0, 48, 48, 1800, 1800, 0, 0, 2780, 45, 0, 1.6, 1.14286, 0, 20, 5, 0, 0, 1, 78, 96, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 5238, 5238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52380, 0, 86, 118, '', 1, 3, 0, 0, 3, 5238, 0, 0, 0, 0, 0, 0, '');

delete from creature_template where entry = 60431;
REPLACE INTO `creature_template` VALUES (60431, 0, 11561, 0, 0, 0, 'Tu\'whak', NULL, 0, 50, 50, 2800, 2800, 0, 0, 2835, 45, 0, 1.6, 1.14286, 0, 20, 5, 0, 0, 1, 79, 99, 0, 212, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 5241, 5241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52410, 0, 89, 121, '', 1, 3, 0, 0, 3, 5241, 0, 0, 0, 0, 0, 0, '');

delete from item_template where entry = 60156;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values (60156,3022,'Missive to Vestia Moonspear',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

set @gossip_menu_id = 61001; set @magic_number = 7878;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings to you traveler.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 61002; set @magic_number = 60313;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What you ask is quite difficult. But there may be away. As you may know by now, the waters of a Moonwell is sacred to us. It contains the pure power of our Goddess Elune, but also a small fragment of water from the original Well of Eternity.\n\nObviously losing a Well like this or having it corrupted would be a great sacrilege to us.Unfortunately, this has happened.\n\nA Twin set of moonwell exist outside Eldra\'thalas. You may know it better as Dire Maul. The larger well remain sanctified, while the smaller well has been defiledand corrupted by the Ogres. They have defecatedand urinated in the sacred waters.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 61003; set @magic_number = 60314;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'If you help me cleanse the Moonwell and bring retribution to the Ogres, then we may take some of the water. I will present your case to the High Priestess herself.\n\nUnder the supervision of the Sisterhoodand the Sentinels, I do not see why we could not try to guide some of the Quel\'dorei back in the warm embrace of the goddess. Even if they choose to reject the Goddess, proximity to the water should eventually help them wean off from their ailment. It may take thousands of years however.\n\nRemember that the Quel\'dorei lived with us for over two thousand years, and that was not enough for them to cease their use of magic. However, the modern Quel\'dorei are a different people from our wayward kin. Either way, that is my offer.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 61004; set @magic_number = 60315;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Splendid! Then meet me by the Well and be prepared, this will not be an easy task. Should you fail and we have to retreat, I will be ready to attempt this once more. I will place a bowl of sacred water by the well, when you are there I will arrive.\n\nThe cleansing will draw the attention of the brutes, so do not hesitate to fight! If they injure me, the cleansing will also fail, keep me safe! May Elune guide us.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from creature where guid = 51009;
delete from creature where guid = 51077;

-- A people restored --
delete from quest_template where entry = 40069;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (40060,40069,2,2040,50,45,0,0,'A people restored','Well out with it? What else do you have?','Speak to Vereesa Windrunner in Alah\'thalas. Witness the establishment of the miniature Moonwell. Return to Vereesa Windrunner.','Welcome back is it done?','Yes the Moonwell has been established, I feel it even now. It is easier to focus my thoughts, I feel less stressed. Perhaps I should consider studying the ways of Elune, or perhaps we shall see if there is a divinity within the Sun. Whatever path our people choose to follow, we will respect it. Whether the Light, Elune or something else is their choice. Thank you so much. With my people\'s livelihood restored, we can now set our sights on another matter, but it will take time. I will call upon when that time comes.',0,0,0,0,0,0,0,0,60320,1,60321,1,0,0,0,0,0,0,4281,2578,269,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,21000,'','');

replace into creature_questrelation (id, quest) values (7999, 40069);
replace into creature_involvedrelation (id, quest) values (80877, 40069);

delete from gameobject_template where entry = 2010819;
replace into gameobject_template (entry, type, displayid, size, name, flags, script_name) values (2010819, 2, 22752, 1, 'Container of Moonwell Water', 32, '');

delete from creature_template where entry = 60320;
replace into creature_template (entry, name, display_id1) values (60320, 'quest_40069_dummy_triger', 328);

delete from creature_template where entry = 60321;
replace into creature_template (entry, name, display_id1) values (60321, 'quest_40069_dummy_triger', 328);

delete from creature_template where entry = 60434;
REPLACE INTO `creature_template` VALUES (60434, 2, 2306, 14613, 14614, 14615, 'Moonwell Sentinel', NULL, 0, 55, 55, 4667, 4667, 0, 0, 4292, 79, 1, 1, 1.42857, 0, 20, 5, 0, 0, 1, 240, 260, 0, 248, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 301.34, 422.17, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 739, 'EventAI', 0, 3, 0, 0, 3, 4262, 0, 0, 0, 0, 525312, 40060, '');

delete from creature where id = 60434;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60434,0,4275.45,-2816.00,82.31,3.80,300,300,3,100,1,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60434,0,4285.97,-2807.36,82.31,0.73,300,300,3,100,1,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60434,0,4284.96,-2818.09,82.31,5.34,300,300,3,100,1,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60434,0,4276.60,-2806.67,82.31,2.18,300,300,3,100,1,10);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60434,0,4264.52,-2816.50,82.31,0.57,300,300,3,100,1,10);

delete from creature_template where entry = 60435;
REPLACE INTO `creature_template` VALUES (60435, 0, 4402, 0, 0, 0, 'Priestess of the Moon', NULL, 0, 55, 55, 2718, 2718, 2117, 2117, 2654, 80, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 2, 4096, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 40060, '');
delete from creature where id = 60435;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60435,0,4274.04,-2811.09,82.31,3.00,300,300,3,100,1,10);

delete from creature_template where entry = 60436;
REPLACE INTO `creature_template` VALUES (60436, 0, 16036, 16038, 16182, 16184, 'Alah\'Thalas Citizen', NULL, 0, 10, 10, 413, 413, 0, 0, 20, 371, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 40060, '');
delete from creature where id = 60436;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60436,0,4271.86,-2819.77,82.31,1.53,300,300,3,100,1,10);

delete from creature_template where entry = 60437;
REPLACE INTO `creature_template` VALUES (60437, 0, 16036, 16038, 16182, 16184, 'Alah\'Thalas Citizen', NULL, 0, 10, 10, 413, 413, 0, 0, 20, 371, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 40060, '');
delete from creature where id = 60437;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60437,0,4275.26,-2822.07,82.31,1.77,300,300,3,100,1,10);

delete from creature_template where entry = 60438;
REPLACE INTO `creature_template` VALUES (60438, 0, 16036, 16038, 16182, 16184, 'Alah\'Thalas Citizen', NULL, 0, 10, 10, 413, 413, 0, 0, 20, 371, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 40060, '');
delete from creature where id = 60438;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60438,0,4269.73,-2802.56,82.31,4.71,300,300,3,100,1,10);

delete from creature_template where entry = 60439;
REPLACE INTO `creature_template` VALUES (60439, 0, 16036, 16038, 16182, 16184, 'Alah\'Thalas Citizen', NULL, 0, 10, 10, 413, 413, 0, 0, 20, 371, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 9, 13, 0, 62, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 16.808, 23.111, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 40060, '');
delete from creature where id = 60439;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60439,0,4270.05,-2806.30,82.31,1.26,300,300,3,100,1,10);

delete from creature_template where entry = 60440;
REPLACE INTO `creature_template` VALUES (60440, 2, 2306, 14613, 14614, 14615, 'Moonwell Sentinel', NULL, 0, 55, 55, 4667, 4667, 0, 0, 4292, 79, 1, 1, 1.42857, 0, 20, 5, 0, 0, 1, 240, 260, 0, 248, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 301.34, 422.17, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 739, 'EventAI', 0, 3, 0, 0, 3, 4262, 0, 0, 0, 0, 525312, 40060, '');
delete from creature where id = 60440;
replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, movement_type, patch_max) values (60440,0,4264.69,-2806.63,82.31,5.57,300,300,3,100,1,10);

delete from gameobject where id = 105181 and position_x between 4280.00 and 4280.10;
replace into gameobject (id, map, position_x, position_y, position_z, orientation) values (105181, 0, 4280.09, -2811.40, 82.31, 2.69);

update gameobject_template set phase_quest_id = 40060 where entry = 105181;

set @gossip_menu_id = 61100; set @magic_number = 80877; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hello, I know this isn\'t how it was supposed to go, but concessions must be made for my people\'s future.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 61101; set @magic_number = 60301; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am not fond of having to turn down a good chunk of our autonomy, no. But as I said, my people\'s future comes first. Besides. The goddess of our ancestors has guided the Kaldorei well. Who am I to doubt their goddess? I\'ve seen her power first hand, and so have you. Whether she is the right thing for my people is another question. One only the future will answer.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 61102; set @magic_number = 60312; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Kaldorei have arrived and have started preparations. Why not go and check up on their progress? They have setup in the Golden Dawn Institute. It is the floating building where our teleport to Stormwind resides. Once you are done return here.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- A people restored --
delete from quest_template where entry = 40070;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1,objectivetext2) values (40069,40070,2,2040,60,60,0,0,'A Thalassian Threat','Hello, a new development has revealed itself. We\'ve received word from the Quel\'lithien lodge that the Scourge is on the move, and we\'ve received reports of demons converging in Quel\'thalas. Suffice to say, if the Scourge or someone else is summoning demons, that is something we cannot abide by. I am travelling to Stormwind to meet with the Alliance leaders, please join me there. Speak to Ambassador Caledra Dawnbreeze in a side chamber within the Stormwind Keep.','Speak to Caledra Dawnbreeze in the Stormwind Keep and attend the Summit.','It was difficult but we did it.','Now that we have the support, it is time to move as soon as possible. The Kaldorei vanguard cannot hold long, they will be under siege the moment they are located.',0,0,0,0,0,0,0,0,60322,1,0,0,0,0,0,0,0,0,4281,2578,269,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,269,42000,'','');

replace into creature_questrelation (id, quest) values (80877, 40070);
replace into creature_involvedrelation (id, quest) values (80877, 40070);

delete from creature_template where entry = 60322;
replace into creature_template (entry, name, display_id1) values (60322, 'quest_40070_dummy_triger', 328);

update creature_template set npc_flags = 3 where entry = 1752;

set @gossip_menu_id = 61103; set @magic_number = 60313; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hello again friend, I have heard of all the good you\'ve done for our cause. I take it you\'re here as Lady Windrunner\'s emissary for the summit?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;