-- Change id of Thornpod to be below uint16 limit.
UPDATE `character_inventory` SET `item_template`=62008 WHERE `item_template`=80757;
UPDATE `item_instance` SET `itemEntry`=62008 WHERE `itemEntry`=80757;
