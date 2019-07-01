DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190628121932');
IF v=0 THEN
replace into `migrations` VALUES ('20190628121932');
-- Add your query below.

replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, bonding, script_name) VALUES
(50499, 'Goblin\'s Pocket Watch', 'Time is money, friend!', 2820, 3, 31726, 3600000, 1, 'golden_pocket_watch');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
