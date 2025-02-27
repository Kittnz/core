DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20250227190531');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20250227190531');
-- Add your query below.

CREATE TABLE IF NOT EXISTS `character_aura_suspended` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier',
  `item_guid` int(10) unsigned NOT NULL DEFAULT 0,
  `spell` int(10) unsigned NOT NULL DEFAULT 0,
  `stackcount` int(10) unsigned NOT NULL DEFAULT 1,
  `remaincharges` int(10) unsigned NOT NULL DEFAULT 0,
  `basepoints0` int(11) NOT NULL DEFAULT 0,
  `basepoints1` int(11) NOT NULL DEFAULT 0,
  `basepoints2` int(11) NOT NULL DEFAULT 0,
  `periodictime0` int(10) unsigned NOT NULL DEFAULT 0,
  `periodictime1` int(10) unsigned NOT NULL DEFAULT 0,
  `periodictime2` int(10) unsigned NOT NULL DEFAULT 0,
  `maxduration` int(11) NOT NULL DEFAULT 0,
  `remaintime` int(11) NOT NULL DEFAULT 0,
  `effIndexMask` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC COMMENT='Player System';


-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
