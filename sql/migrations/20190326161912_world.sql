DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190326161912');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190326161912');
-- Add your query below.

insert ignore into npc_vendor (entry, item, maxcount, incrtime) values
(2120, 5110, 1, 1200);
update creature_template set npcflag = 4 where entry = 2120;

insert into npc_vendor (entry, item) values
(50029, 50020),
(50029, 50021),
(50030, 50020),
(50030, 50021);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
