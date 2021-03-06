DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200829214953');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200829214953');
-- Add your query below.

CREATE TABLE IF NOT EXISTS `mapbot_chat` (
  `guid` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `chat` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DELETE FROM `mapbot_chat`;
INSERT INTO `mapbot_chat` (`guid`, `type`, `chat`) VALUES
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

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
