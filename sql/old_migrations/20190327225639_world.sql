DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190327225639');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190327225639');
-- Add your query below.

replace into spell_mod (id, CastingTimeIndex) values
-- All Tallstriders mounts have 3 seconds of casting time now:
(10800, 14),
(10801, 14),
(8396,  14),
(10802, 14),
(10803, 14),
(10804, 14),
(25675, 14); -- Reindeer Reins

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
