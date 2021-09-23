CREATE TABLE IF NOT EXISTS `character_titles` (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `title` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System' ROW_FORMAT=DYNAMIC;