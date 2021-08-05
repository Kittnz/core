
ALTER TABLE `creature_model_info`
	COMMENT='Creature System (display id related info)',
	CHANGE COLUMN `modelid` `display_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' FIRST,
	CHANGE COLUMN `modelid_other_gender` `display_id_other_gender` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `gender`,
	DROP COLUMN `modelid_other_team`;

RENAME TABLE `creature_model_info` TO `creature_display_info_addon`;

ALTER TABLE `game_event_creature_data`
	CHANGE COLUMN `modelid` `display_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `entry_id`;

ALTER TABLE `creature`
	CHANGE COLUMN `modelid` `display_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `map`;
