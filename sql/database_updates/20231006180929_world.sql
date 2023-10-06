-- pain
update item_template set stat_value1 = 15, stat_value2 = 18, stat_value3 = 15 where entry = 61756; -- Nordanaar Guardian Spaulders
update item_template set stat_value1 = 11, stat_type1 = 7, stat_value2 = 0, spellid_1 = 15464, spellid_3 = 7523, spelltrigger_3 = 1, spellid_2 = 9331, nature_res = 7 where entry = 61523; -- Crystal Sword of the Blossom

-- item Dawnstone Ore (entry 61390) change stacksize to 12

-- NPC Snarlclaw entry 61405 has the incorrect display ID , change display ID to 736

-- Quest The Deed to Ravenshire (Entry 40966) change zoneid to 5180

-- Quest 40942 change objective quest text to : "Slay Firemurk Dragonkin in Dustwallow Marsh, and recover a Potent Draconic Jewel for Magus Orelius at Ravenshire in Gilneas."

UPDATE `item_template` SET `stackable` = 12 WHERE `entry` = 61390;
UPDATE `creature_template` SET `display_id1` = 736, `display_id2` = 0 WHERE `entry` = 61405;
UPDATE `quest_template` SET `ZoneOrSort` = 5180 WHERE `entry` = 40966;
UPDATE `quest_template` SET `objectives` = 'Slay Firemurk Dragonkin in Dustwallow Marsh, and recover a Potent Draconic Jewel for Magus Orelius at Ravenshire in Gilneas.' WHERE `entry` = 40942;

-- Add item ID 61455 to loot group 8, 9 and 10 for Solnius, with equal drop chance with the other drops
-- Add item ID 70000 to loot group 12 with a 4.4% drop chance to Solnius.

REPlACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 70000, 4.4, 12, 1, 1, 0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61203, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61204, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61205, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61206, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61207, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61208, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61209, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61210, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61211, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61212, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61213, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61214, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61237, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61238, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61239, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61448, 5.88, 8, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60748, 61455, 5.88, 8, 1, 1, 0);

-- https://database.turtle-wow.org/?quest=41021 should reward experience. 

UPDATE `quest_template` SET `RewXP` = 8300, `RewMoneyMaxLevel` = 29700 WHERE `entry` = 41021;

-- Change faction ID for the following entryIDs: 3128, 3129, 5809, 3192 to Kul Tiras, faction ID 1011

UPDATE `creature_template` SET `faction` = 1693 WHERE `entry` IN (3128, 3129, 5809, 3192);

-- Edit scripted text for entryID 61147 to: "Do you feel the sense of relief in the air now? You should feel proud."
-- Edit scripted text for entryID 61015 to: "Check in on me? Haha! I ain't causing no trouble, that goody-two-shoes Milldough should learn to have some fun. All I am doing is exploring, this place is much different than Boralus after all."

UPDATE `broadcast_text` SET `male_text` = 'Do you feel the sense of relief in the air now? You should feel proud.' WHERE `entry` = 66599;
UPDATE `broadcast_text` SET `male_text` = 'Check in on me? Haha! I ain\'t causing no trouble, that goody-two-shoes Milldough should learn to have some fun. All I am doing is exploring, this place is much different than Boralus after all.' WHERE `entry` = 66468;

UPDATE `broadcast_text` SET `male_text` = 'Welcome to the inn here at the Tel Co. Basecamp, we are monkey free and very affordable. Please, do make yourself comfortable.\n\nAlso, I just want to dispel floating rumors that have been going around. There were no monkey attacks at this establishment. NONE AT ALL. A roving band of monkeys did NOT break in at the late hours of the night, cause a ruckus, and attack innocent patrons.\n\nIf it does happen though, we offer a free night''s stay.' WHERE `entry` = 61110;

UPDATE `broadcast_text` SET `male_text` = 'I was once the High Foreman of the Shadowforge Miners Union. Me and my men helped build many of the halls of the city itself, and worked tirelessly to appease the Senators of their plots and whims. We kept our loyalty, and then worked hard, given benefits for our work.' WHERE `entry` = 66429;

UPDATE `broadcast_text` SET `male_text` = 'It was then the plans of the Senate failed and the Master became upset that their wrath upon us started growing. The project at Hateforge Quarry put many to their limit, and pulled us away from our home to work in dangerous conditions without any regards for what we did in the past.' WHERE `entry` = 66430;

UPDATE `broadcast_text` SET `male_text` = 'We were given impossible tasks, which we could not complete, and I was placed to blame. Many of my fellow miners betrayed me, and a new High Foreman was put into my place. Those that remained loyal were enslaved, and the rest of us were exiled. We ended up travelling in exile for days, many of us dying.' WHERE `entry` = 66431;

UPDATE `broadcast_text` SET `male_text` = 'I was betrayed, backstabbed, and wronged. My heart burns hotter than the Blackrock Mountain, and I demand revenge. Do you see why I ask for help? No doubt you have your reasons to stop the Dark Iron. Let me guide your hand, and we shall both be satisfied.' WHERE `entry` = 66432;

UPDATE `broadcast_text` SET `male_text` = 'You one of those adventurers? If so, you''re just what I''m lookin'' for. We''ve had so many problems, and everything has collapsed. I got more dead employees than I do bananas, do you UNDERSTAND?!\n\n<Baron Telraz takes a moment, clearing his throat.>\n\nApologies about that, a goblin can get quite upset about the loss of so much capital and gold. Time is money, but on Tel''Abim, time is losing money.\n\nSuch a calamity must be reversed before all of the investments here turn to nothing. I am telling you, a goblin is worth his gold, and I am not returning to Kezan with a few bananas in my pocket.' WHERE `entry` = 61102;

UPDATE `broadcast_text` SET `male_text` = 'Everything! Ambushes, attacks, the wildlife itself rose up in rebellion, and even the damn MONKEYS came from the trees and attacked all my workers!\n\nWe had bases all along the island, with sustainable and PROFITABLE harvesting, and now it\'s all gone bananas because of some apes and the king named Morgo... or something.\n\nWe''re short-staffed, undermanned and sorely in need of help, so quit asking questions.' WHERE `entry` = 30052;

UPDATE `broadcast_text` SET `male_text` = 'What do you want? If I were you, I wouldn\'t be sticking my nose where it didn\'t belong.' WHERE `entry` = 61116;

UPDATE `broadcast_text` SET `male_text` = 'Nokrot thinks he\'s all special, but I am the one that provides him with the water he loves to wave around.' WHERE `entry` = 61111;

UPDATE `broadcast_text` SET `male_text` = 'The sun sure is hot, huh?  I\'m in charge of the water and the refreshments around here, so you should be on your best behavior. Understood?\n\nOtherwise, you can get your drinks from the ocean!' WHERE `entry` = 61109;

UPDATE `mangos_string` SET `content_default` = '%s has reached level %u in Hardcore mode! As they ascend towards immortality, their glory grows! However, so too does the danger they face.' WHERE `entry` = 50301;

UPDATE `creature_template` SET `npc_flags` = 16388 WHERE `entry` = 61294;

REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 7, 2320, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 15, 2321, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 13, 2324, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 29, 2325, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 12, 2604, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 18, 2605, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 6, 2678, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 16, 2692, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 8, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 2, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 19, 2928, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 9, 3371, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 20, 3372, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 23, 3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 22, 3713, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 0, 3777, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 24, 3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 10, 4289, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 21, 4291, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 32, 4340, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 30, 4341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 31, 4342, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 25, 4399, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 26, 4400, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 3, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 0, 6183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 5, 6217, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 4, 6256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 14, 6260, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 11, 6529, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 17, 6530, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 27, 6532, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 1, 7005, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 28, 8343, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 33, 8925, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 0, 14341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 0, 18256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61294, 0, 50231, 0, 0, 0, 0);
