-- quest 40970 should be offered by npc 2498 instead of current one 

UPDATE `creature_questrelation` SET `id` = '2498' WHERE `id` = 61277 AND `quest` = 40970;

-- https://database.turtle-wow.org/?item=83549
-- https://database.turtle-wow.org/?spell=47245

UPDATE `spell_template` SET `castingTimeIndex` = 14 WHERE `entry` = 47245;
UPDATE `spell_template` SET `spellVisual1` = 108 WHERE `entry` = 47245;