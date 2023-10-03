-- Add missing aura Illusion Passive to mobs.
UPDATE `creature_template` SET `auras`='7131' WHERE `entry` IN (4785, 5097, 6493, 6932, 11027, 11263);
DELETE FROM `spell_proc_event` WHERE `entry`=7131;
