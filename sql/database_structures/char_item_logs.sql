CREATE TABLE `character_item_logs` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`playerLowGuid` INT(10) UNSIGNED NOT NULL,
	`itemLowGuid` INT(10) UNSIGNED NOT NULL,
	`itemEntry` INT(10) UNSIGNED NOT NULL,
	`itemCount` INT(10) UNSIGNED NOT NULL,
	`action` INT(10) UNSIGNED NOT NULL,
	`timestamp` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `playerLowGuid` (`playerLowGuid`, `itemLowGuid`, `itemEntry`) USING BTREE,
	INDEX `action` (`action`) USING BTREE,
	INDEX `timestamp` (`timestamp`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
