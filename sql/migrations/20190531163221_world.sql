DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190531163221');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190531163221');
-- Add your query below.

update broadcast_text set MaleText = 'Hmmm... This apple is great! *nom* *nom* Take me to my friend and MAYBE I\'ll let you ride me. Let\'s go!' where id = 90018;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
