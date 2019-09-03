DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190903224423');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190903224423');
-- Add your query below.


replace into quest_template 
(entry, minlevel, questlevel, requiredraces, title, details, objectives, offerrewardtext, requestitemstext, prevquestid, nextquestid, rewitemid1, reqcreatureorgoid1, reqcreatureorgocount1, rewmoneymaxlevel, zoneorsort, rewitemcount1) values

(50305, 8, 10, 0, 'Higher Stakes', 
'What now? Ah, it\'s you again. What eggs?\n\nOh, right. Taillashers. So you want to cook something else besides eggs? I guess I can teach you something.\n\nDo you know where the Southfury River ends it\'s course? This is where you\'ll have to move. Why? I\'m intending to higher the stakes here, whelp! Get me those crocolisk\'s meat and I\'ll teach you how to cook it properly!  You\'ll find them all over the river so you better get movin\' right away!',
'Bring 8 Crocolisk Meat to Cook Torka in Razor Hill.',
'Good.\n\nLet me tell you one thing before you waste it in a feeble attempt of cooking it. It\'s about the amount of spices that your meat gets ready, not about the amount of fire.\n\nWell, fire is needed anyway…
',
'You got the meat?',
 815, -- PrevQuestId
 0, -- NextQuestId
 3678, 
 0, 0, 410, 14, 1);

 update quest_template set reqitemid1 = 2924 where entry = 50305;
 update quest_template set reqitemcount1 = 8 where entry = 50305;

 
replace into creature_questrelation (id, quest)    values (3191, 50305); 
replace into creature_involvedrelation (id, quest) values (3191, 50305);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
