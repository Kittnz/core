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

-- Grammar fixes:

REPLACE INTO `quest_template` VALUES (60145, 0, 2, 9, 1, 60, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 'Down in the Ridge', 'Kill Snufflesnout, then report back to Marshal McBride in Northshire Abbey.', 'We also got reports of a kobold much larger than the others, hiding deep in the Echo Ridge. Even its mere existence poses a threat to the abbey.\n\nGo down into the Echo Ridge and kill it. You will be justly rewarded.', 'Even though your journey has just began, you\'re already accomplishing great things. Choose one, you\'ve earned it.', 'I assume you killed the beast?', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51600, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 51875, 51876, 51877, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 100, 0, 0, 0, 0, 333, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_template` VALUES (60070, 0, 2, 1519, 6, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Matter of Trust', 'Trust is something you can\'t buy, $R.\n\nHere\'s the deal, lad. You earn the trust of this gryphon over here and you\'ll get your ride to the camp. Fail and he\'ll have you as his breakfast.\n\nHah! Of course I\'m pulling your leg here, lad. This winged beast won\'t even nudge unless it trust you completely.\n\nHow, you ask? Food, of course. And a toy. Go figure.', 'Bring 10 Chunks of Boar Meat, 3 Dwarven Mild Cheese and 1 Chew Toy to Kelton\'s Riding Gryphon in the Goldshire.', 'The gryphon looks excited sniffing air about you sensing treats and almost chirping with joy at the sight of his Chew Toy you are holding. His pupils expand immensily. He looks happy!', 'The gryphon recognizes you and doesn\'t seem to be satisfied with all his cawing and disturbed jabbering.\n\nHe clearly looks hungry and frustrated. Perhaps a handful of famous Dwarven Mild could do some good?', '', '', '', '', '', 769, 422, 51751, 0, 5, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 750, 0, 450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

update broadcast_text set male_text = 'The gryphon looks at you with a curious gaze, clearly not ready for any flight. Perhaps feeding him a Chunk of Boar Meat is a good idea, since there are some leftovers around.\n\nMost likely that stray chew toy is something this gryphon is attached to and will trust you if he gets one?' where entry = 90366;

update item_template set name = 'Threshadon Trophy' where entry = 70034;

REPLACE INTO `quest_template` VALUES (60041, 0, 2, 12, 6, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60040, 0, 0, 0, 0, 0, 0, 'The Pumpkin Thieves', 'This is outrageous! The nerve! First, they only sneak around and startle your herds. Then they sneak into your barn. And what\'s next?! Rob our houses? Kill us all in out sleep?! What do you think the guards do with this situation, hm? NOTHING!\n\nThese gnolls are getting bolder with each week and we need our fields protected! Guards are of no help here, unfortunately for us, but I see you have some of that bristling force in your sights. Perhaps you\'ll be able to help me and in the end help yourself too!\n\nLast I\'ve seen these mongrels fly away toward Goldshire. Doubt guards will be of any help on this matter. Perhaps someone at the Eastvale Logging Camp could help with our trouble… Ask folks at the camp!\n\nI tell you, these gnolls have stolen my pumpkins! Of course, they have no idea how to cook besides crudely charring anything with camp fire from time to time.\n\nThey have no idea what you could make out of our sweet pumpkins! Barbarians!', 'Bring back 15 Elwynn Pumpkins to Gramma Stonefield.', 'By the Light!\n\nMy dear child, you have no idea what you have truly done for us all here on our farm!\n\nSaving is the least I\'d say. You have my deepest gratitude and respect, $N!', 'Oh, tell me you have managed to find my harvest!\n\nAt least 15 of my sweet pumpkins?', '', 'Speak to Terry Palin', NULL, '', '', 51325, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51299, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51330, 51332, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 833, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 2, 4, 0, 0, 0, 0);

delete from npc_vendor where item = 80099;
delete from npc_vendor where item = 81167;

delete from item_template where entry = 80099;
delete from item_template where entry = 81167;

-- Deleted to prevent abuse by sending a link to playesr ^

update item_template set name = 'Otherwordly Rifle', description = '' where entry = 51794;
update item_template set name = 'Otherwordly Blade' where name = 'Void-Linked Blade';

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/296

REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('543', '3163');
REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`) VALUES ('3163', '3163', '100');

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/297

update item_template set max_durability = 100 where entry = 80612;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/306

update gameobject_loot_template set chanceorquestchance = 64 where item = 2798;
