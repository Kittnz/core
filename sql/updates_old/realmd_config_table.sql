CREATE TABLE `config` (
  `id` INT NOT NULL,
  `value` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `config` 
ADD COLUMN `comment` VARCHAR(45) NULL AFTER `value`;

INSERT INTO `config` (`id`, `value`, `comment`) VALUES ('1', '2048', 'Patch download speed limit. Number of Kbytes per client');
