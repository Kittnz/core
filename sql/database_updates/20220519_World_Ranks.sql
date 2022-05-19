CREATE TABLE `staff_ranks` (
  `bit_index` INT UNSIGNED NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`bit_index`),
  UNIQUE INDEX `bit_index_UNIQUE` (`bit_index` ASC),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC));

ALTER TABLE `command` 
DROP COLUMN `flags`,
DROP COLUMN `help`,
CHANGE COLUMN `security` `rank` VARCHAR(20) NOT NULL DEFAULT '0' ;

CREATE TABLE `staff_ranks` (
  `bit_index` INT UNSIGNED NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`bit_index`),
  UNIQUE INDEX `bit_index_UNIQUE` (`bit_index` ASC),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC));
  
ALTER TABLE `realmlist` 
CHANGE COLUMN `allowedSecurityLevel` `allowedSecurityLevel` INT UNSIGNED NOT NULL DEFAULT '0' ;

UPDATE `mangos_string` SET `content_default` = 'Your account level is: %s', `content_loc2` = 'Votre niveau de compte est: %s' WHERE (`entry` = '11');