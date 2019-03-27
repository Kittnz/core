DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190327233117');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190327233117');
-- Add your query below.

update item_template set display_id = 8119, name = 'Reindeer Reins', required_level = 40, required_skill = 762, required_skill_rank = 75, max_count = 1 where entry = 21044;
update item_template set allowable_race = -1 where entry in (13322, 13323, 13324, 13325);
update item_template set name = 'Hardcore Master\'s Tabard' where entry = 19160;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
