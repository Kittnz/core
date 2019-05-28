DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190528152628');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190528152628');
-- Add your query below.

update item_template set buy_price = 10000, sell_price = 2500, required_reputation_faction = 0, required_reputation_rank = 0, script_name = 'wsg_tabard', spellid_1 = 26489, description = 'Fight for the Warsong Gulch! Use it to join the battle.' where entry in (19505, 19506);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
