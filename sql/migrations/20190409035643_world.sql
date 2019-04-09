DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190409035643');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190409035643');
-- Add your query below.

-- Add Text and wait times to Okla Pathing
UPDATE `creature_movement` SET `waittime`='21000', `script_id`='5907', `textid1`='10274' WHERE (`id`='13179') AND (`point`='2');
UPDATE `creature_movement` SET `waittime`='10000', `textid1`='10277' WHERE (`id`='13179') AND (`point`='13');
UPDATE `creature_movement` SET `waittime`='10000', `textid1`='10278' WHERE (`id`='13179') AND (`point`='18');
UPDATE `creature_movement` SET `waittime`='10000', `textid1`='10279' WHERE (`id`='13179') AND (`point`='24');
UPDATE `creature_movement` SET `waittime`='10000', `textid1`='10280' WHERE (`id`='13179') AND (`point`='29');
UPDATE `creature_movement` SET `waittime`='10000', `textid1`='10281' WHERE (`id`='13179') AND (`point`='35');

-- Only neccessary to prevent errors if ran multiple times because table has no primary key, otherwise should do nothing
delete from `creature_movement_scripts` where id=5907;
-- Script for Okla Pathing - Kranal Fiss's Response
replace INTO `creature_movement_scripts` (`id`, `delay`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `comments`) VALUES 
('5907', '3', '5907', '30', '8', '3', '10275', 'Okla Pathing - Kranal Fiss Say Text'),
('5907', '7', '14873', '30', '8', '3', '10276', 'Okla Pathing - Okla Reply to Kranal Say Text');

-- Pathing for Kranal Fiss -- it ignores some of the longer decimals, oh well
replace INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
('13174', '1', '265.967', '-3050.67', '96.9215'),
('13174', '2', '263.671661', '-3047.959961', '96.665161'),
('13174', '3', '260.557739', '-3038.177002', '96.740677'),
('13174', '4', '262.354950', '-3036.125732', '96.990982'),
('13174', '5', '261.470215', '-3036.779541', '96.961708'),
('13174', '6', '259.890106', '-3038.696045', '96.572845'),
('13174', '7', '265.967468', '-3050.672363', '96.921516'),
('13174', '8', '265.967000', '-3050.670000', '96.921500');
UPDATE `creature_movement` SET `waittime`='60000' WHERE (`id`='13174') AND (`point`='5');
UPDATE `creature_movement` SET `waittime`='30000' WHERE (`id`='13174') AND (`point`='8');

-- Repositioning and enable pathing on Kranal Fiss
UPDATE `creature` SET `position_x`='265.967', `position_y`='-3050.67', `position_z`='96.9215', `orientation`='3.764', `MovementType`='2' WHERE (`guid`='13174');

-- Repositioning Okla
UDATE `creature` SET `position_x`='280.125', `position_y`='-3029.01', `position_z`='97.3502',  WHERE (`guid`='13179');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
