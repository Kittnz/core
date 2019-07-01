DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190606165339');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190606165339');
-- Add your query below.



replace into broadcast_text (ID, MaleText) values
('90003', 'Pssst... I can make you hide who you really are with some fake papers if you bring me 5 gold.');
replace into npc_text (ID, BroadcastTextID0) values ('90003', '90003');

replace into creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, scale, faction, npc_flags, script_name) values
(50073, 'Clyde "The Shaddy"', 'Wheeler-dealer', 2639, 60, 60, 12761, 12761, 1, 85, 1, 'title_masker'),
(50074, 'Bustus "The Rascal"', 'Wheeler-dealer', 5908, 60, 60, 12761, 12761, 1, 11, 1, 'title_masker');

update creature_template set faction = 85 where entry = 50054;
update creature_template set faction = 11 where entry = 50053;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
