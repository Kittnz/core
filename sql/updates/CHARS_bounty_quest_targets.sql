
-- Structure for `bounty_quest_targets`

DROP TABLE IF EXISTS `bounty_quest_targets`;
CREATE TABLE `bounty_quest_targets` (
  `id` int(5) unsigned NOT NULL DEFAULT '1',
  `horde_player` int(15) unsigned NOT NULL DEFAULT '0',
  `alliance_player` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
