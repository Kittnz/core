ALTER TABLE `shop_categories` ADD `icon` VARCHAR(32) NOT NULL DEFAULT 'default' AFTER `name`;
ALTER TABLE `shop_items` ADD `descriptionLong` VARCHAR(1024) NOT NULL DEFAULT '' AFTER `price`;