-- Quest Name: Find Melanastrazsa
-- Issue: "Demons still remain in the Hyjal to this day."
-- Proposed fix:  "Demons still remain in Hyjal to this day."

UPDATE `quest_template` SET `Details` = 'If Fel is in the soil, then it means the demons are up to something. Travel up the road until you arrive near a scorched land. It was one of the sites of the battle of Mount Hyjal.$B$B The evil ugly demonlord Archimonde himself arrived and destroyed everything that was once there! Demons still remain in Hyjal to this day.$B$B When I made my way here I ran into a young pretty red Dragon that was investigating the demons. Seek her out!' WHERE `entry` = 41106;

-- Quest Name: Dim Light in the Darkness
-- Issue: Typo, "Cemetary" should be "Cemetery"

UPDATE `quest_template` SET `Objectives` = 'Find Moranna Rosenberg at the Hollow Web Cemetery in Gilneas.' WHERE `entry` = 40952;

-- Should this not be "Quel'dorei"? Drops off.. Well, a Quel'dorei. (Or I guess technically Sin'dorei) 

UPDATE `item_template` SET `name` = 'Quel\'dorei Channeling Rod' WHERE `entry` = 18311;

UPDATE `spell_template` SET `description` = 'Permanently enchant a cloak to increase arcane magic resistance by 15.' WHERE `entry` = 57117;

-- Name (quest): A War Worth Fighting
-- Issue: Grammatical error
-- Proposed Fix: Change to "...and burned them alive on the shore."

UPDATE `quest_template` SET `OfferRewardText` = 'I advised the Warchief against the sending of envoys. It was no use with a man like Alverold.$B$BOur men were cowardly assailed under the flag of peace. Those treacherous Kul Tirans tied them to stakes, soaked them in tar and burned them alive on the shore.$B$BNow we hold nothing back, now we put an end to them!' WHERE `entry` = 40671;

-- Add the following items to NPC ID 61533 with the listed drop chances in the same loottable:
-- Item ID 61547 20%
-- Item ID 61546 30%
-- Item ID 61545: 20%
-- Item ID 61548 30%

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
(61533, 61545, 20, 2, 1, 1, 0),
(61533, 61546, 30, 2, 1, 1, 0),
(61533, 61547, 20, 2, 1, 1, 0),
(61533, 61548, 30, 2, 1, 1, 0);


