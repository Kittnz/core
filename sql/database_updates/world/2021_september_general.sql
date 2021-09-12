-- Fix custom loot tables:
update creature_loot_template set patch_max = 10 where patch_max = 0;
-- Remove Turtlhu
delete from creature where id = 50056;
-- Fix Gnome Hunter's quest:
update quest_template set requiredraces = 64 where entry = 80339;
-- Fix Hedwig:
replace into creature_template values (50663, 0, 12237, 0, 0, 0, 'Hedwig', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 0.3, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_scripted_companion');
-- Glyph Masters
replace into creature_template values 
(51540, 0, 3467, 0, 0, 0, 'Scribe Winemar', 'Glyph Master', 0, 5, 5, 102, 102, 0, 0, 20, 12, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 152, 0, 0, 0, 0, 524298, 0, 'glyph_master'),
(51541, 0, 5748, 0, 0, 0, 'Scribe Laer Ted', 'Glyph Master', 0, 5, 5, 102, 102, 0, 0, 20, 12, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 152, 0, 0, 0, 0, 524298, 0, 'glyph_master'),
(51542, 0, 3473, 0, 0, 0, 'Scribe Skardrer', 'Glyph Master', 0, 5, 5, 102, 102, 0, 0, 20, 12, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 152, 0, 0, 0, 0, 524298, 0, 'glyph_master'),
(51543, 0, 6030, 0, 0, 0, 'Scribe Torgan', 'Glyph Master', 0, 5, 5, 102, 102, 0, 0, 20, 12, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 152, 0, 0, 0, 0, 524298, 0, 'glyph_master'),
(51544, 0, 6065, 0, 0, 0, 'Scribe Sigfrid', 'Glyph Master', 0, 5, 5, 102, 102, 0, 0, 20, 12, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 152, 0, 0, 0, 0, 524298, 0, 'glyph_master'),
(51545, 0, 5778, 0, 0, 0, 'Scribe Nahele', 'Glyph Master', 0, 5, 5, 102, 102, 0, 0, 20, 12, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 152, 0, 0, 0, 0, 524298, 0, 'glyph_master'),
(51546, 0, 16037, 0, 0, 0, 'Scribe Nahele', 'Glyph Master', 0, 5, 5, 102, 102, 0, 0, 20, 12, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 152, 0, 0, 0, 0, 524298, 0, 'glyph_master'),
(51547, 0, 7095, 0, 0, 0, 'Scribe Jazdis', 'Glyph Master', 0, 5, 5, 102, 102, 0, 0, 20, 12, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 6, 8, 0, 52, 1, 1500, 2000, 1, 4864, 0, 0, 0, 0, 0, 0, 8.624, 11.858, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 152, 0, 0, 0, 0, 524298, 0, 'glyph_master');

update creature_template set npc_flags = 7, equipment_id = 0 where entry in (51540, 51541, 51542, 51543, 51544, 51545, 51546, 51547);

update creature_template set faction = 80 where entry = 51541;
update creature_template set faction = 55 where entry = 51542;
update creature_template set faction = 29 where entry = 51543;
update creature_template set faction = 118 where entry = 51544;
update creature_template set faction = 104 where entry = 51545;
update creature_template set faction = 371 where entry = 51546;
update creature_template set faction = 35 where entry = 51547;

replace into npc_vendor values 
(51540, 50521, 0, 0, 0, 0),
(51540, 50008, 0, 0, 0, 0),
(51540, 50012, 0, 0, 0, 0),

(51541, 50521, 0, 0, 0, 0),
(51541, 50008, 0, 0, 0, 0),
(51541, 50012, 0, 0, 0, 0),

(51542, 50521, 0, 0, 0, 0),
(51542, 50008, 0, 0, 0, 0),
(51542, 50012, 0, 0, 0, 0),

(51543, 50521, 0, 0, 0, 0),
(51543, 50008, 0, 0, 0, 0),
(51543, 50012, 0, 0, 0, 0),

(51544, 50521, 0, 0, 0, 0),
(51544, 50008, 0, 0, 0, 0),
(51544, 50012, 0, 0, 0, 0),

(51545, 50521, 0, 0, 0, 0),
(51545, 50008, 0, 0, 0, 0),
(51545, 50012, 0, 0, 0, 0),

(51546, 50521, 0, 0, 0, 0),
(51546, 50008, 0, 0, 0, 0),
(51546, 50012, 0, 0, 0, 0),

(51547, 50521, 0, 0, 0, 0),
(51547, 50008, 0, 0, 0, 0),
(51547, 50012, 0, 0, 0, 0);

update item_template set quality = 1, buy_price = 5, sell_price = 0 where entry = 50521;
update item_template set quality = 1, buy_price = 5, sell_price = 0 where entry = 50008;
update item_template set quality = 1, buy_price = 5, sell_price = 0 where entry = 50010;
update item_template set quality = 1, buy_price = 5, sell_price = 0 where entry = 50012;

-- Glyph of the Turtle

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4, maxlevel) values (0,60118,-284,1,1,0,0,'Glyph of the Turtle','I get so dizzy watching some folks rushing around in such a hurry.\n\nHow about going a little slower?  What would you say about experiencing the world at half the pace, unless you adventure in a dungeon with your friends?\n\nWould you still take the same course of actions if upon death you would lose something?\n\nOf course, if you choose to travel this path, your growth will be rewarded.','Choose whether or not to activate Turtle Mode before you reach level two.','Choose now. Once you start rushing you\'ll get so far away and I will not shout to make this offer twice.','Stay safe on your journey, friend.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,50000,0,0,50010,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 1);

replace into creature_questrelation (id, quest) values (51540, 60118);
replace into creature_involvedrelation (id, quest) values (51540, 60118);

replace into creature_questrelation (id, quest) values (51541, 60118);
replace into creature_involvedrelation (id, quest) values (51541, 60118);

replace into creature_questrelation (id, quest) values (51542, 60118);
replace into creature_involvedrelation (id, quest) values (51542, 60118);

replace into creature_questrelation (id, quest) values (51543, 60118);
replace into creature_involvedrelation (id, quest) values (51543, 60118);

replace into creature_questrelation (id, quest) values (51544, 60118);
replace into creature_involvedrelation (id, quest) values (51544, 60118);

replace into creature_questrelation (id, quest) values (51545, 60118);
replace into creature_involvedrelation (id, quest) values (51545, 60118);

replace into creature_questrelation (id, quest) values (51546, 60118);
replace into creature_involvedrelation (id, quest) values (51546, 60118);

replace into creature_questrelation (id, quest) values (51547, 60118);
replace into creature_involvedrelation (id, quest) values (51547, 60118);

set @gossip_menu_id = 60121; set @magic_number = 51540; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings. I sell glyphs to those who could use them, what are you looking for?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60122; set @magic_number = 51541; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings. I sell glyphs to those who could use them, what are you looking for?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60123; set @magic_number = 51542; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings. I sell glyphs to those who could use them, what are you looking for?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60124; set @magic_number = 51543; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings. I sell glyphs to those who could use them, what are you looking for?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60125; set @magic_number = 51544; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings. I sell glyphs to those who could use them, what are you looking for?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60126; set @magic_number = 51545; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings. I sell glyphs to those who could use them, what are you looking for?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60127; set @magic_number = 51546; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings. I sell glyphs to those who could use them, what are you looking for?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60128; set @magic_number = 51547; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings. I sell glyphs to those who could use them, what are you looking for?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Turtlhu memo:

REPLACE INTO `creature_template` VALUES (50060, 0, 16361, 0, 0, 0, 'Turtlhu', NULL, 0, 60, 60, 2217, 2217, 0, 0, 4059, 35, 2, 1, 1.14286, 3, 20, 5, 0, 0, 1, 72, 93, 0, 204, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 61.776, 84.942, 100, 1, 0, 0, 0, 100004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `item_template` SET `stat_type2`='0', `stat_value2`='0' WHERE (`entry`='12636') AND (`patch`='0');

update item_template set bonding = 1 where entry in (80699, 50000, 50611);
