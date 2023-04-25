-- The Key to Karazhan I
UPDATE quest_template SET NextQuestInChain = 40818, NextQuestId = 0, PrevQuestId = 0 WHERE entry = 40817;
-- The Key to Karazhan II
UPDATE quest_template SET NextQuestInChain = 0, NextQuestId = 0, PrevQuestId = 40817 WHERE entry = 40818;

-- The Key to Karazhan III (A)
UPDATE quest_template SET NextQuestInChain = 40820, NextQuestId = 0, PrevQuestId = 40818 WHERE entry = 40819;
-- The Key to Karazhan IV (A)
UPDATE quest_template SET NextQuestInChain = 40821, NextQuestId = 0, PrevQuestId = 40819 WHERE entry = 40820;
-- The Key to Karazhan V (A)
UPDATE quest_template SET NextQuestInChain = 40825, NextQuestId = 0, PrevQuestId = 40820 WHERE entry = 40821;

-- The Key to Karazhan III (H)
UPDATE quest_template SET NextQuestInChain = 40823, NextQuestId = 0, PrevQuestId = 40818 WHERE entry = 40822;
-- The Key to Karazhan IV (H)
UPDATE quest_template SET NextQuestInChain = 40824, NextQuestId = 0, PrevQuestId = 40822 WHERE entry = 40823;
-- The Key to Karazhan V (H)
UPDATE quest_template SET NextQuestInChain = 40825, NextQuestId = 0, PrevQuestId = 40823 WHERE entry = 40824;

-- The Key to Karazhan VI
UPDATE quest_template SET NextQuestInChain = 40826, NextQuestId = 0, PrevQuestId = 0 WHERE entry = 40825;
-- The Key to Karazhan VII
UPDATE quest_template SET NextQuestInChain = 40827, NextQuestId = 0, PrevQuestId = 40825 WHERE entry = 40826;
-- The Key to Karazhan VIII
UPDATE quest_template SET NextQuestInChain = 40828, NextQuestId = 0, PrevQuestId = 40826 WHERE entry = 40827;
-- The Key to Karazhan IX
UPDATE quest_template SET NextQuestInChain = 40829, NextQuestId = 0, PrevQuestId = 40827 WHERE entry = 40828;
-- The Key to Karazhan X
UPDATE quest_template SET NextQuestInChain = 0, NextQuestId = 0, PrevQuestId = 40828 WHERE entry = 40829;

-- Set the following npc entries to scale 1, they are currently TINY.
update creature_template set scale = 1 where entry in (61393,61395,61396,61400);
-- Change display ID of item entry 61236 to 1317.
update item_template set display_id = 1317 where entry = 61236;
-- Add the following items to the sell list of NPC Historian Samual Ravencrest, add vendor flags to this npc as well. (entry 61269).
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61236, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61235, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61200, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61201, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61202, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269,61176, 0, 0, 0, 0);
-- Gossip text of npc entry 61269 changed.
update broadcast_text set male_text = 'Why, hello there, and welcome to Ravenshire!$B$BThis storied town is one of the oldest in Gilneas, and has long pledged fealty to the lords of Ravenwood Keep.$B$BSince the castle fell under dark times, Lord Ravenwood has relocated his court here, which means that history is being made right before our eyes!$B$BIf you\'d like to learn more of our fascinating past, I have quite the collection of texts that range from historical accounts and scholarly dissertations, to thrilling folktales and fables.' where entry = 61269;
-- New quest for PTR added.
-- Scouring Greyshire
delete from quest_template where entry = 40830;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40830,2,5179,42,36,520,0,'Scouring Greyshire','It may seem dreary here in Gilneas, though I must assure you this was not always our reality. In times past, I spent many years studying under my masters\' tutelage, and painting great manuscripts for the Light. I spread the faith and broke bread with many fine folk.$B$BThere are a foolish few who would assume we went unscathed during the perilous times of the Third War. Whilst we may not have suffered directly from the plague as our northern cousins have, we did have conflict with the Scourge.$B$BYou see, two years ago, a powerful lich named Naze the Eternal breached the wall near Oldrock Pass. Ultimately, the undead were defeated by the good soldiers of Gilneas, but our victory was paid at a terrible toll.$B$BI was lucky to escape Greyshire with my life, others were not so fortunate. I ask of you to scour that forsaken place, and recover the manuscripts that I spent my younger years painting. While you are there, bring peace to some of the forlorn souls that still remain.','Slay 9 Lingering Skeletons, 9 Shambling Dead and recover the Greyshire Manuscripts for Father Oblen at Shademore Tavern in Gilneas.','It may seem like a perilous task, but remember: Keep your faith in the Light and you are bound to find yourself on the right path.','<Father Oblen seems pleased gazing upon his old work.>$B$BAhh, I never thought I would look upon these scripts again, lucky they are to have survived all of the misery that befell that place.$B$BI thank you greatly for your efforts, $c. Please, take this as a sign of my gratitude.',61258,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 61259,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61386, 40830);
replace into creature_involvedrelation	(id, quest) values (61386, 40830);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61258,1037,'Greyshire Manuscripts',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2011105, 3, 23434, 'Weathered Chest', 0, 4, 1, 43, 2011105, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2011105,61258,-100,0,1,1,0);

update gameobject set spawntimesecsmin = 10, spawntimesecsmax = 10 where ID = 2011105;

replace into item_template values
 ('61259', '4', '1', 'Cuffs of Sanctitude', '', '16897', '2', '0', '1', '10620', '2655', '9', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '0', '0', '21505', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '25', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
-- NEW NPC FOR PTR:
-- Mikoto Shiina, displayid 18639, level 28, faction 35, humanoid, scale 1, quest/gossip flags, gossip text : Spirits be with you stranger, what can I do for you?
-- Haruhiko Yoshino, displayid 18646, level 42, faction 35, humanoid, scale 1, quest/gossip flags, gossip text: Keep your distance Outsider.
-- Dae-woong Kim, displayid 18642, level 38,  faction 35, humanoid, scale 1, quest/gossip flags, gossip text : Salutations Outlander. Keep on your good behaviour.
-- Yasu Ping, displayid 18644, level 55, faction 35, humanoid, scale 1, quest/gossip flags, gossip text : I am watching you Outsider.
-- Shizuru Yamada, displayid 18640, level 18, faction 35, humanoid, scale 1, quest/gossip flags, gossip text : Thank you for rescuing me. I am in your debt. ((Required for phasing, this npc should not be visible to players unless they complete the quest 'rescuing Shizuru)).
-- Shizuru Yamada, displayid 18640, level 18, faction 35, humanoid, scale 1, gossip flags ((Required for quest)).
-- Kurnen Oathbrace, display ID 3307, faction 120, level 44, humanoid, scale 1, gossip/quest flags, gossip text : "Why hello there, you wouldn't mind helping out a dwarf in need would ye?".
REPLACE INTO creature_template VALUES
(61410, 18639, 0, 0, 0, 0, 'Mikoto Shiina', NULL, 0, 28, 28, 890, 890, 0, 0, 1235, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 41, 57, 0, 112, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61411, 18646, 0, 0, 0, 0, 'Haruhiko Yoshino', NULL, 0, 42, 42, 1981, 1981, 0, 0, 2246, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61412, 18642, 0, 0, 0, 0, 'Dae-woong Kim', NULL, 0, 38, 38, 1599, 1599, 0, 0, 1780, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61413, 18644, 0, 0, 0, 0, 'Yasu Ping', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 1, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61414, 18640, 0, 0, 0, 0, 'Shizuru Yamada <FOR PHASE. WILL BE PHASED WHEN QUEST WILL BE ADDED>', NULL, 0, 18, 18, 417, 417, 0, 0, 765, 35, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 41, 51, 0, 84, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 18, 23, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61415, 18640, 0, 0, 0, 0, 'Shizuru Yamada', NULL, 0, 18, 18, 417, 417, 0, 0, 765, 35, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 41, 51, 0, 84, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61416, 3307, 0, 0, 0, 0, 'Kurnen Oathbrace', NULL, 0, 44, 44, 2117, 2117, 0, 0, 2625, 120, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41421; set @magic_number = 61416;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Why hello there, you wouldn\'t mind helping out a dwarf in need would ye?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41420; set @magic_number = 61414;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Thank you for rescuing me. I am in your debt.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41419; set @magic_number = 61413;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am watching you Outsider.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41418; set @magic_number = 61412;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Keep on your good behaviour.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41417; set @magic_number = 61411;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Keep your distance Outsider.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41416; set @magic_number = 61410;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Spirits be with you stranger, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(18639, 0, 0, 0, 0),
(18646, 0, 0, 0, 0),
(18642, 0, 0, 0, 0),
(18644, 0, 0, 0, 0),
(18640, 0, 0, 0, 0);
-- NPC Therum Deepforge add quest flags.
update creature_template set npc_flags = 19 where entry = 5511;
-- Display ID 20278 INCORRECT SYNTAX ERROR.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20278, 0, 0, 0, 0);
-- Quest 2992 change short description to : "Bring Techbot's Memory Core to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Bring Techbot\'s Memory Core to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2992;
-- Quest 3641 change short description to : "Bring 6 Mithril Tubes, an Accurate Scope, and 2 Advanced Target Dummies to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Bring 6 Mithril Tubes, an Accurate Scope, and 2 Advanced Target Dummies to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3641;
-- Quest 3640 change short description to: "If you agree to become a Gnome Engineer, then right-click on the Pledge of Secrecy and speak once more with Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'If you agree to become a Gnome Engineer, then right-click on the Pledge of Secrecy and speak once more with Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3640;
-- Quest 2923 change short description to: "Speak with Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Speak with Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2923;
-- Quest 2923 change main description to :"Tinkmaster Overspark is very upset with the fate of his mechanical creation, Techbot. I remember Techbot as a kind and helpful tool for the gnomes, but Overspark tells me it's malfunctioned.$B$BVery sad. But with luck perhaps he can be fixed!$B$BSpeak with Tinkmaster Overspark, in the Gnomeregan Reclamation Facility in Dun Morogh. He would welcome your help."
update quest_template set details = 'Tinkmaster Overspark is very upset with the fate of his mechanical creation, Techbot. I remember Techbot as a kind and helpful tool for the gnomes, but Overspark tells me it\'s malfunctioned.$B$BVery sad. But with luck perhaps he can be fixed!$B$BSpeak with Tinkmaster Overspark, in the Gnomeregan Reclamation Facility in Dun Morogh. He would welcome your help.' where entry = 2923;
-- Quest 3632 change short description to : "If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3632;
-- Quest 3632 change main description to : "Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work. $B$B $N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!"
update quest_template set details = 'Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work.$B$B$N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!' where entry = 3632;
-- Quest 3634 change short description to : "If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3634;
-- Quest 3634 change main description to : "Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work. $B$B $N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!"
update quest_template set details = 'Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work.$B$B$N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!' where entry = 3634;
-- Quest 3630 change short description to : "If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'If you wish to learn more about Gnome Engineering, take the Manual of Engineering Disciplines to Tinkmaster Overspark at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 3630;
-- Quest 3630 change main description to : "Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work. $B$B $N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!"
update quest_template set details = 'Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think it is a waste, you should be aware of gnome specialization. They make items and gadgets that claim to change the world, but rarely often work.$B$B$N, read this manual. If you wish to learn how to make metal paper weights, then take that manual to Tinkmaster Overspark in the Gnomeregan Reclamation Facility. Remember - membership is permanent and prevents joining the other discipline, so make sure you are sure before finishing his task!' where entry = 3630;
-- Quest 2931 change short description to : "Speak with Master Mechanic Castpipe at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Speak with Master Mechanic Castpipe at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2931;
-- Quest 2931 change main description to : "Master Mechanic Castpipe in the Gnomeregan Reclamation Facility has need of adventurers! He's organizing bands to reenter Gnomeregan on a data retrieval mission of top security and importance.$B$BCastpipe might not be a member of the Enlightened Assembly of Arcanology, Alchemy and Engineering Sciences like I am, but he's still a smart gnome so if he thinks it's important, then by my calculations there's an eighty-four percent probability that it really is important!$B$BThose are good odds!"
update quest_template set details = 'Master Mechanic Castpipe in the Gnomeregan Reclamation Facility has need of adventurers! He\'s organizing bands to reenter Gnomeregan on a data retrieval mission of top security and importance.$B$BCastpipe might not be a member of the Enlightened Assembly of Arcanology, Alchemy and Engineering Sciences like I am, but he\'s still a smart gnome so if he thinks it\'s important, then by my calculations there\'s an eighty-four percent probability that it really is important!$B$BThose are good odds!' where entry = 2931;
-- Quest 2930 change short description to : "Bring a Prismatic Punch Card to Master Mechanic Castpipe at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Bring a Prismatic Punch Card to Master Mechanic Castpipe at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2930;
-- Quest 2924, change short description to : "Bring 12 Essential Artificials to Klockmort Spannerspan at the Gnomeregan Reclamation Facility."
update quest_template set objectives = 'Bring 12 Essential Artificials to Klockmort Spannerspan at the Gnomeregan Reclamation Facility.' where entry = 2924;
-- Quest 1708 change short description to : "Bring 20 loads of Searing Coral to Klockmort Spannerspan at the Gnomeregan Reclamation Facility."
update quest_template set objectives = 'Bring 20 loads of Searing Coral to Klockmort Spannerspan at the Gnomeregan Reclamation Facility.' where entry = 1708;
-- quest 1704 change main description to : "I made a copy of my notes on the techniques I learned while making your armor, and need someone to take them to Klockmort Spannerspan. He's a gnomish blacksmith in the Gnomeregan Reclamation Facility and when he learns what I've learned... I bet he'll pull off his own beard in excitement."
update quest_template set details = 'I made a copy of my notes on the techniques I learned while making your armor, and need someone to take them to Klockmort Spannerspan. He\'s a gnomish blacksmith in the Gnomeregan Reclamation Facility and when he learns what I\'ve learned... I bet he\'ll pull off his own beard in excitement.' where entry = 1704;
-- Quest 2925, change short description to : "Speak with Klockmort Spannerspan at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Speak with Klockmort Spannerspan at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 2925;
-- Quest 2925 change main description to : "A gnome friend, Klockmort Spannerspan, sent word to me from Ironforge. He tells me he needs help on a dangerous, but essential, mission into Gnomeregan, the once great gnome city now contaminated and filled with mad gnomes and their devices.$B$BI must stay here, but my heart aches to help my friend. If you can go in my stead, then I would be much indebted to you.$B$BYou may find Klockmort at the Gnomeregan Reclamation Facility, in Dun Morogh."
update quest_template set details = 'A gnome friend, Klockmort Spannerspan, sent word to me from Ironforge. He tells me he needs help on a dangerous, but essential, mission into Gnomeregan, the once great gnome city now contaminated and filled with mad gnomes and their devices.$B$BI must stay here, but my heart aches to help my friend. If you can go in my stead, then I would be much indebted to you.$B$BYou may find Klockmort at the Gnomeregan Reclamation Facility, in Dun Morogh.' where entry = 2925;
-- Quest 1072 change short description to : "Speak to Lomac Gearstrip at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Speak to Lomac Gearstrip at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 1072;
-- Quest 1072 change main description to : "The device I'm thinking about is my most advanced version to date. But we'll need a special potion if it's to work. I'm thinking we might as well get the good stuff since this mission could be your last.$B$BAnd for that, we're going to need some potent explosives: Nitromirglyceronium.$B$BThe only person who can make NG-5 is an old friend of mine: Lomac Gearstrip. Look for him in the Gnomeregan Reclamation Facility.$B$BYou talk him into making us some NG-5, I'll get to work on placement for my devices."
update quest_template set details = 'The device I\'m thinking about is my most advanced version to date. But we\'ll need a special potion if it\'s to work. I\'m thinking we might as well get the good stuff since this mission could be your last.$B$BAnd for that, we\'re going to need some potent explosives: Nitromirglyceronium.$B$BThe only person who can make NG-5 is an old friend of mine: Lomac Gearstrip. Look for him in the Gnomeregan Reclamation Facility.$B$BYou talk him into making us some NG-5, I\'ll get to work on placement for my devices.' where entry = 1072;
-- Quest 1073 change short description to : "Bring 4 Minor Mana Potions and 2 Elixirs of Fortitude to Lomac Gearstrip at the Gnomeregan Reclamation Facility in Dun Morogh."
update quest_template set objectives = 'Bring 4 Minor Mana Potions and 2 Elixirs of Fortitude to Lomac Gearstrip at the Gnomeregan Reclamation Facility in Dun Morogh.' where entry = 1073;