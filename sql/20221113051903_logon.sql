ALTER TABLE `account`
	ADD COLUMN `platform` VARCHAR(4) NOT NULL DEFAULT '' AFTER `os`;
