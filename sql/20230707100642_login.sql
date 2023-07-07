-- Dumping structure for table turtle_realmd.rbac_account_permissions
CREATE TABLE IF NOT EXISTS `rbac_account_permissions` (
  `account_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `granted` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`account_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping structure for table turtle_realmd.rbac_command_permissions
CREATE TABLE IF NOT EXISTS `rbac_command_permissions` (
  `command` varchar(128) COLLATE latin1_bin NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`command`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- Dumping structure for table turtle_realmd.rbac_permissions
CREATE TABLE IF NOT EXISTS `rbac_permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
