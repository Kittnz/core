-- Lord Ivar Pyrewood. display ID 18753, faction 84, level 50 elite, humanoid, quest/gossip flags, gossip text: “I have come here to seek support of the Nobles of Stormwind. It is a harder task than I had anticipated.”
-- High Taskmaster Grigor, display ID 20273, faction 14, level 44, humanoid, scale 1, weapon 2014, copy stats and loot from Greymane Taskmaster 
-- Bradley Steel <Blood Ring Quartermaster>, display ID 1515, faction 35, level 58, humanoid, scale 1, vendor flags, ((Has the following items on their sell list : 60004, 60005, 60006, 60366, 60367, 60368.
-- Arghon Stonewall <Plate Armor Vendor>, display ID 11806, faction 35, level 58, humanoid, scale 1, vendor flags (Has the following items on their sell list : 60358, 60359, 60360, 60361, 60362, 60363, 60364, 60365 )
-- Vagron Bloodheart <Mail Armor Vendor>, display ID 1388, faction 35, level 58, humanoid, scale 1, vendor flags (Has the following items on their sell list : 60350, 60351, 60352, 60353, 60354, 60355, 60356, 60357 )
-- Kenja Blacktusk <Leather Armor Vendor>, display ID 12049, faction 35, level 58, humanoid, scale 1, vendor flags  (Has the following items on their sell list : 83429, 83430, 83431, 83432, 83433, 83434, 83435, 83436
-- Henley Rothand <Cloth Armor Vendor>, display ID 3542, faction 35, level 58, humanoid, scale 1, vendor flags (Has the following items on their sell list : 83420, 83421, 83422, 83423, 83425, 83426, 83427, 83428
-- Gordon Hardfoot <Belt Buckles>, display ID 3358, faction 12, level 25, humanoid, scale 1, gossip/vendor flags, gossip text : "Welcome to Buckle Up! Excuse the mess, I am converting my armor shop into something new; belt buckles! If you got the yearning to create something unique, you're in the right place."
-- Tanovan Darkwell <Belt Buckles>, display ID 1599 faction 68 , level 25, humanoid, scale 1, gossip/vendor flags, gossip text : "You there, looking to stand out among the crowds? I got plans for the creation of belt buckles. With them, you'll stand out like never before.$B$B<A sigh escapes Tanovan.>$B$BLook, help me out, I'm in need of some silver, alright?"
-- Orrik Thunderbeard, <Gryphon Master>, display id 3007, faction 55, level 55 elite, humanoid, scale 1, gossip/flight master flag, gossip text: “The skies of Kalimdor are as untamed as its lands. Where would you like to fly to?”
REPLACE INTO creature_template VALUES
(61614, 18753, 0, 0, 0, 0, 'Lord Ivar Pyrewood', NULL, 0, 50, 50, 17720, 17720, 0, 0, 2888, 84, 3, 1, 1.14286, 1.5, 20, 5, 40, 1, 1, 292, 377, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 55.3248, 76.0716, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61615, 20273, 0, 0, 0, 0, 'High Taskmaster Grigor', NULL, 0, 44, 44, 2117, 2117, 0, 0, 2625, 14, 0, 1, 1.14714, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61616, 1515, 0, 0, 0, 0, 'Bradley Steel', 'Blood Ring Quartermaster', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61617, 11806, 0, 0, 0, 0, 'Arghon Stonewall', 'Plate Armor Vendor', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61618, 1388, 0, 0, 0, 0, 'Vagron Bloodheart', 'Mail Armor Vendor', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61619, 12049, 0, 0, 0, 0, 'Kenja Blacktusk', 'Leather Armor Vendor', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61620, 3542, 0, 0, 0, 0, 'Henley Rothand', 'Leather Cloth Vendor', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61621, 3358, 0, 0, 0, 0, 'Gordon Hardfoot', 'Belt Buckles', 0, 25, 25, 712, 712, 0, 0, 1009, 12, 5, 1, 1.14286, 1, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61622, 1599, 0, 0, 0, 0, 'Tanovan Darkwell', 'Belt Buckles', 0, 25, 25, 712, 712, 0, 0, 1009, 68, 5, 1, 1.14286, 1, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61623, 3007, 0, 0, 0, 0, 'Orrik Thunderbeard', 'Gryphon Master', 0, 55, 55, 7842, 7842, 0, 0, 4500, 55, 9, 1, 1.14286, 1, 20, 5, 0, 1, 1, 330, 421, 0, 248, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 68.8, 89.7, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 524298, 0, '');

set @equip_template = 20429; set @weapon_1 = 2014; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61615;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41524; set @magic_number = 61623;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The skies of Kalimdor are as untamed as its lands. Where would you like to fly to?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41523; set @magic_number = 61622;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You there, looking to stand out among the crowds? I got plans for the creation of belt buckles. With them, you\'ll stand out like never before.$B$B<A sigh escapes Tanovan.>$B$BLook, help me out, I\'m in need of some silver, alright?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41522; set @magic_number = 61621;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Buckle Up! Excuse the mess, I am converting my armor shop into something new; belt buckles! If you got the yearning to create something unique, you\'re in the right place.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41521; set @magic_number = 61614;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have come here to seek support of the Nobles of Stormwind. It is a harder task than I had anticipated.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Vendor list: Henley Rothand.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61620, 83420, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61620, 83421, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61620, 83422, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61620, 83423, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61620, 83425, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61620, 83426, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61620, 83427, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61620, 83428, 0, 0, 0, 0);
-- Vendor list: Kenja Blacktusk.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61619, 83429, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61619, 83430, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61619, 83431, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61619, 83432, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61619, 83433, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61619, 83434, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61619, 83435, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61619, 83436, 0, 0, 0, 0);
-- Vendor list: Vagron Bloodheart.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61618, 60350, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61618, 60351, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61618, 60352, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61618, 60353, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61618, 60354, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61618, 60355, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61618, 60356, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61618, 60357, 0, 0, 0, 0);
-- Vendor list: Arghon Stonewall.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61617, 60358, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61617, 60359, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61617, 60360, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61617, 60361, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61617, 60362, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61617, 60363, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61617, 60364, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61617, 60365, 0, 0, 0, 0);
-- Vendor list: Bradley Steel.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61616, 60004, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61616, 60005, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61616, 60006, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61616, 60366, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61616, 60367, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61616, 60368, 0, 0, 0, 0);
-- Remove vendor flags from npc Vizlow (entry 40049) and remove all items from vendor list.
delete from npc_vendor where entry = 40049;
update creature_template set npc_flags = 3 where entry = 40049;

-- Find Melanastrasza
delete from quest_template where entry = 41106;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41088,41106,2,616,60,59,0,0,'Find Melanastrasza','If Fel is in the soil, then it means the demons are up to something. Travel up the road until you arrive near a scorched land. It was one of the sites of the battle of Mount Hyjal.$B$B The evil ugly demonlord Archimonde himself arrived and destroyed everything that was once there! Demons still remain in the Hyjal to this day.$B$B When I made my way here I ran into a young pretty red Dragon that was investigating the demons. Seek her out!','Find Melanastrasza and report the situation to her.','Yes?','Fel in the soil?! I knew those brutes were up to something. They have been acting a bit too organized recently. I need your help!',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2850,475,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61580, 41106);
replace into creature_involvedrelation	(id, quest) values (61579, 41106);

-- Honor in Blood Ring
delete from quest_template where entry = 41107;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41107,2,4014,60,60,0,1,'Honor in Blood Ring','There is glory to be found within the Blood Ring. To challenge the champions of the Alliance will bring honor to the Horde in victory. It is there where the real heroes of Azeroth can be found.$B$BDo your part and bring glory to yourself, and to the Horde.','Bring 15 Arena Marks of Honor to a Horde Warbringer outside the battlegrounds.','How has the arena treated you, $n?','Our ancestors will cry out your name! May the word of your glory spread to all in the Horde.',61793,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1980,330,1008,75,0,0,0,0,0,0,0,24965,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (15350, 41107);
replace into creature_involvedrelation	(id, quest) values (15350, 41107);
update quest_template set requiredraces = 434 where entry = 41107;

-- Honor in Blood Ring
delete from quest_template where entry = 41108;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41108,2,4014,60,60,0,1,'Honor in Blood Ring','You there, do you feel the cheering crowds call your name? The glory of honor found inside of Blood Ring is second to none. Champions of the Alliance face off against those of the Horde, and it is there we may prove ourselves superior.$B$BDo your part in the name of the Alliance.','Bring 15 Arena Marks of Honor to a Alliance Brigadier General outside the battlegrounds.','How has the arena treated you, $n?','The might of the Alliance is shown this day!',61793,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1980,330,1008,75,0,0,0,0,0,0,0,24965,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (15351, 41108);
replace into creature_involvedrelation	(id, quest) values (15351, 41108);
update quest_template set requiredraces = 589 where entry = 41108;

-- Honor in Blood Ring
delete from quest_template where entry = 41109;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41109,2,4014,60,60,0,1,'Honor in Blood Ring','Do you yearn for battle, does it burn in your heart?$B$BThe best of the best compete in the Blood Ring. Take the call, and fight against the strongest competitors in Azeroth!','Bring 15 Arena Marks of Honor to Gorug at the Gurubashi Arena in Stranglethorn Vale.','How has the arena treated you, $n?','Bask in the glory, and let the victory wash over you!',61793,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1980,330,1008,75,0,0,0,0,0,0,0,24965,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (50099, 41109);
replace into creature_involvedrelation	(id, quest) values (50099, 41109);

-- Victory in Blood Ring
delete from quest_template where entry = 41110;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41110,2,4014,60,60,4096,0,'Victory in Blood Ring','Do you have what it takes to conquer your foe, to see them crushed before the onslaught of your might? If you think that is true, seek glory within Blood Ring and secure victory. Only then will you begin to make a name for yourself.','Win a battle in Blood Ring and report to Gorug at the Gurubashi Arena in Stranglethorn Vale.','How has the arena treated you, $n? ','Was your victory thrilling? You have earned it through blood and sweat.',0,0,0,0,0,0,0,0, 60051,1,0,0,0,0,0,0, 0,0, 0,1980,330,1008,150,0,0,0,0,0,0,0,24965,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (50099, 41110);
replace into creature_involvedrelation	(id, quest) values (50099, 41110);

REPLACE INTO creature_template VALUES
(60051, 328, 0, 0, 0, 0, 'quest_41110_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Plans: Dreamsteel Buckle
delete from quest_template where entry = 41111;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41111,2,616,60,55,0,0,'Plans: Dreamsteel Buckle','It was during the last great battle for Hyjal that the recipe for the Dreamsteel Buckle was devised. It was used to empower the druids and sentinels both with the magical properties of the Emerald Dream.$B$BIf such a pattern is to your liking, I could exchange it in return for Dream Shards. We are always looking to reward those who have helped here in Hyjal.','Gather 50 Bright Dream Shards for Evandil Nightwind at Nordanaar in Hyjal.','So, have you made your choice?','May these plans be a powerful asset for you and your allies in the fight against evil.',61199,50,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,250,0,0,0,0,0,0,0,0,0,0,0, 61792,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61485, 41111);
replace into creature_involvedrelation	(id, quest) values (61485, 41111);

-- Ravencroft's Ambition
delete from quest_template where entry = 41112;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41112,2,5180,45,40,0,0,'Ravencroft\'s Ambition','I\'ve been so consumed by this wretched research for far too long. Moranna isn\'t making it any easier on me either. I know that we must somehow uncover the secrets of Ur without its book, but how - how in the blazes can we even go about doing that?$B$BLast I heard, the Forsaken of the Horde claimed the book from the Silverlaine Keep - I fear it may be lost to us forevermore. However, I still have hopes. There was a girl in Shademore Inn who claimed to have escaped Gilneas City by leaping over its walls. My doubts aside, she actually sold me some useful information. It might well be that the library in Gilneas City holds a copy of the Book of Ur.$B$BI would greatly appreciate it if you could retrieve it for me.','Recover the Book of Ur : Volume Two from the library in Gilneas City and return to Ethan Ravencroft.','I sure wish this is real.','Volume Two? I have no idea how this ended up in Gilneas, but I don\'t even care. I need to bring this back to Moranna as soon as possible. Just grab your reward from my table; it may not be much, but it\'s all I have.',61795,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2500,25500,4250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61460, 41112);
replace into creature_involvedrelation	(id, quest) values (61460, 41112);
update quest_template set type = 81 where entry = 41112;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61795,1246,'Book of Ur: Volume Two',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020055, 3, 25779, 'Book of Ur: Volume Two', 0, 4, 1, 43, 2020055, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020055,61795,-100,0,1,1,0);

-- A Royal Heist
delete from quest_template where entry = 41113;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41113,2,5180,45,40,0,0,'A Royal Heist','I don\'t like questioning the boss, but I think he\'s beginning to lose his mind. We\'re meant to be thieves, yet where\'s the money, the treasure, the joy and rush of stealing, looting, and pillaging?$B$BI can\'t persuade Blackthorn to let me and some other brigands raid the city, but you have a bit more leeway. All I need you to do is head to Gilneas City\'s library and steal the portrait of Mia Greymane. We\'ll divide up the spoils.','Steal the painting from the library in Gilneas City and return to Luke Agamand at Blackthorn\'s Camp in Gilneas.','Is this your first heist job?','So it was a portrait of her as a child? Well, it might not be worth much, but that doesn\'t matter. A job well done gets paid - honor amongst thieves and such.',61796,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 2500,25500,4250,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61377, 41113);
replace into creature_involvedrelation	(id, quest) values (61377, 41113);
update quest_template set type = 81 where entry = 41112;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61796,1246,'Portrait of Mia Greymane',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020056, 3, 23990, 'Painting of Mia', 0, 4, 1, 43, 2020056, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020056,61796,-100,0,1,1,0);

-- Manuscript on Hydromancy II
delete from quest_template where entry = 41114;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40407,41114,2,5180,45,38,0,0,'Manuscript on Hydromancy II','You there, mage. You have proven yourself to Theramore, and there is something dire I must ask.$B$BLong ago, a Kul Tiran Hydromancer spent considerable time in Gilneas, leaving behind the second manuscript on Hydromancy within the city. Ever since it has been logged into their library, sitting dorment. There have been stories of revolt and rebellion there. I must ask you to brave this city and recover the manuscript before our enemies learn the secrets of our most powerful magic.','Recover the Manuscript on Hydromancy II for Magus Hallister at Theramore Isle in Dustwallow Marsh.','This is a matter most dire. Have you recovered the manuscript?','Recovered, at last.$B$B<Magus Hallister lets out a breath of relief.>$B$BOur secrets are returned to safe hands. You have proven yourself a valuable asset, and as a fellow mage I am certain you understand the power of the arcane in the right hands.$B$BTake this, as thanks from us here in the city.',61797,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,27900,4650,108,500,1011,500,0,0,0,0,0,0,0, 92001,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61377, 41114);
replace into creature_involvedrelation	(id, quest) values (61377, 41114);
update quest_template set requiredraces = 589, requiredclasses = 128 where entry = 41114;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61797,7601,'Manuscript on Hydromancy II',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020057, 3, 24336, 'Manuscript on Hydromancy II', 0, 4, 1.4, 43, 2020057, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020057,61797,-100,0,1,1,0);

-- Cartel Gold Donations
delete from quest_template where entry = 41115;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41115,2,33,60,30,0,1,'Cartel Gold Donations','Listen, Kid. I don\'t care who you are, or however many fantastic, magical journeys you\'ve been on. Go tell all those lads and lasses in the tavern if you\'re lookin\' for praise. I care about the oil that lubricates the system around here. You get what I\'m sayin\'?$B$BThe Cartel, we need gold to organise and run our daily activities. And there are always things that need doin\', it\'s like a fact of life, you know? So... you fund us, and we take notice. Maybe even let you break a kneecap every now and then, and we can look the other way. Maybe.','','<He bites the gold coins one at a time, before storing them behind the counter. He says not one word more, but gives a terse nod and marks something down in his ledger.>','So, you got that coin?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, -100000,0,0,169,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61486, 41115);
replace into creature_involvedrelation	(id, quest) values (61486, 41115);

-- A Soul's Eternal Gratitude
delete from quest_template where entry = 41116;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41124,41116,2,5121,56,48,0,0,'A Soul\'s Eternal Gratitude','Return to the one who guided you, and you will be rewarded. It is time for me to move on after I have contemplated my freedom.$B$BWorry not about me. You may use my house should you want it as I will no longer be needing it.$B$BFarewell and once again thank you!','Return to Aneka Konko with the news.','You return.','You have saved her from possession?$B$B hen you have helped one of my kin, redeemed her in the eyes of the kami, cast aside her dishonor, and saved her soul. Her spirit is free to be reborn once more.$B$BTake this as a symbol of my gratitude. In time we will meet again.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,1350,0,0,0,0,0,0,0,0,0,0,0, 61069,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61120, 41116);
replace into creature_involvedrelation	(id, quest) values (90983, 41116);

-- The Tablet of Zef'ek
delete from quest_template where entry = 41117;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40208,41117,2,8,48,40,0,0,'The Tablet of Zef\'ek','You there, mage!$B$BYou did well for me, and us magi must look out for one another. I must ask you another favor. This time it is something more personal. I have been studying the Temple of Atal\'hakkar for some time now, and have heard a mystery about the Tablet of Zef\'ek. According to legend, it tells the tale of the great troll warlord who created the temple that rests here in the swamp.$B$BOr something like that anyway. What is more important is the magic imbued within the stone. I want you to recover this tablet for me. It is held near the Chamber of Blood, by the chanting Kazkaz the Unholy within the temple. Find it, and bring it to me.','Gather the Tablet of Zef\'ek for Thultazor in Stonard.','Have you found this mysterious Kazkaz yet?','The magic flowing from this tablet is intense! I would never have expected such energy from the trolls.$B$BYou have done me a solid favor, and for your help I offer you this tome. It should give you the knowledge to teleport to Stonard. May my magic serve you well!',61798,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,3850,76,250,0,0,0,0,0,0,0,0,0, 92003,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (983, 41117);
replace into creature_involvedrelation	(id, quest) values (983, 41117);
update quest_template set requiredraces = 434, type = 1, requiredclasses = 128 where entry = 41117;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61798,23148,'Tablet of Zef\'ek',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(5401,61798,-100,0,1,1,0);

-- Tokens of Blood
delete from quest_template where entry = 41118;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41118,2,977,60,60,0,1,'Tokens of Blood','You there, are you looking to cash out those Marks of Honor you got laying around? Well if you\'re looking for rewards from us here I could take some of those off your hands in exchange for a Token of Blood. Think of it as the local currency around here.','Bring 15 Arena Marks of Honor to Vizlow at the Gurubashi Arena in Stranglethorn Vale.','So, made your mind up?','Pleasure doing business with you, champion.',61794,50,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61794,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (40049, 41118);
replace into creature_involvedrelation	(id, quest) values (40049, 41118);

-- Plans: Ornate Bloodstone Dagger
delete from quest_template where entry = 41119;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41119,2,977,60,60,0,0,'Plans: Ornate Bloodstone Dagger','You there, looking to create a weapon of prestige to match the glory found in the Arena? I have just the weapon for you.$B$BThe Ornate Bloodstone Dagger is said to have origins back to the Gurubashi, an ancient dagger that sacrificed blood. If this is of interest to you, let me know.','Bring 50 Tokens of Blood to Bradley Steel at the Gurubashi Arena in Stranglethorn Vale.','So, made your mind up?','Such power now rests in your hands. It is only fitting after the blood you have spilled within the Arena.',61793,15,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61799,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61616, 41119);
replace into creature_involvedrelation	(id, quest) values (61616, 41119);

replace into item_template values
 ('61799', '9', '4', 'Plans: Ornate Bloodstone Dagger', '', '5928', '4', '0', '1', '100000', '25000', '0', '-1', '-1', '65',
 '0', '164', '300', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47236', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Legend of Dawnstone
delete from quest_template where entry = 41120;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41120,2,5179,39,35,0,0,'Legend of Dawnstone','Aye, laddie! Have ye heard of the legendary Dawnstone Ore? It\'s a tale of epic proportions, that is! Used to forge armor for our brave paladins durin\' the Second War. Those were glorious days indeed!$B$BBut let me tell ya, it\'s a scarce find, that it is! Only one place in this whole wide world where it can be dug up – a mine hidden beneath Gilneas City. Aye, there is a curse or somethin\' down there, somethin\' mysterious that brought this precious ore to the surface. And by the beard of my father, I don\'t reckon I\'d be wantin\' to know the true nature of it.$B$BYou see, the Greymane Gate\'s been opened once more, and the political mess in Gilneas has left that mine likely abandoned. So, I\'m thinking of gatherin\' it for my clients in Undermine. If you can get your hands on twelve hefty chunks of Dawnstone Ore for me, I\'ll be more than willin\' to share some percent of the profits with you. Now, what say ye? Do we have a deal?','Bring 12 chunks of Dawnstone Ore to Kurnen Oathbrace in Booty Bay. The ore can be found only in Dawnstone Mine in Gilneas.','I wonder if the mine is still intact...','Aye, the ore, just as I expected! You\'ve done me proud, lad! Now, let me gather up these precious rocks and get \'em ready for a journey to Undermine. Ah, the thought of the profits fills me with joy!$B$BYou\'ve earned yourself a reward, as promised. Here, take this with ye, if ye must.',61390,12,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 6500,23100,3850,21,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61416, 41120);
replace into creature_involvedrelation	(id, quest) values (61416, 41120);

update creature_loot_template set ChanceOrQuestChance = -80 where entry = 61399 and item = 61390;

-- Legacy of Perenolde
delete from quest_template where entry = 41121;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41121,2,5179,44,38,0,0,'Legacy of Perenolde','I am Lord Pyrewood of Gilneas. As you may have already heard, a Rebellion has taken command of the Greymane Wall, and it now stands open, beckoning forth a new chapter in our realm. I have been sent here by this very Rebellion to implore Stormwind\'s aid in supporting our cause.$B$BYet, amidst these pressing matters, there is a favor I must humbly seek your assistance with. During the time Greymane court played host to many guests, a man named Isiden Perenolde graced our halls. This man, esteemed by many as the rightful heir to the throne of Alterac, could be of immeasurable value to the Alliance, should he lend his support.$B$BWhispers have reached my ears that the Harlows might be holding him captive within the confines of the dreaded Dryrock Pit. I entreat you to commence your search there and, should you discover any information pertaining to this esteemed guest, do not hesitate to return it to me.','Find any information about Isiden Perenolde. He is rumored to be kept captive at the Dryrock Pit in Gilneas.','Isiden Perenolde, the nephew of King Aiden Perenolde, found himself in a precarious situation after Alteraci betrayal of the Alliance. In response to this dire circumstance, Isiden sought refuge in Gilneas.$B$BAs the delicate issue of Alteraci succession gained momentum, Isiden Perenolde\'s quest for backing led him to the attention of Genn Greymane. Recognizing the importance of this matter, King Greymane extended his support to Isiden, adding another layer of complexity to the unfolding events.$B$BUltimately, Alterac was annexed by Strom and Lordaeron, but Isiden remained in Gilneas even after the closure of the Greymane Wall.','<As Ivar peruses the dossier, a palpable sense of disappointment fills his eyes.>$B$BSo, it appears that Isiden has departed from Gilneas. Should he indeed have sought refuge in Tol Barad, we must resign ourselves to the grim possibility of his demise, for naught can withstand the harsh and unforgiving conditions of that island.',61800,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 4500,23100,3850,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61614, 41121);
replace into creature_involvedrelation	(id, quest) values (61614, 41121);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61800,9467,'Dossier: Isiden Perenolde',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50667,7);

replace into creature_loot_template values
(61615,61800,-100,0,1,1,0);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50667, 'It is hereby directed that the dissemination of news pertaining to Isiden Perenolde\'s escape must be strictly controlled and confined. We must ensure that Mortimer and Celia Harlow remain entirely oblivious to his current status. They are to be led to believe that Isiden Perenolde continues to be incarcerated within the confines of the Dryrock Pit.$B$BHowever, let it be known that our intelligence suggests a different narrative. We strongly suspect that Isiden\'s escape was orchestrated by loyalists hailing from Alterac. We posit that he might have sought refuge and seclusion in the remote and desolate island of Tol Barad.', 50668),
(50668, 'In response to these developments, a search party was dispatched to investigate and locate Isiden Perenolde\'s whereabouts. Regrettably, we have yet to receive any communication or reports from the searching party, and their status remains unknown.$B$BAs we navigate this web of events, we urge utmost discretion and caution in handling this sensitive information. The repercussions of any inadvertent leaks could prove detrimental to the broader political landscape and the stability of our realm.$B$BAuthorized by:$B$BOsmark Dryrock.', 0);

-- Guns of Gilneas
delete from quest_template where entry = 41122;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41122,2,5179,42,38,0,0,'Guns of Gilneas','Listen here, $c! I got a real urgent and serious matter that needs your help, right now!$B$BThose Gilneans have gone and opened up their gates once again, causing a load of trouble for us. Blast it! Now their coastal batteries are taking potshots at our transport ships, making trade with the Undercity a real pain in the gut!$B$BI need ya to take care of Cannoneer Rileson. He\'s the scoundrel calling the shots at Freyshear Keep, and he\'s the one commanding those blasted cannons. And don\'t you dare forget about his henchmen too – deal with them all!$B$BGet back to me once you\'ve sent him to the great beyond. We ain\'t got time to waste.','Slay Cannoneer Rileson and ten Greymane Preservers in the Freyshear Keep in eastern Glineas.','Every moment you linger is another ship lost to this madman!','Good, good.$B$BOur shipments to Undercity and Tarren Mill are much safer now, thanks to your actions.',0,0,0,0,0,0,0,0, 61398,1,0,0,0,0,0,0, 0,0, 3500,23100,3750,76,150,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (6446, 41122);
replace into creature_involvedrelation	(id, quest) values (6446, 41122);

-- Donations of Blood
delete from quest_template where entry = 41123;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41123,2,977,60,60,0,1,'Donations of Blood','You there, champion!$B$BLooking to make a name for yourself with us? Well, we are currently taking donations. Tokens of Blood are what we\'re looking for. If you don\'t think you will be using yours, return them to us, and I will put in a good word with the bosses for you.','Bring 5 Tokens of Blood to Vizlow at the Gurubashi Arena in Stranglethorn Vale.','So, made your mind up?','Pleasure doing business with you, champion.',61794,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,1980,330,1008,475,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (40049, 41123);
replace into creature_involvedrelation	(id, quest) values (40049, 41123);

-- To Save a Soul
delete from quest_template where entry = 41124;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41125,41124,2,5121,56,48,0,0,'To Save a Soul','We have little time. What allowed me to manifest is also feeding my nemesis. She is growing stronger by the minute. I will give you a spirit talisman. It will protect you!$B$BOh no! She is coming!','Confront the Temptress!','I can\'t believe it... I am finally free.','I can finally rest, you can\'t believe how grateful I am! Thank you so much! Thank you! When the dark ones possess us, there are few chances of redemption, but you have given me one. Only one thing remains to do now.',61801,1,0,0,0,0,0,0, 61119,1,0,0,0,0,0,0, 61801,1, 0,0,5875,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61120, 41124);
replace into creature_involvedrelation	(id, quest) values (61120, 41124);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61801,6494,'Spirit Talisman',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

update creature_template set script_name = '' where entry = 61119;
update creature_template set npc_flags = 2, script_name = 'npc_shade_of_senshi' where entry = 61120;

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30134, 'You dare interfere with my prey? She is mine! After I am done with her, you\'re next!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30135, 'This isn\'t over! I will find you one day…And your soul will be the price for the one you stole today.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_events where ID in (2200037,2200038);
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200037, 61119, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200037, 0, 0, 'Shade of the Temptress - Say on Aggro'),
(2200038, 61119, 0, 6, 0, 100, 0, 0, 0, 0, 0, 2200038, 0, 0, 'Shade of the Temptress - Say upon Death');

delete from creature_ai_scripts where ID in (2200037,2200038);
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30134, 0, 0, 0, 0, 0, 0, 0, 0, 'Shade of the Temptress - Say on Aggro'),
(2200038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30135, 0, 0, 0, 0, 0, 0, 0, 0, 'Shade of the Temptress - Say upon Death');

-- To Summon A Soul
delete from quest_template where entry = 41125;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40750,41125,2,5121,55,48,0,0,'To Save a Soul','<A female voice seems to penetrate through your mind>$B$BThe beast seeks to end…everything that I am. As I prepared the ritual site after years of work, one of our enemies slew me, and my bones were taken. Reclaim my bones, slay these interlopers that have despoiled both this land and my home. Bring the bones to the totem, so that I may manifest and guide you.','Gather a Senshi Bone from Wavecrest Explorers, then return to the Totem. Burn the bones in the Bowl, then return to the Totem.','You have returned...','Yes... This act is giving me strength, strength to fight back! Come speak to me...$B$B<The voice seems to fade as an apparition becomes visible>',60990,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,3075,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into gameobject_questrelation		(id, quest) values (2010969, 41125);
replace into gameobject_involvedrelation	(id, quest) values (2010969, 41125);

update item_template set display_id = 24415 where entry = 60990;

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61129, 60990, -20, 0, 1, 1, 0);

update creature_template set phase_quest_id = 41125 where entry = 61120;

-- Favor Amongst the Brotherhood, Dark Iron Bar
delete from quest_template where entry = 41126;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41126,2,2717,60,60,8,1,'Favor Amongst the Brotherhood, Dark Iron Bar','Dark Iron, while plentiful in the Depths, is still a valued commodity amongst the Brotherhood. The sacred arms and armaments of Ragnaros favor Dark Iron. We also accept the dark iron in bar form, should you possess the skill to smelt it.$B$BFor every Dark Iron Bar you offer, favor amongst the Brotherhood you will gain.','Bring a Dark Iron Bar to Lokhtos Darkbargainer in the Grim Guzzler.','Yes?','Your offering has been accepted. Favor you have gained. Continue and you shall be allowed access to the ancient trades.',11371,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,59,40,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (12944, 41126);
replace into creature_involvedrelation	(id, quest) values (12944, 41126);

