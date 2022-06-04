DELETE FROM `spell_group` WHERE `group_id` = '1022' AND `spell_id` = '13445';

DELETE FROM `spell_proc_event` WHERE `entry` = '19184';
DELETE FROM `spell_proc_event` WHERE `entry` = '19387';
DELETE FROM `spell_proc_event` WHERE `entry` = '19388';
DELETE FROM `spell_proc_event` WHERE `entry` = '19389';
DELETE FROM `spell_proc_event` WHERE `entry` = '19390';

UPDATE `spell_template` SET `procFlags` = '2097152' WHERE `entry` = '19390';

DELETE FROM `character_social` WHERE `friend` NOT IN (SELECT `guid` FROM `characters`);