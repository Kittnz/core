ALTER TABLE `creature_template` ADD COLUMN `phase_quest_id` INT(11) UNSIGNED DEFAULT 0 NOT NULL AFTER `flags_extra`;
ALTER TABLE `gameobject_template` ADD COLUMN `phase_quest_id` INT(11) UNSIGNED DEFAULT 0 NOT NULL AFTER `maxgold`;