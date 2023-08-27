DELETE FROM quest_template WHERE entry = 40013;
DELETE FROM quest_template WHERE entry = 40012;
DELETE FROM quest_template WHERE entry = 40010;

DELETE FROM creature_template WHERE entry = 15;

-- 61341- Vilemusk hellcaller
-- 61339- Vilemusk Felsworn 
-- 61340- Vilemusk Shadowstalker
-- No money drops on any of these satyrs

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61341;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61341;

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61339;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61339;

UPDATE `creature_template` SET `gold_min` = 445 WHERE `entry` = 61340;
UPDATE `creature_template` SET `gold_max` = 586 WHERE `entry` = 61340;

-- change display id of 61192 to 20492

UPDATE `creature_template` SET `display_id1` = 20492 WHERE `entry` = 61192;

-- make item 69000 drop from 61418 with 1,5% chance (new loottable)

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61418, 69000, 1.5, 4, 1, 1, 0);
