DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190413023754');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190413023754');
-- Add your query below.

UPDATE `npc_vendor` SET `maxcount`='0', `incrtime`='0' WHERE (`entry`='10216') AND (`item`='6256');
UPDATE `npc_vendor` SET `maxcount`='0', `incrtime`='0' WHERE (`entry`='10216') AND (`item`='6529');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
