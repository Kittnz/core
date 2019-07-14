DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190714015715');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190714015715');
-- Add your query below.

update creature set position_x = -11017.14, position_y = -1884.88, position_z = 49.83, orientation = 2.37 where guid = 4008;
update creature set position_x = -11002.20, position_y = -1913.02, position_z = 49.95, orientation = 4.57 where guid = 4007;
update creature set position_x = -11984.88, position_y = -1958.80, position_z = 42.14, orientation = 0.42 where guid = 4148;

-- Fix gossip option for Torwa Pathfinder.
UPDATE `gossip_menu_option` SET `action_menu_id` = 2201 WHERE `menu_id` = 2188 AND `id` = 0 AND `action_menu_id` = 2189;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(2201, 2835, 0);

-- Molten War Golem should have massive frost vulnerability.
-- https://www.wowhead.com/npc=8908/molten-war-golem#comments
-- Assuming the giant hits reported in wowhead comments were a
-- wotlk bug, because they are all from 2009/2010.
UPDATE `creature_template` SET `frost_res`=-140 WHERE `entry`=8908;

-- Tar mobs should have fire vulnerability.
-- https://classic.wowhead.com/npc=6517/tar-beast#comments
-- https://classic.wowhead.com/npc=6527/tar-creeper#screenshots
-- https://classic.wowhead.com/npc=6519/tar-lord#comments
-- https://classic.wowhead.com/npc=6518/tar-lurker#comments
UPDATE `creature_template` SET `fire_res`=-51 WHERE `entry` IN (6518, 6519, 6527, 6517);

-- Creatures with vulnerability in cmangos db.
UPDATE `creature_template` SET `frost_res`=-52 WHERE `entry`=8909;
UPDATE `creature_template` SET `fire_res`=-58 WHERE `entry`=11461;
UPDATE `creature_template` SET `fire_res`=-55 WHERE `entry`=11462;
UPDATE `creature_template` SET `fire_res`=-56 WHERE `entry`=11464;
UPDATE `creature_template` SET `fire_res`=-58 WHERE `entry`=11465;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11664;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11666;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11667;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=11668;
UPDATE `creature_template` SET `frost_res`=-93 WHERE `entry`=12143;
UPDATE `creature_template` SET `frost_res`=-186 WHERE `entry`=12265;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
