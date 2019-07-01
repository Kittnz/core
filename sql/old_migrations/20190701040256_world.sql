DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190701040256');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190701040256');
-- Add your query below.

replace into creature_template (entry, name, subname, scale, level_min, level_max, health_min, health_max, display_id1, faction, type, inhabit_type, npc_flags) values
(50081, 'Moorahn Bloodhoof', 'Thunderbluff Brave Recruiter', 1, 20, 20, 1120, 1120, 15318, 85, 7, 3, 4),
(50082, 'Du\'gar Warface', 'Orgrimmar Grunt Recruiter', 1, 20, 20, 1120, 1120, 13592, 85, 7, 3, 4),
(50083, 'Aerys Jonar', 'Deathguard Recruiter', 1, 20, 20, 1120, 1120, 9999 , 85, 7, 3, 4),

(50084, 'Gorden Silverbeard',  'Ironforge Guard Recruiter', 1, 20, 20, 1120, 1120, 3089, 11, 7, 3, 4),
(50085, 'Meredith McCay',  'Stormwind Guard Recruiter', 1, 20, 20, 1120, 1120, 12919, 11, 7, 3, 4),
(50086, 'Alynn Moonfall',  'Darnassus Sentinel Recruiter', 1, 20, 20, 1120, 1120, 12931, 11, 7, 3, 4), 
(50087, 'Bonkle Tinkspark',  'Gnomeregan Reclamation Recruiter', 1, 20, 20, 1120, 1120, 12940, 11, 7, 3, 4);

replace into npc_vendor (entry, item) values 
(50081, 50390), -- Thunder Bluff
(50082, 50389), -- Orgrimmar
(50083, 50387), -- Undercity
(50084, 50380), --  Ironforge
(50085, 50381), -- Stormwind
(50086, 50385), -- Darnassus
(50087, 50391); -- Gnomeregan

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
