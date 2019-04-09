DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190409040837');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190409040837');
-- Add your query below.

-- Update Barrel of Milk to match oldest wowwiki entry:  https://wowwiki.fandom.com/wiki/Barrel_of_Milk?oldid=1343076
UPDATE `gameobject_loot_template` SET `maxcount`='5' WHERE (`entry`='2579') AND (`item`='1179');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
