UPDATE account acc
INNER JOIN account_access acs ON acc.id = acs.id
SET acc.gmlevel = acs.gmlevel;

ALTER TABLE `account` 
CHANGE COLUMN `gmlevel` `rank` INT UNSIGNED NOT NULL DEFAULT '0' ;

DROP TABLE `account_access`;

ALTER TABLE `realmlist` 
CHANGE COLUMN `allowedSecurityLevel` `allowedSecurityLevel` INT UNSIGNED NOT NULL DEFAULT '0' ;
