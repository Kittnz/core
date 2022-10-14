DROP TABLE IF EXISTS `character_destroyed_items`;
CREATE TABLE IF NOT EXISTS `character_destroyed_items` (
  `player_guid` int(10) unsigned NOT NULL,
  `item_entry` mediumint(8) unsigned NOT NULL,
  `stack_count` mediumint(8) unsigned NOT NULL,
  `time` bigint(20) unsigned NOT NULL,
  KEY `player_guid` (`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='items that players have thrown away';
