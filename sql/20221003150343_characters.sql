-- Dumping structure for table characters.account_data
CREATE TABLE IF NOT EXISTS `account_data` (
  `account` int(11) unsigned NOT NULL DEFAULT '0',
  `type` int(11) unsigned NOT NULL DEFAULT '0',
  `time` bigint(11) unsigned NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  PRIMARY KEY (`account`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping structure for table characters.character_account_data
CREATE TABLE IF NOT EXISTS `character_account_data` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` int(11) unsigned NOT NULL DEFAULT '0',
  `time` bigint(11) unsigned NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
