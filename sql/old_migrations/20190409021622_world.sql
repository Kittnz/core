DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190409021622');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190409021622');
-- Add your query below.

delete from npc_text where id = 14873;
replace into `npc_text` (`ID`, `BroadcastTextID0`) values
(14873, 90200),
(14873, 90201),
(14873, 90202),
(14873, 90203),
(14873, 90204),
(14873, 90205),
(14873, 90206);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
