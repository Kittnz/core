ALTER TABLE `account` CHANGE COLUMN `gmlevel` `rank` INT UNSIGNED NOT NULL DEFAULT '0' ;

DROP TABLE `account_access`;
