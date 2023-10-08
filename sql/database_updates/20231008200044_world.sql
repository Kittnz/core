-- Convert ChatChannels.dbc to database table.
DROP TABLE IF EXISTS `chat_channels`;
CREATE TABLE IF NOT EXISTS `chat_channels` (
  `id` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `faction_group` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `name_loc1` text,
  `name_loc2` text,
  `name_loc3` text,
  `name_loc4` text,
  `name_loc5` text,
  `name_loc6` text,
  `name_loc7` text,
  `name_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut` text,
  `shortcut_loc1` text,
  `shortcut_loc2` text,
  `shortcut_loc3` text,
  `shortcut_loc4` text,
  `shortcut_loc5` text,
  `shortcut_loc6` text,
  `shortcut_loc7` text,
  `shortcut_flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `chat_channels` (`id`, `flags`, `faction_group`, `name`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_flags`, `shortcut`, `shortcut_loc1`, `shortcut_loc2`, `shortcut_loc3`, `shortcut_loc4`, `shortcut_loc5`, `shortcut_loc6`, `shortcut_loc7`, `shortcut_flags`) VALUES
	(1, 3, 0, 'General - %s', '', '', '', '', '', '', '', 4128894, 'General', '', '', '', '', '', '', '', 4128894),
	(2, 59, 0, 'Trade - %s', '', '', '', '', '', '', '', 4128894, 'Trade', '', '', '', '', '', '', '', 4128894),
	(22, 65539, 0, 'LocalDefense - %s', '', '', '', '', '', '', '', 4128894, 'LocalDefense', '', '', '', '', '', '', '', 4128894),
	(23, 65540, 0, 'WorldDefense', '', '', '', '', '', '', '', 4128894, 'WorldDefense', '', '', '', '', '', '', '', 4128894),
	(24, 0, 0, 'LookingForGroup', '', '', '', '', '', '', '', 4128894, 'LookingForGroup', '', '', '', '', '', '', '', 4128894),
	(25, 131122, 0, 'GuildRecruitment - %s', '', '', '', '', '', '', '', 4128894, 'GuildRecruitment', '', '', '', '', '', '', '', 4128894),
	(27, 9, 0, 'World', '', '', '', '', '', '', '', 4128894, 'World', '', '', '', '', '', '', '', 4128894);
