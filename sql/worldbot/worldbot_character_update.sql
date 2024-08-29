-- Dumping structure for table realmd.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sessionkey` longtext,
  `v` longtext,
  `s` longtext,
  `reg_mail` varchar(255) NOT NULL DEFAULT '',
  `token_key` varchar(100) NOT NULL DEFAULT '',
  `email` text,
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(30) NOT NULL DEFAULT '0.0.0.0',
  `last_attempt_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `last_local_ip` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(11) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lock_country` varchar(2) NOT NULL DEFAULT '00',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_pwd_reset` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(4) NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mutetime` bigint(40) NOT NULL DEFAULT '0',
  `mutereason` varchar(255) NOT NULL DEFAULT '',
  `muteby` varchar(50) NOT NULL DEFAULT '',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(4) NOT NULL DEFAULT '',
  `recruiter` int(11) NOT NULL DEFAULT '0',
  `current_realm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mail_verif` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember_token` varchar(100) NOT NULL DEFAULT '',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `security` varchar(255) DEFAULT NULL,
  `pass_verif` varchar(255) DEFAULT NULL COMMENT 'Web recover password',
  `email_verif` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Email verification',
  `email_check` varchar(255) DEFAULT NULL,
  `nostalrius_token` varchar(255) DEFAULT NULL,
  `nostalrius_token_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `nostalrius_email` text,
  `nostalrius_reason` text,
  `geolock_pin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_gmlevel` (`gmlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';


ALTER TABLE `characters`
	ADD COLUMN `is_worldbot` TINYINT(11) NOT NULL DEFAULT '0' AFTER `world_phase_mask`;

ALTER TABLE `characters`
	ADD COLUMN `virtual_player_realm` INT(11) NOT NULL DEFAULT '0' AFTER `is_worldbot`;

-- Structuur van  tabel realm_template wordt geschreven
CREATE TABLE IF NOT EXISTS `realm_template` (
  `virtual_realm_address` int NOT NULL,
  `lookup_state` tinyint NOT NULL,
  `is_local` tinyint NOT NULL,
  `is_internal_realm` tinyint NOT NULL,
  `realm_name_actual` varchar(255) NOT NULL,
  `realm_name_normalized` varchar(255) NOT NULL,
  UNIQUE KEY `Index 1` (`virtual_realm_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpen data van tabel realm_template: ~17 rows (ongeveer)
/*!40000 ALTER TABLE `realm_template` DISABLE KEYS */;
INSERT IGNORE INTO `realm_template` (`virtual_realm_address`, `lookup_state`, `is_local`, `is_internal_realm`, `realm_name_actual`, `realm_name_normalized`) VALUES
	(721682438, 0, 0, 0, 'Lucifron', 'Lucifron'),
	(721682442, 0, 0, 0, 'Firemaw', 'Firemaw'),
	(721682443, 0, 0, 0, 'Zandalar Tribe', 'ZandalarTribe'),
	(721682444, 0, 1, 0, 'Mograine', 'Mograine'),
	(721682445, 0, 1, 0, 'Gandling', 'Gandling'),
	(721682447, 0, 0, 0, 'Noggenfogger', 'Noggenfogger'),
	(721682449, 0, 0, 0, 'Skullflame', 'Skullflame'),
	(721682452, 0, 0, 0, 'Bloodfang', 'Bloodfang'),
	(721682455, 0, 0, 0, 'Earthshaker', 'Earthshaker'),
	(721682457, 0, 1, 0, 'Dragonfang', 'Dragonfang'),
	(721747970, 0, 0, 0, 'Pyrewood Village', 'PyrewoodVillage'),
	(721747971, 0, 0, 0, 'Mirage Raceway', 'MirageRaceway'),
	(721747973, 0, 0, 0, 'Nethergarde Keep', 'NethergardeKeep'),
	(721747975, 0, 0, 0, 'Shazzrah', 'Shazzrah'),
	(721747979, 0, 0, 0, 'Hydraxian Waterlords', 'HydraxianWaterlords'),
	(721747984, 0, 0, 0, 'Dreadmist', 'Dreadmist'),
	(721747992, 0, 0, 0, 'Heartstriker', 'Heartstriker');
/*!40000 ALTER TABLE `realm_template` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

CREATE TABLE IF NOT EXISTS `worldbot_chat` (
  `guid` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `chat` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DELETE FROM `worldbot_chat`;
INSERT INTO `worldbot_chat` (`guid`, `type`, `chat`) VALUES
	(0, 0, 'what was that %s?'),
	(1, 0, 'not sure I understand %s?'),
	(2, 0, 'uh... no clue what yer talkin bout'),
	(3, 0, 'you talkin to me %s?'),
	(4, 0, 'whaaaa?'),
	(5, 0, 'huh?'),
	(6, 0, 'what?'),
	(7, 0, 'are you talking?'),
	(8, 0, 'whatever dude'),
	(9, 0, 'you lost me'),
	(13, 0, 'Bla bla bla...'),
	(14, 0, 'What did you say, %s?'),
	(15, 0, 'Concentrate on the game, %s!'),
	(16, 0, 'Chatting with you %s is so great! I always wanted to meet you'),
	(17, 0, 'These chat-messages are freaking me out! I feel like I know you all!'),
	(24, 0, 'YEAH RIGHT! HAHA SURE!!!'),
	(25, 0, 'I believe you!!!'),
	(26, 0, 'OK, uhuh LOL'),
	(27, 0, 'Why is everybody always saying the same things???'),
	(28, 0, 'Hey %s....oh nevermind!'),
	(29, 0, 'What are you talking about %s'),
	(30, 0, 'Who said that? I resemble that remark'),
	(34, 1, 'hey %s i havent forgotten you'),
	(35, 1, 'you piss me off %s'),
	(36, 1, 'im gunna get you this time %s'),
	(37, 1, 'better watch your back %s'),
	(38, 1, 'i did not like last round so much'),
	(39, 1, 'i sucked last round thanks to %s'),
	(40, 1, 'prepare to die %s'),
	(41, 1, 'dont appreciate you killin me %s'),
	(42, 1, '%s, i hate you'),
	(43, 1, 'grrrrrr, ill get you this time %s'),
	(44, 1, 'well fuck you'),
	(45, 2, 'wtf'),
	(46, 2, 'wtf??'),
	(47, 2, 'low life'),
	(48, 2, 'wth'),
	(49, 2, 'sucked'),
	(50, 2, 'REMATCH!!! im taking him down'),
	(51, 2, 'pathetic, i got killed by %s'),
	(52, 3, 'hehe, i nailed %s?'),
	(53, 3, 'that was too easy, killin %s'),
	(54, 3, 'gotcha mofo'),
	(55, 3, 'ha ha'),
	(56, 3, 'loser'),
	(57, 3, 'i killed %s and yer all next dudes'),
	(58, 3, 'oh yeah i owned him'),
	(59, 3, 'im a killin machine'),
	(60, 3, '%s,  this reminds me of a Slayer song...all this bloodshed'),
	(61, 3, 'sorry, %s. can we do the scene again?'),
	(62, 3, 'so....how do you like being worm food %s???'),
	(63, 3, 'yer supposed to be dead, %s its part of the game!!!!!'),
	(64, 3, 'sorry, %s. that looked as good as an Andy Worhol painting!'),
	(65, 3, '%s, ill use the rubber bullets next time !'),
	(66, 3, 'whatsamatter, %s?? lose your head? hahaha gotta keep cool!!'),
	(67, 3, 'i had to do it, %s. You understand. The Director said so!!'),
	(68, 3, 'hey %s.......MUAHAHAHAHAHAHAHAHAHAHA'),
	(69, 3, '%s, i enjoyed that one!! Lets play it again Sam'),
	(73, 3, 'hey, %s! ju can start callin me scarface.. ju piece of CHIT!!!!'),
	(74, 3, 'are you talking to me %s??'),
	(75, 3, '%s get it right this time, dont stand in front of my bullets.'),
	(76, 3, '%s, what are you laying around for??? hehe'),
	(77, 4, 'hi %s'),
	(78, 4, 'oh, hi %s'),
	(79, 4, 'wazzup %s!!!'),
	(80, 4, 'hi'),
	(81, 4, 'wazzup'),
	(82, 4, 'hello %s'),
	(83, 4, 'hi %s, do i know you?'),
	(84, 4, 'hey %s'),
	(85, 4, 'hai %s'),
	(90, 6, 'wth'),
	(91, 6, 'wtf'),
	(92, 6, 'this is bs'),
	(93, 6, 'admin'),
	(94, 6, 'hey %s quit abusing your admin'),
	(95, 6, 'leave me alone admin!'),
	(96, 6, 'you suck admin'),
	(97, 6, 'im tellin lud on you %s'),
	(98, 6, 'im emailin lud about yer abuse %s'),
	(99, 6, 'lud wont be happy when he finds out'),
	(86, 5, 'thats my name, what you want %s'),
	(87, 5, 'yes???'),
	(88, 5, 'uh... what'),
	(89, 5, 'you talkin to me %s?');


-- Dumping structure for table sniffs_new_test.player_chat
DROP TABLE IF EXISTS `player_chat`;
CREATE TABLE IF NOT EXISTS `player_chat` (
  `unixtimems` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(12) NOT NULL DEFAULT '',
  `text` longtext,
  `chat_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`guid`,`sender_name`,`unixtimems`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='player chat packets';

-- Data exporting was unselected.

/*UPDATE `characters` SET `is_worldbot`=1*/


