DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190721003111');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190721003111');
-- Add your query below.

update creature set position_x = 152.40, position_y = -443.52 where guid = 41877;
update creature set position_x = -5534.72, position_y = -1349.27, position_z = 398.769, orientation = 4.74149 where guid = 4148;
update creature set position_x = -10980.58, position_y = -1968.36, position_z = 39.92, orientation = 1.27 where guid = 4009;
update creature_template set movement_type = 0 where entry = 10429;

UPDATE `mangos_string` SET `content_default`='|cff00FF80A voice in your head:|cff66FFFF %s|r' WHERE `entry`='3';

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
