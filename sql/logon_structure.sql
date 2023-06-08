-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.53 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4998
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table tw_logon.account
DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL,
  `sha_pass_hash` varchar(40) NOT NULL,
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `sessionkey` longtext,
  `v` longtext,
  `s` longtext,
  `email` text,
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tfa_verif` varchar(255) DEFAULT NULL,
  `last_ip` varchar(30) NOT NULL DEFAULT '0.0.0.0',
  `last_local_ip` varchar(30) NOT NULL DEFAULT '0.0.0.0',
  `failed_logins` int(11) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(4) NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mutetime` bigint(40) NOT NULL DEFAULT '0',
  `mutereason` varchar(255) NOT NULL DEFAULT '',
  `muteby` varchar(50) NOT NULL DEFAULT '',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(4) NOT NULL DEFAULT '',
  `platform` varchar(4) NOT NULL DEFAULT '',
  `current_realm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `security` varchar(255) DEFAULT NULL,
  `pass_verif` varchar(255) DEFAULT NULL COMMENT 'Web recover password',
  `email_verif` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Email verification',
  `forum_username` varchar(32) DEFAULT NULL,
  `token_key` varchar(100) DEFAULT '',
  `email_keyword` varchar(16) DEFAULT NULL,
  `email_status` int(8) DEFAULT NULL,
  `email_sub` tinyint(3) NOT NULL DEFAULT '1',
  `comments` text,
  `geolock_pin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_username` (`username`) USING BTREE,
  KEY `idx_gmlevel` (`rank`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';

-- Dumping data for table tw_logon.account: ~0 rows (approximately)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


-- Dumping structure for table tw_logon.account_banned
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE IF NOT EXISTS `account_banned` (
  `banid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` bigint(40) NOT NULL DEFAULT '0',
  `unbandate` bigint(40) NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `realm` tinyint(4) NOT NULL DEFAULT '1',
  `gmlevel` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`bandate`) USING BTREE,
  UNIQUE KEY `banid` (`banid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Ban List';

-- Dumping data for table tw_logon.account_banned: 0 rows
/*!40000 ALTER TABLE `account_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_banned` ENABLE KEYS */;


-- Dumping structure for table tw_logon.account_ip_logins
DROP TABLE IF EXISTS `account_ip_logins`;
CREATE TABLE IF NOT EXISTS `account_ip_logins` (
  `account_id` int(10) unsigned NOT NULL,
  `account_ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`account_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tw_logon.account_ip_logins: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_ip_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_ip_logins` ENABLE KEYS */;


-- Dumping structure for table tw_logon.account_mailstatus
DROP TABLE IF EXISTS `account_mailstatus`;
CREATE TABLE IF NOT EXISTS `account_mailstatus` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `email` text,
  `status` int(11) DEFAULT NULL,
  `letterid` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.account_mailstatus: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_mailstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_mailstatus` ENABLE KEYS */;


-- Dumping structure for table tw_logon.account_mailstatus_archive
DROP TABLE IF EXISTS `account_mailstatus_archive`;
CREATE TABLE IF NOT EXISTS `account_mailstatus_archive` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `email` text,
  `status` int(11) DEFAULT NULL,
  `letterid` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.account_mailstatus_archive: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_mailstatus_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_mailstatus_archive` ENABLE KEYS */;


-- Dumping structure for table tw_logon.account_muted
DROP TABLE IF EXISTS `account_muted`;
CREATE TABLE IF NOT EXISTS `account_muted` (
  `muteid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `mutedate` bigint(40) NOT NULL DEFAULT '0',
  `unmutedate` bigint(40) NOT NULL DEFAULT '0',
  `mutedby` varchar(50) NOT NULL,
  `mutereason` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`mutedate`) USING BTREE,
  UNIQUE KEY `banid` (`muteid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mute History';

-- Dumping data for table tw_logon.account_muted: 0 rows
/*!40000 ALTER TABLE `account_muted` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_muted` ENABLE KEYS */;


-- Dumping structure for table tw_logon.account_twofactor_allowed
DROP TABLE IF EXISTS `account_twofactor_allowed`;
CREATE TABLE IF NOT EXISTS `account_twofactor_allowed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) NOT NULL DEFAULT '0',
  `account_id` int(10) unsigned DEFAULT NULL,
  `expires_at` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.account_twofactor_allowed: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_twofactor_allowed` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_twofactor_allowed` ENABLE KEYS */;


-- Dumping structure for table tw_logon.antispam_blacklist
DROP TABLE IF EXISTS `antispam_blacklist`;
CREATE TABLE IF NOT EXISTS `antispam_blacklist` (
  `word` varchar(32) NOT NULL DEFAULT '',
  `regex` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table tw_logon.antispam_blacklist: 6 rows
/*!40000 ALTER TABLE `antispam_blacklist` DISABLE KEYS */;
INSERT INTO `antispam_blacklist` (`word`, `regex`) VALUES
	('NLGGER', 0),
	('JIZZ', 0),
	('ANAL', 0),
	('FAGGOT', 0),
	('TRANNY', 0),
	('NEEDMANA', 0);
/*!40000 ALTER TABLE `antispam_blacklist` ENABLE KEYS */;


-- Dumping structure for table tw_logon.antispam_client
DROP TABLE IF EXISTS `antispam_client`;
CREATE TABLE IF NOT EXISTS `antispam_client` (
  `Regex` varchar(255) NOT NULL,
  `Note` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Regex`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.antispam_client: ~0 rows (approximately)
/*!40000 ALTER TABLE `antispam_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `antispam_client` ENABLE KEYS */;


-- Dumping structure for table tw_logon.antispam_replacement
DROP TABLE IF EXISTS `antispam_replacement`;
CREATE TABLE IF NOT EXISTS `antispam_replacement` (
  `from` varchar(32) NOT NULL DEFAULT '',
  `to` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table tw_logon.antispam_replacement: 13 rows
/*!40000 ALTER TABLE `antispam_replacement` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `antispam_replacement` ENABLE KEYS */;


-- Dumping structure for table tw_logon.antispam_scores
DROP TABLE IF EXISTS `antispam_scores`;
CREATE TABLE IF NOT EXISTS `antispam_scores` (
  `word` varchar(32) NOT NULL DEFAULT '',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table tw_logon.antispam_scores: 58 rows
/*!40000 ALTER TABLE `antispam_scores` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `antispam_scores` ENABLE KEYS */;


-- Dumping structure for table tw_logon.antispam_unicode
DROP TABLE IF EXISTS `antispam_unicode`;
CREATE TABLE IF NOT EXISTS `antispam_unicode` (
  `from` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `to` mediumint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table tw_logon.antispam_unicode: 42 rows
/*!40000 ALTER TABLE `antispam_unicode` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `antispam_unicode` ENABLE KEYS */;


-- Dumping structure for table tw_logon.antispam_unicode_replacement
DROP TABLE IF EXISTS `antispam_unicode_replacement`;
CREATE TABLE IF NOT EXISTS `antispam_unicode_replacement` (
  `from` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `to` mediumint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`from`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_logon.antispam_unicode_replacement: 0 rows
/*!40000 ALTER TABLE `antispam_unicode_replacement` DISABLE KEYS */;
/*!40000 ALTER TABLE `antispam_unicode_replacement` ENABLE KEYS */;


-- Dumping structure for table tw_logon.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.config: ~0 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


-- Dumping structure for table tw_logon.fingerprint_autoban
DROP TABLE IF EXISTS `fingerprint_autoban`;
CREATE TABLE IF NOT EXISTS `fingerprint_autoban` (
  `fingerprint` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `banreason` varchar(255) NOT NULL,
  PRIMARY KEY (`fingerprint`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fingerprint Ban List';

-- Dumping data for table tw_logon.fingerprint_autoban: 11 rows
/*!40000 ALTER TABLE `fingerprint_autoban` DISABLE KEYS */;
INSERT INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES
	(149392107, 'duck'),
	(222393403, 'hacks2'),
	(957965474, 'gs'),
	(1046341544, 'gs'),
	(1155010007, 'duck2'),
	(1302404417, 'gs'),
	(2009228929, 'hacks'),
	(2162373540, 'gs'),
	(2410606283, 'gs'),
	(3876728909, 'gs'),
	(4134214259, 'gs');
/*!40000 ALTER TABLE `fingerprint_autoban` ENABLE KEYS */;


-- Dumping structure for table tw_logon.fingerprint_banned
DROP TABLE IF EXISTS `fingerprint_banned`;
CREATE TABLE IF NOT EXISTS `fingerprint_banned` (
  `fingerprint` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Fingerprint',
  `bandate` bigint(40) NOT NULL DEFAULT '0',
  `unbandate` bigint(40) NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  PRIMARY KEY (`fingerprint`,`bandate`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fingerprint Ban List';

-- Dumping data for table tw_logon.fingerprint_banned: 0 rows
/*!40000 ALTER TABLE `fingerprint_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `fingerprint_banned` ENABLE KEYS */;


-- Dumping structure for table tw_logon.geoip
DROP TABLE IF EXISTS `geoip`;
CREATE TABLE IF NOT EXISTS `geoip` (
  `network_start_integer` int(11) DEFAULT NULL,
  `network_last_integer` int(11) DEFAULT NULL,
  `geoname_id` text,
  `registered_country_geoname_id` text,
  `represented_country_geoname_id` text,
  `is_anonymous_proxy` int(11) DEFAULT NULL,
  `is_satellite_provider` int(11) DEFAULT NULL,
  `postal_code` text,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `accuracy_radius` int(11) DEFAULT NULL,
  KEY `ip_start` (`network_start_integer`) USING BTREE,
  KEY `ip_end` (`network_last_integer`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.geoip: ~0 rows (approximately)
/*!40000 ALTER TABLE `geoip` DISABLE KEYS */;
/*!40000 ALTER TABLE `geoip` ENABLE KEYS */;


-- Dumping structure for table tw_logon.gp_history
DROP TABLE IF EXISTS `gp_history`;
CREATE TABLE IF NOT EXISTS `gp_history` (
  `account_id` int(11) unsigned NOT NULL,
  `code` varchar(256) NOT NULL,
  PRIMARY KEY (`account_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tw_logon.gp_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `gp_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gp_history` ENABLE KEYS */;


-- Dumping structure for table tw_logon.ip_banned
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE IF NOT EXISTS `ip_banned` (
  `ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `bandate` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(128) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Banned IPs';

-- Dumping data for table tw_logon.ip_banned: 0 rows
/*!40000 ALTER TABLE `ip_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_banned` ENABLE KEYS */;


-- Dumping structure for table tw_logon.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `Hash` varchar(128) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.migrations: 0 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table tw_logon.realmcharacters
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE IF NOT EXISTS `realmcharacters` (
  `realmid` int(11) unsigned NOT NULL DEFAULT '0',
  `acctid` bigint(20) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`) USING BTREE,
  KEY `acctid` (`acctid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm Character Tracker';

-- Dumping data for table tw_logon.realmcharacters: 0 rows
/*!40000 ALTER TABLE `realmcharacters` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmcharacters` ENABLE KEYS */;


-- Dumping structure for table tw_logon.realmlist
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE IF NOT EXISTS `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `realmflags` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by mangosd), 0x4 (show version and build), 0x20 (new players), 0x40 (recommended)',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `realmbuilds` varchar(64) NOT NULL DEFAULT '5875',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

-- Dumping data for table tw_logon.realmlist: 0 rows
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;


-- Dumping structure for table tw_logon.shop_coins
DROP TABLE IF EXISTS `shop_coins`;
CREATE TABLE IF NOT EXISTS `shop_coins` (
  `id` int(10) unsigned NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.shop_coins: ~0 rows (approximately)
/*!40000 ALTER TABLE `shop_coins` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_coins` ENABLE KEYS */;


-- Dumping structure for table tw_logon.shop_coins_history
DROP TABLE IF EXISTS `shop_coins_history`;
CREATE TABLE IF NOT EXISTS `shop_coins_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL,
  `points` int(11) NOT NULL,
  `actual_points` int(11) NOT NULL,
  `new_points` int(11) NOT NULL,
  `type` varchar(256) NOT NULL,
  `system` varchar(256) NOT NULL,
  `reference` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table tw_logon.shop_coins_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `shop_coins_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_coins_history` ENABLE KEYS */;


-- Dumping structure for table tw_logon.shop_diff
DROP TABLE IF EXISTS `shop_diff`;
CREATE TABLE IF NOT EXISTS `shop_diff` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(11) unsigned NOT NULL DEFAULT '0',
  `prev_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `query` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.shop_diff: 0 rows
/*!40000 ALTER TABLE `shop_diff` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_diff` ENABLE KEYS */;


-- Dumping structure for table tw_logon.statistics_online
DROP TABLE IF EXISTS `statistics_online`;
CREATE TABLE IF NOT EXISTS `statistics_online` (
  `guid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `online` int(8) unsigned DEFAULT '0',
  `online_alli` int(8) DEFAULT '0',
  `online_horde` int(8) DEFAULT '0',
  `connections` int(8) unsigned DEFAULT '0',
  `realm` tinyint(3) unsigned DEFAULT '0',
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_logon.statistics_online: ~0 rows (approximately)
/*!40000 ALTER TABLE `statistics_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics_online` ENABLE KEYS */;


-- Dumping structure for table tw_logon.uptime
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE IF NOT EXISTS `uptime` (
  `realmid` int(11) unsigned NOT NULL,
  `starttime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startstring` varchar(64) NOT NULL DEFAULT '',
  `uptime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `onlineplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Turtle WoW',
  PRIMARY KEY (`realmid`,`starttime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';


DROP TABLE IF EXISTS `system_fingerprint_usage`;
CREATE TABLE IF NOT EXISTS `system_fingerprint_usage` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `fingerprint` INT(10) UNSIGNED NOT NULL,
    `account` INT(10) UNSIGNED NOT NULL,
    `ip` VARCHAR(16) NOT NULL COLLATE 'utf8_general_ci',
    `realm` INT(10) UNSIGNED NOT NULL,
    `time` DATETIME NOT NULL DEFAULT current_timestamp(),
    `architecture` VARCHAR(16) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `cputype` VARCHAR(64) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
    `activecpus` INT(10) UNSIGNED NULL DEFAULT NULL,
    `totalcpus` INT(10) UNSIGNED NULL DEFAULT NULL,
    `pagesize` INT(10) UNSIGNED NULL DEFAULT NULL,
    `timezoneBias` INT(10) UNSIGNED NOT NULL,
    `largepageMinimum` INT(10) UNSIGNED NOT NULL,
    `suiteMask` INT(10) UNSIGNED NOT NULL,
    `mitigationPolicies` INT(10) UNSIGNED NOT NULL,
    `numberPhysicalPages` INT(10) UNSIGNED NOT NULL,
    `sharedDataFlags` INT(10) UNSIGNED NOT NULL,
    `testRestInstruction` BIGINT(20) UNSIGNED NOT NULL,
    `qpcFrequency` BIGINT(20) NOT NULL,
    `qpcSystemTimeIncrement` BIGINT(20) UNSIGNED NOT NULL,
    `unparkedProcessorCount` INT(10) UNSIGNED NOT NULL,
    `enclaveFeatureMask` INT(10) UNSIGNED NOT NULL,
    `qpcData` INT(10) UNSIGNED NOT NULL,
    `osVersion` ENUM('None','WinXP','Win7','Win8','Vista','Win10Up','<Unknown>') NOT NULL DEFAULT '<Unknown>' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `fingerprint` (`fingerprint`) USING BTREE,
    INDEX `account` (`account`) USING BTREE,
    INDEX `ip` (`ip`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=8904428
;

-- Dumping data for table tw_logon.uptime: 0 rows
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
