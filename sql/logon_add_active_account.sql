ALTER TABLE `account`
	ADD COLUMN `active` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' AFTER `queue_skip`;
