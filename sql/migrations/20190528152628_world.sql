DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190528152628');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190528152628');
-- Add your query below.

update item_template set buy_price = 10000, sell_price = 2500, required_reputation_faction = 0, required_reputation_rank = 0, script_name = 'bg_tabard', spellid_1 = 26489, description = 'Fight for the Warsong Gulch! Use it to join the battle.' where entry in (19505, 19506);
update item_template set buy_price = 50000, sell_price = 12500, required_reputation_faction = 0, required_reputation_rank = 0, script_name = 'bg_tabard', spellid_1 = 26489, description = 'Fight for the Arathi Basin! Use it to join the battle.', required_level = 10 where entry in (20131, 20132);
update item_template set buy_price = 100000, sell_price = 25000, required_reputation_faction = 0, required_reputation_rank = 0, script_name = 'bg_tabard', spellid_1 = 26489, description = 'Fight for the Alterac Valley! Use it to join the battle.', required_level = 51 where entry in (19031, 19032);

replace into npc_vendor (entry, item) values
(50000, 19505),
(50000, 20131),
(50000, 19031);

replace into npc_vendor (entry, item) values
(50001, 19506),
(50001, 20132),
(50001, 19032);

update creature_template set npc_flags = 5 where entry in (50000, 50001);
update creature_template set faction = 85, vendor_id = 50000 where entry = 50000;
update creature_template set faction = 11, vendor_id = 50001 where entry = 50001;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
