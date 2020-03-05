DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200107170001');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200107170001');

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
