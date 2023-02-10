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
-- Duty to the light quest text error #2774.
update quest_template set OfferRewardText = '<You explain why Brother WIlhelm sent you. Eldrin\'s angry, defensive posture softens as you explain, and eventually you see the shine of tears in his eyes.>$B$BMiles away and as busy serving the Light as he is, yet he still finds time to help us. It pains me to burden him so yet again. He\'s already done so much for us, you see.$B$BThings\'ve been hard this year, so I\'ve been goin\' without so Sara and Eric don\'t have to, and... Well, thank you. Bless Brother Wilhelm, and bless you, $N.$B$BHere. I know it\'s not much, but Sara makes them for the locals. Maybe you can find some use in it. Take it! It\'s the least we can do in return for your selfless deed.' where entry = 60141;
-- Set Uneven Dirt respawn time to 5 seconds https://database.turtle-wow.org/?object=2010896 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE guid = 5008104;
-- Slight text cleanup and added Darnassus rep bonus to https://database.turtle-wow.org/?quest=40300 (RMJ).
UPDATE quest_template SET Details = 'Hail young $c. Are you by chance destined for the human city of Stormwind? If so, I have a favor to ask.$B$BFishing is a rare choice of occupation among my kinsmen, but one I take a great deal of pleasure in. Truly there is no more relaxing way to pass the time, something we Kaldorei are in no short supply of. I often gather clams from the banks I fish along, containing pearls as pure white as Elune herself on the darkest night.$B$BIt is from these pearls I have put together a necklace for Shailiea, the woman I have been pining for and courting for many decades now. Please, deliver to her this necklace and tell her it is from her secret admirer. Let me quickly wrap this in a piece of cloth.$B$BThe quickest way to reach Stormwind would be from the south dock in Auberdine. Once in Stormwind, you should be able to find Shailliea residing in the Park.', RequestItemsText = 'Elune be with you, $c. What brings you to me?', OfferRewardText = 'What is this? From a secret admirer?$B$BOh, silly Androl. He hasn''t realized that I have known for years. I wish he would be more forward about his affections. Nonetheless, I thank you, $N. Please take this coin for your troubles.', RewRepFaction1 = 69, RewRepValue1 = 50 WHERE entry = 40300;
-- As per @Dragunovi's request, add 30s cooldown to https://database.turtle-wow.org/?item=60099 (RMJ).
UPDATE item_template SET spellcooldown_1 = 30000 WHERE entry = 60099;
-- As per @Gheor's request, update displayIDs of following NPCs (RMJ).
UPDATE creature_template SET display_id1 = 13409 WHERE entry = 61193;
UPDATE creature_template SET display_id1 = 2432 WHERE entry = 61195;
-- Text cleanup for https://database.turtle-wow.org/?quest=40201 (RMJ).
UPDATE quest_template SET Details = 'I spent much time among the keepers on Stonetalon Peak. It was a time of tranquility, to find true balance of self and harmony with nature. In my time there, I learned much of how best to wield the power of the land to conserve and protect nature. It is only when I began my work here within Teldrassil that my efforts began to falter, and there have been... complications.$B$BIt would appear the land itself holds some taint that I cannot grasp. I have struggled in my efforts to bend nature''s will, straining myself more than ever before, and one of my Protectors has withered away and broken its bond with me.$B$BI would ask you to speak with Tasala Whitefeather, the one who once lead the harpies within the region, and ask her if she has news of the treant. Do not worry; she is free from the evil that grips her kind.$B$BYou should find her just down the hill to the north. Follow the road and you will see her near the cliff''s edge.', RequestItemsText = 'It is not often I have visitors. What can I assist you with?', OfferRewardText = 'Yes, Malos and I have spoken on occasion. He has been studying the corruption of nature for some time now, and has even offered his assistance in understanding and, maybe someday, reversing the corruption of my kind. He is a good and kind soul, and if he needs my help then I shall offer what I can.' WHERE entry = 40201;
-- Greeting edit for https://database.turtle-wow.org/?npc=60465.
update broadcast_text set male_text = 'What brings a young $r all the way up here? I can only assume you seek my counsel.' where entry = 60465;
-- As per @Shang's request, update name of https://database.turtle-wow.org/?npc=80244 (RMJ).
UPDATE creature_template SET name = 'Andalideth Suncaller' WHERE entry = 80244;
-- Greeting edit for Aerla Goldenmoon https://database.turtle-wow.org/?npc=60621.
update broadcast_text set male_text = 'We have many allies across the Great Sea, located far to the east within the Eastern Kingdoms. The boat that arrives at this dock leads to the harbor of the human city of Stormwind, the heart of the Alliance.$B$BIf the boat is not here, have patience. It shall arrive shortly.' where entry = 60621;
-- Greeting edit for Gallen Grahamsift https://database.turtle-wow.org/?npc=60549.
update broadcast_text set male_text = 'Greetings traveler. If you are looking to reach our ancient homeland of Kalimdor to the west, you will need passage by boat. One of our ships from Auberdine makes regular stops here in Stormwind.$B$BDo not fret if the boat is not here; it will arrive in due time.' where entry = 60549;
-- As per @Woji 🇵🇱's request, add 20 silver sell price to all 3 rewards of https://database.turtle-wow.org/?quest=55225 (RMJ).
UPDATE item_template SET sell_price = 2000 WHERE entry IN (81416, 81417, 81418);
-- As per @Woji 🇵🇱's request, change respawn time of Refined Gem Shipment to 5 seconds https://database.turtle-wow.org/?object=2010843 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 5000113;

delete from creature_template where entry between 61191 and 61197;
REPLACE INTO creature_template VALUES
(61219, 6230, 0, 0, 0, 0, 'Sirandil Swiftsilver', 'Druid of the Claw', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 16388, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61213, 2686, 0, 0, 0, 0, 'Ravos Ragepaw', 'Druid of the Talon', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),

(61214, 13409, 0, 0, 0, 0, 'Delas Dreamwalker', 'Druid of the Wild', 41350, 50, 50, 2990, 2990, 0, 0, 2958, 290, 1, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),

(61215, 2429, 0, 0, 0, 0, 'Ancient Protector', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61216, 2432, 0, 0, 0, 0, 'Emerald Grovekeeper', 'The Emerald Dream', 41351, 50, 50, 2990, 2990, 0, 0, 2958, 290, 5, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61217, 6757, 0, 0, 0, 0, 'Zephyra', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),

(61218, 1742, 0, 0, 0, 0, 'Deviate Coiler Hatchling', NULL, 0, 11, 11, 666, 666, 0, 0, 538, 14, 0, 1, 1.14286, 0.7, 20, 5, 0, 1, 1, 52, 68, 0, 64, 1, 2000, 2000, 1, 0, 0, 27, 0, 0, 0, 0, 17.732, 24.3815, 100, 1, 1, 3630, 0, 3630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
delete from pet_spell_data where entry = 61197;
REPLACE INTO `pet_spell_data` (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES (61218, 24844, 0, 0, 0);

delete from gossip_menu where entry = 41351;
delete from broadcast_text where entry = 61195;
delete from npc_text where id = 61195;
set @gossip_menu_id = 41351; set @magic_number = 61216;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Emerald Dream is within our reach, dreamer.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from gossip_menu where entry = 41350;
delete from broadcast_text where entry = 61193;
delete from npc_text where id = 61193;
set @gossip_menu_id = 41350; set @magic_number = 61214;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ishnu-alah, dreamer, and welcome to our concealed enclave. May it provide some respite from the long journey ahead into the Emerald Nightmare.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from npc_vendor where entry in (61191,61195);
-- Emerald Grovekeeper vendor list.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 21721, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2593, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2594, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2595, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2596, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2723, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 4600, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 8766, 0, 0, 0, 0);
-- Sirandil Swiftsilver vendor list.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 2320, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2321, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2324, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2325, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2604, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2605, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 2678, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2692, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2928, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 3371, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  3372, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  3713, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 3777, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4289, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4291, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4340, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4342, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4399, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4400, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 6183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 6217, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 6256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  6260, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  6529, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  6530, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  6532, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 7005, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  8343, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  8925, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 14341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 18256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 50231, 0, 0, 0, 0);
-- NPC with entryID 61217 - please make this NPC a brief flying mount, just like the gryphon in Goldshire or the wyvern in Razor Hill.
set @gossip_menu_id = 41353; set @magic_number = 61217;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Yauur?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id, npc_flags = 1, script_name = 'npc_flying_mount' where entry = @magic_number;
-- Makes Corruption Bind on Equip, there's currently no special occasion that mandates that it stays a BoP, its not even an epic.
update item_template set bonding = 2 where entry = 12782; -- Corruption
-- BoP Crafteds requiring their skill to wear to avoid gaming the system
update item_template set required_skill = 197, required_skill_rank = 300 where entry = 14154; -- Truefaith Vestments
update item_template set required_skill = 197, required_skill_rank = 300 where entry = 14153; -- Robe of the Void
update item_template set required_skill = 197, required_skill_rank = 300 where entry = 14152; -- Robe of the Archmage
-- For quest 299 adjust respawn time of object 331, 333, 334, 35252 to 5 seconds (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid BETWEEN 15208 AND 15211;
-- Set respawn time of Sealed Documents Container to 5 seconds object=2010902 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 5008158;
-- Set respawn time of Sealed Documents Crate to 5 seconds object=1000510 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 4011321;
-- Quest=9025 does not correctly chain off of quest=9024 (RMJ).
UPDATE quest_template SET NextQuestInChain = 9025 WHERE entry = 9024;
-- Text edits for https://database.turtle-wow.org/?quest=40549 (RMJ).
UPDATE quest_template SET
Details = 'So, $N, the footprints were definitely quillboar hooves. I followed them well into the Barrens, thinking they would lead me to the Kraul. I was wrong. The raiding party actually stopped just outside Bael Modan, which makes your job easier.$B$BVenturing into the Kraul... The mere thought makes me shudder.$B$BBack to the topic. The camp is north of Bael Modan, close to the road. You should have no trouble finding it. Try to sneak in, or kill them all. Doesn''t matter to me. What is important - find some evidence, maybe some items that could''ve been taken from the inn.$B$BAnd to adress the elephant in the room: the orc. He said that he is here to investigate the inn too. I''m keeping an eye on him- I don''t trust him. I feel like the Horde is trying to cover up something. Good luck.'
WHERE entry = 40549;