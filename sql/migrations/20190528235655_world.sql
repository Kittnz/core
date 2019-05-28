DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190528235655');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190528235655');
-- Add your query below.

update quest_template set nextquestinchain = 3579 where entry = 3578;
update quest_template set nextquestinchain = 3580 where entry = 3579;
update quest_template set nextquestinchain = 3581 where entry = 3580;
update quest_template set rewspell = 12566, rewspellcast = 12821 where entry = 3581;
update quest_template set limittime = 390 where entry = 3581;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
