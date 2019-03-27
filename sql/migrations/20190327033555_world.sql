DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190327033555');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190327033555');
-- Add your query below.

-- Turtle WoW custom battlemasters:
	
replace into `broadcast_text` (`ID`, `MaleText`) values
('90100', 'Greetings, $GLord:Lady; Turtle $N!\n\nWe need your help defending our lands from the encroaching invaders!\n\nTake my hand, and I will guide you to the battlefield.');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90100', '90100');

replace into `broadcast_text` (`ID`, `MaleText`) values
('90101', 'Transport to the battlefield is on its way! Slow and steady wins the race. Stand by!');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90101', '90101');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
