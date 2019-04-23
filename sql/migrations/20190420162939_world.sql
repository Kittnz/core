DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190420162939');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190420162939');
-- Add your query below.

replace into gameobject_template (entry, type, displayid, name, size, faction) values
(7000030, 2, 1408, 'Strangely Giant Egg', 3.2, 35);

replace into quest_template (entry, method, zoneorsort, title, offerrewardtext, rewitemid1, rewitemcount1) values
(50227, 0, -374, 'Strangely Giant Egg', 'Something big and already grown is coming from the inside...', 50071, 1);

replace into gameobject_involvedrelation (id, quest) values
(7000030, 50227);
replace into gameobject_questrelation (id, quest) values
(7000030, 50227);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
