CREATE TABLE IF NOT EXISTS `staff_ranks` (
  `bit_index` INT UNSIGNED NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`bit_index`),
  UNIQUE INDEX `bit_index_UNIQUE` (`bit_index` ASC),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC));

DROP TABLE IF EXISTS `command`;

CREATE TABLE IF NOT EXISTS `command` (
  `name` VARCHAR(50) NOT NULL,
  `rank` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC));   

CREATE TABLE IF NOT EXISTS `staff_ranks` (
  `bit_index` INT UNSIGNED NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`bit_index`),
  UNIQUE INDEX `bit_index_UNIQUE` (`bit_index` ASC),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC));
  
UPDATE `mangos_string` SET `content_default` = 'Your account level is: %s', `content_loc2` = 'Votre niveau de compte est: %s' WHERE (`entry` = '11');