DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190526133744');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190526133744');
-- Add your query below.

update `quest_template` set `ZoneOrSort`='33' where `entry`='50230';

-- Reimplementation of the original Plainsrunning quest: https://www.wowhead.com/quest=3581/unused

update `quest_template` set `RewSpellCast`='12821' where `entry`='3581';
update `quest_template` set `RewOrReqMoney`='-50000' where `entry`='3581';
update `quest_template` set `MinLevel`='40' where `entry`='3581';
update `quest_template` set `RequiredRaces`='32' where `entry`='3581';

update `quest_template` set `Objectives`='Speak to Saern Priderunner to learn the Plainsrunning skill.' where `entry`='3581';
update `quest_template` set `OfferRewardText`='Speak to Saern Priderunner to learn the Plainsrunning skill.' where `entry`='3581';

update `quest_template` set `Details`='Imagine yourself racing across the plains, through forests and over mountains, the wind in your face... Traveling over unseen territory; the wonder of the road ahead, your destiny resting just over the horizon.\n\nAlways remember that on hoof, many things are achievable; as a Tauren, you will be granted the swiftness of Plainsrunning. There is no limit to the distances you might go.' where `entry`='3581';

replace into creature_involvedrelation (id, quest) values (8664, 3581);
replace into creature_questrelation (id, quest) values (8664, 3581);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
