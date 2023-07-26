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


