DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190317211707');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190317211707');
-- Add your query below.

/* Disguise things */
replace into item_template (entry, class, subclass, Flags, Buy_Price, Sell_Price, Buy_Count, name, description, display_id, Quality, Inventory_Type, Item_Level, Required_Level, Allowable_Class, Required_spell, spellid_1, spellcooldown_1, spellcharges_1, spellcategory_1, spellcategorycooldown_1, bonding, max_count, stackable) values
(5126, 9, 0, 64, 2500, 500, 1, 'Knowledge: Defias Disguise', '', 1097, 1, 0, 0, 13, 8, 5170, 5269, 0, -1, 0, 0, 0, 0, 1),
(5127, 9, 0, 64, 2500, 500, 1, 'Knowledge: South Seas Pirate Disguise', '', 1097, 1, 0, 0, 13, 8, 5170, 5275, 0, -1, 0, 0, 0, 0, 1),
(5129, 9, 0, 64, 2500, 500, 1, 'Knowledge: Dark Iron Dwarf Disguise', '', 1097, 1, 0, 0, 22, 8, 5170, 5273, 0, -1, 0, 0, 0, 0, 1),
(5130, 9, 0, 64, 2500, 500, 1, 'Knowledge: Dalaran Wizard Disguise', '', 1097, 1, 0, 0, 13, 8, 5170, 5272, 0, -1, 0, 0, 0, 0, 1),
(5131, 9, 0, 64, 2500, 500, 1, 'Knowledge: Stonesplinter Disguise', '', 1097, 1, 0, 0, 13, 8, 5170, 5270, 0, -1, 0, 0, 0, 0, 1),
(5132, 9, 0, 64, 2500, 500, 1, 'Knowledge: Syndicate Disguise', '', 1097, 1, 0, 0, 22, 8, 5170, 5274, 0, -1, 0, 0, 0, 0, 1);

replace into creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) values
(1981, 5108, 1, 0, 1, 1, 0),
(6523, 5108, 6, 0, 1, 1, 0),
(6212, 5108, 4, 0, 1, 1, 0),
(1051, 5108, 4, 0, 1, 1, 0),
(1053, 5108, 4, 0, 1, 1, 0),
(1052, 5108, 4, 0, 1, 1, 0),
(1054, 5108, 4, 0, 1, 1, 0);
replace into npc_vendor (entry, item, maxcount, incrtime) values
(3180, 5108, 1, 300);

replace into npc_vendor (entry, item, maxcount, incrtime) values
(50006, 5126, 1, 300),
(50007, 5129, 1, 300),
(50008, 5127, 1, 300),
(50009, 5130, 1, 300),
(50010, 5131, 1, 300),
(50011, 5132, 1, 300);
replace into creature_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount) values
(50003, 50063, -100, 1, 1),
(50003, 2589, 100, 1, 3),

(50005, 50064, -100, 1, 1),
(50005, 2589, 100, 1, 3);
insert ignore into quest_template (entry, Method, ZoneOrSort, MinLevel, QuestLevel, Type, RequiredClasses, NextQuestInChain, Title, Details, Objectives, OfferRewardText) values
(50000, 2, -162, 2, 6, 0, 8, 50002, 'Professor Malkovich', 'Professor Malkovich is an old friend of mine. He told me to send him someone interested in anatomy.$B$BFind him at the bottom of the Apothecarium in Undercity.', 'Talk to Professor Malkovich at the bottom of the Apothecarium in Undercity.', 'Great! A student! Listen to me carefully...'),
(50003, 2, -162, 2, 6, 0, 8, 50004, 'Professor Papucho', 'Professor Papucho is an old friend of mine. He told me to send him someone interested in anatomy.$B$BFind him somewhere inside The Forlorn Cavern in Ironforge.', 'Talk to Professor Papucho somewhere inside The Forlorn Cavern in Ironforge.', 'Great! A student! Listen to me carefully...');
insert ignore into quest_template (entry, Method, ZoneOrSort, MinLevel, QuestLevel, Type, RequiredClasses, PrevQuestId, Title, Details, Objectives, OfferRewardText, ObjectiveText1, RequestItemsText, ReqItemId1, ReqItemCount1, RewItemId1, RewItemCount1, RewSpell, RewSpellCast) values
(50002, 2, -162, 2, 6, 0, 8, 50000, 'The Human Anatomy', 'Being an undead for so long has made me forget some things about human anatomy. Since we have an annoying specimen in the room next to us, how about you get rid of him and bring me his head? That way I can study it without him screaming. Don\'t worry, he\'s already out of the cage.$B$BBy the way, I will show you how to disguise as a human if you bring me his head in good conditions.',
'Get rid of the Annoying Peasant and bring his head to Professor Malkovich.', 'You have done well, his head is in perfect conditions. Come closer and I will show you how to disguise as a filthy human.$B$BDon\'t forget your class notes!', 'Intact Human Head', 'Come on! Bring me his head, I don\'t have all day.', 50063, 1, 50065, 1, 5670, 0),
(50004, 2, -162, 2, 6, 0, 8, 50003, 'The Orcish Anatomy', 'My friends at the museum are thinking of dissecting the orc that I found drunk a few days ago. Kill him and bring me his head so I can study his anatomy better, I\'ll re-sew it to the body later.$B$BBy the way, I will show you how to disguise as an orc if you bring me his head in good conditions.',
'Kill the Stupefied Orcish Peon and bring his head to Professor Papucho.', 'You have done well, his head is in perfect conditions. Come closer and I will show you how to disguise as a nasty orc.$B$BDon\'t forget your class notes!', 'Intact Orc Head', 'Come on! Bring me his head, I don\'t have all day.', 50064, 1, 50065, 1, 5671, 0);
insert ignore into creature_questrelation (id, quest) values
(2122 /*Deathknell Rogue Trainer*/, 50000),
(3155 /*Valley of Trials Rogue Trainer*/, 50000),
(50002, 50002),

(916 /*Anvilmar Rogue Trainer*/, 50003),
(915 /*Northshire Valley Rogue Trainer*/, 50003),
(3594 /*Shadowglen Rogue Trainer*/, 50003),
(50004, 50004);
insert ignore into creature_involvedrelation (id, quest) values
(50002, 50000),
(50002, 50002),
(50004, 50003),
(50004, 50004);
update item_template set Quality = 1 where entry = 5113 or entry = 7997;


/* Khadgar's Unlocking skills */
replace into item_template (entry, class, subclass, Flags, Buy_Count, Buy_Price, Sell_Price, name, description, display_id, Quality, Inventory_Type, Item_Level, Required_Level, Allowable_Class, Required_Skill, Required_Skill_Rank, spellid_1, spellcooldown_1, spellcharges_1, spellcategory_1, spellcategorycooldown_1, bonding, max_count, stackable, start_quest) values
(985, 9, 0, 64, 1, 5000, 550, 'Tome of Khadgar\'s Unlocking', '', 1103, 1, 0, 18, 18, 128, 0, 0, 493, 0, -1, 0, 0, 0, 0, 1, 0),
(1567, 9, 0, 64, 1, 15000, 2425, 'Tome of Khadgar\'s Unlocking II', '', 1103, 1, 0, 30, 30, 128, 0, 0, 858, 0, -1, 0, 0, 0, 0, 1, 0),
(4158, 12, 0, 64, 1, 30000, 5500, 'Tome of Khadgar\'s Unlocking III', 'You only understand the magic part, you will need help to understand the rest of the things...', 1103, 1, 0, 42, 42, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 50005),
(8881, 12, 0, 64, 1, 50000, 11000, 'Tome of Khadgar\'s Unlocking IV', 'You only understand the magic part, you will need help to understand the rest of the things...', 1103, 1, 0, 54, 54, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 50006);
replace into item_template (entry, class, subclass, name, description, display_id, Quality, Flags, Buy_Count, Buy_Price, Sell_Price, Item_Level, Allowable_Class, stackable) values
(5517, 5, 0, 'Tiny Bronze Key', 'A reagent for mage spells.', 16454, 1, 0, 1, 600, 100, 18, 128, 10),
(5518, 5, 0, 'Tiny Iron Key', 'A reagent for mage spells.', 8902, 1, 0, 1, 800, 150, 30, 128, 10),
(8147, 5, 0, 'Tiny Copper Key', 'A reagent for mage spells.', 16454, 1, 0, 1, 1000, 200, 42, 128, 10),
(8148, 5, 0, 'Tiny Silver Key', 'A reagent for mage spells.', 9660, 1, 0, 1, 1200, 250, 54, 128, 10);
insert ignore into quest_template (entry, Method, ZoneOrSort, PrevQuestId, MinLevel, QuestLevel, Type, RequiredClasses, RewSpell, RewSpellCast, RewOrReqMoney, Title, Details, Objectives, OfferRewardText) values
(50005, 2, -161, 0, 42, 42, 0, 128, 10165, 10167, -30000, 'In need of Ol\' Biggins', 'The magic is amazing, but still you will need the help of a good rogue if you want to learn how to open such difficult locks...$B$BI have an old friend who lives in the Ravenholdt Manor, hidden between the mountains in the northern part of Hillsbrad Foothills. I\'m sure he will help you with your learnings in exchange of some gold.', 'Find Ol\' Biggins in the Ravenholdt Manor and pay him to help you with your learnings.', 'I can\'t stand the smell of magic. I\'m sure you know you need to pay me a fee, be quick and go away!'),
(50006, 2, -161, 50005, 54, 54, 0, 128, 10166, 10168, -80000, 'In need of Ol\' Biggins. Again.', 'Do you remember Ol\' Biggins? My friend who lives in the Ravenholdt Manor, hidden between the mountains in the northern part of Hillsbrad Foothills? He will help you again with your learnings in exchange of more gold.', 'Find Ol\' Biggins in the Ravenholdt Manor and pay him again to help you with your learnings.', 'You again!? That smell... Pay me and I\'ll help you quickly, I hope you don\'t come back!');
insert into creature_involvedrelation (id, quest) values
(50012, 50005),
(50012, 50006);
insert ignore into creature_equip_template (entry, equipentry1) values
(50012, 3335);
insert ignore into npc_vendor (entry, item, maxcount, incrtime) values
(50013, 5517, 0, 0),
(50013, 5518, 0, 0),
(50013, 8147, 0, 0),
(50013, 8148, 0, 0),
(50013, 985, 1, 600),
(50013, 1567, 1, 600),
(50013, 4158, 1, 1800),
(50013, 8881, 1, 1800),

(50014, 5517, 0, 0),
(50014, 5518, 0, 0),
(50014, 8147, 0, 0),
(50014, 8148, 0, 0),
(50014, 985, 1, 600),
(50014, 1567, 1, 600),
(50014, 4158, 1, 1800),
(50014, 8881, 1, 1800);

-- Remove BG restriction for Spirit Guides

update creature_template set npc_flags = 65 where entry in (13116, 13117);

-- Alliance Spirit Guide

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES ('2554782', '13116', '0', '0', '13116', '-13201.1', '222.009', '33.2316', '3.12936', '5', '0', '8609', '7860', '0', '0', '0', '0', '0', '10');

-- Horde Spirit Guide

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES ('2554785', '13117', '0', '0', '13117', '-13250.4', '249.749', '33.2347', '5.26014', '5', '0', '8609', '7860', '0', '0', '0', '0', '0', '10');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
