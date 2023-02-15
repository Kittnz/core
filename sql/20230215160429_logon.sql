-- add table for auto banning fingerprints
CREATE TABLE IF NOT EXISTS `fingerprint_autoban` (
  `fingerprint` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `banreason` varchar(255) NOT NULL,
  PRIMARY KEY (`fingerprint`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fingerprint Ban List';

-- fingerprints from discord log
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (149392107, 'duck');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (222393403, 'hacks2');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (957965474, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (1046341544, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (1155010007, 'duck2');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (1302404417, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (2009228929, 'hacks');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (2162373540, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (2410606283, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (3876728909, 'gs');
REPLACE INTO `fingerprint_autoban` (`fingerprint`, `banreason`) VALUES (4134214259, 'gs');
