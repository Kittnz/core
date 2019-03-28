DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190312223642');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190312223642');
-- Add your query below.

create table if not exists custom_pet_entry_relation (
	item_entry mediumint(8) unsigned not null default 0 primary key,
	creature_entry mediumint(8) unsigned not null default 0
);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
