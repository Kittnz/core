
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sha_pass_hash` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sessionkey` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `v` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `s` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tfa_verif` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `last_local_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `failed_logins` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(4) NOT NULL DEFAULT 0,
  `expansion` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mutetime` bigint(40) NOT NULL DEFAULT 0,
  `mutereason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `muteby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `locale` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `os` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `current_realm` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `banned` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `security` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass_verif` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Web recover password',
  `email_verif` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Email verification',
  `forum_username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `email_keyword` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_status` int(8) NULL DEFAULT NULL,
  `email_sub` tinyint(3) NOT NULL DEFAULT 1,
  `comments` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `geolock_pin` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE,
  INDEX `idx_gmlevel`(`rank`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Account System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for account_banned
-- ----------------------------
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE `account_banned`  (
  `banid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Account id',
  `bandate` bigint(40) NOT NULL DEFAULT 0,
  `unbandate` bigint(40) NOT NULL DEFAULT 0,
  `bannedby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banreason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `realm` tinyint(4) NOT NULL DEFAULT 1,
  `gmlevel` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `bandate`) USING BTREE,
  UNIQUE INDEX `banid`(`banid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Ban List' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for account_mailstatus
-- ----------------------------
DROP TABLE IF EXISTS `account_mailstatus`;
CREATE TABLE `account_mailstatus`  (
  `message_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` int(11) NULL DEFAULT NULL,
  `letterid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_mailstatus_archive
-- ----------------------------
DROP TABLE IF EXISTS `account_mailstatus_archive`;
CREATE TABLE `account_mailstatus_archive`  (
  `message_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` int(11) NULL DEFAULT NULL,
  `letterid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_twofactor_allowed
-- ----------------------------
DROP TABLE IF EXISTS `account_twofactor_allowed`;
CREATE TABLE `account_twofactor_allowed`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `account_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `expires_at` bigint(20) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for antispam_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `antispam_blacklist`;
CREATE TABLE `antispam_blacklist`  (
  `string` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`string`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for antispam_client
-- ----------------------------
DROP TABLE IF EXISTS `antispam_client`;
CREATE TABLE `antispam_client`  (
  `Regex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Note` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Regex`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for antispam_replacement
-- ----------------------------
DROP TABLE IF EXISTS `antispam_replacement`;
CREATE TABLE `antispam_replacement`  (
  `from` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `to` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`from`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for antispam_unicode_replacement
-- ----------------------------
DROP TABLE IF EXISTS `antispam_unicode_replacement`;
CREATE TABLE `antispam_unicode_replacement`  (
  `from` mediumint(5) UNSIGNED NOT NULL DEFAULT 0,
  `to` mediumint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`from`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` int(11) NOT NULL,
  `value` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for geoip
-- ----------------------------
DROP TABLE IF EXISTS `geoip`;
CREATE TABLE `geoip`  (
  `network_start_integer` int(11) NULL DEFAULT NULL,
  `network_last_integer` int(11) NULL DEFAULT NULL,
  `geoname_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `registered_country_geoname_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `represented_country_geoname_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_anonymous_proxy` int(11) NULL DEFAULT NULL,
  `is_satellite_provider` int(11) NULL DEFAULT NULL,
  `postal_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `accuracy_radius` int(11) NULL DEFAULT NULL,
  INDEX `ip_start`(`network_start_integer`) USING BTREE,
  INDEX `ip_end`(`network_last_integer`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ip_banned
-- ----------------------------
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE `ip_banned`  (
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.0.0.0',
  `bandate` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `bannedby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[Console]',
  `banreason` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`, `bandate`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Banned IPs' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Hash` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for realmcharacters
-- ----------------------------
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE `realmcharacters`  (
  `realmid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `acctid` bigint(20) UNSIGNED NOT NULL,
  `numchars` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`realmid`, `acctid`) USING BTREE,
  INDEX `acctid`(`acctid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Realm Character Tracker' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for realmlist
-- ----------------------------
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE `realmlist`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT 8085,
  `icon` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `realmflags` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by mangosd), 0x4 (show version and build), 0x20 (new players), 0x40 (recommended)',
  `timezone` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `allowedSecurityLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `population` float UNSIGNED NOT NULL DEFAULT 0,
  `realmbuilds` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '5875',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Realm System' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for shop_coins
-- ----------------------------
DROP TABLE IF EXISTS `shop_coins`;
CREATE TABLE `shop_coins`  (
  `id` int(10) UNSIGNED NOT NULL,
  `coins` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop_diff
-- ----------------------------
DROP TABLE IF EXISTS `shop_diff`;
CREATE TABLE `shop_diff`  (
  `guid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `accountid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `prev_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `query` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for statistics_online
-- ----------------------------
DROP TABLE IF EXISTS `statistics_online`;
CREATE TABLE `statistics_online`  (
  `guid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `online` int(8) UNSIGNED NULL DEFAULT 0,
  `online_alli` int(8) NULL DEFAULT 0,
  `online_horde` int(8) NULL DEFAULT 0,
  `connections` int(8) UNSIGNED NULL DEFAULT 0,
  `realm` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `date` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_fingerprint_usage
-- ----------------------------
DROP TABLE IF EXISTS `system_fingerprint_usage`;
CREATE TABLE `system_fingerprint_usage`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fingerprint` int(10) UNSIGNED NOT NULL,
  `account` int(10) UNSIGNED NOT NULL,
  `ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realm` int(10) UNSIGNED NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `architecture` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cputype` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activecpus` int(10) UNSIGNED NULL DEFAULT NULL,
  `totalcpus` int(10) UNSIGNED NULL DEFAULT NULL,
  `pagesize` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fingerprint`(`fingerprint`) USING BTREE,
  INDEX `account`(`account`) USING BTREE,
  INDEX `ip`(`ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for uptime
-- ----------------------------
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime`  (
  `realmid` int(11) UNSIGNED NOT NULL,
  `starttime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `startstring` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uptime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `onlineplayers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `maxplayers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `revision` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Turtle WoW',
  PRIMARY KEY (`realmid`, `starttime`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Uptime system' ROW_FORMAT = DYNAMIC;

/*Table structure for table `gp_history` */

DROP TABLE IF EXISTS `gp_history`;

CREATE TABLE `gp_history` (
  `account_id` int(11) unsigned NOT NULL,
  `code` varchar(256) NOT NULL,
  PRIMARY KEY (`account_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shop_coins_history` */

DROP TABLE IF EXISTS `shop_coins_history`;

CREATE TABLE `shop_coins_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL,
  `points` int(11) NOT NULL,
  `actual_points` int(11) NOT NULL,
  `new_points` int(11) NOT NULL,
  `type` varchar(256) NOT NULL,
  `system` varchar(256) NOT NULL,
  `reference` varchar(256) NOT NULL,
  `date` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

ALTER TABLE `account`
	ADD COLUMN `platform` VARCHAR(4) NOT NULL DEFAULT '' AFTER `os`;
	
	-- Add table for banned fingerprints.
DROP TABLE IF EXISTS `fingerprint_banned`;
CREATE TABLE IF NOT EXISTS `fingerprint_banned` (
  `fingerprint` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Fingerprint',
  `bandate` bigint(40) NOT NULL DEFAULT '0',
  `unbandate` bigint(40) NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  PRIMARY KEY (`fingerprint`,`bandate`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fingerprint Ban List';


-- Dumping structure for table realmd.antispam_blacklist
DROP TABLE IF EXISTS `antispam_blacklist`;
CREATE TABLE IF NOT EXISTS `antispam_blacklist` (
  `word` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping structure for table realmd.antispam_replacement
DROP TABLE IF EXISTS `antispam_replacement`;
CREATE TABLE IF NOT EXISTS `antispam_replacement` (
  `from` varchar(32) NOT NULL DEFAULT '',
  `to` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table realmd.antispam_replacement: 13 rows
INSERT INTO `antispam_replacement` (`from`, `to`) VALUES
	('\\\\/\\\\/', 'W'),
	('/\\/\\', 'M'),
	('0', 'O'),
	('...hic!', ''),
	('()', 'O'),
	('\\/\\/', 'W'),
	('/\\\\', 'A'),
	('VV', 'W'),
	('@', 'O'),
	('/V\\', 'M'),
	('/\\\\/\\\\', 'M'),
	('㎜', 'MM'),
	('!<', 'K');

-- Dumping structure for table realmd.antispam_scores
DROP TABLE IF EXISTS `antispam_scores`;
CREATE TABLE IF NOT EXISTS `antispam_scores` (
  `word` varchar(32) NOT NULL DEFAULT '',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table realmd.antispam_scores: 58 rows
INSERT INTO `antispam_scores` (`word`, `score`, `type`) VALUES
	('>>', 1, 1),
	('<<', 1, 1),
	('5OG', 1, 1),
	('$', 2, 1),
	('MOTANK', 4, 0),
	('\\\\', 2, 1),
	('ACOUNT', 1, 0),
	('CHEAP', 2, 0),
	('LEVELING', 1, 0),
	('LEVLING', 1, 0),
	('LEVILING', 1, 0),
	('LVLING', 1, 0),
	('SAFE', 1, 0),
	('SERVICE', 1, 0),
	('NOST', 1, 0),
	('COM', 1, 0),
	('PRICE', 2, 0),
	('GOLD', 2, 0),
	('SKYPE', 2, 0),
	('EPIC', 2, 0),
	('DOLARS', 2, 0),
	('PROFESIONAL', 2, 0),
	('RELIABLE', 2, 0),
	('PROMOTION', 2, 0),
	('DELIVER', 2, 0),
	('NAX', 2, 0),
	('GAMES', 2, 0),
	('GRETINGS', 2, 0),
	('WEBSITE', 2, 0),
	('GOID', 2, 0),
	('ITEM4', 5, 1),
	('1OO', 2, 1),
	('POWER', 1, 0),
	('SELGOLD', 2, 0),
	('FAST', 1, 0),
	('25G', 2, 1),
	('981526249', 3, 1),
	('XIAOYUAN9921521', 3, 1),
	('MANFARM', 1, 1),
	('USD', 2, 0),
	('GWOW', 3, 0),
	('EUR', 2, 0),
	('80G', 1, 1),
	('OKO', 1, 0),
	('G4', 2, 1),
	('2OG', 1, 1),
	('MSD', 3, 0),
	('3VV', 3, 1),
	('3W', 2, 1),
	('SELL', 1, 1),
	('WVWOKO', 4, 0),
	('G=$', 3, 1),
	('1OG', 1, 0),
	('COIN', 0, 1),
	('P0VVER', 2, 1),
	('IEVEIING', 2, 1),
	('GO1D', 2, 1),
	('POWERLEVELING', 2, 0);

-- Dumping structure for table realmd.antispam_unicode
DROP TABLE IF EXISTS `antispam_unicode`;
CREATE TABLE IF NOT EXISTS `antispam_unicode` (
  `from` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `to` mediumint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table realmd.antispam_unicode: 42 rows
INSERT INTO `antispam_unicode` (`from`, `to`) VALUES
	(1063, 52),
	(1054, 79),
	(1057, 67),
	(1052, 77),
	(927, 79),
	(1050, 75),
	(913, 65),
	(917, 69),
	(1062, 85),
	(9675, 79),
	(1040, 65),
	(1058, 84),
	(1064, 87),
	(1025, 69),
	(1055, 78),
	(1065, 87),
	(922, 75),
	(924, 77),
	(1045, 69),
	(968, 87),
	(192, 65),
	(210, 79),
	(211, 79),
	(242, 79),
	(324, 78),
	(328, 78),
	(332, 79),
	(466, 79),
	(59336, 78),
	(12562, 84),
	(8745, 78),
	(65325, 77),
	(959, 79),
	(945, 65),
	(954, 75),
	(12295, 79),
	(65323, 75),
	(65296, 79),
	(65355, 75),
	(65357, 77),
	(65319, 71),
	(925, 78);

-- add table for auto banning fingerprints
CREATE TABLE IF NOT EXISTS `fingerprint_autoban` (
  `fingerprint` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `banreason` varchar(255) NOT NULL,
  PRIMARY KEY (`fingerprint`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fingerprint Ban List';

-- fingerprints from discord log
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (149392107, 'duck');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (222393403, 'hacks2');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (957965474, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (1046341544, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (1155010007, 'duck2');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (1302404417, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (2009228929, 'hacks');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (2162373540, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (2410606283, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (3876728909, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (4134214259, 'gs');


SET FOREIGN_KEY_CHECKS = 1;

-- Apply manually:

/*
CREATE FUNCTION `account_balance_update`(`AccountID` int,`Price` int)
 RETURNS int
BEGIN
    SELECT `coins` INTO @CoinCount FROM `shop_coins` WHERE `id`= AccountID FOR UPDATE;
    IF @CoinCount >= Price THEN
        UPDATE `shop_coins` SET `coins` = `coins` - Price WHERE `id` = AccountID;
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
    RETURN 0;
END;
*/

