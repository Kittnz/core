-- name = 'Sirandil Swiftsilver', subname = 'Druid of the Claw', level = 50, display_id1 =6230, equipment_id =; Repair NPC&Vendor. Copy vendor menu from https://database.turtle-wow.org/?npc=3367
-- name = 'Ravos Ragepaw', subname = 'Druid of the Talon', level = 50, display_id1 = 2686, equipment_id =;
-- name = 'Delas Dreamwalker', subname = 'Druid of the Wild', level = 50, display_id1 = 13443, equipment_id =; Has the following gossip: “Ishnu-alah, dreamer, and welcome to our concealed enclave. May it provide some respite from the long journey ahead into the Emerald Nightmare.”
-- name = 'Ancient Protector', subname = 'The Emerald Dream', level = 50, display_id1 = 2429, equipment_id; 
-- name = 'Emerald Grovekeeper', subname = 'The Emerald Dream', level = 50, display_id1 = 2423, has gossip: “The Emerald Dream is within our reach, dreamer.”/Copy vendor menu from: https://database.turtle-wow.org/?npc=60705 additionally add this to the table - https://database.turtle-wow.org/?item=21721
-- name = 'Zephyra', subname = 'The Emerald Dream', level = 50, display_id1 = 6757, flight NPC, copy script from the Gryphon in Goldshire
REPLACE INTO creature_template VALUES
(61191, 6230, 0, 0, 0, 0, 'Sirandil Swiftsilver', 'Druid of the Claw', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 16388, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61192, 2686, 0, 0, 0, 0, 'Ravos Ragepaw', 'Druid of the Talon', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61193, 13443, 0, 0, 0, 0, 'Delas Dreamwalker', 'Druid of the Wild', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 1, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61194, 2429, 0, 0, 0, 0, 'Ancient Protector', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61195, 2423, 0, 0, 0, 0, 'Emerald Grovekeeper', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 5, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61196, 6757, 0, 0, 0, 0, 'Zephyra', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41351; set @magic_number = 61195;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Emerald Dream is within our reach, dreamer.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41350; set @magic_number = 61193;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ishnu-alah, dreamer, and welcome to our concealed enclave. May it provide some respite from the long journey ahead into the Emerald Nightmare.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Emerald Grovekeeper vendor list.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 21721, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2593, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2594, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2595, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2596, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2723, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 4600, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 8766, 0, 0, 0, 0);
-- Sirandil Swiftsilver vendor list.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 2320, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2321, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2324, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2325, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2604, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2605, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 2678, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2692, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2928, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 3371, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  3372, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  3713, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 3777, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4289, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4291, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4340, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4342, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4399, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4400, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 6183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 6217, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 6256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  6260, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  6529, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  6530, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  6532, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 7005, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  8343, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  8925, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 14341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 18256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 50231, 0, 0, 0, 0);
-- Greeting edit for https://database.turtle-wow.org/?npc=80200: Thank the Sunwell you made it here in one piece, $N. We have much to do.
set @gossip_menu_id = 41352; set @magic_number = 80200;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Thank the Sunwell you made it here in one piece, $N. We have much to do.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Change Sticky Ooze-Tar drop rate from Monstrous Ooze, Crimson Ooze and Black Ooze to 25%.
update creature_loot_template set chanceorquestchance = 25 where item = 81400 and entry in (1033,1031,1032);
-- Make Hawk's Vigil chain an actual chain.
UPDATE quest_template SET NextQuestInChain = 55216 WHERE entry = 55215;
UPDATE quest_template SET NextQuestInChain = 55217 WHERE entry = 55216;
UPDATE quest_template SET NextQuestInChain = 55218 WHERE entry = 55217;
UPDATE quest_template SET NextQuestInChain = 55219 WHERE entry = 55218;
UPDATE quest_template SET NextQuestInChain = 55220 WHERE entry = 55219;
UPDATE quest_template SET NextQuestInChain = 55221 WHERE entry = 55220;
UPDATE quest_template SET NextQuestInChain = 55222 WHERE entry = 55221;
UPDATE quest_template SET NextQuestInChain = 55223 WHERE entry = 55222;
UPDATE quest_template SET NextQuestInChain = 55224 WHERE entry = 55223;
UPDATE quest_template SET NextQuestInChain = 55225 WHERE entry = 55224;
-- Set respawn time of https://database.turtle-wow.org/?object=1000510 to instant.
update gameobject set spawntimesecsmin = 1, spawntimesecsmax = 1 where ID = 1000510;
-- Set respawn time of https://database.turtle-wow.org/?object=142076 to instant.
update gameobject set spawntimesecsmin = 1, spawntimesecsmax = 1 where ID = 142076;
-- Set respawn time of https://database.turtle-wow.org/?object=1000511 to instant.
update gameobject set spawntimesecsmin = 1, spawntimesecsmax = 1 where ID = 1000511;
-- New NPC Deviate Coiler Hatchling.
REPLACE INTO creature_template VALUES
(61197, 1742, 0, 0, 0, 0, 'Deviate Coiler Hatchling', NULL, 0, 11, 11, 666, 666, 0, 0, 538, 14, 0, 1, 1.14286, 0.7, 20, 5, 0, 1, 1, 52, 68, 0, 64, 1, 2000, 2000, 1, 0, 0, 27, 0, 0, 0, 0, 17.732, 24.3815, 100, 1, 1, 3630, 0, 3630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `pet_spell_data` (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES (61197, 24844, 0, 0, 0);
-- Quest fix 40368 (RMJ).
UPDATE quest_template SET MinLevel = 20, QuestLevel = 22, RewXP = 950 WHERE entry = 40368;
-- Nerf to Ring of Authority, non-unique >> unique, Armor from 350 to 100 (RMJ).
UPDATE item_template SET Armor = 100, Max_count = 1 WHERE entry = 50189;
-- Set respawn timers to newly-spawned Leprous Workers in Blacksand Oil Fields (RMJ).
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE guid BETWEEN 2574448 AND 2574455;
-- Swap completely ridiculous money rewards for Silvermoon daily quests (RMJ).
UPDATE quest_template SET RewOrReqMoney = 50 WHERE entry = 80252;
UPDATE quest_template SET RewOrReqMoney = 500 WHERE entry = 80258;
UPDATE quest_template SET RewOrReqMoney = 2000 WHERE entry = 80253;
UPDATE quest_template SET RewOrReqMoney = 5000 WHERE entry = 80254;
-- Silvermoon daily quest fixes (RMJ).
UPDATE quest_template SET PrevQuestId = 80256 WHERE entry IN (80252, 80253, 80258);
UPDATE quest_template SET RewMoneyMaxLevel = 0, RewXP = 0 WHERE entry = 80252;
-- Fix for https://database.turtle-wow.org/?quest=80391 (RMJ).
UPDATE quest_template SET RewXP = 1450 WHERE entry = 80391;
-- No reason for this not to chain in from the same NPC. Same requirements, same NPC (RMJ).
UPDATE quest_template SET NextQuestInChain = 3519 WHERE entry = 4495;
UPDATE quest_template SET NextQuestInChain = 2498 WHERE entry = 923;
-- Greeting edit for https://database.turtle-wow.org/?npc=60474.
update broadcast_text set male_text = 'Welcome to Darnassus, crown jewel of Teldrassil.$B$BThis city serves as the heart and soul of the Kaldorei, and for good reason. Its grace and beauty mirrors that of our culture, our legacy.' where entry = 60474;
-- Turn these quests into chains. 40201 to 40203, 40204 to 40205 (RMJ).
UPDATE quest_template SET NextQuestInChain = 40202 WHERE entry = 40201;
UPDATE quest_template SET NextQuestInChain = 40203 WHERE entry = 40202;
UPDATE quest_template SET NextQuestInChain = 40205 WHERE entry = 40204;
-- Edits for https://database.turtle-wow.org/?quest=60143 (RMJ).
UPDATE quest_template SET Details = 'Have you ever stood at the edge of Teldrassil and looked out over the Veiled Sea? It\'s a magnificent sight, $N. I cannot recommend enough that you experience it at least once.$B$BI often travel with my sewing kit to the waterfalls near Wellspring Lake, right as they pour over the side of the trunk. It is a wonderfully serene spot where I may work in peace. The last time I was there, however, I was attacked by maddened timberlings and fled without my kit!$B$BThose tools have been with me for as long as I can remember, and I can\'t bear the thought of them tumbling over into the sea, lost forever. Would you kindly recover my kit for me, $N?', OfferRewardText = 'Oh, you\'ve found it! You have my eternal gratitude, $N!$B$BWill a well-tailored shirt suffice as repayment for your efforts? I stock them in a number of different colors to suit any taste. Please, take your pick. If a shirt is not to your liking, perhaps I could interest you in some raw material for your own purposes?', RewXP = 750, RewMoneyMaxLevel = 480, RewRepFaction1 = 69, RewRepValue1 = 100 WHERE entry = 60143;
-- Slight edit to strange naming for Mountain Berry assets (RMJ).
UPDATE item_template SET Name = 'Mountain Berry Bush Seeds' WHERE entry = 51707;
UPDATE gameobject_template SET Name = 'Mountain Berry Bush' WHERE entry = 1000371;