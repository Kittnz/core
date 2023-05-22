-- Fixed some items not playing sound in the player's inventory:

UPDATE `item_template` SET `material` = 1 WHERE `entry` = 61166;
UPDATE `item_template` SET `material` = 0 WHERE `entry` = 61157;
UPDATE `item_template` SET `display_id` = 7740, `material` = 8 WHERE `entry` = 60110;

UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Bleakheart Horn' WHERE `entry` = 61150;
UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Xavian Horn' WHERE `entry` = 61151;
UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Felmusk Horn'  WHERE `entry` = 61152;

-- 1	Metal
-- 2	Wood
-- 3	Liquid
-- 4	Jewelry
-- 5	Chain
-- 6	Salary
-- 7	Cloth
-- 8	Leather

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3531
-- Fixed a typo in Kelly Vaulstone's gossip.

UPDATE `broadcast_text` SET `male_text` = 'This harbor ain''t too shabby for fishing!', `female_text` = NULL, `chat_type` = 0, `sound_id` = 0, `language_id` = 0, `emote_id1` = 0, `emote_id2` = 0, `emote_id3` = 0, `emote_delay1` = 0, `emote_delay2` = 0, `emote_delay3` = 0 WHERE `entry` = 60928;

-- Reduced XP from killing Starving Bonepaw in Desolace.
-- In WoW classic, these mobs give reduced experience, since they have reduced hit points (they die in 2-3 spells).

UPDATE `creature_template` SET `xp_multiplier` = 0.3 WHERE `entry` = 4689;

-- Marked quest Treant Muisek as Elite.
-- Marked quest Army of the Black Dragon as Elite.

UPDATE `quest_template` SET `type` = 1 WHERE `entry` = 3126;
UPDATE `quest_template` SET `type` = 1 WHERE `entry` = 1168;