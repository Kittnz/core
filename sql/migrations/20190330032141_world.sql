DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190330032141');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190330032141');
-- Add your query below.

update item_template set bonding = 0, stackable = 20, buy_price = 500, sell_price = 250, buy_count = 1, spellcharges_1 = -1, spellcooldown_1 = 1000, delay = 0, subclass = 0 where entry in (50020, 50021);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
