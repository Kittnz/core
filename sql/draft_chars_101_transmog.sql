DROP TABLE `character_transmog`;

ALTER TABLE `item_instance` ADD COLUMN `transmogrifyId` INT(11) UNSIGNED DEFAULT 0 NOT NULL AFTER `randomPropertyId`;
