-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                10.5.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versie:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Structuur van  tabel turtle_logon.account wordt geschreven
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL,
  `sha_pass_hash` varchar(40) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `sessionkey` longtext DEFAULT NULL,
  `v` longtext DEFAULT NULL,
  `s` longtext DEFAULT NULL,
  `email` text DEFAULT NULL,
  `joindate` timestamp NOT NULL DEFAULT current_timestamp(),
  `tfa_verif` varchar(255) DEFAULT NULL,
  `last_ip` varchar(30) NOT NULL DEFAULT '0.0.0.0',
  `last_local_ip` varchar(30) NOT NULL DEFAULT '0.0.0.0',
  `failed_logins` int(11) unsigned NOT NULL DEFAULT 0,
  `locked` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(4) NOT NULL DEFAULT 0,
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `mutetime` bigint(40) NOT NULL DEFAULT 0,
  `mutereason` varchar(255) NOT NULL DEFAULT '',
  `muteby` varchar(50) NOT NULL DEFAULT '',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `os` varchar(4) NOT NULL DEFAULT '',
  `platform` varchar(4) NOT NULL DEFAULT '',
  `current_realm` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `banned` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `security` varchar(255) DEFAULT NULL,
  `pass_verif` varchar(255) DEFAULT NULL COMMENT 'Web recover password',
  `email_verif` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Email verification',
  `forum_username` varchar(32) DEFAULT NULL,
  `token_key` varchar(100) DEFAULT '',
  `email_keyword` varchar(16) DEFAULT NULL,
  `email_status` int(8) DEFAULT NULL,
  `email_sub` tinyint(3) NOT NULL DEFAULT 1,
  `comments` text DEFAULT NULL,
  `geolock_pin` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_gmlevel` (`rank`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.account_access wordt geschreven
CREATE TABLE IF NOT EXISTS `account_access` (
  `id` int(11) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.account_banned wordt geschreven
CREATE TABLE IF NOT EXISTS `account_banned` (
  `banid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Account id',
  `bandate` bigint(40) NOT NULL DEFAULT 0,
  `unbandate` bigint(40) NOT NULL DEFAULT 0,
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `realm` tinyint(4) NOT NULL DEFAULT 1,
  `gmlevel` tinyint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`bandate`),
  UNIQUE KEY `banid` (`banid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Ban List';

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.account_ip_logins wordt geschreven
CREATE TABLE IF NOT EXISTS `account_ip_logins` (
  `account_id` int(10) unsigned NOT NULL,
  `account_ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `login_count` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`,`account_ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.account_mailstatus wordt geschreven
CREATE TABLE IF NOT EXISTS `account_mailstatus` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `email` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `letterid` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92120 DEFAULT CHARSET=utf8mb4;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.account_mailstatus_archive wordt geschreven
CREATE TABLE IF NOT EXISTS `account_mailstatus_archive` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `email` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `letterid` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76921 DEFAULT CHARSET=utf8mb4;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.account_twofactor_allowed wordt geschreven
CREATE TABLE IF NOT EXISTS `account_twofactor_allowed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) NOT NULL DEFAULT '0',
  `account_id` int(10) unsigned DEFAULT NULL,
  `expires_at` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.antispam_blacklist wordt geschreven
CREATE TABLE IF NOT EXISTS `antispam_blacklist` (
  `word` varchar(32) NOT NULL DEFAULT '',
  `regex` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.antispam_client wordt geschreven
CREATE TABLE IF NOT EXISTS `antispam_client` (
  `Regex` varchar(255) NOT NULL,
  `Note` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Regex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.antispam_replacement wordt geschreven
CREATE TABLE IF NOT EXISTS `antispam_replacement` (
  `from` varchar(32) NOT NULL DEFAULT '',
  `to` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.antispam_scores wordt geschreven
CREATE TABLE IF NOT EXISTS `antispam_scores` (
  `word` varchar(32) NOT NULL DEFAULT '',
  `score` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.antispam_unicode wordt geschreven
CREATE TABLE IF NOT EXISTS `antispam_unicode` (
  `from` mediumint(5) unsigned NOT NULL DEFAULT 0,
  `to` mediumint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.antispam_unicode_replacement wordt geschreven
CREATE TABLE IF NOT EXISTS `antispam_unicode_replacement` (
  `from` mediumint(5) unsigned NOT NULL DEFAULT 0,
  `to` mediumint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.config wordt geschreven
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.fingerprint_autoban wordt geschreven
CREATE TABLE IF NOT EXISTS `fingerprint_autoban` (
  `fingerprint` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Account id',
  `banreason` varchar(255) NOT NULL,
  PRIMARY KEY (`fingerprint`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fingerprint Ban List';

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.fingerprint_banned wordt geschreven
CREATE TABLE IF NOT EXISTS `fingerprint_banned` (
  `fingerprint` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Fingerprint',
  `bandate` bigint(40) NOT NULL DEFAULT 0,
  `unbandate` bigint(40) NOT NULL DEFAULT 0,
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  PRIMARY KEY (`fingerprint`,`bandate`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fingerprint Ban List';

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.geoip wordt geschreven
CREATE TABLE IF NOT EXISTS `geoip` (
  `network_start_integer` int(11) DEFAULT NULL,
  `network_last_integer` int(11) DEFAULT NULL,
  `geoname_id` text DEFAULT NULL,
  `registered_country_geoname_id` text DEFAULT NULL,
  `represented_country_geoname_id` text DEFAULT NULL,
  `is_anonymous_proxy` int(11) DEFAULT NULL,
  `is_satellite_provider` int(11) DEFAULT NULL,
  `postal_code` text DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `accuracy_radius` int(11) DEFAULT NULL,
  KEY `ip_start` (`network_start_integer`),
  KEY `ip_end` (`network_last_integer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.ip_banned wordt geschreven
CREATE TABLE IF NOT EXISTS `ip_banned` (
  `ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `bandate` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(128) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Banned IPs';

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.migrations wordt geschreven
CREATE TABLE IF NOT EXISTS `migrations` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL DEFAULT '0',
  `Hash` varchar(128) NOT NULL DEFAULT '0',
  `AppliedAt` datetime NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.realmcharacters wordt geschreven
CREATE TABLE IF NOT EXISTS `realmcharacters` (
  `realmid` int(11) unsigned NOT NULL DEFAULT 0,
  `acctid` bigint(20) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm Character Tracker';

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.realmlist wordt geschreven
CREATE TABLE IF NOT EXISTS `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT 8085,
  `icon` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `realmflags` tinyint(3) unsigned NOT NULL DEFAULT 2 COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by mangosd), 0x4 (show version and build), 0x20 (new players), 0x40 (recommended)',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `population` float unsigned NOT NULL DEFAULT 0,
  `realmbuilds` varchar(64) NOT NULL DEFAULT '5875',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.shop_coins wordt geschreven
CREATE TABLE IF NOT EXISTS `shop_coins` (
  `id` int(10) unsigned NOT NULL,
  `coins` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.shop_diff wordt geschreven
CREATE TABLE IF NOT EXISTS `shop_diff` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(11) unsigned NOT NULL DEFAULT 0,
  `prev_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `date` int(11) unsigned NOT NULL DEFAULT 0,
  `query` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.shop_logs wordt geschreven
CREATE TABLE IF NOT EXISTS `shop_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `guid` int(11) unsigned NOT NULL DEFAULT 0,
  `account` int(11) unsigned NOT NULL DEFAULT 0,
  `item` int(11) unsigned NOT NULL DEFAULT 0,
  `price` int(11) unsigned NOT NULL DEFAULT 0,
  `refunded` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.statistics_online wordt geschreven
CREATE TABLE IF NOT EXISTS `statistics_online` (
  `guid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `online` int(8) unsigned DEFAULT 0,
  `online_alli` int(8) DEFAULT 0,
  `online_horde` int(8) DEFAULT 0,
  `connections` int(8) unsigned DEFAULT 0,
  `realm` tinyint(3) unsigned DEFAULT 0,
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.system_fingerprint_usage wordt geschreven
CREATE TABLE IF NOT EXISTS `system_fingerprint_usage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fingerprint` int(10) unsigned NOT NULL,
  `account` int(10) unsigned NOT NULL,
  `ip` varchar(16) NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `architecture` varchar(16) DEFAULT NULL,
  `cputype` varchar(64) DEFAULT NULL,
  `activecpus` int(10) unsigned DEFAULT NULL,
  `totalcpus` int(10) unsigned DEFAULT NULL,
  `pagesize` int(10) unsigned DEFAULT NULL,
  `timezoneBias` int(10) unsigned NOT NULL,
  `largepageMinimum` int(10) unsigned NOT NULL,
  `suiteMask` int(10) unsigned NOT NULL,
  `mitigationPolicies` int(10) unsigned NOT NULL,
  `numberPhysicalPages` int(10) unsigned NOT NULL,
  `sharedDataFlags` int(10) unsigned NOT NULL,
  `testRestInstruction` bigint(20) unsigned NOT NULL,
  `qpcFrequency` bigint(20) NOT NULL,
  `qpcSystemTimeIncrement` bigint(20) unsigned NOT NULL,
  `unparkedProcessorCount` int(10) unsigned NOT NULL,
  `enclaveFeatureMask` int(10) unsigned NOT NULL,
  `qpcData` int(10) unsigned NOT NULL,
  `osVersion` enum('None','WinXP','Win7','Win8','Vista','Win10Up','<Unknown>') NOT NULL DEFAULT '<Unknown>',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fingerprint` (`fingerprint`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel turtle_logon.uptime wordt geschreven
CREATE TABLE IF NOT EXISTS `uptime` (
  `realmid` int(11) unsigned NOT NULL,
  `starttime` bigint(20) unsigned NOT NULL DEFAULT 0,
  `startstring` varchar(64) NOT NULL DEFAULT '',
  `uptime` bigint(20) unsigned NOT NULL DEFAULT 0,
  `onlineplayers` smallint(5) unsigned NOT NULL DEFAULT 0,
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT 0,
  `revision` varchar(255) NOT NULL DEFAULT 'Turtle WoW',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';

-- Data exporteren was gedeselecteerd

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
