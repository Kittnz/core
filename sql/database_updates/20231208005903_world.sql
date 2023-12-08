-- Remove incorrect drops for Idol of Brutality
DELETE FROM `creature_loot_template` WHERE `item` =23198 AND `entry` != 10435; -- Magistrate Barthilas
