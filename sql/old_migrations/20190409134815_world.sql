DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190409134815');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190409134815');
-- Add your query below.

delete from npc_text where id = 14873;
delete from broadcast_text where id >= 90200 and id <= 90206;
-- Apparently Barrel of Milk contained between 1 - 5 Ice Cold Milk after the launch of TBC, but it contained between 2 - 5 in Vanilla.
-- https://classic.wowhead.com/object=3705/barrel-of-milk#contains
update gameobject_loot_template set mincountorref = 2 where entry = 2579 and item = 1179;

-- Reese Langston correct location
update creature set position_x = -8606.067383, position_y = 384.018585, position_z = 102.923492, orientation = 3.815424 where guid = 79751;
-- Cenarion Emissary Blackhoof correct location
update creature set position_x = 1658.71, position_y = -4348.8, position_z = 29.2574, orientation = 4.39823, spawntimesecsmin = 300, spawntimesecsmax = 300 where guid = 6504;

-- Drop BG player requirements and allow AB and WSG at level 1.
update battleground_template set min_level = 1, max_level = 60,  min_players_per_team = 1 where id = 2 and patch > 0;
update battleground_template set min_level = 1, max_level = 60,  min_players_per_team = 2 where id = 3 and patch > 0;
update battleground_template set min_players_per_team = 5 where id = 1 and patch > 0;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
