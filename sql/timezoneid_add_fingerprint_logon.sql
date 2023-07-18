ALTER TABLE `system_fingerprint_usage`
	ADD COLUMN `timeZoneId` INT(10) UNSIGNED NOT NULL AFTER `qpcData`;
