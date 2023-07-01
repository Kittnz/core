-- Increase drop chance of Item ID 81369 to 2%.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 49002 AND `item` = 81369 AND `groupid` = 2;


