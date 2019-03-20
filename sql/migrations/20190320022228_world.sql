DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190320022228');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190320022228');
-- Add your query below.

-- Custom companion templates:

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('50035', '15901', 'Blitzen', '', '1', '1', '64', '64', '35', '', 0.3),
('50036', '12074', 'Bone Golem', '', '1', '1', '64', '64', '35', '', 0.5),
('50037', '2878',  'Mini Krampus', '', '1', '1', '64', '64', '35', '', 0.3),
('50039', '16357',  'Black Piglet', '', '1', '1', '64', '64', '35', '', 0.5);

-- Functional companions, or scprited:

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, npc_flags, scale) values
('50038', '15374',  'Moonkin Hatchling', '', '1', '1', '64', '64', '35', 'npc_scripted_companion', 0, 0.3),
('50040', '16075',  'Forworn Mule', '', '1', '1', '64', '64', '35', '', 256, 0.45),
('50041', '14379',  'Field Repair Bot 75B', '', '1', '1', '64', '64', '35', '', 16389, 0.5);
('50042', '14379',  'Mechanical Auctioneer', '', '1', '1', '64', '64', '35', '', 16389, 0.5); -- TODO: SET THE RIGHT FLAG

-- Custom pet/item entry relation:

replace into custom_pet_entry_relation (item_entry, creature_entry) values
('50014', '50035'), -- Blitzen
('50013', '50036'), -- Bone Golem
('50006', '50037'), -- Mini Krampus
('50019', '50038'), -- Moonkin Hatchling
('50058', '50039'), -- Black Piglet
('50007', '50040'), -- Forworn Mule
('50005', '50041'), -- Field Repair Bot 75B !!! Flag 16389 doesn't work, check why, later.
('50009', '50042'), -- Mechanical Auctioneer

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
