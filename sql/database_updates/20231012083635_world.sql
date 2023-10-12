-- A way to end Vagrant's Challenge:

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (67035, 'I would like to end the Vagrant\'s Challenge once and for all.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Cleaning cloth fix for 1.17.1:

UPDATE `skill_line_ability` SET `skill_id` = 142 WHERE `id` = 30033;
DELETE FROM `npc_vendor` WHERE `item`= 60002;

-- Removed deprecated Scarlet Monastery quartermaster.

DELETE FROM `creature_template` WHERE `entry` = 80950;

-- Dragu's item fixes:

update item_template set required_skill_rank = 300, required_skill = 164, spellid_1 = 14254, stat_value1 = 19 where entry = 61364; -- Dreamsteel Mantle
update item_template set required_skill_rank = 300, required_skill = 197, spellid_1 = 7597, spellid_2 = 0, stat_value1 = 30, stat_value2 = 15, stat_type2 = 7 where entry = 61360; -- Dreamthread Mantle