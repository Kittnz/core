-- Remove non quest loot from Captured Sprite Darter.
UPDATE `creature_template` SET `gold_min`=0, `gold_max`=0 WHERE `entry`=7997;
DELETE FROM `creature_loot_template` WHERE `entry`=7997 && `ChanceOrQuestChance` > 0;
