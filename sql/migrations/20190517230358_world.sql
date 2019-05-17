DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190517230358');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190517230358');
-- Add your query below.

update quest_template set objectives = 'Bring 16 Satyr Horns to Illiyana in the Shrine of Aessina.' where entry = 1032;
update quest_template set objectives = 'Go to the Howling Vale and study the Tome of Mel\'Thandris, then return to Sentinel Melyria Frostshadow at the Shrine of Aessina.' where entry = 1022;
update quest_template set objectives = 'Kill Geltharis and return the Branch of Cenarius to Illiyana at the Shrine of Aessina.' where entry = 1031;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
