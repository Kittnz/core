DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20250217140849');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20250217140849');
-- Add your query below.

UPDATE `quest_end_scripts` SET `condition_id`=0 WHERE `id`=4974;
UPDATE `quest_end_scripts` SET `condition_id`=0 WHERE `id`=7782;
UPDATE `quest_end_scripts` SET `condition_id`=0 WHERE `id`=7784;
UPDATE `quest_end_scripts` SET `condition_id`=0 WHERE `id`=7496;
UPDATE `quest_end_scripts` SET `condition_id`=0 WHERE `id`=7491;

-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
