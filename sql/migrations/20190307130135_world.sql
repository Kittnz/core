DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190307130135');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190307130135');
-- Add your query below.

-- Script field for item_templates:

ALTER TABLE item_template
  DROP COLUMN IF EXISTS script_name;
ALTER TABLE item_template
  ADD script_name VARCHAR(255);

-- ### Any custom item on Turtle WoW should remain in 50000-51000 entry range. 
-- ### If you insert something in the middle I will find you and hurt you.

-- [Character Name Change]:

DELETE FROM `item_template` WHERE `entry` = '50000';
INSERT INTO `item_template` (`entry`, `name`, `description`) VALUES ('50000', 'Character Name Change', 'Right click to use. You will be requested to choose a new name on your next login.');

-- Common quality:

UPDATE `item_template` SET `quality`='1' WHERE `entry`='50000';

-- Nice glowing effect & 'Blizzard' DisplayID:

UPDATE `item_template` SET `spellid_1`='1575' WHERE `entry`='50000'; 
UPDATE `item_template` SET `display_id`='30658' WHERE `entry`='50000';

-- Destroy after the first usage:

UPDATE `item_template` SET `spellcharges_1`='-1' WHERE `entry`='50000';

-- Attach item script:

UPDATE `item_template` SET `script_name`='character_rename' WHERE `entry`='50000';

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
