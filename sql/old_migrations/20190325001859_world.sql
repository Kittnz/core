DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190325001859');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190325001859');
-- Add your query below.

update quest_template set requestitemstext = replace(requestitemstext, 'Ferlis', '$N') where entry = 3118;
update creature_template set subname = 'The Impostor' where entry = 12657;

replace into quest_template (entry, Method, MinLevel, QuestLevel, RequiredRaces, RewMoneyMaxLevel, Type, SpecialFlags, Title, OfferRewardText, RewItemId1, RewItemCount1) values
(50011, 0, 0, 0, 178, 0, 82, 1, 'Horde diplomat', 'I see that you have finally understood that we should all unite in order to fight the real dangers that are upon us.', 50012, 1),
(50012, 0, 0, 0, 77, 0, 82, 1, 'Alliance diplomat', 'I see that you have finally understood that we should all unite in order to fight the real dangers that are upon us.', 50012, 1);

replace into creature_involvedrelation (id, quest) values
(50027, 50011),
(50028, 50012);

replace into creature_questrelation (id, quest) values
(50027, 50011),
(50028, 50012);

update creature set spawndist = 0 where movementtype = 0;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
