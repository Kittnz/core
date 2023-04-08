ALTER TABLE `antispam_blacklist`
	ADD COLUMN `regex` TINYINT NOT NULL DEFAULT '0' AFTER `word`;



