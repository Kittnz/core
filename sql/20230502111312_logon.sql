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
