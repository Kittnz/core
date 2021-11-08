
CREATE TABLE IF NOT EXISTS `gameobject_display_info_addon` (
  `display_id` int(11) NOT NULL DEFAULT '0',
  `min_x` float NOT NULL DEFAULT '0',
  `min_y` float NOT NULL DEFAULT '0',
  `min_z` float NOT NULL DEFAULT '0',
  `max_x` float NOT NULL DEFAULT '0',
  `max_y` float NOT NULL DEFAULT '0',
  `max_z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`display_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
