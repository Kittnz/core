
-- Structure for `shop_coins`

DROP TABLE IF EXISTS `shop_coins`;
CREATE TABLE `shop_coins` (
  `id` int(10) unsigned NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Structure for `shop_diff`

DROP TABLE IF EXISTS `shop_diff`;
CREATE TABLE `shop_diff` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(11) unsigned NOT NULL DEFAULT '0',
  `prev_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `query` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM AUTO_INCREMENT=54388 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Account balance log:

DROP TRIGGER IF EXISTS `shop_insert`;
DELIMITER ;;

CREATE TRIGGER `shop_insert` AFTER INSERT ON `shop_coins` FOR EACH ROW BEGIN
INSERT INTO `shop_diff` (prev_bonus, new_bonus, accountid, date, query) VALUES (0, NEW.coins, NEW.id, UNIX_TIMESTAMP(now()), "INSERT");
END
;;
DELIMITER ;

DROP TRIGGER IF EXISTS `shop_update`;
DELIMITER ;;

CREATE TRIGGER `shop_update` AFTER UPDATE ON `shop_coins` FOR EACH ROW BEGIN
IF OLD.coins != NEW.coins THEN  
INSERT INTO `shop_diff` (prev_bonus, new_bonus, accountid, date, query) VALUES (OLD.coins, NEW.coins, NEW.id, UNIX_TIMESTAMP(now()), "UPDATE");
END IF;
END
;;
DELIMITER ;

DROP TRIGGER IF EXISTS `shop_delete`;
DELIMITER ;;

CREATE TRIGGER `shop_delete` AFTER DELETE ON `shop_coins` FOR EACH ROW BEGIN
INSERT INTO `shop_diff` (prev_bonus, new_bonus, accountid, date, query) VALUES (OLD.coins, 0, OLD.id, UNIX_TIMESTAMP(now()), "DELETE");
END
;;
DELIMITER ;
