
-- Events list for Milton Beats
DELETE FROM `creature_ai_events` WHERE `creature_id`=13082;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1308201, 13082, 0, 4, 0, 100, 1, 0, 0, 0, 0, 1308201, 0, 0, 'Milton Beats - Say Text on Aggro');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1308202, 13082, 0, 9, 0, 100, 1, 0, 5, 8000, 12000, 1308202, 0, 0, 'Milton Beats - Cast Slap!');
DELETE FROM `creature_ai_scripts` WHERE `id`=1308201;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1308201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8512, 0, 0, 0, 0, 0, 0, 0, 0, 'Milton Beats - Say Text');

-- Correct auras used by Syndicate Highwayman.
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=2586);
UPDATE `creature_template` SET `auras`='7939 22766' WHERE `entry`=2586;

-- Remove PvP flag from some mobs that shouldn't have it.
UPDATE `creature_template` SET `flags_extra`= `flags_extra` - 524288 WHERE (`flags_extra` & 524288) && `entry` IN (3024, 3454, 3455, 10618, 10619, 10919, 11196, 11198, 11806, 11835, 14622, 15177, 16241, 16285, 16781, 17635, 17647);
UPDATE `creature_template` SET `flags_extra`= `flags_extra` - 8 WHERE (`flags_extra` & 8) && `entry` IN (3024, 3454, 3455, 10618, 10619, 10919, 11196, 11198, 11806, 11835, 14622, 15177, 16241, 16285, 16781, 17635, 17647);

-- Blasted Lands buffs from turning in quests shouldn't stack, just like the versions on the items.
REPLACE INTO `spell_group` (`group_id`, `group_spell_id`, `spell_id`) VALUES
(1004, 3, 10671),
(1004, 4, 10691),
(1008, 5, 10670),
(1008, 6, 10671),
(1008, 7, 10672),
(1008, 8, 10690),
(1008, 9, 10691);

-- Change despawn type of Mana Surges.
UPDATE `event_scripts` SET `dataint4`=2 WHERE `id`=1653 && `command`=10;

-- Fix wrong spells used by the warlock's Doomguard.
UPDATE `creature_template` SET `spell_id1`=19474, `spell_id2`=19482, `spell_id3`=89 WHERE `entry`=11859;

-- Aggro range for mobs in starting zones is lower than normal.
UPDATE `creature_template` SET `detection_range`=10 WHERE `entry` IN (6, 38, 69, 80, 103, 257, 299, 704, 705, 706, 707, 708, 724, 808, 946, 1501, 1502, 1504, 1505, 1506, 1507, 1508, 1509, 1512, 1513, 1667, 1688, 1890, 1916, 1917, 1918, 1919, 1984, 1985, 1986, 1988, 1989, 1994, 2031, 2032, 2952, 2953, 2954, 2955, 2961, 2966, 3098, 3101, 3102, 3124, 3183, 3229, 3281, 3300, 8554);

-- Aggro range for most mobs in classic is around 3-4 yards lower than our current default.
UPDATE `creature_template` SET `detection_range`=18 WHERE `detection_range`=20 && `rank`=0;
