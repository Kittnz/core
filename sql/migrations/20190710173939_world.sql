DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190710173939');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190710173939');
-- Add your query below.

replace into broadcast_text (ID, MaleText) values
('90002', 'What... What is this place? Am I alive?');
replace into npc_text (ID, BroadcastTextID0) values ('90002', '90002');
replace into broadcast_text (ID, MaleText) values
('90004', 'Kid, this ain\'t your daily stroll on the beach shore y\'know, there\'s a bloodbath ahead at the Gurubashi Arena! Stranglethorn Vale ain\'t called resort and spa \'round \'ere.');
replace into npc_text (ID, BroadcastTextID0) values ('90004', '90004');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
