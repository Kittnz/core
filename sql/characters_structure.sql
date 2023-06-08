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

-- Dumping structure for table tw_characters.auction
DROP TABLE IF EXISTS `auction`;
CREATE TABLE IF NOT EXISTS `auction` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `houseid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_template` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(11) NOT NULL DEFAULT '0',
  `time` bigint(20) NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(11) NOT NULL DEFAULT '0',
  `startbid` int(11) NOT NULL DEFAULT '0',
  `deposit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key_item_guid` (`itemguid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.auction: 0 rows
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;


-- Dumping structure for table tw_characters.bounty_quest_targets
DROP TABLE IF EXISTS `bounty_quest_targets`;
CREATE TABLE IF NOT EXISTS `bounty_quest_targets` (
  `id` int(10) unsigned NOT NULL DEFAULT '1',
  `horde_player` int(10) unsigned NOT NULL DEFAULT '0',
  `alliance_player` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.bounty_quest_targets: ~0 rows (approximately)
/*!40000 ALTER TABLE `bounty_quest_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `bounty_quest_targets` ENABLE KEYS */;


-- Dumping structure for table tw_characters.bugreport
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Debug System';

-- Dumping data for table tw_characters.bugreport: 0 rows
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;


-- Dumping structure for table tw_characters.bugreports
DROP TABLE IF EXISTS `bugreports`;
CREATE TABLE IF NOT EXISTS `bugreports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `playerGuid` int(11) DEFAULT NULL,
  `playerMap` int(11) DEFAULT NULL,
  `playerInstanceId` int(11) DEFAULT NULL,
  `playerX` float DEFAULT NULL,
  `playerY` float DEFAULT NULL,
  `playerZ` float DEFAULT NULL,
  `clientIp` varchar(100) DEFAULT NULL,
  `reportType` tinyint(4) DEFAULT NULL,
  `reportText` text,
  `serverInformation` text,
  `bugStatus` enum('New','NeedTest','Fixed','Invalid','Duplicate','Confirmed') NOT NULL DEFAULT 'New',
  KEY `idx_id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.bugreports: ~0 rows (approximately)
/*!40000 ALTER TABLE `bugreports` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreports` ENABLE KEYS */;


-- Dumping structure for table tw_characters.census
DROP TABLE IF EXISTS `census`;
CREATE TABLE IF NOT EXISTS `census` (
  `time` datetime DEFAULT NULL,
  `race` int(11) DEFAULT NULL,
  `onlineCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.census: ~0 rows (approximately)
/*!40000 ALTER TABLE `census` DISABLE KEYS */;
/*!40000 ALTER TABLE `census` ENABLE KEYS */;


-- Dumping structure for table tw_characters.characters
DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` longtext,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_multiplier` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extra_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `at_login` int(10) unsigned NOT NULL DEFAULT '0',
  `zone` int(10) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `honorRankPoints` float NOT NULL DEFAULT '0',
  `honorHighestRank` int(10) unsigned NOT NULL DEFAULT '0',
  `honorStanding` int(10) unsigned NOT NULL DEFAULT '0',
  `honorLastWeekHK` int(10) unsigned NOT NULL DEFAULT '0',
  `honorLastWeekCP` decimal(11,1) NOT NULL DEFAULT '0.0',
  `honorStoredHK` int(11) NOT NULL DEFAULT '0',
  `honorStoredDK` int(11) NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `ammoId` int(10) unsigned NOT NULL DEFAULT '0',
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `area` int(10) unsigned NOT NULL DEFAULT '0',
  `world_phase_mask` int(11) DEFAULT '0',
  `customFlags` int(11) NOT NULL DEFAULT '0',
  `city_protector` tinyint(4) NOT NULL DEFAULT '0',
  `regexFilterCount` int(10) unsigned NOT NULL DEFAULT '0',
  `isGMCharacter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ignore_titles` tinyint(4) NOT NULL DEFAULT '0',
  `mortality_status` tinyint(4) NOT NULL DEFAULT '0',
  `total_deaths` int(11) NOT NULL DEFAULT '0',
  `xp_gain` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`) USING BTREE,
  KEY `idx_account` (`account`) USING BTREE,
  KEY `idx_online` (`online`) USING BTREE,
  KEY `idx_name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.characters: 0 rows
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_action
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE IF NOT EXISTS `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`button`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_action: 0 rows
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_armory_stats
DROP TABLE IF EXISTS `character_armory_stats`;
CREATE TABLE IF NOT EXISTS `character_armory_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` float NOT NULL DEFAULT '0',
  `agility` float NOT NULL DEFAULT '0',
  `stamina` float NOT NULL DEFAULT '0',
  `intellect` float NOT NULL DEFAULT '0',
  `spirit` float NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `dmgModNormal` int(10) unsigned NOT NULL DEFAULT '0',
  `dmgModHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `dmgModFire` int(10) unsigned NOT NULL DEFAULT '0',
  `dmgModNature` int(10) unsigned NOT NULL DEFAULT '0',
  `dmgModFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `dmgModShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `dmgModArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float NOT NULL DEFAULT '0',
  `dodgePct` float NOT NULL DEFAULT '0',
  `parryPct` float NOT NULL DEFAULT '0',
  `meleeCritPct` float NOT NULL DEFAULT '0',
  `rangedCritPct` float NOT NULL DEFAULT '0',
  `attackPower` float NOT NULL DEFAULT '0',
  `rangedAttackPower` float NOT NULL DEFAULT '0',
  `meleeDamage` text NOT NULL,
  `rangedDamage` text NOT NULL,
  `meleeWeaponSpeed` float NOT NULL DEFAULT '0',
  `rangedWeaponSpeed` float NOT NULL DEFAULT '0',
  `castSpeed` float NOT NULL DEFAULT '0',
  `meleeHit` float NOT NULL DEFAULT '0',
  `rangedHit` float NOT NULL DEFAULT '0',
  `spellHit` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.character_armory_stats: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_armory_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_armory_stats` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_aura
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE IF NOT EXISTS `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spell` int(10) unsigned NOT NULL DEFAULT '0',
  `stackcount` int(10) unsigned NOT NULL DEFAULT '1',
  `remaincharges` int(10) unsigned NOT NULL DEFAULT '0',
  `basepoints0` int(11) NOT NULL DEFAULT '0',
  `basepoints1` int(11) NOT NULL DEFAULT '0',
  `basepoints2` int(11) NOT NULL DEFAULT '0',
  `periodictime0` int(10) unsigned NOT NULL DEFAULT '0',
  `periodictime1` int(10) unsigned NOT NULL DEFAULT '0',
  `periodictime2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `effIndexMask` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_aura: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_aura_suspended
DROP TABLE IF EXISTS `character_aura_suspended`;
CREATE TABLE IF NOT EXISTS `character_aura_suspended` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spell` int(10) unsigned NOT NULL DEFAULT '0',
  `stackcount` int(10) unsigned NOT NULL DEFAULT '1',
  `remaincharges` int(10) unsigned NOT NULL DEFAULT '0',
  `basepoints0` int(11) NOT NULL DEFAULT '0',
  `basepoints1` int(11) NOT NULL DEFAULT '0',
  `basepoints2` int(11) NOT NULL DEFAULT '0',
  `periodictime0` int(10) unsigned NOT NULL DEFAULT '0',
  `periodictime1` int(10) unsigned NOT NULL DEFAULT '0',
  `periodictime2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `effIndexMask` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_aura_suspended: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_aura_suspended` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura_suspended` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_battleground_data
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE IF NOT EXISTS `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `team` int(10) unsigned NOT NULL DEFAULT '0',
  `join_x` float NOT NULL DEFAULT '0',
  `join_y` float NOT NULL DEFAULT '0',
  `join_z` float NOT NULL DEFAULT '0',
  `join_o` float NOT NULL DEFAULT '0',
  `join_map` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_battleground_data: 0 rows
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_bgqueue
DROP TABLE IF EXISTS `character_bgqueue`;
CREATE TABLE IF NOT EXISTS `character_bgqueue` (
  `PlayerGUID` int(11) NOT NULL DEFAULT '0',
  `playerName` varchar(12) CHARACTER SET latin1 NOT NULL,
  `playerIP` int(11) NOT NULL,
  `BGtype` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`PlayerGUID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.character_bgqueue: 0 rows
/*!40000 ALTER TABLE `character_bgqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_bgqueue` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_deleted_items
DROP TABLE IF EXISTS `character_deleted_items`;
CREATE TABLE IF NOT EXISTS `character_deleted_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `stack_count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.character_deleted_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_deleted_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_deleted_items` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_destroyed_items
DROP TABLE IF EXISTS `character_destroyed_items`;
CREATE TABLE IF NOT EXISTS `character_destroyed_items` (
  `player_guid` int(10) unsigned NOT NULL,
  `item_entry` mediumint(8) unsigned NOT NULL,
  `stack_count` mediumint(8) unsigned NOT NULL,
  `time` bigint(20) unsigned NOT NULL,
  KEY `player_guid` (`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='items that players have thrown away';

-- Dumping data for table tw_characters.character_destroyed_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_destroyed_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_destroyed_items` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_duplicate_account
DROP TABLE IF EXISTS `character_duplicate_account`;
CREATE TABLE IF NOT EXISTS `character_duplicate_account` (
  `account` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.character_duplicate_account: 0 rows
/*!40000 ALTER TABLE `character_duplicate_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_duplicate_account` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_forgotten_skills
DROP TABLE IF EXISTS `character_forgotten_skills`;
CREATE TABLE IF NOT EXISTS `character_forgotten_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(8) unsigned NOT NULL,
  `value` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_forgotten_skills: 0 rows
/*!40000 ALTER TABLE `character_forgotten_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_forgotten_skills` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_gifts
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE IF NOT EXISTS `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`) USING BTREE,
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.character_gifts: 0 rows
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_homebind
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE IF NOT EXISTS `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `map` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zone` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_homebind: 0 rows
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_honor_cp
DROP TABLE IF EXISTS `character_honor_cp`;
CREATE TABLE IF NOT EXISTS `character_honor_cp` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `victimType` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `victim` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature / Player Identifier',
  `cp` float NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_honor_cp: 0 rows
/*!40000 ALTER TABLE `character_honor_cp` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_honor_cp` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_instance
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE IF NOT EXISTS `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`) USING BTREE,
  KEY `idx_instance` (`instance`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.character_instance: 0 rows
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_inventory
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE IF NOT EXISTS `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  `item_template` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  PRIMARY KEY (`item`) USING BTREE,
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_inventory: 0 rows
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_inventory_copy
DROP TABLE IF EXISTS `character_inventory_copy`;
CREATE TABLE IF NOT EXISTS `character_inventory_copy` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  `item_template` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  PRIMARY KEY (`item`) USING BTREE,
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_inventory_copy: 0 rows
/*!40000 ALTER TABLE `character_inventory_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_inventory_copy` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_item_logs
DROP TABLE IF EXISTS `character_item_logs`;
CREATE TABLE IF NOT EXISTS `character_item_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `playerLowGuid` int(10) unsigned NOT NULL,
  `itemLowGuid` int(10) unsigned NOT NULL,
  `itemEntry` int(10) unsigned NOT NULL,
  `itemCount` int(10) unsigned NOT NULL,
  `action` int(10) unsigned NOT NULL,
  `timestamp` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `playerLowGuid` (`playerLowGuid`,`itemLowGuid`,`itemEntry`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `timestamp` (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.character_item_logs: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_item_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_item_logs` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_pet
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE IF NOT EXISTS `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` int(10) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loyaltypoints` int(11) NOT NULL DEFAULT '0',
  `loyalty` int(10) unsigned NOT NULL DEFAULT '0',
  `trainpoint` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT 'Pet',
  `renamed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `slot` int(10) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `curhappiness` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `abdata` longtext,
  `teachspelldata` longtext,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_owner` (`owner`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- Dumping data for table tw_characters.character_pet: 0 rows
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_queststatus
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE IF NOT EXISTS `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `rewarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mobcount1` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount2` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount3` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount4` int(10) unsigned NOT NULL DEFAULT '0',
  `itemcount1` int(10) unsigned NOT NULL DEFAULT '0',
  `itemcount2` int(10) unsigned NOT NULL DEFAULT '0',
  `itemcount3` int(10) unsigned NOT NULL DEFAULT '0',
  `itemcount4` int(10) unsigned NOT NULL DEFAULT '0',
  `reward_choice` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_queststatus: 0 rows
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_reputation
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE IF NOT EXISTS `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` int(10) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_reputation: 0 rows
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_skills
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE IF NOT EXISTS `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(8) unsigned NOT NULL,
  `value` mediumint(8) unsigned NOT NULL,
  `max` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_skills: 0 rows
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_skills_copy
DROP TABLE IF EXISTS `character_skills_copy`;
CREATE TABLE IF NOT EXISTS `character_skills_copy` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(8) unsigned NOT NULL,
  `value` mediumint(8) unsigned NOT NULL,
  `max` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_skills_copy: 0 rows
/*!40000 ALTER TABLE `character_skills_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills_copy` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_social
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE IF NOT EXISTS `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  PRIMARY KEY (`guid`,`friend`,`flags`) USING BTREE,
  KEY `idx_guid` (`guid`) USING BTREE,
  KEY `idx_friend` (`friend`) USING BTREE,
  KEY `idx_guid_flags` (`guid`,`flags`) USING BTREE,
  KEY `idx_friend_flags` (`friend`,`flags`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_social: 0 rows
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_spell
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE IF NOT EXISTS `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`) USING BTREE,
  KEY `idx_spell` (`spell`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_spell: 0 rows
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_spell_cooldown
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE IF NOT EXISTS `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `catTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.character_spell_cooldown: 0 rows
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_spell_dual_spec
DROP TABLE IF EXISTS `character_spell_dual_spec`;
CREATE TABLE IF NOT EXISTS `character_spell_dual_spec` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'primary or secondary',
  PRIMARY KEY (`guid`,`spell`,`spec`) USING BTREE,
  KEY `idx_spell` (`spell`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_spell_dual_spec: 0 rows
/*!40000 ALTER TABLE `character_spell_dual_spec` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_dual_spec` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_stats
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE IF NOT EXISTS `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower6` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower7` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.character_stats: 0 rows
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_ticket
DROP TABLE IF EXISTS `character_ticket`;
CREATE TABLE IF NOT EXISTS `character_ticket` (
  `ticket_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `ticket_text` text,
  `response_text` text,
  `ticket_lastchange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_ticket: 0 rows
/*!40000 ALTER TABLE `character_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_ticket` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_titles
DROP TABLE IF EXISTS `character_titles`;
CREATE TABLE IF NOT EXISTS `character_titles` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `title` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_titles: 0 rows
/*!40000 ALTER TABLE `character_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_titles` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_transmogs
DROP TABLE IF EXISTS `character_transmogs`;
CREATE TABLE IF NOT EXISTS `character_transmogs` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemId` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.character_transmogs: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_transmogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_transmogs` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_tutorial
DROP TABLE IF EXISTS `character_tutorial`;
CREATE TABLE IF NOT EXISTS `character_tutorial` (
  `account` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3514189 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.character_tutorial: 0 rows
/*!40000 ALTER TABLE `character_tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_tutorial` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_variables
DROP TABLE IF EXISTS `character_variables`;
CREATE TABLE IF NOT EXISTS `character_variables` (
  `lowGuid` int(10) unsigned NOT NULL,
  `variableType` int(10) unsigned NOT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`lowGuid`,`variableType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.character_variables: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_variables` ENABLE KEYS */;


-- Dumping structure for table tw_characters.character_xp_from_log
DROP TABLE IF EXISTS `character_xp_from_log`;
CREATE TABLE IF NOT EXISTS `character_xp_from_log` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.character_xp_from_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_xp_from_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_xp_from_log` ENABLE KEYS */;


-- Dumping structure for table tw_characters.corpse
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE IF NOT EXISTS `corpse` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `player` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `map` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `corpse_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE,
  KEY `idx_type` (`corpse_type`) USING BTREE,
  KEY `idx_instance` (`instance`) USING BTREE,
  KEY `idx_player` (`player`) USING BTREE,
  KEY `idx_time` (`time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Death System';

-- Dumping data for table tw_characters.corpse: 0 rows
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;


-- Dumping structure for table tw_characters.creature_respawn
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE IF NOT EXISTS `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT '0',
  `instance` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `map` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`) USING BTREE,
  KEY `idx_instance` (`instance`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';

-- Dumping data for table tw_characters.creature_respawn: ~0 rows (approximately)
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;


-- Dumping structure for table tw_characters.gameobject_respawn
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE IF NOT EXISTS `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT '0',
  `instance` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `map` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`) USING BTREE,
  KEY `idx_instance` (`instance`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';

-- Dumping data for table tw_characters.gameobject_respawn: ~0 rows (approximately)
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;


-- Dumping structure for table tw_characters.game_event_status
DROP TABLE IF EXISTS `game_event_status`;
CREATE TABLE IF NOT EXISTS `game_event_status` (
  `event` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Game event system';

-- Dumping data for table tw_characters.game_event_status: 0 rows
/*!40000 ALTER TABLE `game_event_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_status` ENABLE KEYS */;


-- Dumping structure for table tw_characters.gm_subsurveys
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE IF NOT EXISTS `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.gm_subsurveys: 0 rows
/*!40000 ALTER TABLE `gm_subsurveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_subsurveys` ENABLE KEYS */;


-- Dumping structure for table tw_characters.gm_surveys
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE IF NOT EXISTS `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.gm_surveys: 0 rows
/*!40000 ALTER TABLE `gm_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_surveys` ENABLE KEYS */;


-- Dumping structure for table tw_characters.gm_tickets
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE IF NOT EXISTS `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `closedBy` int(11) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `response` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ticketType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `securityNeeded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3677 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Dumping data for table tw_characters.gm_tickets: 0 rows
/*!40000 ALTER TABLE `gm_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_tickets` ENABLE KEYS */;


-- Dumping structure for table tw_characters.groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `groupId` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `mainTank` int(10) unsigned NOT NULL,
  `mainAssistant` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `isRaid` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`groupId`) USING BTREE,
  UNIQUE KEY `key_leaderGuid` (`leaderGuid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Groups';

-- Dumping data for table tw_characters.groups: 0 rows
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table tw_characters.group_instance
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE IF NOT EXISTS `group_instance` (
  `leaderGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`leaderGuid`,`instance`) USING BTREE,
  KEY `idx_instance` (`instance`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.group_instance: 0 rows
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;


-- Dumping structure for table tw_characters.group_member
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE IF NOT EXISTS `group_member` (
  `groupId` int(10) unsigned NOT NULL,
  `memberGuid` int(10) unsigned NOT NULL,
  `assistant` tinyint(1) unsigned NOT NULL,
  `subgroup` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`groupId`,`memberGuid`) USING BTREE,
  KEY `idx_memberGuid` (`memberGuid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Groups';

-- Dumping data for table tw_characters.group_member: 0 rows
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild
DROP TABLE IF EXISTS `guild`;
CREATE TABLE IF NOT EXISTS `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` int(11) NOT NULL DEFAULT '0',
  `EmblemColor` int(11) NOT NULL DEFAULT '0',
  `BorderStyle` int(11) NOT NULL DEFAULT '0',
  `BorderColor` int(11) NOT NULL DEFAULT '0',
  `BackgroundColor` int(11) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `createdate` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- Dumping data for table tw_characters.guild: 0 rows
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild_bank
DROP TABLE IF EXISTS `guild_bank`;
CREATE TABLE IF NOT EXISTS `guild_bank` (
  `guildid` int(11) unsigned NOT NULL,
  `guid` int(11) NOT NULL,
  `tab` int(11) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL,
  `item_template` int(11) unsigned NOT NULL,
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `charges` tinytext CHARACTER SET utf8,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text CHARACTER SET utf8 NOT NULL,
  `randomPropertyId` smallint(6) NOT NULL DEFAULT '0',
  `transmogrifyId` int(10) unsigned NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text` int(10) unsigned NOT NULL DEFAULT '0',
  `generated_loot` tinyint(4) DEFAULT '0',
  UNIQUE KEY `guildidandguid` (`guildid`,`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.guild_bank: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild_bank_log
DROP TABLE IF EXISTS `guild_bank_log`;
CREATE TABLE IF NOT EXISTS `guild_bank_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `guildid` int(11) NOT NULL,
  `player` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `tab` int(11) NOT NULL DEFAULT '1',
  `item` int(11) NOT NULL,
  `randomPropertyId` int(11) NOT NULL DEFAULT '0',
  `enchant` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL,
  `stamp` bigint(20) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  KEY `stamp` (`stamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.guild_bank_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `guild_bank_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_log` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild_bank_money
DROP TABLE IF EXISTS `guild_bank_money`;
CREATE TABLE IF NOT EXISTS `guild_bank_money` (
  `guildid` int(11) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`) USING BTREE,
  UNIQUE KEY `guildid` (`guildid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.guild_bank_money: 0 rows
/*!40000 ALTER TABLE `guild_bank_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_money` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild_bank_tabs
DROP TABLE IF EXISTS `guild_bank_tabs`;
CREATE TABLE IF NOT EXISTS `guild_bank_tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guildid` int(11) NOT NULL,
  `tabs` int(11) NOT NULL DEFAULT '0',
  `name1` varchar(64) NOT NULL DEFAULT 'Tab1',
  `name2` varchar(64) NOT NULL DEFAULT 'Tab2',
  `name3` varchar(64) NOT NULL DEFAULT 'Tab3',
  `name4` varchar(64) NOT NULL DEFAULT 'Tab4',
  `name5` varchar(64) NOT NULL DEFAULT 'Tab5',
  `icon1` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_08',
  `icon2` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_05',
  `icon3` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_03',
  `icon4` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_06',
  `icon5` varchar(128) NOT NULL DEFAULT 'inv_misc_bag_02',
  `withdrawal1` int(11) NOT NULL DEFAULT '0',
  `withdrawal2` int(11) NOT NULL DEFAULT '0',
  `withdrawal3` int(11) NOT NULL DEFAULT '0',
  `withdrawal4` int(11) NOT NULL DEFAULT '0',
  `withdrawal5` int(11) NOT NULL DEFAULT '0',
  `minrank1` int(11) NOT NULL DEFAULT '0',
  `minrank2` int(11) NOT NULL DEFAULT '0',
  `minrank3` int(11) NOT NULL DEFAULT '0',
  `minrank4` int(11) NOT NULL DEFAULT '0',
  `minrank5` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.guild_bank_tabs: 0 rows
/*!40000 ALTER TABLE `guild_bank_tabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_tabs` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild_eventlog
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE IF NOT EXISTS `guild_eventlog` (
  `guildid` int(11) NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(11) NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(1) NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(11) NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(11) NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(4) NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` bigint(20) NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`) USING BTREE,
  KEY `idx_PlayerGuid1` (`PlayerGuid1`) USING BTREE,
  KEY `idx_PlayerGuid2` (`PlayerGuid2`) USING BTREE,
  KEY `idx_LogGuid` (`LogGuid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Guild Eventlog';

-- Dumping data for table tw_characters.guild_eventlog: 0 rows
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild_house
DROP TABLE IF EXISTS `guild_house`;
CREATE TABLE IF NOT EXISTS `guild_house` (
  `guild_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `map_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Teleportation coordinates for Guild Housing';

-- Dumping data for table tw_characters.guild_house: 0 rows
/*!40000 ALTER TABLE `guild_house` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_house` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild_member
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pnote` varchar(255) NOT NULL DEFAULT '',
  `offnote` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `key_guid` (`guid`) USING BTREE,
  KEY `idx_guildid` (`guildid`) USING BTREE,
  KEY `idx_guildid_rank` (`guildid`,`rank`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Guild System';

-- Dumping data for table tw_characters.guild_member: 0 rows
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;


-- Dumping structure for table tw_characters.guild_rank
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE IF NOT EXISTS `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` int(10) unsigned NOT NULL,
  `rname` varchar(255) NOT NULL DEFAULT '',
  `rights` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`) USING BTREE,
  KEY `idx_rid` (`rid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- Dumping data for table tw_characters.guild_rank: 0 rows
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;


-- Dumping structure for table tw_characters.hardcore_deaths
DROP TABLE IF EXISTS `hardcore_deaths`;
CREATE TABLE IF NOT EXISTS `hardcore_deaths` (
  `lowGuid` int(10) unsigned NOT NULL,
  `race` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `class` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL,
  `attackerEntry` int(10) unsigned NOT NULL,
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `mapId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lowGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.hardcore_deaths: ~0 rows (approximately)
/*!40000 ALTER TABLE `hardcore_deaths` DISABLE KEYS */;
/*!40000 ALTER TABLE `hardcore_deaths` ENABLE KEYS */;


-- Dumping structure for table tw_characters.instance
DROP TABLE IF EXISTS `instance`;
CREATE TABLE IF NOT EXISTS `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(20) NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_map` (`map`) USING BTREE,
  KEY `idx_resettime` (`resettime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.instance: 0 rows
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;


-- Dumping structure for table tw_characters.instance_copy
DROP TABLE IF EXISTS `instance_copy`;
CREATE TABLE IF NOT EXISTS `instance_copy` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(20) NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_map` (`map`) USING BTREE,
  KEY `idx_resettime` (`resettime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.instance_copy: 0 rows
/*!40000 ALTER TABLE `instance_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_copy` ENABLE KEYS */;


-- Dumping structure for table tw_characters.instance_reset
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE IF NOT EXISTS `instance_reset` (
  `mapid` int(10) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.instance_reset: 0 rows
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;


-- Dumping structure for table tw_characters.item_instance
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE IF NOT EXISTS `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(11) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(6) NOT NULL DEFAULT '0',
  `transmogrifyId` int(10) unsigned NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text` int(10) unsigned NOT NULL DEFAULT '0',
  `generated_loot` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`guid`) USING BTREE,
  KEY `idx_owner_guid` (`owner_guid`) USING BTREE,
  KEY `idx_itemEntry` (`itemEntry`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Item System';

-- Dumping data for table tw_characters.item_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;


-- Dumping structure for table tw_characters.item_loot
DROP TABLE IF EXISTS `item_loot`;
CREATE TABLE IF NOT EXISTS `item_loot` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `property` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`itemid`) USING BTREE,
  KEY `idx_owner_guid` (`owner_guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Item System';

-- Dumping data for table tw_characters.item_loot: 0 rows
/*!40000 ALTER TABLE `item_loot` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot` ENABLE KEYS */;


-- Dumping structure for table tw_characters.item_text
DROP TABLE IF EXISTS `item_text`;
CREATE TABLE IF NOT EXISTS `item_text` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `text` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

-- Dumping data for table tw_characters.item_text: 0 rows
/*!40000 ALTER TABLE `item_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_text` ENABLE KEYS */;


-- Dumping structure for table tw_characters.logs_movement
DROP TABLE IF EXISTS `logs_movement`;
CREATE TABLE IF NOT EXISTS `logs_movement` (
  `account` int(10) unsigned NOT NULL,
  `guid` int(10) unsigned NOT NULL,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `map` int(10) unsigned NOT NULL,
  `desyncMs` int(11) NOT NULL,
  `desyncDist` float NOT NULL,
  `cheats` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.logs_movement: ~0 rows (approximately)
/*!40000 ALTER TABLE `logs_movement` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_movement` ENABLE KEYS */;


-- Dumping structure for table tw_characters.logs_shellcoin
DROP TABLE IF EXISTS `logs_shellcoin`;
CREATE TABLE IF NOT EXISTS `logs_shellcoin` (
  `time` bigint(20) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tw_characters.logs_shellcoin: ~0 rows (approximately)
/*!40000 ALTER TABLE `logs_shellcoin` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_shellcoin` ENABLE KEYS */;


-- Dumping structure for table tw_characters.logs_warden
DROP TABLE IF EXISTS `logs_warden`;
CREATE TABLE IF NOT EXISTS `logs_warden` (
  `entry` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log entry ID',
  `check` smallint(5) unsigned NOT NULL COMMENT 'Failed Warden check ID',
  `action` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Action taken (enum WardenActions)',
  `account` int(10) unsigned NOT NULL COMMENT 'Account ID',
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Player GUID',
  `map` int(10) unsigned DEFAULT NULL COMMENT 'Map ID',
  `position_x` float DEFAULT NULL COMMENT 'Player position X',
  `position_y` float DEFAULT NULL COMMENT 'Player position Y',
  `position_z` float DEFAULT NULL COMMENT 'Player position Z',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of the log entry',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Warden log of failed checks';

-- Dumping data for table tw_characters.logs_warden: 0 rows
/*!40000 ALTER TABLE `logs_warden` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_warden` ENABLE KEYS */;


-- Dumping structure for table tw_characters.mail
DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(4) NOT NULL DEFAULT '41',
  `mailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `itemTextId` int(10) unsigned NOT NULL DEFAULT '0',
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` bigint(20) NOT NULL DEFAULT '0',
  `deliver_time` bigint(20) NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `cod` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isDeleted` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_receiver` (`receiver`) USING BTREE,
  KEY `FK_mail_item_text` (`itemTextId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5446622 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mail System';

-- Dumping data for table tw_characters.mail: ~0 rows (approximately)
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;


-- Dumping structure for table tw_characters.mail_items
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE IF NOT EXISTS `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_template` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`mail_id`,`item_guid`) USING BTREE,
  KEY `idx_receiver` (`receiver`) USING BTREE,
  KEY `idx_item_guid` (`item_guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.mail_items: 0 rows
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;


-- Dumping structure for table tw_characters.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL DEFAULT '0',
  `Hash` varchar(128) NOT NULL DEFAULT '0',
  `AppliedAt` datetime NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.migrations: ~0 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table tw_characters.petition
DROP TABLE IF EXISTS `petition`;
CREATE TABLE IF NOT EXISTS `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `charterguid` int(10) unsigned DEFAULT NULL COMMENT 'Charter item GUID',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ownerguid`) USING BTREE,
  UNIQUE KEY `key_ownerguid_petitionguid` (`ownerguid`,`petitionguid`) USING BTREE,
  UNIQUE KEY `charterguid` (`charterguid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- Dumping data for table tw_characters.petition: 0 rows
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;


-- Dumping structure for table tw_characters.petition_sign
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE IF NOT EXISTS `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`) USING BTREE,
  KEY `idx_playerguid` (`playerguid`) USING BTREE,
  KEY `idx_ownerguid` (`ownerguid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- Dumping data for table tw_characters.petition_sign: 0 rows
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;


-- Dumping structure for table tw_characters.pet_aura
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE IF NOT EXISTS `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spell` int(10) unsigned NOT NULL DEFAULT '0',
  `stackcount` int(10) unsigned NOT NULL DEFAULT '1',
  `remaincharges` int(10) unsigned NOT NULL DEFAULT '0',
  `basepoints0` int(11) NOT NULL DEFAULT '0',
  `basepoints1` int(11) NOT NULL DEFAULT '0',
  `basepoints2` int(11) NOT NULL DEFAULT '0',
  `periodictime0` int(10) unsigned NOT NULL DEFAULT '0',
  `periodictime1` int(10) unsigned NOT NULL DEFAULT '0',
  `periodictime2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `effIndexMask` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- Dumping data for table tw_characters.pet_aura: ~0 rows (approximately)
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;


-- Dumping structure for table tw_characters.pet_spell
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE IF NOT EXISTS `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- Dumping data for table tw_characters.pet_spell: 0 rows
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;


-- Dumping structure for table tw_characters.pet_spell_cooldown
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE IF NOT EXISTS `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- Dumping data for table tw_characters.pet_spell_cooldown: 0 rows
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;


-- Dumping structure for table tw_characters.playerbot
DROP TABLE IF EXISTS `playerbot`;
CREATE TABLE IF NOT EXISTS `playerbot` (
  `char_guid` bigint(20) unsigned NOT NULL,
  `chance` int(10) unsigned NOT NULL DEFAULT '10',
  `comment` varchar(255) DEFAULT NULL,
  `ai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`char_guid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.playerbot: 0 rows
/*!40000 ALTER TABLE `playerbot` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerbot` ENABLE KEYS */;


-- Dumping structure for table tw_characters.saved_variables
DROP TABLE IF EXISTS `saved_variables`;
CREATE TABLE IF NOT EXISTS `saved_variables` (
  `key` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cleaning_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `lastHonorMaintenanceDay` int(10) unsigned NOT NULL DEFAULT '0',
  `nextHonorMaintenanceDay` int(10) unsigned NOT NULL DEFAULT '0',
  `honorMaintenanceMarker` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Variable Saves';

-- Dumping data for table tw_characters.saved_variables: 0 rows
/*!40000 ALTER TABLE `saved_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_variables` ENABLE KEYS */;


-- Dumping structure for table tw_characters.store_racechange
DROP TABLE IF EXISTS `store_racechange`;
CREATE TABLE IF NOT EXISTS `store_racechange` (
  `guid` int(10) unsigned NOT NULL,
  `race` tinyint(1) unsigned NOT NULL,
  `gender` tinyint(1) unsigned NOT NULL,
  `playerbytes1` int(10) unsigned NOT NULL,
  `playerbytes2` int(10) unsigned NOT NULL,
  `transaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transaction`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Race change requests from web backend. Playerbytes is from ''characters'' table, is used to copy new character outfit.';

-- Dumping data for table tw_characters.store_racechange: ~0 rows (approximately)
/*!40000 ALTER TABLE `store_racechange` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_racechange` ENABLE KEYS */;


-- Dumping structure for table tw_characters.whisper_targets
DROP TABLE IF EXISTS `whisper_targets`;
CREATE TABLE IF NOT EXISTS `whisper_targets` (
  `account` int(10) unsigned NOT NULL,
  `target_guid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  UNIQUE KEY `account_target` (`account`,`target_guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.whisper_targets: ~0 rows (approximately)
/*!40000 ALTER TABLE `whisper_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `whisper_targets` ENABLE KEYS */;


-- Dumping structure for table tw_characters.world
DROP TABLE IF EXISTS `world`;
CREATE TABLE IF NOT EXISTS `world` (
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`map`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.world: 0 rows
/*!40000 ALTER TABLE `world` DISABLE KEYS */;
/*!40000 ALTER TABLE `world` ENABLE KEYS */;


-- Dumping structure for table tw_characters.worldstates
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE IF NOT EXISTS `worldstates` (
  `entry` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  UNIQUE KEY `key_entry` (`entry`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table tw_characters.worldstates: 0 rows
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
