DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20250307131314');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20250307131314');
-- Add your query below.

ALTER TABLE `characters`
	ADD COLUMN `total_deaths` INT(11) NULL DEFAULT '0' AFTER `world_phase_mask`;

CREATE TABLE IF NOT EXISTS `player_level_rewards` (
  `id` INT(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` tinyint(3) unsigned NOT NULL,
  `item_id` mediumint(8) unsigned NOT NULL,
  `item_count` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `mail_subject_entry` mediumint(8) unsigned NOT NULL,
  `mail_text_entry` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Add entries to mangos_string table
REPLACE INTO `mangos_string` (`entry`, `content_default`) VALUES 
(5000, 'Level 10 Hardcore Reward'),
(5001, 'Congratulations on reaching level 10 without dying! Here is your reward.'),
(5002, 'Level 20 Hardcore Reward'),
(5003, 'Congratulations on reaching level 20 without dying! Here is your reward.'),
(5004, 'Level 30 Hardcore Reward'),
(5005, 'Congratulations on reaching level 30 without dying! Here is your reward.'),
(5006, 'Level 40 Hardcore Reward'),
(5007, 'Congratulations on reaching level 40 without dying! Here is your reward.'),
(5008, 'Level 50 Hardcore Reward'),
(5009, 'Congratulations on reaching level 50 without dying! Here is your reward.'),
(5010, 'Level 60 Hardcore Reward'),
(5011, 'Congratulations on reaching level 60 without dying! Here is your reward.');

-- Add entries to player_level_rewards table
REPLACE INTO `player_level_rewards` (`level`, `item_id`, `item_count`, `mail_subject_entry`, `mail_text_entry`) VALUES
(10, 20725, 1, 5000, 5001),
(10, 20726, 1, 5000, 5001),
(20, 20727, 1, 5002, 5003),
(30, 20728, 1, 5004, 5005),
(40, 20729, 1, 5006, 5007),
(50, 20730, 1, 5008, 5009),
(60, 20731, 1, 5010, 5011),
(60, 20732, 1, 5010, 5011);

-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
