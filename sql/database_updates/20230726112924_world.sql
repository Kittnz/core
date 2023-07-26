-- Lord Ivar Pyrewood. display ID 18753, faction 84, level 50 elite, humanoid, quest/gossip flags, gossip text: “I have come here to seek support of the Nobles of Stormwind. It is a harder task than I had anticipated.”
-- High Taskmaster Grigor, display ID 20273, faction 14, level 44, humanoid, scale 1, weapon 2014, copy stats and loot from Greymane Taskmaster 
-- Bradley Steel <Blood Ring Quartermaster>, display ID 1515, faction 35, level 58, humanoid, scale 1, vendor flags, ((Has the following items on their sell list : 60004, 60005, 60006, 60366, 60367, 60368.
-- Arghon Stonewall <Plate Armor Vendor>, display ID 11806, faction 35, level 58, humanoid, scale 1, vendor flags (Has the following items on their sell list : 60358, 60359, 60360, 60361, 60362, 60363, 60364, 60365 )
-- Vagron Bloodheart <Mail Armor Vendor>, display ID 1388, faction 35, level 58, humanoid, scale 1, vendor flags (Has the following items on their sell list : 60350, 60351, 60352, 60353, 60354, 60355, 60356, 60357 )
-- Kenja Blacktusk <Leather Armor Vendor>, display ID 12049, faction 35, level 58, humanoid, scale 1, vendor flags  (Has the following items on their sell list : 83429, 83430, 83431, 83432, 83433, 83434, 83435, 83436
-- Henley Rothand <Cloth Armor Vendor>, display ID 3542, faction 35, level 58, humanoid, scale 1, vendor flags (Has the following items on their sell list : 83420, 83421, 83422, 83423, 83425, 83426, 83427, 83428
-- Gordon Hardfoot <Belt Buckles>, display ID 3358, faction 12, level 25, humanoid, scale 1, gossip/vendor flags, gossip text : "Welcome to Buckle Up! Excuse the mess, I am converting my armor shop into something new; belt buckles! If you got the yearning to create something unique, you're in the right place."
-- Tanovan Darkwell <Belt Buckles>, display ID 1599 faction 68 , level 25, humanoid, scale 1, gossip/vendor flags, gossip text : "You there, looking to stand out among the crowds? I got plans for the creation of belt buckles. With them, you'll stand out like never before.$B$B<A sigh escapes Tanovan.>$B$BLook, help me out, I'm in need of some silver, alright?" 
REPLACE INTO creature_template VALUES
(61614, 18753, 0, 0, 0, 0, 'Lord Ivar Pyrewood', NULL, 0, 50, 50, 17720, 17720, 0, 0, 2888, 84, 3, 1, 1.14286, 1.5, 20, 5, 40, 1, 1, 292, 377, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 55.3248, 76.0716, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61615, 20273, 0, 0, 0, 0, 'High Taskmaster Grigor', NULL, 0, 44, 44, 2117, 2117, 0, 0, 2625, 14, 0, 1, 1.14714, 1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61616, 1515, 0, 0, 0, 0, 'Bradley Steel', 'Blood Ring Quartermaster', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61617, 11806, 0, 0, 0, 0, 'Arghon Stonewall', 'Plate Armor Vendor', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61618, 1388, 0, 0, 0, 0, 'Vagron Bloodheart', 'Mail Armor Vendor', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61619, 12049, 0, 0, 0, 0, 'Kenja Blacktusk', 'Leather Armor Vendor', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61620, 3542, 0, 0, 0, 0, 'Henley Rothand', 'Leather Cloth Vendor', 0, 58, 58, 3875, 3875, 0, 0, 3435, 35, 4, 1, 1.14286, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61621, 3358, 0, 0, 0, 0, 'Gordon Hardfoot', 'Belt Buckles', 0, 25, 25, 712, 712, 0, 0, 1009, 12, 5, 1, 1.14286, 1, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61622, 1599, 0, 0, 0, 0, 'Tanovan Darkwell', 'Belt Buckles', 0, 25, 25, 712, 712, 0, 0, 1009, 68, 5, 1, 1.14286, 1, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20429; set @weapon_1 = 2014; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61615;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

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
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41115,2,33,60,30,0,1,'Cartel Gold Donations','Listen, Kid. I don\'t care who you are, or however many fantastic, magical journeys you\'ve been on. Go tell all those lads and lasses in the tavern if you\'re lookin\' for praise. I care about the oil that lubricates the system around here. You get what I\'m sayin\'?$B$BThe Cartel, we need gold to organise and run our daily activities. And there are always things that need doin\', it\'s like a fact of life, you know? So... you fund us, and we take notice. Maybe even let you break a kneecap every now and then, and we can look the other way. Maybe.','<He bites the gold coins one at a time, before storing them behind the counter. He says not one word more, but gives a terse nod and marks something down in his ledger.>','So, you got that coin?','',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, -100000,0,0,169,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61486, 41115);
replace into creature_involvedrelation	(id, quest) values (61486, 41115);