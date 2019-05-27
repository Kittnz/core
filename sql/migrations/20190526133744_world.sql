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

replace into quest_template (entry, MinLevel, QuestLevel, RequiredRaces, Title, Details, Objectives, OfferRewardText, RequestItemsText, ReqItemId1, ReqItemCount1, ReqItemId2, ReqItemCount2, ReqItemId3, ReqItemCount3, PrevQuestId, NextQuestId, OfferRewardEmote1, OfferRewardEmote2) values

(3578, 40, 45, 32, 'Swift as a Swifthoof', 

'Ah, I\'ve been expecting my Rah\'pawene, Samantha Swifthoof and she\'s yet to come! I\'m confused...\n\nCan you help me and find her? Last time we spoke she was so much excited to see the new places and travel at her leisure from a port to some distant forests and northern regions of the Eastern Kingdoms, alas, the only port I know nearby is the Ratchet.\n\nI\'m most certain Samantha braved to the ferry and swam to the Booty Bay.\n\nWhere could she travel to from there I do not know. Perhaps you could find her for me? Just to be sure she\'s fine...', 
'Find Samantha Swifthoof.',
'Oh, traveller? Forgive me, but I\'m so exhausted with my journey I can barely move my hoof...\n\nBut there\'s so many places I\'d love to see! Can you help?',
'There\'s so many places I\'d love to see! Can you help?',

 0, 0, -- No reagent
 0, 0, -- No reagent
 0, 0, -- No reagent
 
 0,   -- PrevQuestId
 3579, -- NextQuestId

 18, -- EMOTE_ONESHOT_CRY 
 16  -- EMOTE_ONESHOT_KNEEL
 
);

-- 3579 Custom Turtle WoW quest: Help Samantha

replace into quest_template
(entry, MinLevel, QuestLevel, RequiredRaces, Title, Details, Objectives, OfferRewardText, RequestItemsText, 
ReqItemId1, ReqItemCount1, ReqItemId2, ReqItemCount2, ReqItemId3, ReqItemCount3, ReqItemId4, ReqItemCount4, PrevQuestId, NextQuestId, OfferRewardEmote1) 
values

(3579, 40, 45, 32, 'Have Hoof Will Travel', 

'Yes, I\'ve travelled this far on my own hooves and yes I\'m very tired, alas, my wanderlust is too strong to be ignored, I just can not stop and be idle even for a minute knowing that so many roads are to be discovered and forests traversed and plains to be run over... oh, the world is so vast, I could travel all my life!\n\nHowever, as you can see, I\'m falling down from all the hoofwork I\'ve endured to the moment.\n\nOh, if only I could have our famous Compressing Bandage to aid my muscles to feel well again!', 
'Bring 10 Heavy Silk Bandages, 5 Fadeleaf, 10 Earthroots and 10 bottles of Refreshing Spring Water to Samantha Swifthoof.',
'Ah, I\'ve been expecting you! Were you able to get those herbs and cloth for me? Thank you!\n\nWith these I\'ll be able to make this Compressing Bandage and I will surely be able to travel even further!',
'Ah, so nice of you!\n\nI\'m glad you are so eager to help me, thank you!',

 6451, 10, -- Heavy Silk Bandage
 3818, 5,  -- Fadeleaf
 2449, 10, -- Earthroot
 159, 10,  -- Refreshing Spring Water
 
 3578, -- PrevQuestId
 3580, -- NextQuestId

 4 -- EMOTE_ONESHOT_CHEER
);

-- 3580 Custom Turtle WoW quest: Speak to Jorn

replace into quest_template (entry, MinLevel, QuestLevel, RequiredRaces, Title, Details, Objectives, OfferRewardText, RequestItemsText, ReqItemId1, ReqItemCount1, ReqItemId2, ReqItemCount2, ReqItemId3, ReqItemCount3, PrevQuestId, NextQuestId, OfferRewardEmote1) values

(3580, 40, 45, 32, 'Plains To Run, Sky To See', 

'I feel so much better now! So invigorated and excited! Oh, this is wonderful!\n\nThank you, $N, thank you so much.\n\nBesides the strength of the will and very durable hooves you will need a Blessing of the Wind to help you run as fast as  as all of us Swifthoof are! I know just a tauren who can guide you on this.\n\nHis name is Jorn Skyseer. Last time I spoke to him was at the Camp Taurajo in Southern Barrens. Ahh, the Golden Road, so luring... ', 
'Speak to Jorn Skyseer at the Camp Taurajo.',
'Ah, the Winds led you to me I see. I\'ve been expecting you.\n\nSamantha Swifthoof sent you, of course. Girl did very well to travel further than Mulgore and Barrens. I\'m only glad she found help even at the continent so far from here in your actions, honorable deed should always be rewarded.\n\nThere\'s an expert on Plainsrunning skill resides at the Hunter\'s Rise in Thunder Bluff you should see, her name is Saern Priderunner.\n\nShe can teach you on how you should handle your body for Plainsrunning only when you have your spirit high with the Blessing of the Wind.\n\nReach her while the Blessing is still supporting your spirit and body!\n\nThe Blessing of the Wind be bestowed upon you! Al\'akir, hear my plea and grant this tauren swiftness of your gales and strength of your storms!',
'Go swiftly, young one! Saern will help you only with the Blessing holding on you! Run!',

 0, 0, -- No reagent
 0, 0, -- No reagent
 0, 0, -- No reagent
 
 3579,   -- PrevQuestId
 3581,   -- NextQuestId
 
 15    -- EMOTE_ONESHOT_ROAR
);

update `quest_template` set `RewSpellCast`='16618' where `entry`='3580';

-- 3581. Reimplementation of the original Plainsrunning quest: https://www.wowhead.com/quest=3581/unused

update `quest_template` set `RewOrReqMoney`='0' where `entry`='3581';
update `quest_template` set `MinLevel`='40' where `entry`='3581';
update `quest_template` set `RequiredRaces`='32' where `entry`='3581';

update `quest_template` set `Objectives`='Speak to Saern Priderunner to learn the Plainsrunning skill.' where `entry`='3581';
update `quest_template` set `OfferRewardText`='There is no limit to the distances you might go!' where `entry`='3581';

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

update `quest_template` set `ZoneOrSort`='222' where `entry` in (3578, 3579, 3580, 3581);

-- Baby Kodo pet:

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(50240, 15, 2, 'Kodo Calfling', '', 31802, 1, 1, 28505, 1500);

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('50074', '1451', 'Kodo Calfling', '', '1', '1', '64', '64', '35', '', 0.2);

replace into custom_pet_entry_relation (item_entry, creature_entry) values ('50240', '50074');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
