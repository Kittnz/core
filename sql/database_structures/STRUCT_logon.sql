
/*!40101 SET NAMES utf8 */;
/*!40101 SET SQL_MODE=''*/;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL,
  `sha_pass_hash` varchar(40) NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_gmlevel` (`gmlevel`)
) ENGINE=InnoDB AUTO_INCREMENT=18729 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';

/*Table structure for table `account_access` */

DROP TABLE IF EXISTS `account_access`;

CREATE TABLE `account_access` (
  `id` int(11) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL,
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `account_banned` */

DROP TABLE IF EXISTS `account_banned`;

CREATE TABLE `account_banned` (
  `banid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` bigint(40) NOT NULL DEFAULT '0',
  `unbandate` bigint(40) NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `realm` tinyint(4) NOT NULL DEFAULT '1',
  `gmlevel` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`bandate`),
  UNIQUE KEY `banid` (`banid`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Ban List';

/*Table structure for table `account_mailstatus` */

DROP TABLE IF EXISTS `account_mailstatus`;

CREATE TABLE `account_mailstatus` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `email` text,
  `status` int(11) DEFAULT NULL,
  `letterid` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `account_mailstatus_archive` */

DROP TABLE IF EXISTS `account_mailstatus_archive`;

CREATE TABLE `account_mailstatus_archive` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `email` text,
  `status` int(11) DEFAULT NULL,
  `letterid` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `antispam_blacklist` */

DROP TABLE IF EXISTS `antispam_blacklist`;

CREATE TABLE `antispam_blacklist` (
  `string` varchar(64) NOT NULL,
  PRIMARY KEY (`string`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `antispam_client` */

DROP TABLE IF EXISTS `antispam_client`;

CREATE TABLE `antispam_client` (
  `Regex` varchar(255) NOT NULL,
  `Note` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Regex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `antispam_replacement` */

DROP TABLE IF EXISTS `antispam_replacement`;

CREATE TABLE `antispam_replacement` (
  `from` varchar(32) NOT NULL DEFAULT '',
  `to` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `antispam_unicode_replacement` */

DROP TABLE IF EXISTS `antispam_unicode_replacement`;

CREATE TABLE `antispam_unicode_replacement` (
  `from` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `to` mediumint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `geoip` */

DROP TABLE IF EXISTS `geoip`;

CREATE TABLE `geoip` (
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
  KEY `ip_start` (`network_start_integer`),
  KEY `ip_end` (`network_last_integer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ip_banned` */

DROP TABLE IF EXISTS `ip_banned`;

CREATE TABLE `ip_banned` (
  `ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `bandate` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(128) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Banned IPs';

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL DEFAULT '0',
  `Hash` varchar(128) NOT NULL DEFAULT '0',
  `AppliedAt` datetime NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `realmcharacters` */

DROP TABLE IF EXISTS `realmcharacters`;

CREATE TABLE `realmcharacters` (
  `realmid` int(11) unsigned NOT NULL DEFAULT '0',
  `acctid` bigint(20) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm Character Tracker';

/*Table structure for table `realmlist` */

DROP TABLE IF EXISTS `realmlist`;

CREATE TABLE `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `realmflags` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by mangosd), 0x4 (show version and build), 0x20 (new players), 0x40 (recommended)',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `realmbuilds` varchar(64) NOT NULL DEFAULT '5875',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

/*Table structure for table `shop_coins` */

DROP TABLE IF EXISTS `shop_coins`;

CREATE TABLE `shop_coins` (
  `id` int(10) unsigned NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shop_diff` */

DROP TABLE IF EXISTS `shop_diff`;

CREATE TABLE `shop_diff` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(11) unsigned NOT NULL DEFAULT '0',
  `prev_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `query` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM AUTO_INCREMENT=94537 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `statistics_online` */

DROP TABLE IF EXISTS `statistics_online`;

CREATE TABLE `statistics_online` (
  `guid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `online` int(8) unsigned DEFAULT '0',
  `online_alli` int(8) DEFAULT '0',
  `online_horde` int(8) DEFAULT '0',
  `connections` int(8) unsigned DEFAULT '0',
  `realm` tinyint(3) unsigned DEFAULT '0',
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `system_fingerprint_usage` */

DROP TABLE IF EXISTS `system_fingerprint_usage`;

CREATE TABLE `system_fingerprint_usage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fingerprint` int(10) unsigned NOT NULL,
  `account` int(10) unsigned NOT NULL,
  `ip` varchar(16) NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `architecture` varchar(16) DEFAULT NULL,
  `cputype` varchar(64) DEFAULT NULL,
  `activecpus` int(10) unsigned DEFAULT NULL,
  `totalcpus` int(10) unsigned DEFAULT NULL,
  `pagesize` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fingerprint` (`fingerprint`),
  KEY `account` (`account`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `uptime` */

DROP TABLE IF EXISTS `uptime`;

CREATE TABLE `uptime` (
  `realmid` int(11) unsigned NOT NULL,
  `starttime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startstring` varchar(64) NOT NULL DEFAULT '',
  `uptime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `onlineplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Turtle WoW',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
