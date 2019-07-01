DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190607194236');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190607194236');
-- Add your query below.

-- Baby Kodo pet:
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(50240, 15, 2, 'Kodo Calfling', '', 31802, 1, 1, 28505, 1500);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('50077', '12240', 'Kodo Calfling', '', '1', '1', '64', '64', '35', '', 0.2);
replace into custom_pet_entry_relation (item_entry, creature_entry) values ('50240', '50077');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
