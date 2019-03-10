DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190309225759');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190309225759');
-- Add your query below.

-- [Bloody Coin], new currency for Turtle WoW Arena Tournament:

delete from item_template where entry = 50015;

insert into item_template (entry, class, subclass, name, description, display_id, quality, stackable, bonding) values
(50015, 0, 15, 'Bloody Coin', 'Local currency used in some bloody events.', 32277, 1, 200, 1);

-- TODO: vendors, ambassador, spectators, spirit guides, quests, questrelations, textes!

-- ##################### -------------------- IMPORTANT -------------------- ##################### --
-- Any custom creature/quest/item DB entry on Turtle WoW should remain in 50000-51000 entry range.
-- Custom npc_text and broadcast_text entries are being saved in 90000-91000 entry range.
-- EXAMPLE: #define ARENA_AMBASSADOR_INVITATION_TEXT 90002
-- ##################### -------------------- IMPORTANT -------------------- ##################### --

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
