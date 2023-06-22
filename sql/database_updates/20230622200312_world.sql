-- Re-implemented Solnius's loot table:

DELETE FROM `creature_loot_template` WHERE `entry` = 60748;

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

-- Group ID 1 (100% drop chance)
(60748, 61215, 100, 1, 1, 1, 0), -- Head of Solnius
-- Group ID 2 (always drop one of those)
(60748, 61217, 20,  2, 1, 1, 0), -- Formula: Enchant Chest - Mighty Mana
(60748, 61218, 20,  2, 1, 1, 0), -- Recipe: Elixir of Greater Nature Power
(60748, 61424, 20,  2, 1, 1, 0), -- Plans: Dreamsteel Mantle
(60748, 61428, 20,  2, 1, 1, 0), -- Pattern: Dreamhide Mantle
(60748, 61432, 20,  2, 1, 1, 0), -- Pattern: Dreamthread Mantle
-- Group ID 3 (druid class item, 20% drop chance)
(60748, 61444, 20,  3, 1, 1, 0), -- Smoldering Dream Essence
-- Group ID 4 (always drop one of those)
(60748, 17962, 20,  4, 1, 1, 0), -- Blue Sack of Gems
(60748, 17963, 20,  4, 1, 1, 0), -- Green Sack of Gems
(60748, 17964, 20,  4, 1, 1, 0), -- Gray Sack of Gems
(60748, 17965, 20,  4, 1, 1, 0), -- Yellow Sack of Gems
(60748, 17969, 20,  4, 1, 1, 0), -- Red Sack of Gems
-- Group ID 5 (22 slot bag, 15% drop chance)
(60748, 61196, 15,  5, 1, 1, 0), -- Bag of the Vast Conscious
-- Group ID 6 (three random epic drop of 16 total)
(60748, 61203, 6.25,  6, 1, 1, 0), -- Libram of the Dreamguard
(60748, 61237, 6.25,  6, 1, 1, 0), -- Mallet of the Awakening 
(60748, 61238, 6.25,  6, 1, 1, 0), -- Scaleshield of Emerald Flight
(60748, 61239, 6.25,  6, 1, 1, 0), -- Ancient Jade Leggings
(60748, 61204, 6.25,  6, 1, 1, 0), -- Totem of the Stonebreaker
(60748, 61205, 6.25,  6, 1, 1, 0), -- Ring of Nature's Duality
(60748, 61206, 6.25,  6, 1, 1, 0), -- Robe of the Dreamways
(60748, 61207, 6.25,  6, 1, 1, 0), -- Jadestone Helmet
(60748, 61208, 6.25,  6, 1, 1, 0), -- Staff of the Dreamer
(60748, 61209, 6.25,  6, 1, 1, 0), -- Shard of Nightmare
(60748, 61210, 6.25,  6, 1, 1, 0), -- Veil of Nightmare
(60748, 61211, 6.25,  6, 1, 1, 0), -- Sandals of Lucidity
(60748, 61212, 6.25,  6, 1, 1, 0), -- Sanctum Bark Wraps
(60748, 61213, 6.25,  6, 1, 1, 0),  -- Talonwind Gauntlets
(60748, 61214, 6.25,  6, 1, 1, 0),  -- Mantle of the Wakener
(60748, 61448, 6.25,  6, 1, 1, 0),  -- Axe of Dorment Slumber
-- Group ID 7 (three random epic drop of 16 total)
(60748, 61203, 6.25,  7, 1, 1, 0), -- Libram of the Dreamguard
(60748, 61237, 6.25,  7, 1, 1, 0), -- Mallet of the Awakening 
(60748, 61238, 6.25,  7, 1, 1, 0), -- Scaleshield of Emerald Flight
(60748, 61239, 6.25,  7, 1, 1, 0), -- Ancient Jade Leggings
(60748, 61204, 6.25,  7, 1, 1, 0), -- Totem of the Stonebreaker
(60748, 61205, 6.25,  7, 1, 1, 0), -- Ring of Nature's Duality
(60748, 61206, 6.25,  7, 1, 1, 0), -- Robe of the Dreamways
(60748, 61207, 6.25,  7, 1, 1, 0), -- Jadestone Helmet
(60748, 61208, 6.25,  7, 1, 1, 0), -- Staff of the Dreamer
(60748, 61209, 6.25,  7, 1, 1, 0), -- Shard of Nightmare
(60748, 61210, 6.25,  7, 1, 1, 0), -- Veil of Nightmare
(60748, 61211, 6.25,  7, 1, 1, 0), -- Sandals of Lucidity
(60748, 61212, 6.25,  7, 1, 1, 0), -- Sanctum Bark Wraps
(60748, 61213, 6.25,  7, 1, 1, 0),  -- Talonwind Gauntlets
(60748, 61214, 6.25,  7, 1, 1, 0),  -- Mantle of the Wakener
(60748, 61448, 6.25,  7, 1, 1, 0),  -- Axe of Dorment Slumber
-- Group ID 9 (three random epic drop of 16 total)
(60748, 61203, 6.25,  8, 1, 1, 0), -- Libram of the Dreamguard
(60748, 61237, 6.25,  8, 1, 1, 0), -- Mallet of the Awakening 
(60748, 61238, 6.25,  8, 1, 1, 0), -- Scaleshield of Emerald Flight
(60748, 61239, 6.25,  8, 1, 1, 0), -- Ancient Jade Leggings
(60748, 61204, 6.25,  8, 1, 1, 0), -- Totem of the Stonebreaker
(60748, 61205, 6.25,  8, 1, 1, 0), -- Ring of Nature's Duality
(60748, 61206, 6.25,  8, 1, 1, 0), -- Robe of the Dreamways
(60748, 61207, 6.25,  8, 1, 1, 0), -- Jadestone Helmet
(60748, 61208, 6.25,  8, 1, 1, 0), -- Staff of the Dreamer
(60748, 61209, 6.25,  8, 1, 1, 0), -- Shard of Nightmare
(60748, 61210, 6.25,  8, 1, 1, 0), -- Veil of Nightmare
(60748, 61211, 6.25,  8, 1, 1, 0), -- Sandals of Lucidity
(60748, 61212, 6.25,  8, 1, 1, 0), -- Sanctum Bark Wraps
(60748, 61213, 6.25,  8, 1, 1, 0),  -- Talonwind Gauntlets
(60748, 61214, 6.25,  8, 1, 1, 0),  -- Mantle of the Wakener
(60748, 61448, 6.25,  8, 1, 1, 0),  -- Axe of Dorment Slumber
-- Group ID 9, 10 (random BOE blues) 
(60748, 30044, 100, 0, -30044, 1, 0),
(60748, 30044, 100, 0, -30044, 1, 0);

DELETE FROM `reference_loot_template` WHERE `entry` = 60000;

-- Restored Solnius' gossip text:

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (60748, 'Do you know where you are walking mortal? This place has been here long before your races existence. The Emerald Sanctum is a hallowed ground. Your mere steps upon the verdant grass tarnishes the beauty of this place. Your vile smell lingers upon the air.$B$BYou must leave, it will not be long until the rest of the Green Dragonflight is awoken.$B$BOur eternal duty has arrived, and as The Awakener, I have put out the call to stir those lost in slumber. They will arrive, it is only a matter of time now, and you will not get in the way, $r.$B$BDarkness swirls, festering upon the sleepless realm, I will put an end to it.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (92950, 60748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- TODO:

-- Random speech for Gilneas NPCs:

-- 61363, 61364, 61365, 61366, 61388, 61389, 61390, 61391, 61393, 61394,61395,61396,61397,

-- have a 25% chance to say one of the following lines

-- 'You will die before the might of Gilneas.'
-- 'You won't leave here alive, outsider!' 
-- 'I fight for my king, you fight for your life!'
-- 'My sword is stained with the blood of my enemies, and yours will soon join them.'
-- 'You and the other rebels will be hunted like the cattle you are.'
-- 'You will find no mercy here, just the wrath of Greymane.' 
-- 'For the Crown!'
-- 'In the name of Genn Greymane!'

-- 61417

-- Have a 25% chance to say one of the following lines

-- 'In the name of the Light!'
-- 'Justice shall be served.'
-- 'Back to the shadows!' 

