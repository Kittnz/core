-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2428

UPDATE `quest_template` SET `RewRepFaction2` = 0, `RewRepFaction3` = 0, `RewRepValue2` = 0, `RewRepValue3` = 0 WHERE `entry` = 80396;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2425

UPDATE `quest_template` SET `ZoneOrSort` = 17 WHERE `entry` = 40684;
UPDATE `quest_template` SET `ZoneOrSort` = 17 WHERE `entry` = 40685;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2423

DELETE FROM `creature_loot_template` WHERE `entry` = 7395;
UPDATE `creature_template` SET `loot_id` = 0 WHERE `entry` = 7395;
UPDATE `creature_template` SET `skinning_loot_id` = 0 WHERE `entry` = 7395;
UPDATE `creature_template` SET `type` = 8 WHERE `entry` = 7395;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2415

UPDATE `creature_template` SET `nature_res` = 0 WHERE `entry` = 5288;