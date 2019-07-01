DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190621151151');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190621151151');
-- Add your query below.

delete from creature_ai_events where creature_id = 5089;
delete from creature_ai_scripts where id in (508901, 508902, 508903, 508904);
update creature_template set script_name = 'npc_balos_jacken' where entry = 5089;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
