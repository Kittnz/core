CREATE TABLE IF NOT EXISTS `logs_shellcoin` (
  `time` bigint(20) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
