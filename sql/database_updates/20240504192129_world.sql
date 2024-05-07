ALTER TABLE `shop_items` 
ADD COLUMN `model_id` INT UNSIGNED NOT NULL DEFAULT 0 AFTER `item`;

ALTER TABLE `shop_items` 
ADD COLUMN `item_id` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `model_id`;


UPDATE `shop_items` SET `model_id` = '4805' WHERE (`id` = '121');


