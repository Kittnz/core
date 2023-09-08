ALTER TABLE `account`
	ADD COLUMN `queue_skip` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `geolock_pin`;



