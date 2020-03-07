
-- Structure for `shop_coins`

DROP TABLE IF EXISTS `shop_coins`;
CREATE TABLE `shop_coins` (
  `id` int(10) unsigned NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

