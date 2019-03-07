DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190307125619');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190307125619');
-- Add your query below.

-- Correct EnchID for Shimmering Gloves
DELETE FROM `item_enchantment_template` WHERE `entry` = '6565' AND `ench` = '878';
INSERT INTO `item_enchantment_template` (`entry`, `ench`, `chance`) VALUES ('6565', '878', '2.85');

-- Returned Shimmering Gloves to its vendor Zizzek: http://classicdb.ch/?npc=3572
DELETE FROM `npc_vendor` WHERE `entry` = '3572' AND `item` = '6565';
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('3572', '6565', '1', '7200');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
