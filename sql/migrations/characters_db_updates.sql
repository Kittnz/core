DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200107170001');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200107170001');

DROP TABLE IF EXISTS `bounty_quest_targets`;
CREATE TABLE `bounty_quest_targets` (
  `id` int(5) unsigned NOT NULL DEFAULT '1',
  `horde_player` int(15) unsigned NOT NULL DEFAULT '0',
  `alliance_player` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `character_transmog`;
CREATE TABLE `character_transmog` (
  `itemguid` int(18) unsigned NOT NULL,
  `fakeentry` int(11) NOT NULL,
  `ownerguid` int(11) NOT NULL,
  `oldentry` int(11) NOT NULL,
  `newentry` int(11) NOT NULL,
  PRIMARY KEY (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
