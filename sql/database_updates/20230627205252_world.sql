UPDATE quest_template SET ObjectiveText1 = '' WHERE entry = 80107;

-- Some forum suggestions: https://forum.turtle-wow.org/viewtopic.php?f=14&t=7953

-- 2) Make blessed oils and consecrated sharpening stones tradeable. People already can enchant each other's weapons from the trade window, so instead of forcing people to camp their alts outside naxxramas ready to enchant their main's gear, can simply remove the soulbind from the items.
	
UPDATE `item_template` SET `bonding` = 0 WHERE `entry` = 23122;
UPDATE `item_template` SET `bonding` = 0 WHERE `entry` = 23123;

-- 3) Remove hour long cd from blasted lands consumables. That cd existed when blizzard capped the item at one, no reason to exist anymore.

UPDATE `item_template` SET `spellcategorycooldown_1` = 3000 WHERE `spellcategory_1` = 103;

-- 4) Additionally, remove 5 max from both the blasted lands consumes and the zanzas (means usually you have enough for an entire raid and one raid only, having to do the trip back to blasted lands and Yojamba island after each raid is redundant inconvenience. The only person that would complain is the flight path npc losing some income)

UPDATE `item_template` SET `max_count` = 0 WHERE `entry` = 8410;
UPDATE `item_template` SET `max_count` = 0 WHERE `entry` = 8411;
UPDATE `item_template` SET `max_count` = 0 WHERE `entry` = 8412;
UPDATE `item_template` SET `max_count` = 0 WHERE `entry` = 8413;
UPDATE `item_template` SET `max_count` = 0 WHERE `entry` = 8414;
UPDATE `item_template` SET `max_count` = 0 WHERE `entry` = 20079;
UPDATE `item_template` SET `max_count` = 0 WHERE `entry` = 20080;
UPDATE `item_template` SET `max_count` = 0 WHERE `entry` = 20081;