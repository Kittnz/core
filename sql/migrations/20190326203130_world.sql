DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190326203130');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190326203130');
-- Add your query below.

update creature_template set npc_flags=7 where entry=50016;

replace into quest_template (entry, Method, MinLevel, QuestLevel, RequiredRaces, RewMoneyMaxLevel, Type, SpecialFlags, Title, OfferRewardText, ReqItemId1, ReqItemCount1, RewItemId1, RewItemCount1) values
(50210, 0, 0, 0, 178, 0, 82, 1, '1 Horde Commendation Signets', 'Have you gathered 1 Bloody Coin? If that is the case, you can have 1 Horde Commendation Signet.', 50015, 10, 21438, 1),
(50211, 0, 0, 0, 178, 0, 82, 1, '10 Horde Commendation Signets', 'Have you gathered 10 Bloody Coins? If that is the case, you can have 10 Horde Commendation Signets.', 50015, 10, 21438, 10),
(50212, 0, 0, 0, 77, 0, 82, 1, '1 Alliance Commendation Signets', 'Have you gathered 1 Bloody Coin? If that is the case, you can have 1 Alliance Commendation Signet.', 50015, 1, 21436, 1),
(50213, 0, 0, 0, 77, 0, 82, 1, '10 Alliance Commendation Signets', 'Have you gathered 10 Bloody Coins? If that is the case, you can have 10 Alliance Commendation Signets.', 50015, 10, 21436, 10),
(50214, 0, 0, 0, 0, 0, 82, 1, 'Gurubashi Helm', 'Have you gathered 125 Bloody Coins? If that is the case, you can have the Gurubashi Helm.', 50015, 125, 20263, 1),
(50215, 0, 0, 0, 0, 0, 82, 1, 'Shadow Panther Hide Gloves', 'Have you gathered 100 Bloody Coins? If that is the case, you can have the Shadow Panther Hide Gloves.', 50015, 100, 20259, 1),
(50216, 0, 0, 0, 0, 0, 82, 1, 'Shadow Panther Hide Belt', 'Have you gathered 100 Bloody Coins? If that is the case, you can have the Shadow Panther Hide Belt.', 50015, 100, 20261, 1),
(50217, 0, 0, 0, 0, 0, 82, 1, 'Zulian Hacker', 'Have you gathered 150 Bloody Coins? If that is the case, you can have the Zulian Hacker.', 50015, 150, 19921, 1),
(50218, 0, 0, 0, 0, 0, 82, 1, 'Sceptre of Smiting', 'Have you gathered 150 Bloody Coins? If that is the case, you can have the Sceptre of Smiting.', 50015, 150, 19908, 1),
(50219, 0, 0, 0, 0, 0, 82, 1, 'Zulian Ceremonial Staff', 'Have you gathered 175 Bloody Coins? If that is the case, you can have the Zulian Ceremonial Staff.', 50015, 175, 20258, 1),
(50220, 0, 0, 0, 0, 0, 82, 1, 'Band of Servitude', 'Have you gathered 250 Bloody Coins? If that is the case, you can have the Band of Servitude.', 50015, 250, 22721, 1),
(50221, 0, 0, 0, 0, 0, 82, 1, 'Seal of the Gurubashi Berserker', 'Have you gathered 250 Bloody Coins? If that is the case, you can have the Seal of the Gurubashi Berserker.', 50015, 250, 22722, 1),
(50222, 0, 1, 1, 0, 750, 82, 1, 'Small Amount of Experience', 'Oh! I see you are improving a lot. Bring me 15 Bloody Coins to show me that you have improved more...', 50015, 15, 0, 0),
(50223, 0, 15, 15, 0, 2000, 82, 1, 'Medium Amount of Experience', 'Oh! I see you are improving a lot. Bring me 15 Bloody Coins to show me that you have improved more...', 50015, 15, 0, 0),
(50224, 0, 30, 30, 0, 3750, 82, 1, 'Great Amount of Experience', 'Oh! I see you are improving a lot. Bring me 15 Bloody Coins to show me that you have improved more...', 50015, 15, 0, 0),
(50225, 0, 45, 45, 0, 5500, 82, 1, 'Greater Amount of Experience', 'Oh! I see you are improving a lot. Bring me 15 Bloody Coins to show me that you have improved more...', 50015, 15, 0, 0),
(50226, 0, 55, 55, 0, 7500, 82, 1, 'Greatest Amount of Experience', 'Oh! I see you are improving a lot. Bring me 15 Bloody Coins to show me that you have improved more...', 50015, 15, 0, 0);

replace into creature_involvedrelation (id, quest) values
(50016, 50210),
(50016, 50211),
(50016, 50212),
(50016, 50213),
(50016, 50214),
(50016, 50215),
(50016, 50216),
(50016, 50217),
(50016, 50218),
(50016, 50219),
(50016, 50220),
(50016, 50221),
(50016, 50222),
(50016, 50223),
(50016, 50224),
(50016, 50225),
(50016, 50226);

replace into creature_questrelation (id, quest) values
(50016, 50210),
(50016, 50211),
(50016, 50212),
(50016, 50213),
(50016, 50214),
(50016, 50215),
(50016, 50216),
(50016, 50217),
(50016, 50218),
(50016, 50219),
(50016, 50220),
(50016, 50221),
(50016, 50222),
(50016, 50223),
(50016, 50224),
(50016, 50225),
(50016, 50226);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
