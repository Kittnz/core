-- Dumping structure for table realmd.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sessionkey` longtext,
  `v` longtext,
  `s` longtext,
  `reg_mail` varchar(255) NOT NULL DEFAULT '',
  `token_key` varchar(100) NOT NULL DEFAULT '',
  `email` text,
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(30) NOT NULL DEFAULT '0.0.0.0',
  `last_attempt_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `last_local_ip` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(11) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lock_country` varchar(2) NOT NULL DEFAULT '00',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_pwd_reset` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(4) NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mutetime` bigint(40) NOT NULL DEFAULT '0',
  `mutereason` varchar(255) NOT NULL DEFAULT '',
  `muteby` varchar(50) NOT NULL DEFAULT '',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(4) NOT NULL DEFAULT '',
  `recruiter` int(11) NOT NULL DEFAULT '0',
  `current_realm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mail_verif` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember_token` varchar(100) NOT NULL DEFAULT '',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `security` varchar(255) DEFAULT NULL,
  `pass_verif` varchar(255) DEFAULT NULL COMMENT 'Web recover password',
  `email_verif` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Email verification',
  `email_check` varchar(255) DEFAULT NULL,
  `nostalrius_token` varchar(255) DEFAULT NULL,
  `nostalrius_token_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `nostalrius_email` text,
  `nostalrius_reason` text,
  `geolock_pin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_gmlevel` (`gmlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';


ALTER TABLE `characters`
	ADD COLUMN `is_worldbot` TINYINT(11) NOT NULL DEFAULT '0' AFTER `world_phase_mask`;

ALTER TABLE `characters`
	ADD COLUMN `virtual_player_realm` INT(11) NOT NULL DEFAULT '0' AFTER `is_worldbot`;

-- Structuur van  tabel realm_template wordt geschreven
CREATE TABLE IF NOT EXISTS `realm_template` (
  `virtual_realm_address` int NOT NULL,
  `lookup_state` tinyint NOT NULL,
  `is_local` tinyint NOT NULL,
  `is_internal_realm` tinyint NOT NULL,
  `realm_name_actual` varchar(255) NOT NULL,
  `realm_name_normalized` varchar(255) NOT NULL,
  UNIQUE KEY `Index 1` (`virtual_realm_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel realm_template: ~17 rows (ongeveer)
/*!40000 ALTER TABLE `realm_template` DISABLE KEYS */;
INSERT IGNORE INTO `realm_template` (`virtual_realm_address`, `lookup_state`, `is_local`, `is_internal_realm`, `realm_name_actual`, `realm_name_normalized`) VALUES
	(721682438, 0, 0, 0, 'Lucifron', 'Lucifron'),
	(721682442, 0, 0, 0, 'Firemaw', 'Firemaw'),
	(721682443, 0, 0, 0, 'Zandalar Tribe', 'ZandalarTribe'),
	(721682444, 0, 1, 0, 'Mograine', 'Mograine'),
	(721682445, 0, 1, 0, 'Gandling', 'Gandling'),
	(721682447, 0, 0, 0, 'Noggenfogger', 'Noggenfogger'),
	(721682449, 0, 0, 0, 'Skullflame', 'Skullflame'),
	(721682452, 0, 0, 0, 'Bloodfang', 'Bloodfang'),
	(721682455, 0, 0, 0, 'Earthshaker', 'Earthshaker'),
	(721682457, 0, 1, 0, 'Dragonfang', 'Dragonfang'),
	(721747970, 0, 0, 0, 'Pyrewood Village', 'PyrewoodVillage'),
	(721747971, 0, 0, 0, 'Mirage Raceway', 'MirageRaceway'),
	(721747973, 0, 0, 0, 'Nethergarde Keep', 'NethergardeKeep'),
	(721747975, 0, 0, 0, 'Shazzrah', 'Shazzrah'),
	(721747979, 0, 0, 0, 'Hydraxian Waterlords', 'HydraxianWaterlords'),
	(721747984, 0, 0, 0, 'Dreadmist', 'Dreadmist'),
	(721747992, 0, 0, 0, 'Heartstriker', 'Heartstriker');
/*!40000 ALTER TABLE `realm_template` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;


/*UPDATE `characters` SET `is_worldbot`=1*/

