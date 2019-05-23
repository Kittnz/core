DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190523172847');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190523172847');
-- Add your query below.

REPLACE INTO `creature_template` VALUES (50073,0,9132,0,0,0,'Auctioneer Kuzzlin',NULL,0,50,50,3517,3517,2103,2103,2999,69,4096,1.1,1.14286,0,20,5,0,0,1,72,93,0,226,1,2000,2000,1,4096,0,0,0,0,0,0,66.44,91.355,100,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,0,3,0,0,0,0,0,10,'');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
