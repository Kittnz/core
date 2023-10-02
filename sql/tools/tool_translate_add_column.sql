ALTER TABLE `locales_area`
	ADD COLUMN `NameLoc0` VARCHAR(100) NOT NULL DEFAULT '' AFTER `Entry`;

ALTER TABLE `locales_broadcast_text`
	ADD COLUMN `male_text_loc0` LONGTEXT NULL AFTER `entry`,
	ADD COLUMN `female_text_loc0` LONGTEXT NULL AFTER `male_text_loc8`;

ALTER TABLE `locales_creature`
	ADD COLUMN `name_loc0` VARCHAR(100) NOT NULL DEFAULT '' AFTER `entry`,
	ADD COLUMN `subname_loc0` VARCHAR(100) NULL DEFAULT NULL AFTER `name_loc8`;

ALTER TABLE `locales_faction`
	ADD COLUMN `name_loc0` VARCHAR(256) NOT NULL DEFAULT '' AFTER `entry`,
	ADD COLUMN `description_loc0` VARCHAR(512) NOT NULL DEFAULT '' AFTER `name_loc6`;

ALTER TABLE `locales_gameobject`
	ADD COLUMN `name_loc0` VARCHAR(100) NOT NULL DEFAULT '' AFTER `entry`;

ALTER TABLE `locales_gossip_menu_option`
	ADD COLUMN `option_text_loc0` TEXT NULL AFTER `id`,
	ADD COLUMN `box_text_loc0` TEXT NULL AFTER `option_text_loc8`;

ALTER TABLE `locales_item`
	ADD COLUMN `name_loc0` VARCHAR(100) NOT NULL DEFAULT '' AFTER `entry`,
	ADD COLUMN `description_loc0` VARCHAR(255) NULL DEFAULT NULL AFTER `name_loc8`;

ALTER TABLE `locales_page_text`
	ADD COLUMN `Text_loc0` LONGTEXT NULL AFTER `entry`;

ALTER TABLE `locales_points_of_interest`
	ADD COLUMN `icon_name_loc0` TEXT NULL AFTER `entry`;

ALTER TABLE `locales_quest`
	ADD COLUMN `Title_loc0` TEXT NULL AFTER `entry`,
	ADD COLUMN `Details_loc0` TEXT NULL AFTER `Title_loc8`,
	ADD COLUMN `Objectives_loc0` TEXT NULL AFTER `Details_loc8`,
	ADD COLUMN `OfferRewardText_loc0` TEXT NULL AFTER `Objectives_loc8`,
	ADD COLUMN `RequestItemsText_loc0` TEXT NULL AFTER `OfferRewardText_loc8`,
	ADD COLUMN `EndText_loc0` TEXT NULL AFTER `RequestItemsText_loc8`,
	ADD COLUMN `ObjectiveText1_loc0` TEXT NULL AFTER `EndText_loc8`,
	ADD COLUMN `ObjectiveText2_loc0` TEXT NULL AFTER `ObjectiveText1_loc8`,
	ADD COLUMN `ObjectiveText3_loc0` TEXT NULL AFTER `ObjectiveText2_loc8`,
	ADD COLUMN `ObjectiveText4_loc0` TEXT NULL AFTER `ObjectiveText3_loc8`;

ALTER TABLE `locales_spell`
	ADD COLUMN `name_loc0` VARCHAR(256) NOT NULL DEFAULT '' AFTER `entry`,
	ADD COLUMN `nameSubtext_loc0` VARCHAR(256) NOT NULL DEFAULT '' AFTER `name_loc6`,
	ADD COLUMN `description_loc0` VARCHAR(1024) NOT NULL DEFAULT '' AFTER `nameSubtext_loc6`,
	ADD COLUMN `auraDescription_loc0` VARCHAR(512) NOT NULL DEFAULT '' AFTER `description_loc6`;

ALTER TABLE `locales_taxi_node`
	ADD COLUMN `name_loc0` VARCHAR(256) NOT NULL DEFAULT '' AFTER `entry`;
