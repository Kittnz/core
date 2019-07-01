DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190511003355');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190511003355');
-- Add your query below.

update gameobject_template set size = 1.4 where entry in (31510, 31511);

replace into quest_template (entry, MinLevel, QuestLevel, Title, Details, Objectives, OfferRewardText, RequestItemsText, ReqItemId1, ReqItemCount1, ReqItemId2, ReqItemCount2, ReqItemId3, ReqItemCount3, RewItemId1, RewItemCount1, RewItemId2, RewItemCount2) values

(50230, 5, 15, 'Night\'s Exploration',

'Come here, adventurer!\n\nI see that you are a capable person so I\'ll teach you something useful since fate brought us together.\n\nYou could benefit from out here in the jungle!\n\nIf you bring me a tight rope from Jaquilina there, some oil from the goblins of Booty Bay and a thick club you will find around the camp, then I will let you in on a unique way on how to construct a proper torch in no time that you could use in your travels for either a night\'s exploration or to safeguard yourself against wild animals.\n\nSee the ones near our camp? They never go out!',

'Bring a rope from Jaquilina, oil from Booty Bay and a club from around the camp to Nesingwary\'s Expedition for S. J. Erlgadin.',

'Ah! You brought the materials. Splendid!\n\nWatch carefully!',

'Have you gathered all materials?',

 50231, 1, -- Rope
 50232, 1, -- Oil
 50233, 1, -- Wooden Club

 50230, 1, 6183, 1);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
