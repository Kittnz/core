
-- Vectus, Marduk Blackpool and Scholomance Student are non hostile by default.
UPDATE `creature_template` SET `faction`=15 WHERE `entry` IN (10432, 10433, 10475);

-- Torek and Splintertree Raider are faction 83 by default and change to 1174 when escort quest starts.
UPDATE `creature_template` SET `faction`=83 WHERE `entry` IN (12858, 12859);

-- Default friendly faction for Ribbly Screwspigot and Ribbly's Crony is 735.
UPDATE `creature_template` SET `faction`=735 WHERE `entry` IN (9543, 10043);

-- Scarshield Infiltrator should be faction 40 and immune to pc and npc.
UPDATE `creature_template` SET `faction`=40, `unit_flags`=832 WHERE `entry`=10299;

-- Events list for Scarshield Infiltrator
DELETE FROM `creature_ai_events` WHERE `creature_id`=10299;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1029901, 10299, 85, 10, 2, 100, 0, 0, 15, 0, 0, 1029901, 0, 0, 'Scarshield Infiltrator - Trigger Vaelan event on LOS');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1029902, 10299, 0, 1, 1, 100, 0, 2000, 2000, 0, 0, 1029902, 0, 0, 'Scarshield Infiltrator - Morph into Vaelan (Phase 1)');

-- Vaelastrasz the Red should be faction Escortee.
UPDATE `creature_template` SET `faction`=250 WHERE `entry`=10340;

-- Correct faction for New Year's Eve revelers.
UPDATE `creature_template` SET `faction`=775 WHERE `entry`=15719;
UPDATE `creature_template` SET `faction`=775 WHERE `entry`=15907;
UPDATE `creature_template` SET `faction`=775 WHERE `entry`=15908;
UPDATE `creature_template` SET `faction`=774 WHERE `entry`=15694;
UPDATE `creature_template` SET `faction`=774 WHERE `entry`=15905;
UPDATE `creature_template` SET `faction`=774 WHERE `entry`=15906;
