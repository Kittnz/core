/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL,
  `sha_pass_hash` varchar(40) NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL DEFAULT 0,
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
  KEY `idx_gmlevel` (`gmlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_access`
--

DROP TABLE IF EXISTS `account_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_access` (
  `id` int(11) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL,
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_access`
--

LOCK TABLES `account_access` WRITE;
/*!40000 ALTER TABLE `account_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_banned`
--

DROP TABLE IF EXISTS `account_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_banned` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_banned`
--

LOCK TABLES `account_banned` WRITE;
/*!40000 ALTER TABLE `account_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_mailstatus`
--

DROP TABLE IF EXISTS `account_mailstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_mailstatus` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `email` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `letterid` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_mailstatus`
--

LOCK TABLES `account_mailstatus` WRITE;
/*!40000 ALTER TABLE `account_mailstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_mailstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_mailstatus_archive`
--

DROP TABLE IF EXISTS `account_mailstatus_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_mailstatus_archive` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT 0,
  `email` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `letterid` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_mailstatus_archive`
--

LOCK TABLES `account_mailstatus_archive` WRITE;
/*!40000 ALTER TABLE `account_mailstatus_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_mailstatus_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antispam_blacklist`
--

DROP TABLE IF EXISTS `antispam_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antispam_blacklist` (
  `string` varchar(64) NOT NULL,
  PRIMARY KEY (`string`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antispam_blacklist`
--

LOCK TABLES `antispam_blacklist` WRITE;
/*!40000 ALTER TABLE `antispam_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `antispam_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antispam_client`
--

DROP TABLE IF EXISTS `antispam_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antispam_client` (
  `Regex` varchar(255) NOT NULL,
  `Note` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Regex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antispam_client`
--

LOCK TABLES `antispam_client` WRITE;
/*!40000 ALTER TABLE `antispam_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `antispam_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antispam_replacement`
--

DROP TABLE IF EXISTS `antispam_replacement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antispam_replacement` (
  `from` varchar(32) NOT NULL DEFAULT '',
  `to` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antispam_replacement`
--

LOCK TABLES `antispam_replacement` WRITE;
/*!40000 ALTER TABLE `antispam_replacement` DISABLE KEYS */;
/*!40000 ALTER TABLE `antispam_replacement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antispam_unicode_replacement`
--

DROP TABLE IF EXISTS `antispam_unicode_replacement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antispam_unicode_replacement` (
  `from` mediumint(5) unsigned NOT NULL DEFAULT 0,
  `to` mediumint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antispam_unicode_replacement`
--

LOCK TABLES `antispam_unicode_replacement` WRITE;
/*!40000 ALTER TABLE `antispam_unicode_replacement` DISABLE KEYS */;
/*!40000 ALTER TABLE `antispam_unicode_replacement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'2048','Patch download speed limit. Number of Kbytes per client');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geoip`
--

DROP TABLE IF EXISTS `geoip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geoip` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geoip`
--

LOCK TABLES `geoip` WRITE;
/*!40000 ALTER TABLE `geoip` DISABLE KEYS */;
/*!40000 ALTER TABLE `geoip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_banned`
--

DROP TABLE IF EXISTS `ip_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_banned` (
  `ip` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `bandate` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(128) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Banned IPs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_banned`
--

LOCK TABLES `ip_banned` WRITE;
/*!40000 ALTER TABLE `ip_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `Hash` varchar(128) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realmcharacters`
--

DROP TABLE IF EXISTS `realmcharacters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realmcharacters` (
  `realmid` int(11) unsigned NOT NULL DEFAULT 0,
  `acctid` bigint(20) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm Character Tracker';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realmcharacters`
--

LOCK TABLES `realmcharacters` WRITE;
/*!40000 ALTER TABLE `realmcharacters` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmcharacters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realmlist`
--

DROP TABLE IF EXISTS `realmlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realmlist` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realmlist`
--

LOCK TABLES `realmlist` WRITE;
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
INSERT INTO `realmlist` VALUES (1,'Turtle WoW','127.0.0.1',8085,0,2,0,0,0,'5875');
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_coins`
--

DROP TABLE IF EXISTS `shop_coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_coins` (
  `id` int(10) unsigned NOT NULL,
  `coins` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_coins`
--

LOCK TABLES `shop_coins` WRITE;
/*!40000 ALTER TABLE `shop_coins` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_coins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_diff`
--

DROP TABLE IF EXISTS `shop_diff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_diff` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(11) unsigned NOT NULL DEFAULT 0,
  `prev_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `date` int(11) unsigned NOT NULL DEFAULT 0,
  `query` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_diff`
--

LOCK TABLES `shop_diff` WRITE;
/*!40000 ALTER TABLE `shop_diff` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_diff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_online`
--

DROP TABLE IF EXISTS `statistics_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics_online` (
  `guid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `online` int(8) unsigned DEFAULT 0,
  `online_alli` int(8) DEFAULT 0,
  `online_horde` int(8) DEFAULT 0,
  `connections` int(8) unsigned DEFAULT 0,
  `realm` tinyint(3) unsigned DEFAULT 0,
  `date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_online`
--

LOCK TABLES `statistics_online` WRITE;
/*!40000 ALTER TABLE `statistics_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_fingerprint_usage`
--

DROP TABLE IF EXISTS `system_fingerprint_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_fingerprint_usage` (
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
  PRIMARY KEY (`id`),
  KEY `fingerprint` (`fingerprint`),
  KEY `account` (`account`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_fingerprint_usage`
--

LOCK TABLES `system_fingerprint_usage` WRITE;
/*!40000 ALTER TABLE `system_fingerprint_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_fingerprint_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uptime`
--

DROP TABLE IF EXISTS `uptime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uptime` (
  `realmid` int(11) unsigned NOT NULL,
  `starttime` bigint(20) unsigned NOT NULL DEFAULT 0,
  `startstring` varchar(64) NOT NULL DEFAULT '',
  `uptime` bigint(20) unsigned NOT NULL DEFAULT 0,
  `onlineplayers` smallint(5) unsigned NOT NULL DEFAULT 0,
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT 0,
  `revision` varchar(255) NOT NULL DEFAULT 'Turtle WoW',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uptime`
--

LOCK TABLES `uptime` WRITE;
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
