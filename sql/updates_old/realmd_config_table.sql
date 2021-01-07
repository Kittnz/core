CREATE TABLE IF NOT EXISTS `config` (
  `id` INT NOT NULL,
  `value` VARCHAR(45) NULL,
  `comment` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

INSERT INTO `config` (`id`, `value`, `comment`) VALUES ('1', '2048', 'Patch download speed limit. Number of Kbytes per client');