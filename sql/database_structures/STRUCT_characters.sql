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
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `houseid` int(11) unsigned NOT NULL DEFAULT 0,
  `itemguid` int(11) unsigned NOT NULL DEFAULT 0,
  `item_template` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Item Identifier',
  `itemowner` int(11) unsigned NOT NULL DEFAULT 0,
  `buyoutprice` int(11) NOT NULL DEFAULT 0,
  `time` bigint(40) NOT NULL DEFAULT 0,
  `buyguid` int(11) unsigned NOT NULL DEFAULT 0,
  `lastbid` int(11) NOT NULL DEFAULT 0,
  `startbid` int(11) NOT NULL DEFAULT 0,
  `deposit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_item_guid` (`itemguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bounty_quest_targets`
--

DROP TABLE IF EXISTS `bounty_quest_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bounty_quest_targets` (
  `id` int(5) unsigned NOT NULL DEFAULT 1,
  `horde_player` int(15) unsigned NOT NULL DEFAULT 0,
  `alliance_player` int(15) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bounty_quest_targets`
--

LOCK TABLES `bounty_quest_targets` WRITE;
/*!40000 ALTER TABLE `bounty_quest_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `bounty_quest_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugreport`
--

DROP TABLE IF EXISTS `bugreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Debug System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugreport`
--

LOCK TABLES `bugreport` WRITE;
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugreports`
--

DROP TABLE IF EXISTS `bugreports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugreports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportTime` timestamp NULL DEFAULT current_timestamp(),
  `playerGuid` int(11) DEFAULT NULL,
  `playerMap` int(11) DEFAULT NULL,
  `playerInstanceId` int(11) DEFAULT NULL,
  `playerX` float DEFAULT NULL,
  `playerY` float DEFAULT NULL,
  `playerZ` float DEFAULT NULL,
  `clientIp` varchar(100) DEFAULT NULL,
  `reportType` tinyint(4) DEFAULT NULL,
  `reportText` text DEFAULT NULL,
  `serverInformation` text DEFAULT NULL,
  `bugStatus` enum('New','NeedTest','Fixed','Invalid','Duplicate','Confirmed') NOT NULL DEFAULT 'New',
  KEY `idx_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugreports`
--

LOCK TABLES `bugreports` WRITE;
/*!40000 ALTER TABLE `bugreports` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `census`
--

DROP TABLE IF EXISTS `census`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `census` (
  `time` datetime DEFAULT NULL,
  `race` int(11) DEFAULT NULL,
  `onlineCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `census`
--

LOCK TABLES `census` WRITE;
/*!40000 ALTER TABLE `census` DISABLE KEYS */;
/*!40000 ALTER TABLE `census` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_action`
--

DROP TABLE IF EXISTS `character_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_action` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `button` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `action` int(11) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`button`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_action`
--

LOCK TABLES `character_action` WRITE;
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_armory_stats`
--

DROP TABLE IF EXISTS `character_armory_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_armory_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0,
  `maxhealth` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower1` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower2` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower3` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower4` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower5` int(10) unsigned NOT NULL DEFAULT 0,
  `strength` float NOT NULL DEFAULT 0,
  `agility` float NOT NULL DEFAULT 0,
  `stamina` float NOT NULL DEFAULT 0,
  `intellect` float NOT NULL DEFAULT 0,
  `spirit` float NOT NULL DEFAULT 0,
  `armor` int(10) unsigned NOT NULL DEFAULT 0,
  `resHoly` int(10) unsigned NOT NULL DEFAULT 0,
  `resFire` int(10) unsigned NOT NULL DEFAULT 0,
  `resNature` int(10) unsigned NOT NULL DEFAULT 0,
  `resFrost` int(10) unsigned NOT NULL DEFAULT 0,
  `resShadow` int(10) unsigned NOT NULL DEFAULT 0,
  `resArcane` int(10) unsigned NOT NULL DEFAULT 0,
  `dmgModNormal` int(10) unsigned NOT NULL DEFAULT 0,
  `dmgModHoly` int(10) unsigned NOT NULL DEFAULT 0,
  `dmgModFire` int(10) unsigned NOT NULL DEFAULT 0,
  `dmgModNature` int(10) unsigned NOT NULL DEFAULT 0,
  `dmgModFrost` int(10) unsigned NOT NULL DEFAULT 0,
  `dmgModShadow` int(10) unsigned NOT NULL DEFAULT 0,
  `dmgModArcane` int(10) unsigned NOT NULL DEFAULT 0,
  `blockPct` float NOT NULL DEFAULT 0,
  `dodgePct` float NOT NULL DEFAULT 0,
  `parryPct` float NOT NULL DEFAULT 0,
  `meleeCritPct` float NOT NULL DEFAULT 0,
  `rangedCritPct` float NOT NULL DEFAULT 0,
  `attackPower` float NOT NULL DEFAULT 0,
  `rangedAttackPower` float NOT NULL DEFAULT 0,
  `meleeDamage` text NOT NULL,
  `rangedDamage` text NOT NULL,
  `meleeWeaponSpeed` float NOT NULL DEFAULT 0,
  `rangedWeaponSpeed` float NOT NULL DEFAULT 0,
  `castSpeed` float NOT NULL DEFAULT 0,
  `meleeHit` float NOT NULL DEFAULT 0,
  `rangedHit` float NOT NULL DEFAULT 0,
  `spellHit` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_armory_stats`
--

LOCK TABLES `character_armory_stats` WRITE;
/*!40000 ALTER TABLE `character_armory_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_armory_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_aura`
--

DROP TABLE IF EXISTS `character_aura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_aura` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier',
  `item_guid` int(11) unsigned NOT NULL DEFAULT 0,
  `spell` int(11) unsigned NOT NULL DEFAULT 0,
  `stackcount` int(11) unsigned NOT NULL DEFAULT 1,
  `remaincharges` int(11) unsigned NOT NULL DEFAULT 0,
  `basepoints0` int(11) NOT NULL DEFAULT 0,
  `basepoints1` int(11) NOT NULL DEFAULT 0,
  `basepoints2` int(11) NOT NULL DEFAULT 0,
  `periodictime0` int(11) unsigned NOT NULL DEFAULT 0,
  `periodictime1` int(11) unsigned NOT NULL DEFAULT 0,
  `periodictime2` int(11) unsigned NOT NULL DEFAULT 0,
  `maxduration` int(11) NOT NULL DEFAULT 0,
  `remaintime` int(11) NOT NULL DEFAULT 0,
  `effIndexMask` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_aura`
--

LOCK TABLES `character_aura` WRITE;
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_battleground_data`
--

DROP TABLE IF EXISTS `character_battleground_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_battleground_data` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `instance_id` int(11) unsigned NOT NULL DEFAULT 0,
  `team` int(11) unsigned NOT NULL DEFAULT 0,
  `join_x` float NOT NULL DEFAULT 0,
  `join_y` float NOT NULL DEFAULT 0,
  `join_z` float NOT NULL DEFAULT 0,
  `join_o` float NOT NULL DEFAULT 0,
  `join_map` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_battleground_data`
--

LOCK TABLES `character_battleground_data` WRITE;
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_bgqueue`
--

DROP TABLE IF EXISTS `character_bgqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_bgqueue` (
  `PlayerGUID` int(11) NOT NULL DEFAULT 0,
  `playerName` varchar(12) CHARACTER SET latin1 NOT NULL,
  `playerIP` int(11) NOT NULL,
  `BGtype` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`PlayerGUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_bgqueue`
--

LOCK TABLES `character_bgqueue` WRITE;
/*!40000 ALTER TABLE `character_bgqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_bgqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_deleted_items`
--

DROP TABLE IF EXISTS `character_deleted_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_deleted_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `player_guid` int(11) unsigned NOT NULL DEFAULT 0,
  `item_entry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `stack_count` mediumint(8) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_deleted_items`
--

LOCK TABLES `character_deleted_items` WRITE;
/*!40000 ALTER TABLE `character_deleted_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_deleted_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_duplicate_account`
--

DROP TABLE IF EXISTS `character_duplicate_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_duplicate_account` (
  `account` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_duplicate_account`
--

LOCK TABLES `character_duplicate_account` WRITE;
/*!40000 ALTER TABLE `character_duplicate_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_duplicate_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_forgotten_skills`
--

DROP TABLE IF EXISTS `character_forgotten_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_forgotten_skills` (
  `guid` int(11) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) unsigned NOT NULL,
  `value` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_forgotten_skills`
--

LOCK TABLES `character_forgotten_skills` WRITE;
/*!40000 ALTER TABLE `character_forgotten_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_forgotten_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_gifts`
--

DROP TABLE IF EXISTS `character_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_gifts` (
  `guid` int(20) unsigned NOT NULL DEFAULT 0,
  `item_guid` int(11) unsigned NOT NULL DEFAULT 0,
  `entry` int(20) unsigned NOT NULL DEFAULT 0,
  `flags` int(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_gifts`
--

LOCK TABLES `character_gifts` WRITE;
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_homebind`
--

DROP TABLE IF EXISTS `character_homebind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_homebind` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `map` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zone` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Zone Identifier',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_homebind`
--

LOCK TABLES `character_homebind` WRITE;
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_honor_cp`
--

DROP TABLE IF EXISTS `character_honor_cp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_honor_cp` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `victimType` tinyint(3) unsigned NOT NULL DEFAULT 4,
  `victim` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Creature / Player Identifier',
  `cp` float NOT NULL DEFAULT 0,
  `date` int(11) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_honor_cp`
--

LOCK TABLES `character_honor_cp` WRITE;
/*!40000 ALTER TABLE `character_honor_cp` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_honor_cp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_instance`
--

DROP TABLE IF EXISTS `character_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_instance` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0,
  `instance` int(11) unsigned NOT NULL DEFAULT 0,
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`instance`),
  KEY `idx_instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_instance`
--

LOCK TABLES `character_instance` WRITE;
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_inventory`
--

DROP TABLE IF EXISTS `character_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_inventory` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `bag` int(11) unsigned NOT NULL DEFAULT 0,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `item` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Item Global Unique Identifier',
  `item_template` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Item Identifier',
  PRIMARY KEY (`item`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_inventory`
--

LOCK TABLES `character_inventory` WRITE;
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_pet`
--

DROP TABLE IF EXISTS `character_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_pet` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `entry` int(11) unsigned NOT NULL DEFAULT 0,
  `owner` int(11) unsigned NOT NULL DEFAULT 0,
  `modelid` int(11) unsigned DEFAULT 0,
  `CreatedBySpell` int(11) unsigned NOT NULL DEFAULT 0,
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level` int(11) unsigned NOT NULL DEFAULT 1,
  `exp` int(11) unsigned NOT NULL DEFAULT 0,
  `Reactstate` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `loyaltypoints` int(11) NOT NULL DEFAULT 0,
  `loyalty` int(11) unsigned NOT NULL DEFAULT 0,
  `trainpoint` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) DEFAULT 'Pet',
  `renamed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `slot` int(11) unsigned NOT NULL DEFAULT 0,
  `curhealth` int(11) unsigned NOT NULL DEFAULT 1,
  `curmana` int(11) unsigned NOT NULL DEFAULT 0,
  `curhappiness` int(11) unsigned NOT NULL DEFAULT 0,
  `savetime` bigint(20) unsigned NOT NULL DEFAULT 0,
  `resettalents_cost` int(11) unsigned NOT NULL DEFAULT 0,
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `abdata` longtext DEFAULT NULL,
  `teachspelldata` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_owner` (`owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_pet`
--

LOCK TABLES `character_pet` WRITE;
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus`
--

DROP TABLE IF EXISTS `character_queststatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_queststatus` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  `status` int(11) unsigned NOT NULL DEFAULT 0,
  `rewarded` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `explored` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `timer` bigint(20) unsigned NOT NULL DEFAULT 0,
  `mobcount1` int(11) unsigned NOT NULL DEFAULT 0,
  `mobcount2` int(11) unsigned NOT NULL DEFAULT 0,
  `mobcount3` int(11) unsigned NOT NULL DEFAULT 0,
  `mobcount4` int(11) unsigned NOT NULL DEFAULT 0,
  `itemcount1` int(11) unsigned NOT NULL DEFAULT 0,
  `itemcount2` int(11) unsigned NOT NULL DEFAULT 0,
  `itemcount3` int(11) unsigned NOT NULL DEFAULT 0,
  `itemcount4` int(11) unsigned NOT NULL DEFAULT 0,
  `reward_choice` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus`
--

LOCK TABLES `character_queststatus` WRITE;
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_reputation`
--

DROP TABLE IF EXISTS `character_reputation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_reputation` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `faction` int(11) unsigned NOT NULL DEFAULT 0,
  `standing` int(11) NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_reputation`
--

LOCK TABLES `character_reputation` WRITE;
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skills`
--

DROP TABLE IF EXISTS `character_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_skills` (
  `guid` int(11) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) unsigned NOT NULL,
  `value` mediumint(9) unsigned NOT NULL,
  `max` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skills`
--

LOCK TABLES `character_skills` WRITE;
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_social`
--

DROP TABLE IF EXISTS `character_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_social` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `friend` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT 'Friend Flags',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `idx_guid` (`guid`),
  KEY `idx_friend` (`friend`),
  KEY `idx_guid_flags` (`guid`,`flags`),
  KEY `idx_friend_flags` (`friend`,`flags`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_social`
--

LOCK TABLES `character_social` WRITE;
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_spell`
--

DROP TABLE IF EXISTS `character_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_spell` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`),
  KEY `idx_spell` (`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell`
--

LOCK TABLES `character_spell` WRITE;
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_spell_cooldown`
--

DROP TABLE IF EXISTS `character_spell_cooldown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_spell_cooldown` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `item` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Item Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `catTime` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell_cooldown`
--

LOCK TABLES `character_spell_cooldown` WRITE;
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_spell_dual_spec`
--

DROP TABLE IF EXISTS `character_spell_dual_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_spell_dual_spec` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'primary or secondary',
  PRIMARY KEY (`guid`,`spell`,`spec`) USING BTREE,
  KEY `idx_spell` (`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell_dual_spec`
--

LOCK TABLES `character_spell_dual_spec` WRITE;
/*!40000 ALTER TABLE `character_spell_dual_spec` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_dual_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_stats`
--

DROP TABLE IF EXISTS `character_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_stats` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower1` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower2` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower3` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower4` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower5` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower6` int(10) unsigned NOT NULL DEFAULT 0,
  `maxpower7` int(10) unsigned NOT NULL DEFAULT 0,
  `strength` int(10) unsigned NOT NULL DEFAULT 0,
  `agility` int(10) unsigned NOT NULL DEFAULT 0,
  `stamina` int(10) unsigned NOT NULL DEFAULT 0,
  `intellect` int(10) unsigned NOT NULL DEFAULT 0,
  `spirit` int(10) unsigned NOT NULL DEFAULT 0,
  `armor` int(10) unsigned NOT NULL DEFAULT 0,
  `resHoly` int(10) unsigned NOT NULL DEFAULT 0,
  `resFire` int(10) unsigned NOT NULL DEFAULT 0,
  `resNature` int(10) unsigned NOT NULL DEFAULT 0,
  `resFrost` int(10) unsigned NOT NULL DEFAULT 0,
  `resShadow` int(10) unsigned NOT NULL DEFAULT 0,
  `resArcane` int(10) unsigned NOT NULL DEFAULT 0,
  `blockPct` float unsigned NOT NULL DEFAULT 0,
  `dodgePct` float unsigned NOT NULL DEFAULT 0,
  `parryPct` float unsigned NOT NULL DEFAULT 0,
  `critPct` float unsigned NOT NULL DEFAULT 0,
  `rangedCritPct` float unsigned NOT NULL DEFAULT 0,
  `attackPower` int(10) unsigned NOT NULL DEFAULT 0,
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_stats`
--

LOCK TABLES `character_stats` WRITE;
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_ticket`
--

DROP TABLE IF EXISTS `character_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_ticket` (
  `ticket_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(11) unsigned NOT NULL DEFAULT 0,
  `ticket_text` text DEFAULT NULL,
  `response_text` text DEFAULT NULL,
  `ticket_lastchange` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_ticket`
--

LOCK TABLES `character_ticket` WRITE;
/*!40000 ALTER TABLE `character_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_transmog`
--

DROP TABLE IF EXISTS `character_transmog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_transmog` (
  `itemguid` int(18) unsigned NOT NULL,
  `fakeentry` int(11) NOT NULL,
  `ownerguid` int(11) NOT NULL,
  `oldentry` int(11) NOT NULL,
  `newentry` int(11) NOT NULL,
  PRIMARY KEY (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_transmog`
--

LOCK TABLES `character_transmog` WRITE;
/*!40000 ALTER TABLE `character_transmog` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_transmog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_transmogs`
--

DROP TABLE IF EXISTS `character_transmogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_transmogs` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0,
  `itemId` int(11) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_transmogs`
--

LOCK TABLES `character_transmogs` WRITE;
/*!40000 ALTER TABLE `character_transmogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_transmogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_tutorial`
--

DROP TABLE IF EXISTS `character_tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_tutorial` (
  `account` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Account Identifier',
  `tut0` int(11) unsigned NOT NULL DEFAULT 0,
  `tut1` int(11) unsigned NOT NULL DEFAULT 0,
  `tut2` int(11) unsigned NOT NULL DEFAULT 0,
  `tut3` int(11) unsigned NOT NULL DEFAULT 0,
  `tut4` int(11) unsigned NOT NULL DEFAULT 0,
  `tut5` int(11) unsigned NOT NULL DEFAULT 0,
  `tut6` int(11) unsigned NOT NULL DEFAULT 0,
  `tut7` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_tutorial`
--

LOCK TABLES `character_tutorial` WRITE;
/*!40000 ALTER TABLE `character_tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_xp_from_log`
--

DROP TABLE IF EXISTS `character_xp_from_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_xp_from_log` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `xp` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_xp_from_log`
--

LOCK TABLES `character_xp_from_log` WRITE;
/*!40000 ALTER TABLE `character_xp_from_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_xp_from_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `account` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '',
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `xp` int(10) unsigned NOT NULL DEFAULT 0,
  `money` int(10) unsigned NOT NULL DEFAULT 0,
  `playerBytes` int(10) unsigned NOT NULL DEFAULT 0,
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT 0,
  `playerFlags` int(10) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `map` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `orientation` float NOT NULL DEFAULT 0,
  `taximask` longtext DEFAULT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `totaltime` int(11) unsigned NOT NULL DEFAULT 0,
  `leveltime` int(11) unsigned NOT NULL DEFAULT 0,
  `logout_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rest_bonus` float NOT NULL DEFAULT 0,
  `resettalents_multiplier` int(11) unsigned NOT NULL DEFAULT 0,
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `trans_x` float NOT NULL DEFAULT 0,
  `trans_y` float NOT NULL DEFAULT 0,
  `trans_z` float NOT NULL DEFAULT 0,
  `trans_o` float NOT NULL DEFAULT 0,
  `transguid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extra_flags` int(11) unsigned NOT NULL DEFAULT 0,
  `stable_slots` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `at_login` int(11) unsigned NOT NULL DEFAULT 0,
  `zone` int(11) unsigned NOT NULL DEFAULT 0,
  `death_expire_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxi_path` text DEFAULT NULL,
  `honorRankPoints` float NOT NULL DEFAULT 0,
  `honorHighestRank` int(11) unsigned NOT NULL DEFAULT 0,
  `honorStanding` int(11) unsigned NOT NULL DEFAULT 0,
  `honorLastWeekHK` int(11) unsigned NOT NULL DEFAULT 0,
  `honorLastWeekCP` decimal(11,1) NOT NULL DEFAULT 0.0,
  `honorStoredHK` int(11) NOT NULL DEFAULT 0,
  `honorStoredDK` int(11) NOT NULL DEFAULT 0,
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT 0,
  `drunk` smallint(5) unsigned NOT NULL DEFAULT 0,
  `health` int(10) unsigned NOT NULL DEFAULT 0,
  `power1` int(10) unsigned NOT NULL DEFAULT 0,
  `power2` int(10) unsigned NOT NULL DEFAULT 0,
  `power3` int(10) unsigned NOT NULL DEFAULT 0,
  `power4` int(10) unsigned NOT NULL DEFAULT 0,
  `power5` int(10) unsigned NOT NULL DEFAULT 0,
  `exploredZones` longtext DEFAULT NULL,
  `equipmentCache` longtext DEFAULT NULL,
  `ammoId` int(10) unsigned NOT NULL DEFAULT 0,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `deleteInfos_Account` int(11) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `area` int(11) unsigned NOT NULL DEFAULT 0,
  `world_phase_mask` int(11) DEFAULT 0,
  `customFlags` int(11) NOT NULL DEFAULT 0,
  `city_protector` tinyint(3) NOT NULL DEFAULT 0,
  `regexFilterCount` int(6) unsigned NOT NULL DEFAULT 0,
  `isGMCharacter` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ignore_titles` tinyint(3) NOT NULL DEFAULT 0,
  `mortality_status` tinyint(3) NOT NULL DEFAULT 0,
  `total_deaths` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_namecleanup2019`
--

DROP TABLE IF EXISTS `characters_namecleanup2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters_namecleanup2019` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `account` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '',
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `xp` int(10) unsigned NOT NULL DEFAULT 0,
  `money` int(10) unsigned NOT NULL DEFAULT 0,
  `playerBytes` int(10) unsigned NOT NULL DEFAULT 0,
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT 0,
  `playerFlags` int(10) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `map` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `orientation` float NOT NULL DEFAULT 0,
  `taximask` longtext DEFAULT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `totaltime` int(11) unsigned NOT NULL DEFAULT 0,
  `leveltime` int(11) unsigned NOT NULL DEFAULT 0,
  `logout_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rest_bonus` float NOT NULL DEFAULT 0,
  `resettalents_multiplier` int(11) unsigned NOT NULL DEFAULT 0,
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `trans_x` float NOT NULL DEFAULT 0,
  `trans_y` float NOT NULL DEFAULT 0,
  `trans_z` float NOT NULL DEFAULT 0,
  `trans_o` float NOT NULL DEFAULT 0,
  `transguid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extra_flags` int(11) unsigned NOT NULL DEFAULT 0,
  `stable_slots` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `at_login` int(11) unsigned NOT NULL DEFAULT 0,
  `zone` int(11) unsigned NOT NULL DEFAULT 0,
  `death_expire_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxi_path` text DEFAULT NULL,
  `honorRankPoints` float NOT NULL DEFAULT 0,
  `honorHighestRank` int(11) unsigned NOT NULL DEFAULT 0,
  `honorStanding` int(11) unsigned NOT NULL DEFAULT 0,
  `honorLastWeekHK` int(11) unsigned NOT NULL DEFAULT 0,
  `honorLastWeekCP` decimal(11,1) NOT NULL DEFAULT 0.0,
  `honorStoredHK` int(11) NOT NULL DEFAULT 0,
  `honorStoredDK` int(11) NOT NULL DEFAULT 0,
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT 0,
  `drunk` smallint(5) unsigned NOT NULL DEFAULT 0,
  `health` int(10) unsigned NOT NULL DEFAULT 0,
  `power1` int(10) unsigned NOT NULL DEFAULT 0,
  `power2` int(10) unsigned NOT NULL DEFAULT 0,
  `power3` int(10) unsigned NOT NULL DEFAULT 0,
  `power4` int(10) unsigned NOT NULL DEFAULT 0,
  `power5` int(10) unsigned NOT NULL DEFAULT 0,
  `exploredZones` longtext DEFAULT NULL,
  `equipmentCache` longtext DEFAULT NULL,
  `ammoId` int(10) unsigned NOT NULL DEFAULT 0,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `deleteInfos_Account` int(11) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `area` int(11) unsigned NOT NULL DEFAULT 0,
  `world_phase_mask` int(11) DEFAULT 0,
  `customFlags` int(11) NOT NULL DEFAULT 0,
  `city_protector` tinyint(3) NOT NULL DEFAULT 0,
  `regexFilterCount` int(6) unsigned NOT NULL DEFAULT 0,
  `isGMCharacter` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_namecleanup2019`
--

LOCK TABLES `characters_namecleanup2019` WRITE;
/*!40000 ALTER TABLE `characters_namecleanup2019` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_namecleanup2019` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_namecleanup2020`
--

DROP TABLE IF EXISTS `characters_namecleanup2020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters_namecleanup2020` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `account` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '',
  `race` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `class` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `xp` int(10) unsigned NOT NULL DEFAULT 0,
  `money` int(10) unsigned NOT NULL DEFAULT 0,
  `playerBytes` int(10) unsigned NOT NULL DEFAULT 0,
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT 0,
  `playerFlags` int(10) unsigned NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `map` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `orientation` float NOT NULL DEFAULT 0,
  `taximask` longtext DEFAULT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `totaltime` int(11) unsigned NOT NULL DEFAULT 0,
  `leveltime` int(11) unsigned NOT NULL DEFAULT 0,
  `logout_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rest_bonus` float NOT NULL DEFAULT 0,
  `resettalents_multiplier` int(11) unsigned NOT NULL DEFAULT 0,
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `trans_x` float NOT NULL DEFAULT 0,
  `trans_y` float NOT NULL DEFAULT 0,
  `trans_z` float NOT NULL DEFAULT 0,
  `trans_o` float NOT NULL DEFAULT 0,
  `transguid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extra_flags` int(11) unsigned NOT NULL DEFAULT 0,
  `stable_slots` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `at_login` int(11) unsigned NOT NULL DEFAULT 0,
  `zone` int(11) unsigned NOT NULL DEFAULT 0,
  `death_expire_time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxi_path` text DEFAULT NULL,
  `honorRankPoints` float NOT NULL DEFAULT 0,
  `honorHighestRank` int(11) unsigned NOT NULL DEFAULT 0,
  `honorStanding` int(11) unsigned NOT NULL DEFAULT 0,
  `honorLastWeekHK` int(11) unsigned NOT NULL DEFAULT 0,
  `honorLastWeekCP` decimal(11,1) NOT NULL DEFAULT 0.0,
  `honorStoredHK` int(11) NOT NULL DEFAULT 0,
  `honorStoredDK` int(11) NOT NULL DEFAULT 0,
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT 0,
  `drunk` smallint(5) unsigned NOT NULL DEFAULT 0,
  `health` int(10) unsigned NOT NULL DEFAULT 0,
  `power1` int(10) unsigned NOT NULL DEFAULT 0,
  `power2` int(10) unsigned NOT NULL DEFAULT 0,
  `power3` int(10) unsigned NOT NULL DEFAULT 0,
  `power4` int(10) unsigned NOT NULL DEFAULT 0,
  `power5` int(10) unsigned NOT NULL DEFAULT 0,
  `exploredZones` longtext DEFAULT NULL,
  `equipmentCache` longtext DEFAULT NULL,
  `ammoId` int(10) unsigned NOT NULL DEFAULT 0,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `deleteInfos_Account` int(11) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `area` int(11) unsigned NOT NULL DEFAULT 0,
  `world_phase_mask` int(11) DEFAULT 0,
  `customFlags` int(11) NOT NULL DEFAULT 0,
  `city_protector` tinyint(3) NOT NULL DEFAULT 0,
  `regexFilterCount` int(6) unsigned NOT NULL DEFAULT 0,
  `isGMCharacter` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `ignore_titles` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_namecleanup2020`
--

LOCK TABLES `characters_namecleanup2020` WRITE;
/*!40000 ALTER TABLE `characters_namecleanup2020` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_namecleanup2020` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corpse`
--

DROP TABLE IF EXISTS `corpse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corpse` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `player` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `map` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT 0,
  `corpse_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `instance` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpse_type`),
  KEY `idx_instance` (`instance`),
  KEY `idx_player` (`player`),
  KEY `idx_time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Death System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corpse`
--

LOCK TABLES `corpse` WRITE;
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_respawn`
--

DROP TABLE IF EXISTS `creature_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT 0,
  `instance` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `map` int(5) unsigned DEFAULT 0,
  PRIMARY KEY (`guid`,`instance`),
  KEY `idx_instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_respawn`
--

LOCK TABLES `creature_respawn` WRITE;
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_status`
--

DROP TABLE IF EXISTS `game_event_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event_status` (
  `event` smallint(6) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Game event system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_status`
--

LOCK TABLES `game_event_status` WRITE;
/*!40000 ALTER TABLE `game_event_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_respawn`
--

DROP TABLE IF EXISTS `gameobject_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT 0,
  `instance` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `map` int(5) unsigned DEFAULT 0,
  PRIMARY KEY (`guid`,`instance`),
  KEY `idx_instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_respawn`
--

LOCK TABLES `gameobject_respawn` WRITE;
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_subsurveys`
--

DROP TABLE IF EXISTS `gm_subsurveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT 0,
  `rank` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_subsurveys`
--

LOCK TABLES `gm_subsurveys` WRITE;
/*!40000 ALTER TABLE `gm_subsurveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_subsurveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_surveys`
--

DROP TABLE IF EXISTS `gm_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT 0,
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT 0,
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`surveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_surveys`
--

LOCK TABLES `gm_surveys` WRITE;
/*!40000 ALTER TABLE `gm_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_tickets`
--

DROP TABLE IF EXISTS `gm_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT 0,
  `mapId` smallint(5) unsigned NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT 0,
  `closedBy` int(10) NOT NULL DEFAULT 0,
  `assignedTo` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `response` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ticketType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `securityNeeded` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ticketId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_tickets`
--

LOCK TABLES `gm_tickets` WRITE;
/*!40000 ALTER TABLE `gm_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_instance`
--

DROP TABLE IF EXISTS `group_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_instance` (
  `leaderGuid` int(11) unsigned NOT NULL DEFAULT 0,
  `instance` int(11) unsigned NOT NULL DEFAULT 0,
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`leaderGuid`,`instance`),
  KEY `idx_instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_instance`
--

LOCK TABLES `group_instance` WRITE;
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_member` (
  `groupId` int(11) unsigned NOT NULL,
  `memberGuid` int(11) unsigned NOT NULL,
  `assistant` tinyint(1) unsigned NOT NULL,
  `subgroup` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`groupId`,`memberGuid`),
  KEY `idx_memberGuid` (`memberGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_member`
--

LOCK TABLES `group_member` WRITE;
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `groupId` int(11) unsigned NOT NULL,
  `leaderGuid` int(11) unsigned NOT NULL,
  `mainTank` int(11) unsigned NOT NULL,
  `mainAssistant` int(11) unsigned NOT NULL,
  `lootMethod` tinyint(4) unsigned NOT NULL,
  `looterGuid` int(11) unsigned NOT NULL,
  `lootThreshold` tinyint(4) unsigned NOT NULL,
  `icon1` int(11) unsigned NOT NULL,
  `icon2` int(11) unsigned NOT NULL,
  `icon3` int(11) unsigned NOT NULL,
  `icon4` int(11) unsigned NOT NULL,
  `icon5` int(11) unsigned NOT NULL,
  `icon6` int(11) unsigned NOT NULL,
  `icon7` int(11) unsigned NOT NULL,
  `icon8` int(11) unsigned NOT NULL,
  `isRaid` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `key_leaderGuid` (`leaderGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild` (
  `guildid` int(6) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `leaderguid` int(6) unsigned NOT NULL DEFAULT 0,
  `EmblemStyle` int(5) NOT NULL DEFAULT 0,
  `EmblemColor` int(5) NOT NULL DEFAULT 0,
  `BorderStyle` int(5) NOT NULL DEFAULT 0,
  `BorderColor` int(5) NOT NULL DEFAULT 0,
  `BackgroundColor` int(5) NOT NULL DEFAULT 0,
  `info` text NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `createdate` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild`
--

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_bank`
--

DROP TABLE IF EXISTS `guild_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_bank` (
  `guid` int(11) unsigned NOT NULL,
  `bag` int(11) unsigned NOT NULL DEFAULT 0,
  `slot` tinyint(3) unsigned NOT NULL,
  `item` int(11) unsigned NOT NULL,
  `item_template` int(11) unsigned NOT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_bank`
--

LOCK TABLES `guild_bank` WRITE;
/*!40000 ALTER TABLE `guild_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_eventlog`
--

DROP TABLE IF EXISTS `guild_eventlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_eventlog` (
  `guildid` int(11) NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(11) NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(1) NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(11) NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(11) NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(2) NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` bigint(20) NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `idx_LogGuid` (`LogGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_eventlog`
--

LOCK TABLES `guild_eventlog` WRITE;
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_member`
--

DROP TABLE IF EXISTS `guild_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_member` (
  `guildid` int(6) unsigned NOT NULL DEFAULT 0,
  `guid` int(11) unsigned NOT NULL DEFAULT 0,
  `rank` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `pnote` varchar(255) NOT NULL DEFAULT '',
  `offnote` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `key_guid` (`guid`),
  KEY `idx_guildid` (`guildid`),
  KEY `idx_guildid_rank` (`guildid`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_member`
--

LOCK TABLES `guild_member` WRITE;
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_rank`
--

DROP TABLE IF EXISTS `guild_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_rank` (
  `guildid` int(6) unsigned NOT NULL DEFAULT 0,
  `rid` int(11) unsigned NOT NULL,
  `rname` varchar(255) NOT NULL DEFAULT '',
  `rights` int(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`,`rid`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_rank`
--

LOCK TABLES `guild_rank` WRITE;
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance`
--

DROP TABLE IF EXISTS `instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `map` int(11) unsigned NOT NULL DEFAULT 0,
  `resettime` bigint(40) NOT NULL DEFAULT 0,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_map` (`map`),
  KEY `idx_resettime` (`resettime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance`
--

LOCK TABLES `instance` WRITE;
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_copy`
--

DROP TABLE IF EXISTS `instance_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_copy` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `map` int(11) unsigned NOT NULL DEFAULT 0,
  `resettime` bigint(40) NOT NULL DEFAULT 0,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_map` (`map`),
  KEY `idx_resettime` (`resettime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_copy`
--

LOCK TABLES `instance_copy` WRITE;
/*!40000 ALTER TABLE `instance_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_reset`
--

DROP TABLE IF EXISTS `instance_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_reset` (
  `mapid` int(11) unsigned NOT NULL DEFAULT 0,
  `resettime` bigint(40) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mapid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_reset`
--

LOCK TABLES `instance_reset` WRITE;
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_instance`
--

DROP TABLE IF EXISTS `item_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT 0,
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `owner_guid` int(10) unsigned NOT NULL DEFAULT 0,
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT 0,
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT 0,
  `count` int(10) unsigned NOT NULL DEFAULT 1,
  `duration` int(10) NOT NULL DEFAULT 0,
  `charges` tinytext DEFAULT NULL,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT 0,
  `transmogrifyId` int(11) unsigned NOT NULL DEFAULT 0,
  `durability` smallint(5) unsigned NOT NULL DEFAULT 0,
  `text` int(10) unsigned NOT NULL DEFAULT 0,
  `generated_loot` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`),
  KEY `idx_itemEntry` (`itemEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_instance`
--

LOCK TABLES `item_instance` WRITE;
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_loot`
--

DROP TABLE IF EXISTS `item_loot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_loot` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0,
  `owner_guid` int(11) unsigned NOT NULL DEFAULT 0,
  `itemid` int(11) unsigned NOT NULL DEFAULT 0,
  `amount` int(11) unsigned NOT NULL DEFAULT 0,
  `property` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`itemid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_loot`
--

LOCK TABLES `item_loot` WRITE;
/*!40000 ALTER TABLE `item_loot` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_text`
--

DROP TABLE IF EXISTS `item_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_text` (
  `id` int(11) unsigned NOT NULL DEFAULT 0,
  `text` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_text`
--

LOCK TABLES `item_text` WRITE;
/*!40000 ALTER TABLE `item_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_movement`
--

DROP TABLE IF EXISTS `logs_movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs_movement` (
  `account` int(10) unsigned NOT NULL,
  `guid` int(10) unsigned NOT NULL,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `map` int(10) unsigned NOT NULL,
  `desyncMs` int(11) NOT NULL,
  `desyncDist` float NOT NULL,
  `cheats` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_movement`
--

LOCK TABLES `logs_movement` WRITE;
/*!40000 ALTER TABLE `logs_movement` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_movement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_warden`
--

DROP TABLE IF EXISTS `logs_warden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs_warden` (
  `entry` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log entry ID',
  `check` smallint(5) unsigned NOT NULL COMMENT 'Failed Warden check ID',
  `action` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Action taken (enum WardenActions)',
  `account` int(11) unsigned NOT NULL COMMENT 'Account ID',
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Player GUID',
  `map` int(11) unsigned DEFAULT NULL COMMENT 'Map ID',
  `position_x` float DEFAULT NULL COMMENT 'Player position X',
  `position_y` float DEFAULT NULL COMMENT 'Player position Y',
  `position_z` float DEFAULT NULL COMMENT 'Player position Z',
  `date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date of the log entry',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Warden log of failed checks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_warden`
--

LOCK TABLES `logs_warden` WRITE;
/*!40000 ALTER TABLE `logs_warden` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_warden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `stationery` tinyint(3) NOT NULL DEFAULT 41,
  `mailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `sender` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `receiver` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `subject` longtext DEFAULT NULL,
  `itemTextId` int(11) unsigned NOT NULL DEFAULT 0,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `expire_time` bigint(40) NOT NULL DEFAULT 0,
  `deliver_time` bigint(40) NOT NULL DEFAULT 0,
  `money` int(11) unsigned NOT NULL DEFAULT 0,
  `cod` int(11) unsigned NOT NULL DEFAULT 0,
  `checked` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isDeleted` tinyint(3) unsigned DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`),
  KEY `FK_mail_item_text` (`itemTextId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mail System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_items`
--

DROP TABLE IF EXISTS `mail_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_items` (
  `mail_id` int(11) unsigned NOT NULL DEFAULT 0,
  `item_guid` int(11) unsigned NOT NULL DEFAULT 0,
  `item_template` int(11) unsigned NOT NULL DEFAULT 0,
  `receiver` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`mail_id`,`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_item_guid` (`item_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_items`
--

LOCK TABLES `mail_items` WRITE;
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL DEFAULT '0',
  `Hash` varchar(128) NOT NULL DEFAULT '0',
  `AppliedAt` datetime NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_aura`
--

DROP TABLE IF EXISTS `pet_aura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_aura` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier',
  `item_guid` int(11) unsigned NOT NULL DEFAULT 0,
  `spell` int(11) unsigned NOT NULL DEFAULT 0,
  `stackcount` int(11) unsigned NOT NULL DEFAULT 1,
  `remaincharges` int(11) unsigned NOT NULL DEFAULT 0,
  `basepoints0` int(11) NOT NULL DEFAULT 0,
  `basepoints1` int(11) NOT NULL DEFAULT 0,
  `basepoints2` int(11) NOT NULL DEFAULT 0,
  `periodictime0` int(11) unsigned NOT NULL DEFAULT 0,
  `periodictime1` int(11) unsigned NOT NULL DEFAULT 0,
  `periodictime2` int(11) unsigned NOT NULL DEFAULT 0,
  `maxduration` int(11) NOT NULL DEFAULT 0,
  `remaintime` int(11) NOT NULL DEFAULT 0,
  `effIndexMask` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_aura`
--

LOCK TABLES `pet_aura` WRITE;
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_spell`
--

DROP TABLE IF EXISTS `pet_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_spell` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_spell`
--

LOCK TABLES `pet_spell` WRITE;
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_spell_cooldown`
--

DROP TABLE IF EXISTS `pet_spell_cooldown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) unsigned NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_spell_cooldown`
--

LOCK TABLES `pet_spell_cooldown` WRITE;
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petition`
--

DROP TABLE IF EXISTS `petition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT 0,
  `charterguid` int(10) unsigned DEFAULT NULL COMMENT 'Charter item GUID',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `key_ownerguid_petitionguid` (`ownerguid`,`petitionguid`),
  UNIQUE KEY `charterguid` (`charterguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petition`
--

LOCK TABLES `petition` WRITE;
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petition_sign`
--

DROP TABLE IF EXISTS `petition_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(11) unsigned NOT NULL DEFAULT 0,
  `playerguid` int(11) unsigned NOT NULL DEFAULT 0,
  `player_account` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `idx_playerguid` (`playerguid`),
  KEY `idx_ownerguid` (`ownerguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petition_sign`
--

LOCK TABLES `petition_sign` WRITE;
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerbot`
--

DROP TABLE IF EXISTS `playerbot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playerbot` (
  `char_guid` bigint(20) unsigned NOT NULL,
  `chance` int(10) unsigned NOT NULL DEFAULT 10,
  `comment` varchar(255) DEFAULT NULL,
  `ai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`char_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerbot`
--

LOCK TABLES `playerbot` WRITE;
/*!40000 ALTER TABLE `playerbot` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerbot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_variables`
--

DROP TABLE IF EXISTS `saved_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_variables` (
  `key` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `cleaning_flags` int(11) unsigned NOT NULL DEFAULT 0,
  `lastHonorMaintenanceDay` int(11) unsigned NOT NULL DEFAULT 0,
  `nextHonorMaintenanceDay` int(11) unsigned NOT NULL DEFAULT 0,
  `honorMaintenanceMarker` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Variable Saves';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_variables`
--

LOCK TABLES `saved_variables` WRITE;
/*!40000 ALTER TABLE `saved_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_racechange`
--

DROP TABLE IF EXISTS `store_racechange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_racechange` (
  `guid` int(11) unsigned NOT NULL,
  `race` tinyint(1) unsigned NOT NULL,
  `gender` tinyint(1) unsigned NOT NULL,
  `playerbytes1` int(10) unsigned NOT NULL,
  `playerbytes2` int(10) unsigned NOT NULL,
  `transaction` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Race change requests from web backend. Playerbytes is from ''characters'' table, is used to copy new character outfit.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_racechange`
--

LOCK TABLES `store_racechange` WRITE;
/*!40000 ALTER TABLE `store_racechange` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_racechange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world`
--

DROP TABLE IF EXISTS `world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world` (
  `map` int(11) unsigned NOT NULL DEFAULT 0,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world`
--

LOCK TABLES `world` WRITE;
/*!40000 ALTER TABLE `world` DISABLE KEYS */;
/*!40000 ALTER TABLE `world` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldstates`
--

DROP TABLE IF EXISTS `worldstates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldstates` (
  `entry` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  UNIQUE KEY `key_entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldstates`
--

LOCK TABLES `worldstates` WRITE;
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
