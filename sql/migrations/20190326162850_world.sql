DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190326162850');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190326162850');
-- Add your query below.

-- Arena NPCs:
update creature_template set npc_flags = 1    where entry = 50015;
update creature_template set script_name = '' where entry = 50016;
-- Arena Spirit Guides:
update creature_template set npc_flags=65 where entry=13116;
update creature_template set npc_flags=65 where entry=13117;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
