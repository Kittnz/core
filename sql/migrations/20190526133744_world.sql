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

-- 3578 Custom Turtle WoW quest: Find Samantha

replace into quest_template (entry, MinLevel, QuestLevel, RequiredRaces, Title, Details, Objectives, OfferRewardText, RequestItemsText, ReqItemId1, ReqItemCount1, ReqItemId2, ReqItemCount2, ReqItemId3, ReqItemCount3, PrevQuestId, NextQuestId) values

(3578, 40, 45, 32, 'Find Samantha Swifthoof', 

'Quest placeholder. Find Samantha. Long description', 
'Quest placeholder. Find Samantha. Short Description.',
'Ah! Nice to hear from you!',
'Ah! Finally!',

 0, 0, -- No reagent
 0, 0, -- No reagent
 0, 0, -- No reagent
 
 0,   -- PrevQuestId
 3579 -- NextQuestId

);

-- 3579 Custom Turtle WoW quest: Help Samantha

replace into quest_template
(entry, MinLevel, QuestLevel, RequiredRaces, Title, Details, Objectives, OfferRewardText, RequestItemsText, 
ReqItemId1, ReqItemCount1, ReqItemId2, ReqItemCount2, ReqItemId3, ReqItemCount3, ReqItemId4, ReqItemCount4, PrevQuestId, NextQuestId) 
values

(3579, 40, 45, 32, 'Help Samantha Swifthoof', 

'Quest placeholder. Help Samantha. Story.', 
'Quest placeholder. Help Samantha. Short description.',
'Ah! Gor everything! Thank you!',
'Have you gathered all materials?',

 6451, 10, -- Heavy Silk Bandage
 3818, 5,  -- Fadeleaf
 2449, 10, -- Earthroot
 159, 10,  -- Refreshing Spring Water
 
 3578, -- PrevQuestId
 3580  -- NextQuestId

);

-- 3580 Custom Turtle WoW quest: Speak to Jorn

replace into quest_template (entry, MinLevel, QuestLevel, RequiredRaces, Title, Details, Objectives, OfferRewardText, RequestItemsText, ReqItemId1, ReqItemCount1, ReqItemId2, ReqItemCount2, ReqItemId3, ReqItemCount3, PrevQuestId, NextQuestId) values

(3580, 40, 45, 32, 'Speak to Jorn', 

'Quest placeholder. SPeak to Jorn.', 
'Quest placeholder. SPeak to Jorn. Short.',
'Ah! That bitch is alive!',
'Yo dude.',

 0, 0, -- No reagent
 0, 0, -- No reagent
 0, 0, -- No reagent
 
 3579,   -- PrevQuestId
 3581    -- NextQuestId

);

update `quest_template` set `RewSpellCast`='16618' where `entry`='3580';

-- 3581. Reimplementation of the original Plainsrunning quest: https://www.wowhead.com/quest=3581/unused

update `quest_template` set `RewOrReqMoney`='0' where `entry`='3581';
update `quest_template` set `MinLevel`='40' where `entry`='3581';
update `quest_template` set `RequiredRaces`='32' where `entry`='3581';

update `quest_template` set `Objectives`='Speak to Saern Priderunner to learn the Plainsrunning skill.' where `entry`='3581';
update `quest_template` set `OfferRewardText`='Speak to Saern Priderunner to learn the Plainsrunning skill.' where `entry`='3581';

update `quest_template` set `Details`='Imagine yourself racing across the plains, through forests and over mountains, the wind in your face... Traveling over unseen territory; the wonder of the road ahead, your destiny resting just over the horizon.\n\nAlways remember that on hoof, many things are achievable; as a Tauren, you will be granted the swiftness of Plainsrunning. There is no limit to the distances you might go.' where `entry`='3581';

update `quest_template` set `PrevQuestId`='3580' where `entry`='3581';
update `quest_template` set `LimitTime`='300' where `entry`='3581';

-- Harb Clawhoof

replace into creature_questrelation (id, quest) values (3685, 3578);

-- Samantha Swifthoof

replace into creature_questrelation (id, quest) values (11748, 3579);
replace into creature_questrelation (id, quest) values (11748, 3580);

replace into creature_involvedrelation (id, quest) values (11748, 3578);
replace into creature_involvedrelation (id, quest) values (11748, 3579);

-- Jorn Skyseer:

replace into creature_questrelation (id, quest) values (3387, 3581);
replace into creature_involvedrelation (id, quest) values (3387, 3580);

update `creature_template` set `script_name`='npc_jorn_skyseer' where `entry`='3387';

-- Saern Priderunner:

replace into creature_involvedrelation (id, quest) values (8664, 3581);

update `creature_template` set `script_name`='npc_saern_priderunner' where `entry`='8664';

replace into `broadcast_text` (`ID`, `MaleText`) values ('90150', 'Hmm, young one, I sense no Blessing of the Spirit of the Wind within you.\n\nDid you speak to Jorn Skyseer or you were chasing the winds in the Barrens?');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90150', '90150');

replace into `broadcast_text` (`ID`, `MaleText`) values ('90151', 'Imagine yourself racing across the plains, through forests and over mountains, the wind in your face...\n\nTraveling over unseen territory; the wonder of the road ahead, your destiny resting just over the horizon.');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90151', '90151');


replace into `broadcast_text` (`ID`, `MaleText`) values ('90152', 'Oh, you\'re still wandering around? I\'m sure Saern is awaiting for you!');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90152', '90152');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
