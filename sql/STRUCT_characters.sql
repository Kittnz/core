-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.1.26-MariaDB-0+deb9u1 - Debian 9.1
-- Server Betriebssystem:        debian-linux-gnu
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportiere Struktur von Tabelle tw_char.auction
CREATE TABLE IF NOT EXISTS `auction` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `houseid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_template` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `itemowner` int(11) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(11) NOT NULL DEFAULT '0',
  `time` bigint(40) NOT NULL DEFAULT '0',
  `buyguid` int(11) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(11) NOT NULL DEFAULT '0',
  `startbid` int(11) NOT NULL DEFAULT '0',
  `deposit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_item_guid` (`itemguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.bounty_quest_targets
CREATE TABLE IF NOT EXISTS `bounty_quest_targets` (
  `id` int(5) unsigned NOT NULL DEFAULT '1',
  `horde_player` int(15) unsigned NOT NULL DEFAULT '0',
  `alliance_player` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.bugreport
CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Debug System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.bugreports
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
  KEY `idx_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.census
CREATE TABLE IF NOT EXISTS `census` (
  `time` datetime DEFAULT NULL,
  `race` int(11) DEFAULT NULL,
  `onlineCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
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
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` longtext,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(11) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(11) unsigned NOT NULL DEFAULT '0',
  `logout_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_multiplier` int(11) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extra_flags` int(11) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `at_login` int(11) unsigned NOT NULL DEFAULT '0',
  `zone` int(11) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `honorRankPoints` float NOT NULL DEFAULT '0',
  `honorHighestRank` int(11) unsigned NOT NULL DEFAULT '0',
  `honorStanding` int(11) unsigned NOT NULL DEFAULT '0',
  `honorLastWeekHK` int(11) unsigned NOT NULL DEFAULT '0',
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
  `deleteInfos_Account` int(11) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `area` int(11) unsigned NOT NULL DEFAULT '0',
  `world_phase_mask` int(11) DEFAULT '0',
  `customFlags` int(11) NOT NULL DEFAULT '0',
  `city_protector` tinyint(3) NOT NULL DEFAULT '0',
  `regexFilterCount` int(6) unsigned NOT NULL DEFAULT '0',
  `isGMCharacter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ignore_titles` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.characters_namecleanup2019
CREATE TABLE IF NOT EXISTS `characters_namecleanup2019` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
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
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` longtext,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(11) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(11) unsigned NOT NULL DEFAULT '0',
  `logout_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_multiplier` int(11) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extra_flags` int(11) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `at_login` int(11) unsigned NOT NULL DEFAULT '0',
  `zone` int(11) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `honorRankPoints` float NOT NULL DEFAULT '0',
  `honorHighestRank` int(11) unsigned NOT NULL DEFAULT '0',
  `honorStanding` int(11) unsigned NOT NULL DEFAULT '0',
  `honorLastWeekHK` int(11) unsigned NOT NULL DEFAULT '0',
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
  `deleteInfos_Account` int(11) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `area` int(11) unsigned NOT NULL DEFAULT '0',
  `world_phase_mask` int(11) DEFAULT '0',
  `customFlags` int(11) NOT NULL DEFAULT '0',
  `city_protector` tinyint(3) NOT NULL DEFAULT '0',
  `regexFilterCount` int(6) unsigned NOT NULL DEFAULT '0',
  `isGMCharacter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.characters_namecleanup2020
CREATE TABLE IF NOT EXISTS `characters_namecleanup2020` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
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
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` longtext,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(11) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(11) unsigned NOT NULL DEFAULT '0',
  `logout_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_multiplier` int(11) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extra_flags` int(11) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `at_login` int(11) unsigned NOT NULL DEFAULT '0',
  `zone` int(11) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `honorRankPoints` float NOT NULL DEFAULT '0',
  `honorHighestRank` int(11) unsigned NOT NULL DEFAULT '0',
  `honorStanding` int(11) unsigned NOT NULL DEFAULT '0',
  `honorLastWeekHK` int(11) unsigned NOT NULL DEFAULT '0',
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
  `deleteInfos_Account` int(11) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` bigint(20) DEFAULT NULL,
  `area` int(11) unsigned NOT NULL DEFAULT '0',
  `world_phase_mask` int(11) DEFAULT '0',
  `customFlags` int(11) NOT NULL DEFAULT '0',
  `city_protector` tinyint(3) NOT NULL DEFAULT '0',
  `regexFilterCount` int(6) unsigned NOT NULL DEFAULT '0',
  `isGMCharacter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ignore_titles` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_action
CREATE TABLE IF NOT EXISTS `character_action` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`button`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_armory_stats
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
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_aura
CREATE TABLE IF NOT EXISTS `character_aura` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `spell` int(11) unsigned NOT NULL DEFAULT '0',
  `stackcount` int(11) unsigned NOT NULL DEFAULT '1',
  `remaincharges` int(11) unsigned NOT NULL DEFAULT '0',
  `basepoints0` int(11) NOT NULL DEFAULT '0',
  `basepoints1` int(11) NOT NULL DEFAULT '0',
  `basepoints2` int(11) NOT NULL DEFAULT '0',
  `periodictime0` int(11) unsigned NOT NULL DEFAULT '0',
  `periodictime1` int(11) unsigned NOT NULL DEFAULT '0',
  `periodictime2` int(11) unsigned NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `effIndexMask` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_battleground_data
CREATE TABLE IF NOT EXISTS `character_battleground_data` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `team` int(11) unsigned NOT NULL DEFAULT '0',
  `join_x` float NOT NULL DEFAULT '0',
  `join_y` float NOT NULL DEFAULT '0',
  `join_z` float NOT NULL DEFAULT '0',
  `join_o` float NOT NULL DEFAULT '0',
  `join_map` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_bgqueue
CREATE TABLE IF NOT EXISTS `character_bgqueue` (
  `PlayerGUID` int(11) NOT NULL DEFAULT '0',
  `playerName` varchar(12) CHARACTER SET latin1 NOT NULL,
  `playerIP` int(11) NOT NULL,
  `BGtype` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`PlayerGUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_deleted_items
CREATE TABLE IF NOT EXISTS `character_deleted_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `player_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `stack_count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_duplicate_account
CREATE TABLE IF NOT EXISTS `character_duplicate_account` (
  `account` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_forgotten_skills
CREATE TABLE IF NOT EXISTS `character_forgotten_skills` (
  `guid` int(11) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) unsigned NOT NULL,
  `value` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_gifts
CREATE TABLE IF NOT EXISTS `character_gifts` (
  `guid` int(20) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `entry` int(20) unsigned NOT NULL DEFAULT '0',
  `flags` int(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_homebind
CREATE TABLE IF NOT EXISTS `character_homebind` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zone` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_honor_cp
CREATE TABLE IF NOT EXISTS `character_honor_cp` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `victimType` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `victim` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature / Player Identifier',
  `cp` float NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_instance
CREATE TABLE IF NOT EXISTS `character_instance` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `idx_instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_inventory
CREATE TABLE IF NOT EXISTS `character_inventory` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(11) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  `item_template` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  PRIMARY KEY (`item`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_pet
CREATE TABLE IF NOT EXISTS `character_pet` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) unsigned NOT NULL DEFAULT '0',
  `modelid` int(11) unsigned DEFAULT '0',
  `CreatedBySpell` int(11) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '1',
  `exp` int(11) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loyaltypoints` int(11) NOT NULL DEFAULT '0',
  `loyalty` int(11) unsigned NOT NULL DEFAULT '0',
  `trainpoint` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT 'Pet',
  `renamed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `slot` int(11) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(11) unsigned NOT NULL DEFAULT '1',
  `curmana` int(11) unsigned NOT NULL DEFAULT '0',
  `curhappiness` int(11) unsigned NOT NULL DEFAULT '0',
  `savetime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `resettalents_cost` int(11) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `abdata` longtext,
  `teachspelldata` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_owner` (`owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_queststatus
CREATE TABLE IF NOT EXISTS `character_queststatus` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `rewarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mobcount1` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount2` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount3` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount4` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount1` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount2` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount3` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount4` int(11) unsigned NOT NULL DEFAULT '0',
  `reward_choice` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_reputation
CREATE TABLE IF NOT EXISTS `character_reputation` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` int(11) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_skills
CREATE TABLE IF NOT EXISTS `character_skills` (
  `guid` int(11) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` mediumint(9) unsigned NOT NULL,
  `value` mediumint(9) unsigned NOT NULL,
  `max` mediumint(9) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_social
CREATE TABLE IF NOT EXISTS `character_social` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `idx_guid` (`guid`),
  KEY `idx_friend` (`friend`),
  KEY `idx_guid_flags` (`guid`,`flags`),
  KEY `idx_friend_flags` (`friend`,`flags`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_spell
CREATE TABLE IF NOT EXISTS `character_spell` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`),
  KEY `idx_spell` (`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_spell_cooldown
CREATE TABLE IF NOT EXISTS `character_spell_cooldown` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `catTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_stats
CREATE TABLE IF NOT EXISTS `character_stats` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
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
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_ticket
CREATE TABLE IF NOT EXISTS `character_ticket` (
  `ticket_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `ticket_text` text,
  `response_text` text,
  `ticket_lastchange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_transmog
CREATE TABLE IF NOT EXISTS `character_transmog` (
  `itemguid` int(18) unsigned NOT NULL,
  `fakeentry` int(11) NOT NULL,
  `ownerguid` int(11) NOT NULL,
  `oldentry` int(11) NOT NULL,
  `newentry` int(11) NOT NULL,
  PRIMARY KEY (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_tutorial
CREATE TABLE IF NOT EXISTS `character_tutorial` (
  `account` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Account Identifier',
  `tut0` int(11) unsigned NOT NULL DEFAULT '0',
  `tut1` int(11) unsigned NOT NULL DEFAULT '0',
  `tut2` int(11) unsigned NOT NULL DEFAULT '0',
  `tut3` int(11) unsigned NOT NULL DEFAULT '0',
  `tut4` int(11) unsigned NOT NULL DEFAULT '0',
  `tut5` int(11) unsigned NOT NULL DEFAULT '0',
  `tut6` int(11) unsigned NOT NULL DEFAULT '0',
  `tut7` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=3514189 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.character_xp_from_log
CREATE TABLE IF NOT EXISTS `character_xp_from_log` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.corpse
CREATE TABLE IF NOT EXISTS `corpse` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `player` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `map` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `corpse_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpse_type`),
  KEY `idx_instance` (`instance`),
  KEY `idx_player` (`player`),
  KEY `idx_time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Death System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.creature_respawn
CREATE TABLE IF NOT EXISTS `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT '0',
  `instance` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `map` int(5) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `idx_instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.gameobject_respawn
CREATE TABLE IF NOT EXISTS `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT '0',
  `instance` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `map` int(5) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `idx_instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.game_event_status
CREATE TABLE IF NOT EXISTS `game_event_status` (
  `event` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Game event system';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.gm_subsurveys
CREATE TABLE IF NOT EXISTS `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.gm_surveys
CREATE TABLE IF NOT EXISTS `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.gm_tickets
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
  `closedBy` int(10) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `response` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ticketType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `securityNeeded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`)
) ENGINE=MyISAM AUTO_INCREMENT=779 DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.groups
CREATE TABLE IF NOT EXISTS `groups` (
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

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.group_instance
CREATE TABLE IF NOT EXISTS `group_instance` (
  `leaderGuid` int(11) unsigned NOT NULL DEFAULT '0',
  `instance` int(11) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`leaderGuid`,`instance`),
  KEY `idx_instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.group_member
CREATE TABLE IF NOT EXISTS `group_member` (
  `groupId` int(11) unsigned NOT NULL,
  `memberGuid` int(11) unsigned NOT NULL,
  `assistant` tinyint(1) unsigned NOT NULL,
  `subgroup` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`groupId`,`memberGuid`),
  KEY `idx_memberGuid` (`memberGuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Groups';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.guild
CREATE TABLE IF NOT EXISTS `guild` (
  `guildid` int(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `leaderguid` int(6) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` int(5) NOT NULL DEFAULT '0',
  `EmblemColor` int(5) NOT NULL DEFAULT '0',
  `BorderStyle` int(5) NOT NULL DEFAULT '0',
  `BorderColor` int(5) NOT NULL DEFAULT '0',
  `BackgroundColor` int(5) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `createdate` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.guild_bank
CREATE TABLE IF NOT EXISTS `guild_bank` (
  `guid` int(11) unsigned NOT NULL,
  `bag` int(11) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL,
  `item` int(11) unsigned NOT NULL,
  `item_template` int(11) unsigned NOT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.guild_eventlog
CREATE TABLE IF NOT EXISTS `guild_eventlog` (
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

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.guild_member
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guildid` int(6) unsigned NOT NULL DEFAULT '0',
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `pnote` varchar(255) NOT NULL DEFAULT '',
  `offnote` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `key_guid` (`guid`),
  KEY `idx_guildid` (`guildid`),
  KEY `idx_guildid_rank` (`guildid`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Guild System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.guild_rank
CREATE TABLE IF NOT EXISTS `guild_rank` (
  `guildid` int(6) unsigned NOT NULL DEFAULT '0',
  `rid` int(11) unsigned NOT NULL,
  `rname` varchar(255) NOT NULL DEFAULT '',
  `rights` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `idx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.instance
CREATE TABLE IF NOT EXISTS `instance` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `map` int(11) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(40) NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_map` (`map`),
  KEY `idx_resettime` (`resettime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.instance_copy
CREATE TABLE IF NOT EXISTS `instance_copy` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `map` int(11) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(40) NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_map` (`map`),
  KEY `idx_resettime` (`resettime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.instance_reset
CREATE TABLE IF NOT EXISTS `instance_reset` (
  `mapid` int(11) unsigned NOT NULL DEFAULT '0',
  `resettime` bigint(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.item_instance
CREATE TABLE IF NOT EXISTS `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text` int(10) unsigned NOT NULL DEFAULT '0',
  `generated_loot` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`),
  KEY `idx_itemEntry` (`itemEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.item_loot
CREATE TABLE IF NOT EXISTS `item_loot` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `property` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`itemid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Item System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.item_text
CREATE TABLE IF NOT EXISTS `item_text` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `text` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.mail
CREATE TABLE IF NOT EXISTS `mail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `itemTextId` int(11) unsigned NOT NULL DEFAULT '0',
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` bigint(40) NOT NULL DEFAULT '0',
  `deliver_time` bigint(40) NOT NULL DEFAULT '0',
  `money` int(11) unsigned NOT NULL DEFAULT '0',
  `cod` int(11) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`),
  KEY `FK_mail_item_text` (`itemTextId`)
) ENGINE=InnoDB AUTO_INCREMENT=1682409 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mail System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.mail_items
CREATE TABLE IF NOT EXISTS `mail_items` (
  `mail_id` int(11) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_template` int(11) unsigned NOT NULL DEFAULT '0',
  `receiver` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`mail_id`,`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_item_guid` (`item_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.petition
CREATE TABLE IF NOT EXISTS `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `charterguid` int(10) unsigned DEFAULT NULL COMMENT 'Charter item GUID',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `key_ownerguid_petitionguid` (`ownerguid`,`petitionguid`),
  UNIQUE KEY `charterguid` (`charterguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.petition_sign
CREATE TABLE IF NOT EXISTS `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(11) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(11) unsigned NOT NULL DEFAULT '0',
  `player_account` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `idx_playerguid` (`playerguid`),
  KEY `idx_ownerguid` (`ownerguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Guild System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.pet_aura
CREATE TABLE IF NOT EXISTS `pet_aura` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` int(11) unsigned NOT NULL DEFAULT '0',
  `spell` int(11) unsigned NOT NULL DEFAULT '0',
  `stackcount` int(11) unsigned NOT NULL DEFAULT '1',
  `remaincharges` int(11) unsigned NOT NULL DEFAULT '0',
  `basepoints0` int(11) NOT NULL DEFAULT '0',
  `basepoints1` int(11) NOT NULL DEFAULT '0',
  `basepoints2` int(11) NOT NULL DEFAULT '0',
  `periodictime0` int(11) unsigned NOT NULL DEFAULT '0',
  `periodictime1` int(11) unsigned NOT NULL DEFAULT '0',
  `periodictime2` int(11) unsigned NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `effIndexMask` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.pet_spell
CREATE TABLE IF NOT EXISTS `pet_spell` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet System';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.pet_spell_cooldown
CREATE TABLE IF NOT EXISTS `pet_spell_cooldown` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.playerbot
CREATE TABLE IF NOT EXISTS `playerbot` (
  `char_guid` bigint(20) unsigned NOT NULL,
  `chance` int(10) unsigned NOT NULL DEFAULT '10',
  `comment` varchar(255) DEFAULT NULL,
  `ai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`char_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Prozedur tw_char.reset_petition_id
-- NEEDED FOR THE LIFE REALM ONLY
-- DELIMITER 
-- CREATE DEFINER=``@`%` PROCEDURE `reset_petition_id`()
-- BEGIN
 -- DECLARE maxRow INT UNSIGNED DEFAULT 0;
 -- DECLARE currRow INT UNSIGNED DEFAULT 0;
 -- DECLARE oldId INT UNSIGNED DEFAULT 0;
 -- DROP TABLE IF EXISTS temp_petition;
 -- CREATE TABLE `temp_petition` (
  -- `row` int(11) unsigned NOT NULL AUTO_INCREMENT,
  -- `ownerguid` int(10) unsigned NOT NULL,
  -- `petitionguid` int(10) unsigned DEFAULT '0',
  -- `name` varchar(255) NOT NULL DEFAULT '',
  -- PRIMARY KEY (`row`)
 -- );
 -- INSERT INTO temp_petition SELECT 0, petition.* FROM petition;
 -- SET currRow=1;
 -- SET oldId=0;
 -- SELECT COUNT(*) FROM temp_petition INTO maxRow;
 -- WHILE currRow <= maxRow DO
  -- SELECT petitionguid FROM temp_petition WHERE row = currRow INTO oldId;
  -- UPDATE petition SET petitionguid=currRow WHERE petitionguid=oldId;
  -- UPDATE petition_sign SET petitionguid=currRow WHERE petitionguid=oldId;
  -- UPDATE item_instance SET enchantments=CONCAT(currRow,' 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ') WHERE guid=oldId and itemEntry=5863;
  -- SET currRow = currRow + 1;
 -- END WHILE;
 -- DROP TABLE temp_petition;
-- END//
-- DELIMITER ;

-- Exportiere Struktur von Tabelle tw_char.saved_variables
CREATE TABLE IF NOT EXISTS `saved_variables` (
  `key` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cleaning_flags` int(11) unsigned NOT NULL DEFAULT '0',
  `lastHonorMaintenanceDay` int(11) unsigned NOT NULL DEFAULT '0',
  `nextHonorMaintenanceDay` int(11) unsigned NOT NULL DEFAULT '0',
  `honorMaintenanceMarker` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Variable Saves';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.store_racechange
CREATE TABLE IF NOT EXISTS `store_racechange` (
  `guid` int(11) unsigned NOT NULL,
  `race` tinyint(1) unsigned NOT NULL,
  `gender` tinyint(1) unsigned NOT NULL,
  `playerbytes1` int(10) unsigned NOT NULL,
  `playerbytes2` int(10) unsigned NOT NULL,
  `transaction` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Race change requests from web backend. Playerbytes is from ''characters'' table, is used to copy new character outfit.';

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.world
CREATE TABLE IF NOT EXISTS `world` (
  `map` int(11) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Tabelle tw_char.worldstates
CREATE TABLE IF NOT EXISTS `worldstates` (
  `entry` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  UNIQUE KEY `key_entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

ALTER TABLE `characters` ADD `mortality_status` TINYINT(3) NOT NULL DEFAULT '0' AFTER `ignore_titles`;

-- Daten Export vom Benutzer nicht ausgewählt
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
