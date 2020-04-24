DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200307205257');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200307205257');
-- Add your query below.

REPLACE INTO `creature_template` VALUES (50561,4,956,0,0,0,'Corrupted Red Whelp',NULL,0,60,60,4578,4578,0,0,3791,103,0,1.26,1.14286,0,20,5,0,0,1,483,555,0,272,1,1410,1551,1,0,0,0,0,0,0,0,74.448,102.366,100,2,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,''),(50562,4,694,0,0,0,'Corrupted Green Whelp',NULL,0,60,60,4578,4578,0,0,3791,103,0,1.26,1.14286,0,20,5,0,0,1,483,555,0,272,1,1410,1551,1,0,0,0,0,0,0,0,74.448,102.366,100,2,0,0,0,0,0,0,300,0,180,0,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,''),(50563,4,9994,0,0,0,'Corrupted Blue Whelp',NULL,0,60,60,4578,4578,0,0,3791,103,0,1.26,1.14286,0,20,5,0,0,1,483,555,0,272,1,1410,1551,1,0,0,0,0,0,0,0,74.448,102.366,100,2,0,0,0,0,0,0,0,300,0,150,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,''),(50564,4,14720,0,0,0,'Corrupted Bronze Whelp',NULL,0,60,60,4578,4578,0,0,3791,103,0,1.26,1.14286,0,20,5,0,0,1,483,555,0,272,1,1410,1551,1,0,0,0,0,0,0,0,74.448,102.366,100,2,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,'');
REPLACE INTO `creature_template` VALUES (50565,5,14358,0,0,0,'Warden of Time',NULL,0,61,61,31482,31482,0,0,4091,35,0,1,1.14286,1.6,20,5,0,1,1,1569,1736,0,278,1,1141,2000,1,32832,0,0,0,0,0,0,172.1,240.07,100,2,8,11356,11356,0,0,15,15,15,15,15,24438,22886,15655,22591,0,0,1418,1857,'',1,3,0,0,3,11356,0,0,608908883,0,0,'');
REPLACE INTO `creature_template` VALUES (50566,5,14358,0,0,0,'Corrupted Warden of Time',NULL,0,61,61,31482,31482,0,0,4091,103,0,1,1.14286,1.6,20,5,0,1,1,1569,1736,0,278,1,1141,2000,1,32832,0,0,0,0,0,0,172.1,240.07,100,2,8,11356,11356,0,0,15,15,15,15,15,24438,22886,15655,22591,0,0,1418,1857,'',1,3,0,0,3,11356,0,0,608908883,0,0,'');

replace into creature_equip_template (entry, equipentry1) values
(50565, 2291);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values
(50565, 50203, 100, 1, 4, 12);

update creature_spells set probability_1 = 100, delayrepeatmin_1 = 20, delayrepeatmax_1 = 20, spellid_2 = 7098, probability_2 = 80 where entry = 50111;

update creature_template set equipment_id = 50565, spell_list_id = 50565, loot_id = 50565 where entry in (50565, 50566);
update creature_template set loot_id = 0 where entry = 50565;

replace into creature_template_addon (entry, auras) values
(50561, 28126),
(50562, 28126),
(50563, 28126),
(50564, 28126);

replace into creature_template_addon (entry, b2_0_sheath, auras) values
(50566, 1, 28126);

replace into gameobject_template (entry, type, displayid, name, faction, size, script_name) values
(7000031, 5, 477, 'Corrupted Dragon Egg', 35, 1, '');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
replace into migrations values ('20200308165120');

update quest_template set ReqItemCount1 = 6 where entry = 1322;
update creature_loot_template set ChanceOrQuestChance = 5 where item = 18564;
update creature_loot_template set ChanceOrQuestChance = 5 where item = 18563;DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200317013233');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200317013233');
-- Add your query below.

UPDATE `creature_template` SET `display_id1`='2657' WHERE (`entry`='51293') AND (`patch`='0');

-- Thunder Bluff fashionista

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51294, 0, 6554, 0, 0, 0, 'Donnace', 'Thunder Bluff Fashionista', 0, 35, 35, 2016, 2016, 0, 0, 1357, 12, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_transmog');
update creature_template set faction = 104 where entry = 51294;

-- Undercity fashionista

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51295, 0, 2657, 0, 0, 0, 'Jetsey Bonson', 'Undercity Fashionista', 0, 35, 35, 2016, 2016, 0, 0, 1357, 12, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_transmog');
update creature_template set faction = 68 where entry = 51295;

-- Darnassus fashionista

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51296, 0, 1728, 0, 0, 0, 'Reikubo', 'Darnassus Fashionista', 0, 35, 35, 2016, 2016, 0, 0, 1357, 12, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_transmog');
update creature_template set faction = 80 where entry = 51296;

-- Ironforge fashionista

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51297, 0, 1927, 0, 0, 0, 'Dorein', 'Ironforge Fashionista', 0, 35, 35, 2016, 2016, 0, 0, 1357, 12, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_transmog');
update creature_template set faction = 57 where entry = 51297;

-- Orgrimmar fashionista

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51291, 0, 4377, 0, 0, 0, 'Herrina', 'Orgrimmar Fashionista', 0, 35, 35, 2016, 2016, 0, 0, 1357, 12, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_transmog');
update creature_template set faction = 85 where entry = 51291;

-- === QUESTS === --

update item_template set quality = 1 where entry = 4813;
update item_template set quality = 1 where entry = 11407;
update item_template set quality = 1 where entry = 5636;
update item_template set quality = 1 where entry = 1688;
update item_template set class = 4 where entry = 51050;
update item_template set subclass = 1 where entry = 51050;
update item_template set armor = 10 where entry = 51050;

update item_template set material = 0 where entry = 51050;
update creature_template set npc_flags = 2 where entry = 51292;
update creature_template set npc_flags = 2 where entry = 51293;
UPDATE `item_template` SET `quality`='2' WHERE (`entry`='51050') AND (`patch`='0');

-- 1-10

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60030', '0', '2', '-284', '0', '10', '10', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'Fashion Demands Sacrifices', 'Greetings!$B$BAren\'t you here for some Fashion Coins exchange? Well then, one will cost you some materials. Here\'s what we need at the moment...$B$BI need all the items on the list and not a single one of it less. Make sure they aren\'t damaged or chipped… I\'m not a goblin to meddle with.', 'Bring 20 Linen Cloth, 15 Light Leather, 10 Malachite and 5 Small Leather Collar to Fashionista\'s apprentice and receive one Fashion Coin as a reward.', 'Here you go. Have your Fashion Coin and knock yourself off my face, I\'m not some Speedy to appreciate your so called heroic deeds and miniscule efforts.', 'What?$B$BFeel free to knock yourself out, I\'m very busy. Have a good day to you too.', '', '', '',
'', '', '2589', '2318', '774', '4813', '20', '15', '10',
'5', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51217', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '525', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51292','60030','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51292','60030','10','10');
     
-- 11-20

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60031', '0', '2', '-284', '11', '20', '20', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'Fashion Demands Sacrifices', 'Greetings!$B$BAren\'t you here for some Fashion Coins exchange? Well then, one will cost you some materials. Here\'s what we need at the moment...$B$BI need all the items on the list and not a single one of it less. Make sure they aren\'t damaged or chipped… I\'m not a goblin to meddle with.', 'Bring 20 Wool Cloth, 10 Medium Leather, 10 Shadowgems and 5 Small Furry Paw to Fashionista\'s apprentice and recieve one Fashion Coin as a reward.', 'Here you go. Have your Fashion Coin and knock yourself off my face, I\'m not some Speedy to appreciate your so called heroic deeds and miniscule efforts.', 'What?$B$BFeel free to knock yourself out, I\'m very busy. Have a good day to you too.', '', '', '',
'', '', '2592', '2319', '1210', '5134', '20', '10', '10',
'5', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51217', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '1550', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51292','60031','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51292','60031','10','10');      

-- 21-30

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60032', '0', '2', '-284', '21', '30', '30', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'Fashion Demands Sacrifices', 'Greetings!$B$BAren\'t you here for some Fashion Coins exchange? Well then, one will cost you some materials. Here\'s what we need at the moment...$B$BI need all the items on the list and not a single one of it less. Make sure they aren\'t damaged or chipped… I\'m not a goblin to meddle with.', 'Bring 20 Silk Cloth, 10 Heavy Leather, 1 Stylish Green Shirt and 5 Torn Bear Pelts to Fashionista\'s apprentice and recieve one Fashion Coin as a reward.', 'Here you go. Have your Fashion Coin and knock yourself off my face, I\'m not some Speedy to appreciate your so called heroic deeds and miniscule efforts.', 'What?$B$BFeel free to knock yourself out, I\'m very busy. Have a good day to you too.', '', '', '',
'', '', '4306', '4234', '6385', '11407', '20', '10', '1',
'5', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51217', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '3050', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51292','60032','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51292','60032','10','10');      

-- 31-40

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60033', '0', '2', '-284', '31', '40', '40', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'Fashion Demands Sacrifices', 'Greetings!$B$BAren\'t you here for some Fashion Coins exchange? Well then, one will cost you some materials. Here\'s what we need at the moment...$B$BI need all the items on the list and not a single one of it less. Make sure they aren\'t damaged or chipped… I\'m not a goblin to meddle with.', 'Bring 20 Cured Heavy Hide, 20 Mageweave Cloth, 1 set of Murloc Scale Bracers and 1 Golden Scale Cuirass to Fashionista\'s apprentice and recieve one Fashion Coin as a reward.', 'Here you go. Have your Fashion Coin and knock yourself off my face, I\'m not some Speedy to appreciate your so called heroic deeds and miniscule efforts.', 'What?$B$BFeel free to knock yourself out, I\'m very busy. Have a good day to you too.', '', '', '',
'', '', '4236', '4338', '5783', '3845', '20', '20', '1',
'1', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51217', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '4500', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51292','60033','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51292','60033','10','10');      

-- 41-50

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60034', '0', '2', '-284', '41', '50', '50', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'Fashion Demands Sacrifices', 'Greetings!$B$BAren\'t you here for some Fashion Coins exchange? Well then, one will cost you some materials. Here\'s what we need at the moment...$B$BI need all the items on the list and not a single one of it less. Make sure they aren\'t damaged or chipped… I\'m not a goblin to meddle with.', 'Bring 20 Bolts of Mageweave, 10 Star Ruby, 1 White Wedding Dress and 1 Deadly Bronze Poniard to Fashionista\'s apprentice and recieve one Fashion Coin as a reward.', 'Here you go. Have your Fashion Coin and knock yourself off my face, I\'m not some Speedy to appreciate your so called heroic deeds and miniscule efforts.', 'What? Don\'t even ask me anything.$B$BFeel free to knock yourself out, I\'m very busy. Have a good day to you too.', '', '', '',
'', '', '4339', '7910', '10040', '3490', '20', '10', '1',
'1', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51217', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '5200', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51292','60034','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51292','60034','10','10');      

-- 51-60

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60035', '0', '2', '-284', '51', '60', '60', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'Fashion Demands Sacrifices', 'Greetings!$B$BAren\'t you here for some Fashion Coins exchange? Well then, one will cost you some materials. Here\'s what we need at the moment...$B$BI need all the items on the list and not a single one of it less. Make sure they aren\'t damaged or chipped… I\'m not a goblin to meddle with.', 'Bring 15 Bolts of Runcloth, 5 Huge Emeralds, 20 Long Soft Tails and 15 Delicate Feathers to Fashionista\'s apprentice and recieve one Fashion Coin as a reward.', 'Here you go. Have your Fashion Coin and knock yourself off my face, I\'m not some Speedy to appreciate your so called heroic deeds and miniscule efforts.', 'What? Don\'t even ask me anything.$B$BFeel free to knock yourself out, I\'m very busy. Have a good day to you too.', '', '', '',
'', '', '14048', '13926', '1688', '5636', '15', '1', '20',
'15', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51217', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '6400', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51292','60035','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51292','60035','10','10');  

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51298, 0, 2657, 0, 0, 0, 'Zora', 'Fashionista Apprentice', 0, 35, 35, 2016, 2016, 0, 0, 1357, 85, 1, 1.11, 1.14286, 1, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_transmog');    

-- More questgivers:

replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51293','60030','10','10');
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51293','60031','10','10');
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51293','60032','10','10');
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51293','60033','10','10');
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51293','60034','10','10');
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51293','60035','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51293','60030','10','10');      
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51293','60031','10','10');      
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51293','60032','10','10');      
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51293','60033','10','10');      
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51293','60034','10','10');      
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51293','60035','10','10');      

-- Extra quest

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60036', '0', '2', '-284', '51', '60', '60', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'Make the Right Choice', 'I\'ve heard rumors that there are some kind of zealous fanatics that still reside in that cursed Stratholme, which I\'d say is absolutely insane place to remain at if you ask me, alas, these folks might get a hold onto some Righteous Orbs I need for my new invention and an exquisite masterpice I have patterned long time ago to be made real.\n\nThere\'s also another orb, no, I think it\'s a Sphere… let me check my list; oh, correct – Flawless Draenethyst Sphere. I need one. Where? No idea, sorry. Perhaps someone knows something about it in some Blasted Lands far away from here? Ask people around.\n\nBring me 5 of these orbs and I will see that you have your precious Fashion Coin.\n\nPerhaps… oh, nothing, nevermind.\n\nOh, you\'re ready to go right away? Marvelous!', 'Bring 5 Righteous Orbs to Fashionista\'s Apprentice and recieve 3 Fashion Coins as a reward.', 'Splendid. Hmm, is that a … *<gasps>* A CRACK?!?\n\nOh, it\'s just a hair. Lucky me it\'s not dusty or rot covered by undead. Oh yes, your reward.', 'So soon?\n\nSeems like those fanatics are lying dead and draw no breath at all, unless they became undead at this point already. Whatever.\n\nDo you have the orbs I asked for and that sphere as well?', '', '', '',
'', '', '12811', '8244', '0', '0', '5', '1', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51217', '0', '0', '0', '3', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '6400', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);

delete from creature_involvedrelation where quest = 60036;
delete from creature_questrelation where quest = 60036;

replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51293','60036','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51293','60036','10','10');  
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51292','60036','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51292','60036','10','10');  

REPLACE INTO `transmog_template` (`displayid`, `inventory_type`) VALUES ('10416', '1');

-- Shop Bag

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51305, 0, 15, 0, 'Small Pouch of Fashion Coins', '', 33941, 2, 4, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountorref, maxcount) values (51305, 51217, 100, 1, 5, 5);

-- Shop Bag

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51306, 0, 15, 0, 'Large Pouch of Fashion Coins', '', 33941, 3, 4, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountorref, maxcount) values (51306, 51217, 100, 1, 10, 10);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200318230417');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200318230417');
-- Add your query below.

update item_template set quality = 0 where entry = 50016;
update item_template set name = 'Broken Meeting Stone' where entry = 50016;
update item_template set description = 'This doesn\'t seem to be magical at all... The amulet is scratched and broken.' where entry = 50016;
update item_template set sell_price = 200 where entry = 50016;
update item_template set spellid_1 = 0 where entry = 50016;

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000081, 0, 1, 1327, 'Wormhole', 35, 0, 0.50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portable_wormhole');

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51310, 0, 0, 0, 'Portable Wormhole Generator', 'Creates a highly radioactive Wormhole.', 20627, 2, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18282, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_wormhole_generator');

UPDATE `item_template` SET `spellcooldown_1`='3600000' WHERE (`entry`='51310') AND (`patch`='0');
	
-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
	DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200324125321');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200324125321');
-- Add your query below.

update item_template set class = 4, subclass = 1 where entry in (51051, 51037, 51036, 51035, 51034, 51033, 51032, 51031, 51031, 51019, 51018, 51017, 51016, 51015, 51014, 51013, 51008);
update item_template set class = 4, subclass = 1 where entry between 50514 and 50519;
update item_template set class = 4, subclass = 1 where entry between 50500 and 50514;
update item_template set class = 4, subclass = 1 where entry between 50343 and 50373;
update item_template set class = 4, subclass = 1 where entry between 50308 and 50341;
update item_template set class = 4, subclass = 1 where entry between 50300 and 50306;
update item_template set class = 4, subclass = 1 where entry between 50095 and 50100;
update item_template set class = 4, subclass = 1 where entry between 50026 and 50029;
update item_template set class = 4, subclass = 1 where entry between 50032 and 50042;

update item_template set class = 4, subclass = 1 where entry = 50045;
update item_template set class = 4, subclass = 1 where entry = 50046;
update item_template set class = 4, subclass = 1 where entry = 50047;
update item_template set class = 4, subclass = 1 where entry = 50059;
update item_template set class = 4, subclass = 1 where entry = 50060;
update item_template set class = 4, subclass = 1 where entry = 50061;
update item_template set class = 4, subclass = 1 where entry = 50102;
update item_template set class = 4, subclass = 1 where entry = 50103;
update item_template set class = 4, subclass = 1 where entry = 50236;
update item_template set class = 4, subclass = 1 where entry = 50392;
update item_template set class = 4, subclass = 1 where entry = 50393;
update item_template set class = 4, subclass = 1 where entry = 50394;
update item_template set class = 4, subclass = 1 where entry = 50395;
update item_template set class = 4, subclass = 1 where entry = 50377;
update item_template set class = 4, subclass = 1 where entry = 50397;
update item_template set class = 4, subclass = 1 where entry = 50398;
update item_template set class = 4, subclass = 1 where entry = 50409;
update item_template set class = 4, subclass = 1 where entry = 50410;
update item_template set class = 4, subclass = 1 where entry = 50411;
update item_template set class = 4, subclass = 1 where entry = 50412;
update item_template set class = 4, subclass = 1 where entry = 50413;
update item_template set class = 4, subclass = 1 where entry = 50414;
update item_template set class = 4, subclass = 1 where entry = 50396;
update item_template set class = 4, subclass = 1 where entry = 51030;
update item_template set class = 4, subclass = 1 where entry = 50415;
update item_template set class = 4, subclass = 1 where entry = 51052;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200325031927');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200325031927');
-- Add your query below.

-- Smashed Pumpkin

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51320', '0', '15', '0', 'Smashed Pumpkin', '', '3225', '0', '0', '1', '450', '450', '0', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51325', '0', '12', '0', 'Elwynn Pumpkin', 'Plump. Quite ready to be made into pie.', '3225', '1', '0', '1', '0', '0', '0', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51330', '0', '12', '0', 'Delicious Pumpkin Pie', 'Soft to the touch.', '16837', '1', '0', '1', '0', '0', '0', '-1', '-1', '6',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51332', '0', '4', '0', 'Gramma Stonefield\'s Lantern', 'Bright enough to not get lost in the woods.', '7461', '2', '0', '1', '950', '950', '22', '-1', '-1', '8',
 '6', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '7', '2', '5', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 

	  

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200327164944');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200327164944');
-- Add your query below.

update item_template set inventory_type = 23 where entry = 51332;

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60040', '0', '2', '12', '6', '8', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'Delicious Pumpkin Pie', 'I swear I could eat an ogre right now!\n\nAre you going to the Stonefield farm by any chance? If so, could you ask for one of those famous Elwynn Pumpkin Pies from Gramma Stonefield for me? The farm is due south-west from here. If you go by the road then you can\'t miss it.\n\nCome back when you have that pie, please!', 'Bring 1 Delicious Pumpkin Pie to Gina Weller in Goldshire.', 'Oh! Finally, some good delicious food.', 'Come back when you have that pie, please!', '', '', '',
'', '', '51330', '0', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '51400', '51401', '0', '0', '0', '0',
'1', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '500', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51261','60040','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('51261','60040','10','10');
      
update creature_template set npc_flags = 2 where entry = 51261;
update creature_template set npc_flags = 2 where entry = 1650;

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51299, 0, 1555, 0, 0, 0, 'DUMMY_SPEAK_TO_PLAYER', 'Snowball Wars', 0, 1, 1, 10, 30, 0, 0, 7, 35, 0, 1.2, 1.14286, 1, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524288, '');

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51400', '0', '4', '1', 'Farmer\'s Gloves', '', '16710', '2', '0', '0', '330', '330', '10', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51401', '0', '4', '1', 'Farmer\'s Sash', '', '14656', '2', '0', '0', '330', '330', '6', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);


replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60041', '0', '2', '12', '6', '8', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '-60040', '0', '0', '0',
'0', '0', '0', 'The Pumpkin Thieves', 'This is outrageous! The nerve! First, they only sneak around and startling your herds, then they sneak into your barn and what\'s next?! Rob our houses? Kill us all in out sleep?! What do you think did guards do with this situation, hm? NOTHING!\n\nThese gnolls are getting bolder with each week and we need our fields protected! Guards are of no help here, unfortunately for us, but I see you have some of that bristling force in your sights. Perhaps you\'ll be able to help me and in the end help yourself too!\n\nLast I\'ve seen these mongrels fly away toward Goldshire. Doubt guards will be of any help on this matter. Perhaps someone at the Eastvale Logging Camp could help with our trouble… Ask folks at the camp!\n\nI tell you, these gnolls have stolen my pumpkins! Of course, they have no idea how to cook besides crudely charring anything with camp fire from time to time.\n\nThey have no idea what you could make out of our sweet pumpkins! Barbarians!', 'Bring back 15 Elwynn Pumpkins to Gramma Stonefield.', 'By the Light!\n\nMy dear child, you have no idea what you have truly done for us all here on our farm!\n\nSaving is the least I\'d say. You have my deepest gratitude and respect, $N!', 'Oh, tell me you have managed to find my harvest!\n\nAt least 15 of my sweet pumpkins?', '', '', 'Speak to Terry Palin',
'', '', '51325', '0', '0', '0', '15', '0', '0',
'0', '0', '51299', '0', '0', '0', '1', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '51332', '51330', '0', '0', '1', '1', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '500', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '4', '2',
'0', '0', '2', '4', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('248','60041','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('248','60041','10','10');

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60042', '0', '2', '12', '6', '8', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '-60041', '0', '0', '0',
'0', '0', '0', 'Gnoll Bounty', 'So it\'s Mildred that asking you to help? Of course, I\'ll help! I was always fond of the Stonfields.\n\nPumpkins, huh? Well, the only gnolls I know that camp not so far away from here is the Riverpaw Gnolls. You could say it\'s the leftovers of once mighty gnoll known to whole Elwynn – Fedfennel.\n\nMost likely he\'s been eaten by his own rivals. I digress however. Most likely it\'s further up to the north from Stone Cairn Lake. I heard that even our brave guards dare not to go that far in the forest. Perhaps, while you\'re at the searching campaign for stolen pumpkins, you could help the Eastvale Logging Camp as well?\n\nThese gnolls won\'t be willing to part that easily with what they\'ve stolen, so I assume you\'ll have to claw it out of their dead cold paws. Do us all good and cull out s\'more of these bastards while there? One brigade less and we\'ll have a week of sound sleep by nights. I bet Supervisor Raelen will be glad to hear of your deeds and most certainly will have something to reward you with.', 'Kill 10 Riverpaw Runts and10 Riverpaw Outrunners.', 'You did what? All by yourself?!\n\nWell, that\'s great news! No longer will we have problems with at least gnolls from now on!\n\nHow did you know? Terry told you?', 'I hope you have some good news for me, $N!', '', '', '',
'', '', '51325', '0', '0', '0', '15', '0', '0',
'0', '97', '478', '0', '0', '10', '10', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '6511', '1214', '0', '0', '0', '0',
'1', '1', '0', '0', '0', '0',
'0', '858', '0', '0', '0', '3', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '550', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '4', '5', '3',
'0', '0', '2', '4', '0','0',
0, 0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values ('1650','60042','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('10616','60042','10','10');
      
update creature_template set script_name = '' where entry = 248;
update creature_template set script_name = 'npc_terry_palin' where entry = 1650;

delete from creature WHERE id = 51261;

REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (51261, 0, 0, 51261, -9406.09, 111.806, 60.4824, 5.25074, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);

UPDATE `quest_template` SET `ReqItemId1`='0', `ReqItemCount1`='0' WHERE (`entry`='60042') AND (`patch`='0');
UPDATE `quest_template` SET `ObjectiveText1`='Speak to Terry Palin.', `ObjectiveText2`='' WHERE (`entry`='60041') AND (`patch`='0');
UPDATE `quest_template` SET `ReqItemId1`='0', `ReqItemId2`='51325', `ReqItemCount1`='0', `ReqItemCount2`='15' WHERE (`entry`='60041') AND (`patch`='0');
UPDATE `quest_template` SET `ReqSourceId2`='0', `ReqCreatureOrGOId1`='51299', `ReqCreatureOrGOCount1`='1' WHERE (`entry`='60041') AND (`patch`='0');
UPDATE `quest_template` SET `ReqItemId1`='51325', `ReqItemId2`='0', `ReqItemCount1`='15', `ReqItemCount2`='0' WHERE (`entry`='60041') AND (`patch`='0');

replace into broadcast_text (ID, MaleText) values ('90338', 'People love chopping wood. In this activity one immediately sees results.');
replace into npc_text (ID, BroadcastTextID0) values ('90338', '90338');

UPDATE `quest_template` SET `ObjectiveText1`=NULL, `ObjectiveText2`='Speak to Terry Palin.' WHERE (`entry`='60041') AND (`patch`='0');
UPDATE `quest_template` SET `ReqSourceCount2`='0' WHERE (`entry`='60041') AND (`patch`='0');
UPDATE `quest_template` SET `ObjectiveText1`='Speak to Terry Palin.', `ObjectiveText2`=NULL WHERE (`entry`='60041') AND (`patch`='0');
UPDATE `quest_template` SET `ObjectiveText1`='Speak to Terry Palin' WHERE (`entry`='60041') AND (`patch`='0');

UPDATE `quest_template` SET `ReqSourceId1`='0', `ReqSourceId2`='0', `ReqSourceCount1`='0', `ReqSourceCount2`='0', `ReqCreatureOrGOId1`='97', `ReqCreatureOrGOId2`='478', `ReqCreatureOrGOCount1`='10', `ReqCreatureOrGOCount2`='10' WHERE (`entry`='60042') AND (`patch`='0');

UPDATE `quest_template` SET `RewChoiceItemId1`='51403' WHERE (`entry`='60042') AND (`patch`='0');

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51403', '0', '4', '1', 'Brown lumberjack Vest', '', '14378', '2', '0', '1', '566', '566', '5', '-1', '-1', '15',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '2', '5', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000082, 0, 3, 60, 'Stolen Elwynn Pumpkin', 0, 0, 0.7, 57, 1000001, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES 
(1000001, 51325, 80, 1, 1, 1, 0, 0, 10);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES 
(1000001, 51320, 20, 1, 1, 1, 0, 0, 10);

UPDATE `quest_template` SET `RewItemId1`='51330', `RewItemId3`='0', `RewItemCount1`='1', `RewItemCount3`='0' WHERE (`entry`='60041') AND (`patch`='0');
-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200328011731');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200328011731');
-- Add your query below.

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000091, 0, 5, 28, 'Berry Bush ', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000092, 0, 5, 41, 'Wooden Chest', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000093, 0, 5, 43, 'General Book Stack ', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000094, 0, 5, 90, 'Waterfall 1', 0, 0, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000095, 0, 5, 90, 'Waterfall 1', 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000096, 0, 5, 113, 'Crate ', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000097, 0, 5, 119, 'Silvepine Bush', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000098, 0, 5, 131, 'Catapult', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000099, 0, 5, 4715, 'Blue Lorderon Banner', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000100, 0, 5, 6397, 'Water Rift', 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000101, 0, 5, 6696, 'Nox Portal top', 0, 0, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000102, 0, 5, 6913, 'Night Elf Lantern', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000103, 0, 5, 90, 'Waterfall 1', 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000104, 0, 5, 90, 'Waterfall 1', 0, 0, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000105, 0, 5, 6696, 'Nox Portal', 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000106, 0, 5, 6397, 'Water Rift', 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000107, 0, 5, 42, 'Bubbles', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000195, 0, 5, 6696, 'Nox Portal top', 0, 0, 0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete FROM gameobject WHERE id > 1000090;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001782, 1000094, 0, -8857.7, 648.1, 98.7, 2.68091, 0, 0, 0.973588, 0.22831, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001785, 1000094, 0, -8858.31, 647.256, 98.7, 2.19082, 0, 0, 0.889116, 0.457682, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001797, 1000094, 0, -8860.21, 650.552, 98.7, 5.04339, 0, 0, 0.580953, -0.813937, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001784, 1000094, 0, -8857.89, 647.752, 98.7, 2.87569, 0, 0, 0.991175, 0.132561, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001783, 1000094, 0, -8857.63, 648.726, 98.7, 2.87569, 0, 0, 0.991175, 0.132561, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001796, 1000094, 0, -8860.86, 650.328, 98.7, 5.04339, 0, 0, 0.580953, -0.813937, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001801, 1000094, 0, -8858.31, 650.499, 98.7, 4.16374, 0, 0, 0.87222, -0.489114, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001800, 1000094, 0, -8858.78, 650.646, 98.7, 4.40878, 0, 0, 0.805904, -0.592046, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001799, 1000094, 0, -8859.22, 650.782, 98.7, 4.40878, 0, 0, 0.805904, -0.592046, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001798, 1000094, 0, -8859.61, 650.843, 98.7, 4.55644, 0, 0, 0.760039, -0.649877, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001795, 1000094, 0, -8861.19, 649.969, 98.7, 6.12095, 0, 0, 0.0810274, -0.996712, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001794, 1000094, 0, -8861.26, 649.548, 98.7, 6.12095, 0, 0, 0.0810274, -0.996712, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001793, 1000094, 0, -8861.33, 649.096, 98.7, 6.12095, 0, 0, 0.0810274, -0.996712, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001792, 1000094, 0, -8861.44, 648.553, 98.7, 0.472369, 0, 0, 0.233995, 0.972238, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001791, 1000094, 0, -8861.09, 648.07, 98.7, 0.472369, 0, 0, 0.233995, 0.972238, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001790, 1000094, 0, -8860.67, 647.585, 98.7, 0.915334, 0, 0, 0.441856, 0.897086, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001789, 1000094, 0, -8860.2, 647.377, 98.7, 1.16038, 0, 0, 0.548182, 0.836359, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001788, 1000094, 0, -8859.68, 647.154, 98.7, 1.16038, 0, 0, 0.548182, 0.836359, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001787, 1000094, 0, -8859.14, 646.919, 98.7, 1.84839, 0, 0, 0.798135, 0.602478, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001786, 1000094, 0, -8858.65, 647.008, 98.7, 2.19082, 0, 0, 0.889116, 0.457682, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001803, 1000101, 0, -8859.4, 648.8, 99.4, 3.12545, 0, 0, 0.999967, 0.00807153, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001802, 1000101, 0, -8859.4, 648.8, 99.5, 2.85448, 0, 0, 0.989714, 0.143063, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001813, 1000104, 0, -8859.93, 649.767, 99.8, 5.1769, 0, 0, 0.525364, -0.850878, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001812, 1000104, 0, -8860.35, 649.253, 99.8, 5.95916, 0, 0, 0.161307, -0.986904, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001811, 1000104, 0, -8860.42, 648.603, 99.8, 0.360839, 0, 0, 0.179442, 0.983769, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001810, 1000104, 0, -8860.14, 648.255, 99.8, 0.850927, 0, 0, 0.412743, 0.910847, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001809, 1000104, 0, -8859.51, 647.901, 99.8, 1.93164, 0, 0, 0.822514, 0.568744, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001808, 1000104, 0, -8859.05, 648.075, 99.8, 1.93164, 0, 0, 0.822514, 0.568744, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001807, 1000104, 0, -8858.68, 648.539, 99.8, 2.81442, 0, 0, 0.98665, 0.162856, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001806, 1000104, 0, -8858.51, 649.071, 99.8, 3.60296, 0, 0, 0.97351, -0.228645, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001805, 1000104, 0, -8858.62, 649.727, 99.8, 3.94854, 0, 0, 0.919703, -0.392615, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001804, 1000104, 0, -8859.27, 649.86, 99.8, 4.63341, 0, 0, 0.734473, -0.678638, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001816, 1000105, 0, -8859.4, 648.8, 97.3, 3.12545, 0, 0, 0.999967, 0.00807153, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001815, 1000105, 0, -8859.4, 648.8, 95.3, 3.12545, 0, 0, 0.999967, 0.00807153, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001814, 1000105, 0, -8859.4, 648.8, 95.1, 3.12545, 0, 0, 0.999967, 0.00807153, 0, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) VALUES (4001817, 3000491, 1, 5799.66, -987.453, 409.786, 3.04022, 0, 0, 0.998716, 0.0506644, 0, 0, 0, 0, 0, 0, 0, 10);



-- 4001340

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
replace into migrations values ('20200406230153');

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51410', '0', '15', '0', 'Raid Management: Purple Crystal', '', '30658', '1', '0', '1', '0', '0', '0', '-1', '-1', '60',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18282', '0', '0', '0', '1000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'item_roleplay_effect');
 
 replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51411', '0', '15', '0', 'Raid Management: Red Crystal', '', '30658', '1', '0', '1', '0', '0', '0', '-1', '-1', '60',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18282', '0', '0', '0', '1000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'item_roleplay_effect');
 
 replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51412', '0', '15', '0', 'Raid Management: Blue Crystal', '', '30658', '1', '0', '1', '0', '0', '0', '-1', '-1', '60',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18282', '0', '0', '0', '1000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'item_roleplay_effect');
 
 
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000200, 0, 5, 5932, 'Purple Crystal', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000201, 0, 5, 327, 'Red Crystal', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000202, 0, 5, 2770, 'Blue Crystal', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000215, 0, 5, 1747, 'Cloth Spool Yellow', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000216, 0, 5, 4071, 'Cloth Spool Red', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000217, 0, 5, 6498, 'Alliance Food Market', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000218, 0, 5, 6491, 'Cloth Supplies', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000219, 0, 5, 280, 'Elwynn Bush Large', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- New Bank pet 

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51300, 0, 7933, 0, 0, 0, 'Caravan Kodo', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 256, 1, 1.14286, 0.45, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_template set scale = 0.6 where entry = 51300;

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51421, 0, 15, 2, 'Caravan Kodo', 'Carries all your worldly possessions, there and back.', 29448, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28505, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into custom_pet_entry_relation (item_entry, creature_entry) values 
('51421', '51300');

UPDATE `item_template` SET `description`='.', `spellid_1`='0' WHERE (`entry`='50047') AND (`patch`='0');

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51420', '0', '15', '0', 'Lovingly Crafted Chocolate Cake', 'Happy Birthday, Aurrius!', '34582', '2', '0', '1', '0', '0', '0', '2', '1', '60',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '5004', '0', '60', '0', '3000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200408194420');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200408194420');
-- Add your query below.

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000220, 0, 5, 42, 'Stormwind Fountain Trigger', 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('51425', '0', '15', '0', 'Teresa\'s Copper Coin', 'I\'m not very lucky. Throw this coin in a fountain for me?', '6244', '1', '0', '1', '0', '0', '0', '-1', '-1', '10',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '1575', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'item_elwynn_coin');
 
 REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51301, 0, 1555, 0, 0, 0, 'DUMMY_STORMWIND_FOUNTAIN', '', 0, 1, 1, 10, 30, 0, 0, 7, 35, 0, 1.2, 1.14286, 1, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524288, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51302, 0, 3485, 0, 0, 0, 'Teresa Palin', NULL, 0, 25, 25, 1040, 1640, 0, 0, 1009, 11, 2, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 31, 40, 0, 106, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 3, 51261, 0, 0, 0, 0, 524298, '');

replace into quest_template (
entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue,RequiredMaxRepFaction,
RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain,
SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2,
ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3,
ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3,
ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1,
ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3,
ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6,
RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6,
RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1,
RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4,
RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailMoney, RewMailDelaySecs,
PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1,
DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2,
OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3,OfferRewardEmoteDelay4,
StartScript, CompleteScript)
         values
 ('60050', '0', '2', '12', '4', '5', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'51425', '1', '0', 'Lucky Coin', 'Hey… uhm, excuse me, I have a request for you. Hah, I\'ve said that! I\'m so nervous to pick on people leaving the Abbey, but for me it\'s the only way I could possibly ask for one thing I desire to do…\n\nOh, the request, of course! You see, I love to visit Stormwind City from time to time when I\'m on my trade trip to the Gallina Winery and I always walk by the Trade District Fountain which stands right next to the Bank.\n\nCould you, just for me, toss a coin with a wish for my short by return to Stormwind for good? I heard … I heard a wish with a small donation might make it happen.\n\nOne more thing, please send my greetings to Suzetta Gallina!', 'Drop a coin to the Trade District Fountain in the Stormwind City for Teresa.', 'I am so happy to hear that Teresa is going to visit us!', 'One more thing, please send my greetings to Suzetta Gallina!', '', 'Throw a coin to the fountain', '',
'', '', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '51301', '0', '0', '0', '1',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '280', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '1', '4', '0', '0', '2',
'2', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('51302','60050','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('1431','60050','10','10');
      
update creature_template set equipment_id = 51260 where entry = 51302;

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000221, 0, 5, 3012, 'Grape Bucket', 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000222, 0, 5, 3051, 'Arathi Plant', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000223, 0, 5, 3053, 'New Wanted Poster', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000224, 0, 5, 3131, 'Candelabra Standing', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000225, 0, 5, 3231, 'Song Flower', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000226, 0, 5, 3251, 'Night Dragon', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000227, 0, 5, 3291, 'Warning!', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000228, 0, 5, 428, 'Wisp', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000229, 0, 5, 433, 'Apple', 0, 0, 0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000230, 0, 5, 435, 'Orange', 0, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000231, 0, 5, 438, 'Nightelf Lantern', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000232, 0, 5, 1928, 'Bowl of Apples', 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000233, 0, 5, 250, 'Wisps', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000234, 0, 5, 154, 'Dog House', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000235, 0, 5, 2352, 'Horde Tent', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000236, 0, 5, 2352, 'Horde Tent (Sirvival)', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000237, 0, 5, 5993, 'Small Basket', 0, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000239, 0, 5, 6531, 'Sinrek, "The Doc"', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000240, 0, 5, 4677, 'Naughty Pictures of Aurrius, Tome II', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000241, 0, 5, 1987, 'GM Island Gazebo', 0, 0, 1.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000242, 0, 5, 4677, 'Naughty Pictures of Aurrius, Tome I', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51303, 0, 1100, 0, 0, 0, 'Shivertail', NULL, 0, 24, 24, 1172, 1172, 0, 0, 992, 35, 2, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 35, 43, 0, 104, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 37.3824, 51.4008, 100, 1, 0, 0, 0, 100006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

update creature_template set scale = 0.4 where entry = 51303;

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51435, 0, 4, 0, 'Old-Fashioned Loose Shirt', '', 5440, 1, 0, 1, 350, 87, 4, -1, -1, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51430, 0, 13, 0, 'Glyph of the Frostkin', 'Your Moonkin Form appears as a Frostkin, while this Glyph is in your bag.', 7694, 1, 0, 1, 0, 0, 0, 1024, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51431, 0, 13, 0, 'Glyph of the Frostkin', 'Your Moonkin Form appears as a Frostkin, while this Glyph is in your bag.', 7694, 1, 0, 1, 0, 0, 0, 1024, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51432, 0, 13, 0, 'Glyph of Stars', 'Your Moonkin Form now appears as Astral Form, conferring all the same benefits, but appearing as an astrally enhanced version of your normal humanoid form.', 7694, 1, 0, 1, 0, 0, 0, 1024, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 1, NULL);

-- Easter 2020 present

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(51433, 15, 2, 'Little Fawn', 'She likes the company of friends. Seventy-five of them, to be precise.', 23358, 3, 1, 28505, 1500);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('51305', '347', 'Little Fawn', '', '1', '1', '64', '64', '35', '', 0.8);
replace into custom_pet_entry_relation (item_entry, creature_entry) values ('51433', '51305');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51308, 0, 1100, 0, 0, 0, 'Jake', NULL, 0, 24, 24, 1172, 1172, 0, 0, 992, 35, 2, 1.05, 1.14286, 0, 20, 5, 0, 0, 1, 35, 43, 0, 104, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 37.3824, 51.4008, 100, 1, 0, 0, 0, 100006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

UPDATE `item_template` SET `spellid_1`='1575' WHERE (`entry`='50011') AND (`patch`='0');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200409171600');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200409171600');
-- Add your query below.


-- remove all incorrect trainers from An Imps Request (8419) Richard Kerwin (4565), Luther Pickman (4564), Ursula Deline (5495), Sandahl (5496), Thistleheart (5171), Alexander Calder (5173), Grol'dar (3324), Mirket (3325) and Kartosh (988)
DELETE FROM `creature_questrelation` WHERE `quest` = 8419 AND `id` NOT IN(461,3326,4563);

-- add An Imps Request (8419) to Briarthorn (5172)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (5172, 8419, 6, 10);

-- add In Search of Menara Voidrender (4736) to Briarthorn (5172)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (5172, 4736, 0, 10);

-- remove quest Mor'zul Bloodbringer (7562) from Greshka (12807)
DELETE FROM `creature_questrelation` WHERE `quest` = 7562 AND `id` = 12807;

-- add Mor'zul Bloodbringer (7562) to Martha Strain (5753)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (5753, 7562, 2, 10);

-- remove In Search of Menara Voidrender (3326) from Zervost (3326)
DELETE FROM `creature_questrelation` WHERE `quest` = 4736 AND `id` = 3326;

-- add correct completion text for Gakin's Summons (1717)
UPDATE `quest_template` SET `OfferRewardText` = "I'm glad someone was able to get a hold of you, $n. I was beginning to fear the worst. It would be a shame to lose you, after the time we've invested in you.$b$bWe can talk later, though. Your training is the only important thing now." WHERE `entry` = 1717;

-- remove Grimoire of Lash of Pain (Rank 6) from Cylina Darkheart (6374)
DELETE FROM `npc_vendor` WHERE `entry` = 6374 AND `item` = 16374;

-- remove Grimoire of Soothing Kiss (Rank 2) from Wren Darkspring (6376)
DELETE FROM `npc_vendor` WHERE `entry` = 6376 AND `item` = 16376;

-- remove Grimoire of Lash of Pain (Rank 5) from Dane Winslow (6373)
DELETE FROM `npc_vendor` WHERE `entry` = 6373 AND `item` = 16373;

-- add Devour Magic Rank 3 (16382) to Martha Strain (5753)
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`) VALUES (5753, 16382, 0, 0, 0);

-- add Devour Magic Rank 3 (16382) to Kurgul (5815)
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`) VALUES (5815, 16382, 0, 0, 0);

-- add Devour Magic Rank 3 (16382) to Spackle Thornberry (5520)
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`) VALUES (5520, 16382, 0, 0, 0);

-- add Helfire Rank 1 (5709) to Kartosh (988)
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES (988, 5709, 6000, 0, 0, 30, 0, 5875);

-- add missing spells to Richard Kerwin (4565)
DELETE FROM `npc_trainer` WHERE `entry`=4565;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES
(4565, 1197, 5000, 0, 0, 28, 0, 5875),
(4565, 607, 9000, 0, 0, 36, 0, 5875),
(4565, 1296, 200, 0, 0, 8, 0, 5875),
(4565, 1297, 1500, 0, 0, 18, 0, 5875),
(4565, 1367, 900, 0, 0, 14, 0, 5875),
(4565, 1368, 2500, 0, 0, 22, 0, 5875),
(4565, 1369, 6000, 0, 0, 30, 0, 5875),
(4565, 1374, 10, 0, 0, 1, 0, 5875),
(4565, 1375, 300, 0, 0, 10, 0, 5875),
(4565, 1376, 2000, 0, 0, 20, 0, 5875),
(4565, 1377, 1500, 0, 0, 18, 0, 5875),
(4565, 1381, 100, 0, 0, 6, 0, 5875),
(4565, 1382, 600, 0, 0, 12, 0, 5875),
(4565, 1383, 300, 0, 0, 10, 0, 5875),
(4565, 1384, 2000, 0, 0, 20, 0, 5875),
(4565, 1393, 100, 0, 0, 4, 0, 5875),
(4565, 1394, 600, 0, 0, 12, 0, 5875),
(4565, 1404, 6000, 0, 0, 30, 0, 5875),
(4565, 1406, 2000, 0, 0, 20, 0, 5875),
(4565, 1407, 5000, 0, 0, 28, 0, 5875),
(4565, 1476, 100, 0, 0, 6, 0, 5875),
(4565, 1477, 1200, 0, 0, 16, 0, 5875),
(4565, 1478, 4000, 0, 0, 26, 0, 5875),
(4565, 1571, 14000, 0, 0, 48, 0, 5875),
(4565, 1572, 11000, 0, 0, 42, 0, 5875),
(4565, 2942, 6000, 0, 0, 30, 0, 5875),
(4565, 2945, 1500, 0, 0, 18, 0, 5875),
(4565, 2971, 4000, 0, 0, 26, 0, 5875),
(4565, 2972, 10000, 0, 0, 38, 0, 5875),
(4565, 3704, 600, 0, 0, 12, 0, 5875),
(4565, 3705, 2000, 0, 0, 20, 0, 5875),
(4565, 3706, 5000, 0, 0, 28, 0, 5875),
(4565, 3707, 9000, 0, 0, 36, 0, 5875),
(4565, 5139, 3000, 0, 0, 24, 0, 5875),
(4565, 5486, 11000, 0, 0, 40, 0, 5875),
(4565, 5501, 3000, 0, 0, 24, 0, 5875),
(4565, 5698, 1200, 0, 0, 16, 0, 5875),
(4565, 5700, 8000, 0, 0, 34, 0, 5875),
(4565, 5702, 13000, 0, 0, 46, 0, 5875),
(4565, 5709, 6000, 0, 0, 30, 0, 5875),
(4565, 5736, 4000, 0, 0, 26, 0, 5875),
(4565, 5741, 2000, 0, 0, 20, 0, 5875),
(4565, 5783, 200, 0, 0, 8, 0, 5875),
(4565, 6203, 300, 0, 0, 10, 0, 5875),
(4565, 6204, 2500, 0, 0, 22, 0, 5875),
(4565, 6206, 2500, 0, 0, 22, 0, 5875),
(4565, 6214, 7000, 0, 0, 32, 0, 5875),
(4565, 6216, 22000, 0, 0, 56, 0, 5875),
(4565, 6218, 5000, 0, 0, 28, 0, 5875),
(4565, 6220, 8000, 0, 0, 34, 0, 5875),
(4565, 6221, 100, 0, 0, 4, 0, 5875),
(4565, 6224, 900, 0, 0, 14, 0, 5875),
(4565, 6225, 3000, 0, 0, 24, 0, 5875),
(4565, 6227, 8000, 0, 0, 34, 0, 5875),
(4565, 6228, 2500, 0, 0, 22, 0, 5875),
(4565, 6232, 7000, 0, 0, 32, 0, 5875),
(4565, 6485, 9000, 0, 0, 36, 0, 5875),
(4565, 7642, 9000, 0, 0, 36, 0, 5875),
(4565, 7647, 7000, 0, 0, 32, 0, 5875),
(4565, 7649, 8000, 0, 0, 34, 0, 5875),
(4565, 7650, 900, 0, 0, 14, 0, 5875),
(4565, 7652, 10000, 0, 0, 38, 0, 5875),
(4565, 7660, 5000, 0, 0, 28, 0, 5875),
(4565, 7661, 11000, 0, 0, 42, 0, 5875),
(4565, 7662, 300, 0, 0, 10, 0, 5875),
(4565, 7663, 2000, 0, 0, 20, 0, 5875),
(4565, 7664, 5000, 0, 0, 28, 0, 5875),
(4565, 7665, 6000, 0, 0, 30, 0, 5875),
(4565, 7666, 7000, 0, 0, 32, 0, 5875),
(4565, 8290, 3000, 0, 0, 24, 0, 5875),
(4565, 8291, 10000, 0, 0, 38, 0, 5875),
(4565, 11662, 12000, 0, 0, 44, 0, 5875),
(4565, 11663, 18000, 0, 0, 52, 0, 5875),
(4565, 11664, 26000, 0, 0, 60, 0, 5875),
(4565, 11666, 11000, 0, 0, 40, 0, 5875),
(4565, 11669, 15000, 0, 0, 50, 0, 5875),
(4565, 11670, 26000, 0, 0, 60, 0, 5875),
(4565, 11673, 12000, 0, 0, 44, 0, 5875),
(4565, 11674, 20000, 0, 0, 54, 0, 5875),
(4565, 11676, 18000, 0, 0, 52, 0, 5875),
(4565, 11679, 13000, 0, 0, 46, 0, 5875),
(4565, 11680, 24000, 0, 0, 58, 0, 5875),
(4565, 11685, 9900, 0, 0, 42, 0, 5875),
(4565, 11686, 18000, 0, 0, 54, 0, 5875),
(4565, 11690, 9000, 0, 0, 36, 0, 5875),
(4565, 11691, 13000, 0, 0, 46, 0, 5875),
(4565, 11692, 22000, 0, 0, 56, 0, 5875),
(4565, 11696, 12000, 0, 0, 44, 0, 5875),
(4565, 11697, 18000, 0, 0, 52, 0, 5875),
(4565, 11698, 26000, 0, 0, 60, 0, 5875),
(4565, 11701, 13000, 0, 0, 46, 0, 5875),
(4565, 11702, 20000, 0, 0, 54, 0, 5875),
(4565, 11705, 12000, 0, 0, 44, 0, 5875),
(4565, 11706, 20000, 0, 0, 54, 0, 5875),
(4565, 11709, 11000, 0, 0, 42, 0, 5875),
(4565, 11710, 18000, 0, 0, 52, 0, 5875),
(4565, 11714, 10000, 0, 0, 38, 0, 5875),
(4565, 11715, 14000, 0, 0, 48, 0, 5875),
(4565, 11716, 24000, 0, 0, 58, 0, 5875),
(4565, 11718, 22000, 0, 0, 56, 0, 5875),
(4565, 11720, 15000, 0, 0, 50, 0, 5875),
(4565, 11723, 13000, 0, 0, 46, 0, 5875),
(4565, 11724, 26000, 0, 0, 60, 0, 5875),
(4565, 11727, 12000, 0, 0, 44, 0, 5875),
(4565, 11728, 24000, 0, 0, 58, 0, 5875),
(4565, 11731, 24000, 0, 0, 58, 0, 5875),
(4565, 11736, 11000, 0, 0, 40, 0, 5875),
(4565, 11737, 15000, 0, 0, 50, 0, 5875),
(4565, 11738, 26000, 0, 0, 60, 0, 5875),
(4565, 11741, 11000, 0, 0, 42, 0, 5875),
(4565, 11742, 18000, 0, 0, 52, 0, 5875),
(4565, 11788, 15000, 0, 0, 50, 0, 5875),
(4565, 17732, 14000, 0, 0, 48, 0, 5875),
(4565, 17733, 26000, 0, 0, 60, 0, 5875),
(4565, 17865, 12000, 0, 0, 44, 0, 5875),
(4565, 17938, 10000, 0, 0, 60, 0, 5875),
(4565, 18154, 4000, 0, 0, 26, 0, 5875),
(4565, 18155, 8000, 0, 0, 34, 0, 5875),
(4565, 18156, 11000, 0, 0, 42, 0, 5875),
(4565, 18157, 15000, 0, 0, 50, 0, 5875),
(4565, 18158, 24000, 0, 0, 58, 0, 5875),
(4565, 18160, 22000, 0, 0, 56, 0, 5875),
(4565, 18161, 15000, 0, 0, 50, 0, 5875),
(4565, 18162, 24000, 0, 0, 58, 0, 5875),
(4565, 18169, 20000, 0, 0, 54, 0, 5875),
(4565, 18170, 13000, 0, 0, 46, 0, 5875),
(4565, 18171, 22000, 0, 0, 56, 0, 5875),
(4565, 18648, 13000, 0, 0, 46, 0, 5875),
(4565, 18753, 26000, 0, 0, 60, 0, 5875),
(4565, 18872, 150, 0, 0, 24, 0, 5875),
(4565, 18875, 350, 0, 0, 32, 0, 5875),
(4565, 18876, 550, 0, 0, 40, 0, 5875),
(4565, 18877, 700, 0, 0, 48, 0, 5875),
(4565, 18878, 22000, 0, 0, 56, 0, 5875),
(4565, 18927, 500, 0, 0, 38, 0, 5875),
(4565, 18928, 700, 0, 0, 48, 0, 5875),
(4565, 18929, 1200, 0, 0, 58, 0, 5875),
(4565, 18933, 700, 0, 0, 48, 0, 5875),
(4565, 18934, 1000, 0, 0, 54, 0, 5875),
(4565, 18935, 1300, 0, 0, 60, 0, 5875),
(4565, 18939, 750, 0, 0, 50, 0, 5875),
(4565, 18940, 1300, 0, 0, 60, 0, 5875),
(4565, 20766, 6000, 0, 0, 30, 0, 5875),
(4565, 20767, 11000, 0, 0, 40, 0, 5875),
(4565, 20768, 15000, 0, 0, 50, 0, 5875),
(4565, 20769, 26000, 0, 0, 60, 0, 5875);

-- add correct completion text for Doomcaller's Robes (8661)
UPDATE `quest_template` SET `OfferRewardText` = "I did not expect you to return from your attempt, $n.$b$bYou've fulfilled a destiny greater than that of most immortal beings.$b$bBy slaying C'Thun you've not only saved all of Azeroth, you've also tipped the scales of cosmic events beyond your comprehension.$b$bAccept these robes as a symbol of the glory and burden that will come as a consequence of your actions.$b$bMay their power aid you in the challenges that await you, god-slayer!" WHERE `entry` = 8661;

-- add correct completion text for Doomcaller's Robes (8661)
UPDATE `quest_template` SET `RequestItemsText` = "At his dwelling in Ahn'Qiraj, dread C'Thun awaits in slumber." WHERE `entry` = 8661;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;

replace into migrations values ('20200411000209');

REPLACE INTO `quest_template` VALUES (8460,7,2,361,45,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,'Timbermaw Ally','The Timbermaw are the only furbolg tribe to escape the corruption. However, many other races kill furbolg blindly now, without bothering to see if they are friend or foe. For this reason, the Timbermaw furbolg trust very few.$B$BAre you interested in proving yourself? Drive back the corrupted Deadwood tribe of Felwood and we may one day consider you an ally. You\'ll find the first Deadwood tribe - warriors, pathfinders and gardeners - to my west.','Grazle wants you to prove yourself by killing 6 Deadwood Warriors, 6 Deadwood Pathfinders, and 6 Deadwood Gardeners.  Return to him in southern Felwood near the Emerald Sanctuary when you are done.','We suffer much from the events of the past. Thank you for what you have done to help protect the Timbermaw.','Keep at it, $N. If you are to earn our trust, you will need to prove yourself to us.',NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7153,7155,7154,0,6,6,6,0,0,0,0,0,21311,21312,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,576,0,0,0,0,150,0,0,0,0,0,2640,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `creature_involvedrelation` VALUES (11554,8460,7,10);
REPLACE INTO `creature_questrelation` VALUES (11554,8460,7,10);
UPDATE `creature_involvedrelation` set patch_min=0, patch_max=6 where quest = 6131;
UPDATE `creature_questrelation` set patch_min=0, patch_max=6 where quest = 6131;DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200413165046');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200413165046');
-- Add your query below.


-- remove all incorrect trainers from Magecraft (8250)
DELETE FROM `creature_questrelation` WHERE `quest` = 8250 AND `id` NOT IN(331, 3047, 4567, 7311, 7312);

-- add Magecraft (8250) to correct trainers
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(331, 8250, 5, 10),
(3047, 8250, 5, 10),
(7311, 8250, 5, 10),
(7312, 8250, 5, 10);

-- add Journey to the Marsh (1947) to correct trainers
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(3048, 1947, 0, 10),
(4568, 1947, 0, 10),
(5144, 1947, 0, 10);
-- (5497, 1947, 0, 10),
-- (5885, 1947, 0, 10);

-- add High Sorcerer Andromath (1939) to Bink (5144)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (5144, 1939, 0, 10);

-- add Speak with Un'thuwa (1883) and Report to Anastasia (1959) to Thurston Xane (3049)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(3049, 1959, 0, 10),
(3049, 1883, 0, 10);

-- remove Return to the Marsh (1953) from Uthel'nay (7311)
DELETE FROM `creature_questrelation` WHERE `quest` = 1953 AND `id` = 7311;

-- add Return to the Marsh (1953) to Ursyn Ghull (3048) and Deino (5885)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(3048, 1953, 0, 10),
(5885, 1953, 0, 10);

-- add correct completion text for Speak with Jennea (1860)
UPDATE `quest_template` SET `OfferRewardText` = "You have been sent to aid me in my task, $n?  Good.  It is heartening to see young mages eager to help in our cause...$b$bWhat cause, you ask?  In time, young one.  You shall know... in time." WHERE `entry` = 1860;

-- add correct completion text for Speak with Bink (1879)
UPDATE `quest_template` SET `OfferRewardText` = "Oh, I can see you have promise, yes you do! But it takes more than promise to be a good mage.  And if you're not a good mage, then you're a bad mage.  And bad mages are part of the problem, yes they are!$b$bOops, I'm getting ahead of things.  Let's begin at the start!" WHERE `entry` = 1879;

-- add correct completion text for Speak with Un'thuwa (1883)
UPDATE `quest_template` SET `OfferRewardText` = "Hail, $n.  Praise to you, for my call for aid is now answered.  Let us hope you are up to the task..." WHERE `entry` = 1883;

-- add missing spells to Magis Sparkmantle (1228)
DELETE FROM `npc_trainer` WHERE `entry`=1228;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES
(1228, 1035, 2000, 0, 0, 20, 0, 5875),
(1228, 1142, 100, 0, 0, 4, 0, 5875),
(1228, 1168, 200, 0, 0, 8, 0, 5875),
(1228, 1173, 100, 0, 0, 6, 0, 5875),
(1228, 1174, 400, 0, 0, 10, 0, 5875),
(1228, 1176, 1800, 0, 0, 18, 0, 5875),
(1228, 1191, 200, 0, 0, 8, 0, 5875),
(1228, 1194, 400, 0, 0, 10, 0, 5875),
(1228, 1196, 2000, 0, 0, 20, 0, 5875),
(1228, 1198, 600, 0, 0, 12, 0, 5875),
(1228, 1200, 2000, 0, 0, 20, 0, 5875),
(1228, 1210, 7000, 0, 0, 28, 0, 5875),
(1228, 1211, 900, 0, 0, 14, 0, 5875),
(1228, 1214, 8000, 0, 0, 30, 0, 5875),
(1228, 1225, 5000, 0, 0, 26, 0, 5875),
(1228, 1228, 15000, 0, 0, 40, 0, 5875),
(1228, 1241, 5000, 0, 0, 26, 0, 5875),
(1228, 1249, 100, 0, 0, 6, 0, 5875),
(1228, 1250, 600, 0, 0, 12, 0, 5875),
(1228, 1251, 3000, 0, 0, 22, 0, 5875),
(1228, 1266, 600, 0, 0, 12, 0, 5875),
(1228, 1267, 1800, 0, 0, 18, 0, 5875),
(1228, 1467, 900, 0, 0, 14, 0, 5875),
(1228, 1472, 10, 0, 0, 1, 0, 5875),
(1228, 1473, 900, 0, 0, 14, 0, 5875),
(1228, 1474, 7000, 0, 0, 28, 0, 5875),
(1228, 1475, 18000, 0, 0, 42, 0, 5875),
(1228, 1481, 2000, 0, 0, 20, 0, 5875),
(1228, 1811, 3000, 0, 0, 22, 0, 5875),
(1228, 1830, 200, 0, 0, 24, 0, 5875),
(1228, 2124, 1500, 0, 0, 16, 0, 5875),
(1228, 2125, 4000, 0, 0, 24, 0, 5875),
(1228, 2141, 100, 0, 0, 6, 0, 5875),
(1228, 2142, 900, 0, 0, 14, 0, 5875),
(1228, 2143, 3000, 0, 0, 22, 0, 5875),
(1228, 2858, 1500, 0, 0, 16, 0, 5875),
(1228, 3142, 1800, 0, 0, 18, 0, 5875),
(1228, 3553, 14000, 0, 0, 38, 0, 5875),
(1228, 3576, 4000, 0, 0, 24, 0, 5875),
(1228, 5146, 200, 0, 0, 8, 0, 5875),
(1228, 5147, 1500, 0, 0, 16, 0, 5875),
(1228, 5148, 4000, 0, 0, 24, 0, 5875),
(1228, 5499, 2000, 0, 0, 20, 0, 5875),
(1228, 5507, 100, 0, 0, 4, 0, 5875),
(1228, 5565, 400, 0, 0, 10, 0, 5875),
(1228, 5566, 2000, 0, 0, 20, 0, 5875),
(1228, 6121, 13000, 0, 0, 34, 0, 5875),
(1228, 6128, 8000, 0, 0, 30, 0, 5875),
(1228, 6130, 10000, 0, 0, 32, 0, 5875),
(1228, 6132, 15000, 0, 0, 40, 0, 5875),
(1228, 6142, 7000, 0, 0, 28, 0, 5875),
(1228, 6144, 3000, 0, 0, 22, 0, 5875),
(1228, 6493, 600, 0, 0, 12, 0, 5875),
(1228, 7323, 2000, 0, 0, 20, 0, 5875),
(1228, 8403, 4000, 0, 0, 24, 0, 5875),
(1228, 8404, 8000, 0, 0, 30, 0, 5875),
(1228, 8405, 13000, 0, 0, 36, 0, 5875),
(1228, 8409, 5000, 0, 0, 26, 0, 5875),
(1228, 8410, 10000, 0, 0, 32, 0, 5875),
(1228, 8411, 14000, 0, 0, 38, 0, 5875),
(1228, 8414, 8000, 0, 0, 30, 0, 5875),
(1228, 8415, 14000, 0, 0, 38, 0, 5875),
(1228, 8420, 10000, 0, 0, 32, 0, 5875),
(1228, 8421, 15000, 0, 0, 40, 0, 5875),
(1228, 8425, 10000, 0, 0, 32, 0, 5875),
(1228, 8426, 15000, 0, 0, 40, 0, 5875),
(1228, 8428, 13000, 0, 0, 36, 0, 5875),
(1228, 8440, 3000, 0, 0, 22, 0, 5875),
(1228, 8441, 8000, 0, 0, 30, 0, 5875),
(1228, 8442, 14000, 0, 0, 38, 0, 5875),
(1228, 8447, 7000, 0, 0, 28, 0, 5875),
(1228, 8448, 12000, 0, 0, 34, 0, 5875),
(1228, 8449, 15000, 0, 0, 40, 0, 5875),
(1228, 8452, 4000, 0, 0, 24, 0, 5875),
(1228, 8453, 13000, 0, 0, 36, 0, 5875),
(1228, 8456, 8000, 0, 0, 30, 0, 5875),
(1228, 8459, 8000, 0, 0, 30, 0, 5875),
(1228, 8460, 15000, 0, 0, 40, 0, 5875),
(1228, 8463, 10000, 0, 0, 32, 0, 5875),
(1228, 8464, 18000, 0, 0, 42, 0, 5875),
(1228, 8493, 12000, 0, 0, 34, 0, 5875),
(1228, 8496, 7000, 0, 0, 28, 0, 5875),
(1228, 8497, 13000, 0, 0, 36, 0, 5875),
(1228, 10055, 28000, 0, 0, 48, 0, 5875),
(1228, 10056, 40000, 0, 0, 58, 0, 5875),
(1228, 10141, 15000, 0, 0, 40, 0, 5875),
(1228, 10142, 32000, 0, 0, 50, 0, 5875),
(1228, 10146, 18000, 0, 0, 42, 0, 5875),
(1228, 10147, 35000, 0, 0, 52, 0, 5875),
(1228, 10152, 18000, 0, 0, 42, 0, 5875),
(1228, 10153, 28000, 0, 0, 48, 0, 5875),
(1228, 10154, 36000, 0, 0, 54, 0, 5875),
(1228, 10155, 42000, 0, 0, 60, 0, 5875),
(1228, 10158, 38000, 0, 0, 56, 0, 5875),
(1228, 10162, 18000, 0, 0, 42, 0, 5875),
(1228, 10163, 32000, 0, 0, 50, 0, 5875),
(1228, 10164, 40000, 0, 0, 58, 0, 5875),
(1228, 10171, 18000, 0, 0, 42, 0, 5875),
(1228, 10172, 36000, 0, 0, 54, 0, 5875),
(1228, 10175, 28000, 0, 0, 48, 0, 5875),
(1228, 10176, 42000, 0, 0, 60, 0, 5875),
(1228, 10178, 35000, 0, 0, 52, 0, 5875),
(1228, 10182, 23000, 0, 0, 44, 0, 5875),
(1228, 10183, 32000, 0, 0, 50, 0, 5875),
(1228, 10184, 38000, 0, 0, 56, 0, 5875),
(1228, 10188, 23000, 0, 0, 44, 0, 5875),
(1228, 10189, 35000, 0, 0, 52, 0, 5875),
(1228, 10190, 42000, 0, 0, 60, 0, 5875),
(1228, 10194, 23000, 0, 0, 44, 0, 5875),
(1228, 10195, 35000, 0, 0, 52, 0, 5875),
(1228, 10196, 42000, 0, 0, 60, 0, 5875),
(1228, 10198, 26000, 0, 0, 46, 0, 5875),
(1228, 10200, 36000, 0, 0, 54, 0, 5875),
(1228, 10203, 26000, 0, 0, 46, 0, 5875),
(1228, 10204, 36000, 0, 0, 54, 0, 5875),
(1228, 10208, 26000, 0, 0, 46, 0, 5875),
(1228, 10209, 35000, 0, 0, 52, 0, 5875),
(1228, 10210, 40000, 0, 0, 58, 0, 5875),
(1228, 10213, 28000, 0, 0, 48, 0, 5875),
(1228, 10214, 38000, 0, 0, 56, 0, 5875),
(1228, 10217, 28000, 0, 0, 48, 0, 5875),
(1228, 10218, 38000, 0, 0, 56, 0, 5875),
(1228, 10221, 32000, 0, 0, 50, 0, 5875),
(1228, 10222, 42000, 0, 0, 60, 0, 5875),
(1228, 10224, 32000, 0, 0, 50, 0, 5875),
(1228, 10226, 42000, 0, 0, 60, 0, 5875),
(1228, 10231, 36000, 0, 0, 54, 0, 5875),
(1228, 12827, 2000, 0, 0, 20, 0, 5875),
(1228, 12828, 15000, 0, 0, 40, 0, 5875),
(1228, 12829, 42000, 0, 0, 60, 0, 5875),
(1228, 13011, 400, 0, 0, 30, 0, 5875),
(1228, 13012, 650, 0, 0, 36, 0, 5875),
(1228, 13014, 900, 0, 0, 42, 0, 5875),
(1228, 13015, 14000, 0, 0, 48, 0, 5875),
(1228, 13016, 1800, 0, 0, 54, 0, 5875),
(1228, 13017, 1890, 0, 0, 60, 0, 5875),
(1228, 13023, 650, 0, 0, 36, 0, 5875),
(1228, 13024, 1150, 0, 0, 44, 0, 5875),
(1228, 13025, 1750, 0, 0, 52, 0, 5875),
(1228, 13026, 2100, 0, 0, 60, 0, 5875),
(1228, 13037, 1170, 0, 0, 46, 0, 5875),
(1228, 13038, 1750, 0, 0, 52, 0, 5875),
(1228, 13039, 2000, 0, 0, 58, 0, 5875),
(1228, 22784, 28000, 0, 0, 46, 0, 5875),
(1228, 22785, 40000, 0, 0, 58, 0, 5875),
(1228, 28403, 2000, 0, 0, 20, 5464, 5875);

-- add missing spells to Kaelystia Hatebringer (4566)
DELETE FROM `npc_trainer` WHERE `entry`=4566;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES
(4566, 1035, 2000, 0, 0, 20, 0, 5875),
(4566, 1142, 100, 0, 0, 4, 0, 5875),
(4566, 1168, 200, 0, 0, 8, 0, 5875),
(4566, 1173, 100, 0, 0, 6, 0, 5875),
(4566, 1174, 400, 0, 0, 10, 0, 5875),
(4566, 1176, 1800, 0, 0, 18, 0, 5875),
(4566, 1191, 200, 0, 0, 8, 0, 5875),
(4566, 1194, 400, 0, 0, 10, 0, 5875),
(4566, 1196, 2000, 0, 0, 20, 0, 5875),
(4566, 1198, 600, 0, 0, 12, 0, 5875),
(4566, 1200, 2000, 0, 0, 20, 0, 5875),
(4566, 1210, 7000, 0, 0, 28, 0, 5875),
(4566, 1211, 900, 0, 0, 14, 0, 5875),
(4566, 1214, 8000, 0, 0, 30, 0, 5875),
(4566, 1225, 5000, 0, 0, 26, 0, 5875),
(4566, 1228, 15000, 0, 0, 40, 0, 5875),
(4566, 1241, 5000, 0, 0, 26, 0, 5875),
(4566, 1249, 100, 0, 0, 6, 0, 5875),
(4566, 1250, 600, 0, 0, 12, 0, 5875),
(4566, 1251, 3000, 0, 0, 22, 0, 5875),
(4566, 1266, 600, 0, 0, 12, 0, 5875),
(4566, 1267, 1800, 0, 0, 18, 0, 5875),
(4566, 1467, 900, 0, 0, 14, 0, 5875),
(4566, 1472, 10, 0, 0, 1, 0, 5875),
(4566, 1473, 900, 0, 0, 14, 0, 5875),
(4566, 1474, 7000, 0, 0, 28, 0, 5875),
(4566, 1475, 18000, 0, 0, 42, 0, 5875),
(4566, 1481, 2000, 0, 0, 20, 0, 5875),
(4566, 1811, 3000, 0, 0, 22, 0, 5875),
(4566, 1830, 200, 0, 0, 24, 0, 5875),
(4566, 2124, 1500, 0, 0, 16, 0, 5875),
(4566, 2125, 4000, 0, 0, 24, 0, 5875),
(4566, 2141, 100, 0, 0, 6, 0, 5875),
(4566, 2142, 900, 0, 0, 14, 0, 5875),
(4566, 2143, 3000, 0, 0, 22, 0, 5875),
(4566, 2858, 1500, 0, 0, 16, 0, 5875),
(4566, 3142, 1800, 0, 0, 18, 0, 5875),
(4566, 3553, 14000, 0, 0, 38, 0, 5875),
(4566, 3576, 4000, 0, 0, 24, 0, 5875),
(4566, 5146, 200, 0, 0, 8, 0, 5875),
(4566, 5147, 1500, 0, 0, 16, 0, 5875),
(4566, 5148, 4000, 0, 0, 24, 0, 5875),
(4566, 5499, 2000, 0, 0, 20, 0, 5875),
(4566, 5507, 100, 0, 0, 4, 0, 5875),
(4566, 5565, 400, 0, 0, 10, 0, 5875),
(4566, 5566, 2000, 0, 0, 20, 0, 5875),
(4566, 6121, 13000, 0, 0, 34, 0, 5875),
(4566, 6128, 8000, 0, 0, 30, 0, 5875),
(4566, 6130, 10000, 0, 0, 32, 0, 5875),
(4566, 6132, 15000, 0, 0, 40, 0, 5875),
(4566, 6142, 7000, 0, 0, 28, 0, 5875),
(4566, 6144, 3000, 0, 0, 22, 0, 5875),
(4566, 6493, 600, 0, 0, 12, 0, 5875),
(4566, 7323, 2000, 0, 0, 20, 0, 5875),
(4566, 8403, 4000, 0, 0, 24, 0, 5875),
(4566, 8404, 8000, 0, 0, 30, 0, 5875),
(4566, 8405, 13000, 0, 0, 36, 0, 5875),
(4566, 8409, 5000, 0, 0, 26, 0, 5875),
(4566, 8410, 10000, 0, 0, 32, 0, 5875),
(4566, 8411, 14000, 0, 0, 38, 0, 5875),
(4566, 8414, 8000, 0, 0, 30, 0, 5875),
(4566, 8415, 14000, 0, 0, 38, 0, 5875),
(4566, 8420, 10000, 0, 0, 32, 0, 5875),
(4566, 8421, 15000, 0, 0, 40, 0, 5875),
(4566, 8425, 10000, 0, 0, 32, 0, 5875),
(4566, 8426, 15000, 0, 0, 40, 0, 5875),
(4566, 8428, 13000, 0, 0, 36, 0, 5875),
(4566, 8440, 3000, 0, 0, 22, 0, 5875),
(4566, 8441, 8000, 0, 0, 30, 0, 5875),
(4566, 8442, 14000, 0, 0, 38, 0, 5875),
(4566, 8447, 7000, 0, 0, 28, 0, 5875),
(4566, 8448, 12000, 0, 0, 34, 0, 5875),
(4566, 8449, 15000, 0, 0, 40, 0, 5875),
(4566, 8452, 4000, 0, 0, 24, 0, 5875),
(4566, 8453, 13000, 0, 0, 36, 0, 5875),
(4566, 8456, 8000, 0, 0, 30, 0, 5875),
(4566, 8459, 8000, 0, 0, 30, 0, 5875),
(4566, 8460, 15000, 0, 0, 40, 0, 5875),
(4566, 8463, 10000, 0, 0, 32, 0, 5875),
(4566, 8464, 18000, 0, 0, 42, 0, 5875),
(4566, 8493, 12000, 0, 0, 34, 0, 5875),
(4566, 8496, 7000, 0, 0, 28, 0, 5875),
(4566, 8497, 13000, 0, 0, 36, 0, 5875),
(4566, 10055, 28000, 0, 0, 48, 0, 5875),
(4566, 10056, 40000, 0, 0, 58, 0, 5875),
(4566, 10141, 15000, 0, 0, 40, 0, 5875),
(4566, 10142, 32000, 0, 0, 50, 0, 5875),
(4566, 10146, 18000, 0, 0, 42, 0, 5875),
(4566, 10147, 35000, 0, 0, 52, 0, 5875),
(4566, 10152, 18000, 0, 0, 42, 0, 5875),
(4566, 10153, 28000, 0, 0, 48, 0, 5875),
(4566, 10154, 36000, 0, 0, 54, 0, 5875),
(4566, 10155, 42000, 0, 0, 60, 0, 5875),
(4566, 10158, 38000, 0, 0, 56, 0, 5875),
(4566, 10162, 18000, 0, 0, 42, 0, 5875),
(4566, 10163, 32000, 0, 0, 50, 0, 5875),
(4566, 10164, 40000, 0, 0, 58, 0, 5875),
(4566, 10171, 18000, 0, 0, 42, 0, 5875),
(4566, 10172, 36000, 0, 0, 54, 0, 5875),
(4566, 10175, 28000, 0, 0, 48, 0, 5875),
(4566, 10176, 42000, 0, 0, 60, 0, 5875),
(4566, 10178, 35000, 0, 0, 52, 0, 5875),
(4566, 10182, 23000, 0, 0, 44, 0, 5875),
(4566, 10183, 32000, 0, 0, 50, 0, 5875),
(4566, 10184, 38000, 0, 0, 56, 0, 5875),
(4566, 10188, 23000, 0, 0, 44, 0, 5875),
(4566, 10189, 35000, 0, 0, 52, 0, 5875),
(4566, 10190, 42000, 0, 0, 60, 0, 5875),
(4566, 10194, 23000, 0, 0, 44, 0, 5875),
(4566, 10195, 35000, 0, 0, 52, 0, 5875),
(4566, 10196, 42000, 0, 0, 60, 0, 5875),
(4566, 10198, 26000, 0, 0, 46, 0, 5875),
(4566, 10200, 36000, 0, 0, 54, 0, 5875),
(4566, 10203, 26000, 0, 0, 46, 0, 5875),
(4566, 10204, 36000, 0, 0, 54, 0, 5875),
(4566, 10208, 26000, 0, 0, 46, 0, 5875),
(4566, 10209, 35000, 0, 0, 52, 0, 5875),
(4566, 10210, 40000, 0, 0, 58, 0, 5875),
(4566, 10213, 28000, 0, 0, 48, 0, 5875),
(4566, 10214, 38000, 0, 0, 56, 0, 5875),
(4566, 10217, 28000, 0, 0, 48, 0, 5875),
(4566, 10218, 38000, 0, 0, 56, 0, 5875),
(4566, 10221, 32000, 0, 0, 50, 0, 5875),
(4566, 10222, 42000, 0, 0, 60, 0, 5875),
(4566, 10224, 32000, 0, 0, 50, 0, 5875),
(4566, 10226, 42000, 0, 0, 60, 0, 5875),
(4566, 10231, 36000, 0, 0, 54, 0, 5875),
(4566, 12827, 2000, 0, 0, 20, 0, 5875),
(4566, 12828, 15000, 0, 0, 40, 0, 5875),
(4566, 12829, 42000, 0, 0, 60, 0, 5875),
(4566, 13011, 400, 0, 0, 30, 0, 5875),
(4566, 13012, 650, 0, 0, 36, 0, 5875),
(4566, 13014, 900, 0, 0, 42, 0, 5875),
(4566, 13015, 14000, 0, 0, 48, 0, 5875),
(4566, 13016, 1800, 0, 0, 54, 0, 5875),
(4566, 13017, 1890, 0, 0, 60, 0, 5875),
(4566, 13023, 650, 0, 0, 36, 0, 5875),
(4566, 13024, 1150, 0, 0, 44, 0, 5875),
(4566, 13025, 1750, 0, 0, 52, 0, 5875),
(4566, 13026, 2100, 0, 0, 60, 0, 5875),
(4566, 13037, 1170, 0, 0, 46, 0, 5875),
(4566, 13038, 1750, 0, 0, 52, 0, 5875),
(4566, 13039, 2000, 0, 0, 58, 0, 5875),
(4566, 22784, 28000, 0, 0, 46, 0, 5875),
(4566, 22785, 40000, 0, 0, 58, 0, 5875),
(4566, 28403, 2000, 0, 0, 20, 5464, 5875);

-- add correct completion text for Enigma Leggings (8631)
UPDATE `quest_template` SET `OfferRewardText` = "Yes... the worm's skin will make for an excellent protective layer.  Combined with the strongest parts from the Qiraji we've destroyed on our way here, this should make for a formidable piece of armor.  May it aid you in facing the unspeakable horrors that await inside! " WHERE `entry` = 8631;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200413185552');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200413185552');
-- Add your query below.

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000250, 0, 5, 13, 'Blue Farm Door', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000251, 0, 5, 95, 'House Smoke', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000252, 0, 5, 445, 'Scrying Bowl', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000253, 0, 5, 684, 'Barrens Bush', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000254, 0, 5, 685, 'Barrens Bush', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000255, 0, 5, 730, 'Orc Brazier Lamppost', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000256, 0, 5, 1027, 'Shaman Stone', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000257, 0, 5, 1108, 'Lumber Pile Small', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000258, 0, 5, 1109, 'Lumber Pile Large', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000259, 0, 5, 1110, 'Log Machine', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000260, 0, 5, 1167, 'Stormwind Mage Porta', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000261, 0, 5, 1187, 'Duskwood Mausoleum', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000262, 0, 5, 1367, 'Little Bush 2', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000263, 0, 5, 1368, 'Little Bush 4', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000264, 0, 5, 1527, 'Statue Priest', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000265, 0, 5, 1569, 'Tauren Log Bench', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000266, 0, 5, 1647, 'Mana Rift', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000267, 0, 5, 1708, 'Bramble Staff', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000268, 0, 5, 1887, 'Cave Mine Car Wrecked', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000269, 0, 14, 2170, 'Holding Pen Bamboo Small', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000270, 0, 5, 2230, 'Cave', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000271, 0, 5, 2290, 'G_VOODOOTROLLFORCEFIELD', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000272, 0, 5, 2311, 'Bush Blindweed', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000273, 0, 5, 2350, 'Karazahn Crate', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000274, 0, 5, 2354, 'Gnome Structural SpotLight', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000275, 0, 14, 2410, 'Landing Pad', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000276, 0, 5, 2474, 'Deadwind Pass Tree', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000277, 0, 5, 2616, 'Outland Monolith', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000278, 0, 5, 2652, 'Runed Tablet', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000279, 0, 5, 2730, 'River Wheel', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000280, 0, 5, 2934, 'Ruin 01', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000281, 0, 5, 2935, 'Ruin 02', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000282, 0, 5, 2936, 'Ruin 03', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000283, 0, 5, 2937, 'Night Elf Ruins 04', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000284, 0, 5, 2971, 'Blue Crystal', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000285, 0, 5, 4052, 'GM Island Bell', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000286, 0, 5, 5691, 'CORRUPTED CRYSTAL VINE', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000287, 0, 5, 5692, 'Force Field (collision problems)', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000289, 0, 5, 5693, 'Magic Vortex', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000288, 0, 5, 6663, 'Arena Flag', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000290, 0, 5, 6664, 'Lightshaft Large', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000291, 0, 5, 6666, 'Night Elf Lantern Hanging', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000292, 0, 5, 6667, 'Hive Fireflie', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000293, 0, 5, 6668, 'Emerald Dream Catcher', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000294, 0, 5, 7359, 'Altar Of Souls', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000295, 0, 1, 330, 'Dwarven Flying Machine NX-001', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000296, 0, 14, 2170, 'Holding Pen Bamboo large', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Add missing target for Test Ribbon Pole Channel.
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (29705, 1, 17066);

-- Correct walk speed for some creatures.
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=122;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=124;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=193;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=232;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=288;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=412;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=452;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=604;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=616;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=628;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=689;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=750;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=751;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=759;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=761;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=762;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=765;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=889;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1028;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1088;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1095;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1203;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1204;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1327;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1356;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1380;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1466;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1471;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1703;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1747;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1749;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1751;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1752;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1754;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=1776;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1785;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1793;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=1796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1808;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1812;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=1813;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1826;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1833;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1845;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1972;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2163;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2274;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2285;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2319;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2330;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2331;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2440;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2600;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2608;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2644;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2649;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2650;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2657;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2700;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2737;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5977;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2786;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2788;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2789;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2808;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2810;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2812;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2814;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2835;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2912;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2916;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2918;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2923;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=2962;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=2963;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2991;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3111;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3140;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3147;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3155;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3156;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5756;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3275;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3385;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3386;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3388;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3395;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3398;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3435;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3457;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3465;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3504;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3517;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3636;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3637;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3640;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3653;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3655;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3663;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3669;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3670;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3671;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3673;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3674;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3679;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3750;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5977;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=3816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3840;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3842;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3847;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3924;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=3925;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3979;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4022;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4023;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4024;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4025;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4026;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=4027;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=4035;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4041;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4090;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4091;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4092;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4146;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4156;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4159;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4161;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4163;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4165;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4167;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4168;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4169;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4171;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4172;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4173;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4175;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4177;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4180;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4204;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4205;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4210;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4211;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4212;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4213;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4214;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4215;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4218;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4219;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4220;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4221;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4222;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4223;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4225;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4226;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4228;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4229;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4231;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4232;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4233;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4234;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4235;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4236;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4240;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4242;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4244;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4254;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4259;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4409;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4423;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4484;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4521;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4655;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4656;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4657;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4658;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=4659;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4667;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4682;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4684;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4686;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5974;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4730;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4753;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4782;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4783;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4784;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4786;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4845;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4851;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4856;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=4863;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4872;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4960;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5048;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5053;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5055;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5081;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5113;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5115;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5127;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5128;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5147;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5148;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5149;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5153;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5154;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5155;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5156;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5159;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5160;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5161;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5162;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5163;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5164;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5165;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5166;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5169;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5170;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5191;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5229;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5353;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5387;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5389;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5391;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5421;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5424;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5427;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=5430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5441;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5450;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5451;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5452;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5453;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5454;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5455;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5456;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5457;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5458;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5459;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5460;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=5465;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=5469;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=5470;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5471;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5472;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5473;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5474;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5475;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5482;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5483;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5485;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5490;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5615;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5622;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5623;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5635;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5637;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5643;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5644;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5755;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5761;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5763;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5771;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=5775;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5863;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5901;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5914;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=5930;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5955;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5974;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5975;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5976;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5978;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5979;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5982;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5984;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5985;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5988;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5990;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=5991;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5992;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5993;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5999;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6004;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6005;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6006;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6007;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6008;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6009;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6010;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6011;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6015;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6031;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6034;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6073;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6090;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=6109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6114;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6115;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=6118;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6120;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=6129;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=6130;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=6131;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=6147;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6146;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6146;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6236;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6248;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6249;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6291;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6292;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6294;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6379;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=6380;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6382;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6501;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6502;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6503;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6504;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6505;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6506;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6507;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6508;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6513;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6514;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6520;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6521;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=6551;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6552;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6553;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=6554;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6582;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=6584;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6735;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=6912;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7029;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7042;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=7043;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7050;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7057;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7078;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7132;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7175;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=7269;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7296;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7313;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=7363;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7369;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7371;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7372;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7379;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7438;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=7439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7505;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7506;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=7572;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=7665;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7668;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7669;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7670;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7671;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7740;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7744;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7771;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7775;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7847;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7848;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7855;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7856;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7857;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7858;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7865;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7866;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7873;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7881;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7882;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7883;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7884;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7936;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7978;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8095;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8120;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8130;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8137;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8139;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8160;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8161;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8236;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8507;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8521;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=8527;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8539;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8544;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8545;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8546;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8547;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8555;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8557;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8558;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8560;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8579;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8667;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8675;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8681;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=8716;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=8717;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=8718;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=8760;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=8761;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=8763;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8766;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8886;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8907;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=8924;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9099;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9117;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9176;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9299;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9376;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=9453;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9550;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9619;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=9623;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9660;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=9684;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9698;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9706;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=9999;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10061;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10089;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10276;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10302;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=10394;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10398;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10400;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=10406;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=10407;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10412;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10413;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10416;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10417;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10438;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10439;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10460;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10463;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10464;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10482;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10541;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10580;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10663;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=10664;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10684;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=10738;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10739;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10816;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10877;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10897;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=10986;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=11030;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11041;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11042;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11050;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11070;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=11077;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11078;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11081;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11083;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11097;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11145;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11146;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11198;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11219;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11256;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11290;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11401;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11406;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=11440;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11441;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=11442;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=11443;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11444;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11491;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11610;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=11675;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=11678;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11682;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11684;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11685;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11686;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11687;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11697;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11701;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11709;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11777;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11778;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11781;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11782;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11783;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=11784;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11785;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11786;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11787;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11788;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11789;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11790;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11791;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11793;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11794;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11802;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11810;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11812;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11813;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=11874;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11956;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=11957;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12023;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=12046;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12051;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12201;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=12203;
UPDATE `creature_template` SET `speed_walk`=0.777776 WHERE `entry`=12206;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12207;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12216;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12217;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12218;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12219;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12220;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12221;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12223;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12224;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12225;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12238;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12239;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12240;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12241;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12243;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12245;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12246;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12249;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12250;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12253;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12255;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12258;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12263;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12277;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12337;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12352;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12377;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12378;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1365;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=12381;
UPDATE `creature_template` SET `speed_walk`=1.2 WHERE `entry`=12382;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12387;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=12396;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12418;
UPDATE `creature_template` SET `speed_walk`=1.38889 WHERE `entry`=12579;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1365;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12676;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=12836;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12976;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=12977;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=13021;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13036;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13141;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13160;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=13178;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13219;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=13256;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=13280;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13282;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13323;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13331;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13332;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13359;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13358;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=13396;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13418;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13420;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13429;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13430;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13431;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13432;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13433;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13434;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13435;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13436;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13444;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13533;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13596;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13599;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13601;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=13716;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=13718;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13743;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13756;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13776;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13778;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13796;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13817;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13840;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13959;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14026;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14027;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14028;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14030;
UPDATE `creature_template` SET `speed_walk`=1.55556 WHERE `entry`=14269;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14270;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14283;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14284;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14285;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14321;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14322;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14323;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14324;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14325;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14326;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14353;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14355;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=14386;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14395;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=14445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14463;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14508;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14723;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14725;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14822;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14823;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14827;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14828;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14829;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14832;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14833;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14841;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14843;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14844;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14845;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14846;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14847;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14848;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14849;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14864;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14867;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14868;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14869;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14871;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14875;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14910;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=14943;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=14944;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=14945;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=14947;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14962;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14983;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14984;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15080;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15124;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15127;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15130;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15165;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15218;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15303;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16045;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15592;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15598;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15602;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15871;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15580;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15579;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15576;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15568;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15566;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15565;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15564;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15562;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15561;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10668;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=17698;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5047;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=10445;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15732;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15760;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15764;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15891;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15892;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15895;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15898;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16229;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=15481;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15694;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15719;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15864;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15905;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15906;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15907;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15908;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15909;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15961;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16001;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16002;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16003;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16004;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16005;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16007;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16008;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16009;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16105;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16106;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16108;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15467;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15745;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15746;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16075;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13601;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=4753;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8120;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8095;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=8138;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=16117;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12263;
UPDATE `creature_template` SET `speed_walk`=1.6 WHERE `entry`=5471;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1806;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5763;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=8766;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12387;
UPDATE `creature_template` SET `speed_walk`=1.4 WHERE `entry`=6147;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13282;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=12222;
UPDATE `creature_template` SET `speed_walk`=0.8 WHERE `entry`=12222;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13697;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13697;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=6109;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5056;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=5756;

-- Correct run speed for some creatures.
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=412;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=452;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=1981;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=2657;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2962;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=2963;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3106;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3111;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3750;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=3816;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3924;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=3925;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4011;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4035;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=4242;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=4484;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4655;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4656;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4657;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4658;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=4659;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5430;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=5756;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=5756;
UPDATE `creature_template` SET `speed_run`=1.28571 WHERE `entry`=5914;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=5982;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=5993;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6011;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=6109;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=6109;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6146;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6146;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6147;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6147;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6379;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6380;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6506;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6551;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=6554;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=6584;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=6907;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=7136;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=7269;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7438;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=7439;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=7883;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=8276;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8716;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8717;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8718;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8760;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8761;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=8763;
UPDATE `creature_template` SET `speed_run`=1.19048 WHERE `entry`=9467;
UPDATE `creature_template` SET `speed_run`=1.21429 WHERE `entry`=9684;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=10664;
UPDATE `creature_template` SET `speed_run`=0.992063 WHERE `entry`=10738;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=10981;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=10990;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=11460;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=11492;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11501;
UPDATE `creature_template` SET `speed_run`=0.285714 WHERE `entry`=12222;
UPDATE `creature_template` SET `speed_run`=0.285714 WHERE `entry`=12222;
UPDATE `creature_template` SET `speed_run`=0.885714 WHERE `entry`=12245;
UPDATE `creature_template` SET `speed_run`=0.885714 WHERE `entry`=12246;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12337;
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=12352;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12358;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12359;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=12360;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12381;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12382;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12396;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12418;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12976;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12977;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=13036;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13137;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13138;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13143;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13144;
UPDATE `creature_template` SET `speed_run`=1.28968 WHERE `entry`=13147;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13152;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=13160;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=13178;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=13179;
UPDATE `creature_template` SET `speed_run`=4 WHERE `entry`=13236;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=13256;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13296;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13297;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13298;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13299;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13300;
UPDATE `creature_template` SET `speed_run`=0.571429 WHERE `entry`=13318;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=13577;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=13596;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=13756;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=13778;
UPDATE `creature_template` SET `speed_run`=0.714286 WHERE `entry`=13796;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=14324;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=14354;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14380;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=14386;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14555;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14556;
UPDATE `creature_template` SET `speed_run`=1.38571 WHERE `entry`=14602;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14762;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14763;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14764;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14765;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14766;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=14767;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=14860;
UPDATE `creature_template` SET `speed_run`=2.57143 WHERE `entry`=14864;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=14943;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=14944;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=14945;
UPDATE `creature_template` SET `speed_run`=4.28571 WHERE `entry`=14947;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=15481;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=15961;
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=16075;

-- Correct melee attack time.
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2742;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2928;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11023;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11355;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12057;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12860;
UPDATE `creature_template` SET `base_attack_time`=2700 WHERE `entry`=193;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=412;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=709;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=857;
UPDATE `creature_template` SET `base_attack_time`=1300 WHERE `entry`=1061;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1095;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1203;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1204;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1365;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1365;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1380;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1436;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=1493;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=1844;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=1981;
UPDATE `creature_template` SET `base_attack_time`=1000 WHERE `entry`=2600;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2644;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2835;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=2918;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=3395;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3398;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3454;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3652;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3654;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3655;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=3672;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4004;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4050;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4052;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4061;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4255;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4257;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4409;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4423;
UPDATE `creature_template` SET `base_attack_time`=3000 WHERE `entry`=4686;
UPDATE `creature_template` SET `base_attack_time`=2300 WHERE `entry`=4845;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4850;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=4851;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4852;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4856;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4863;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=4872;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5081;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5134;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5135;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5139;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=5441;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=5469;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5470;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5762;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5763;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5763;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=5835;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5863;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5914;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5930;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=5931;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5981;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6109;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6109;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6118;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6129;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6130;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6131;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6146;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6146;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6147;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=6147;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6501;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6502;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6503;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6504;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6582;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6906;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6907;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6908;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6910;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=6912;
UPDATE `creature_template` SET `base_attack_time`=2900 WHERE `entry`=7042;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7043;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7057;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7135;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7175;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7665;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=7848;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7873;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8138;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8138;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8199;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8200;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8277;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8518;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8716;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8717;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8718;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8907;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=8924;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9299;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9376;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9453;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=9522;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=9684;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10082;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10394;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10398;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10399;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10400;
UPDATE `creature_template` SET `base_attack_time`=1400 WHERE `entry`=10406;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10407;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=10408;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=10409;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10412;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10413;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10416;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10417;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10436;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10437;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10438;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=10439;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10440;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10463;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10464;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10663;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10664;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=10738;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10817;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10897;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10981;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10986;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=10990;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11030;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11076;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11077;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11078;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11256;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11346;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11383;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11440;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=11441;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11442;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11443;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11444;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11445;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11446;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11448;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11448;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11451;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=11452;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11453;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11454;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11455;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=11456;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11457;
UPDATE `creature_template` SET `base_attack_time`=800 WHERE `entry`=11460;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11461;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11462;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11464;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=11465;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11490;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11491;
UPDATE `creature_template` SET `base_attack_time`=1300 WHERE `entry`=11492;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11605;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11675;
UPDATE `creature_template` SET `base_attack_time`=1700 WHERE `entry`=11678;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11701;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11777;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11778;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11782;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11787;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11788;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11948;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11997;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11998;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12050;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12051;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12053;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12096;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12127;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12197;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12238;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12239;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12240;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12241;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12263;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12263;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12337;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12352;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12381;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12382;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12396;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12579;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12836;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12976;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12977;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=13021;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13022;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=13036;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13079;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13081;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13088;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13097;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13099;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13137;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13138;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13139;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13143;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13144;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13145;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13146;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13147;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=13160;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13178;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13196;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13197;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13219;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13256;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13276;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13280;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13285;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13296;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13297;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13298;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13299;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13300;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13316;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13326;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13331;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13332;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13358;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13359;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13397;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13431;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13432;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13444;
UPDATE `creature_template` SET `base_attack_time`=2800 WHERE `entry`=13535;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13538;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13541;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13544;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13552;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13555;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13697;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13697;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13716;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13718;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13797;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13840;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13959;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14187;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14188;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14269;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14270;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14282;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14283;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14321;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14322;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14323;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14324;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14325;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14326;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14327;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14338;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14344;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14345;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14349;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14353;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14354;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14380;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14386;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14445;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14762;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14763;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14764;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14765;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14766;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14767;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14843;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14848;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14865;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14875;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14876;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14910;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14911;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14912;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14943;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14944;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14945;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14947;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14982;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14982;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15080;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15561;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15565;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15568;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15598;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15730;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15745;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16001;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16002;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16003;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16004;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16005;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16007;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16008;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16009;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16105;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16106;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16108;
UPDATE `creature_template` SET `base_attack_time`=1500 WHERE `entry`=16109;

-- Correct ranged attack time.
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=412;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=588;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=597;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=660;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=671;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=689;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=699;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=709;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=765;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=814;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=921;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=939;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=942;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1061;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1062;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1088;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1095;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1203;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1204;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1380;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1436;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1844;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1981;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=2918;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3106;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3111;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3140;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3147;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3155;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3156;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3395;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3454;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3652;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3654;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3672;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4255;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4850;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4852;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4863;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5081;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5134;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5135;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5139;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5470;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5648;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5649;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5650;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5762;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5763;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5914;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5981;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6499;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6912;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7078;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7135;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7175;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7246;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7247;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7268;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7269;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7271;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7272;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7848;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8095;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8120;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8127;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8130;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8138;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8199;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8200;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8924;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9299;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9453;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9522;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=9684;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10082;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10394;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10398;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10399;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10400;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10406;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10407;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10408;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10409;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10412;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10413;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10416;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10417;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10436;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10437;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10438;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10439;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10440;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10463;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10464;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10817;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10981;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10982;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10986;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10987;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=10990;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11030;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11076;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11077;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11078;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11256;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11383;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11441;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11444;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11445;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11446;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11448;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11450;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11451;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11452;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11453;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11454;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11455;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11456;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11457;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11460;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11461;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11462;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11464;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11465;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11490;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11491;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11492;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11600;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11602;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11603;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11604;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11605;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11657;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11675;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11678;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11701;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11947;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11948;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11949;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11997;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11998;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12050;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12051;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12053;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12096;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12127;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12238;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12352;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1365;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12381;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12382;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=1365;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12976;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12977;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13021;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13022;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13036;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13078;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13079;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13080;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13081;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13088;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13097;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13098;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13099;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13116;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13117;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13137;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13138;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13139;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13140;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13143;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13144;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13145;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13146;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13147;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13152;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13154;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13160;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13178;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13179;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13180;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13181;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13196;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13197;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13216;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13236;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13256;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13257;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13276;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13280;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13284;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13285;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13296;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13297;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13298;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13299;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13300;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13316;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13318;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13319;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13320;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13326;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13331;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13332;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13359;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13358;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13396;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13397;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13431;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13432;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13437;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13438;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13442;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13443;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13444;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13447;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13535;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13538;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13541;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13544;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13552;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13555;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13577;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13617;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13716;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13756;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13778;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13796;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13797;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13959;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14026;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14027;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14028;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14030;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14187;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14188;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14269;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14279;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14282;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14283;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14321;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14322;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14323;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14324;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14325;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14326;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14327;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14338;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14344;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14345;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14349;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14353;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14354;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14386;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14445;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14762;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14763;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14764;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14765;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14766;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14767;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14843;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14848;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14875;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14876;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14910;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14911;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14912;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14943;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14944;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14945;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14947;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14994;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15080;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15218;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15598;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15568;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15565;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15561;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6907;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6906;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6908;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=6910;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15745;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15730;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8120;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8095;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8138;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5763;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11450;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11448;


-- Update faction for more creatures.
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=288;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=340;
UPDATE `creature_template` SET `faction`=93 WHERE `entry`=412;
UPDATE `creature_template` SET `faction`=43 WHERE `entry`=604;
UPDATE `creature_template` SET `faction`=53 WHERE `entry`=888;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1327;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1356;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1439;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1440;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1466;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1471;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1573;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1703;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1747;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1749;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1750;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1751;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=1754;
UPDATE `creature_template` SET `faction`=67 WHERE `entry`=1844;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2285;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2330;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2331;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2439;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2504;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=2600;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=2608;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2700;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2737;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2786;
UPDATE `creature_template` SET `faction`=1078 WHERE `entry`=2788;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2789;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=2796;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2808;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2810;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2812;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2814;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2816;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=2835;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2912;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2916;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2918;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=2991;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=3395;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=3504;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3516;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3517;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3561;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3562;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=3652;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=3663;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3842;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=3847;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=3979;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4050;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=4052;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4090;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4091;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4092;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4138;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4146;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4156;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4159;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4160;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4161;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4163;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4165;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4167;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4168;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4169;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4171;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4172;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4173;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4175;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4177;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4180;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4204;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4205;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4210;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4211;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4212;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4213;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4214;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4215;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4216;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4217;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4218;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4219;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4220;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4221;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4222;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4223;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4225;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4226;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4228;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4229;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4231;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4232;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4233;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4234;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4235;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4236;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4240;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4242;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4243;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4244;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4254;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4256;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4258;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=4259;
UPDATE `creature_template` SET `faction`=123 WHERE `entry`=4484;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=4489;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4521;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4730;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4753;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=4960;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5081;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5113;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5115;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5128;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5146;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5147;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5148;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5149;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5153;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5154;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5155;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5156;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5159;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5160;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5161;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5164;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5165;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5166;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5170;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5171;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5173;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=5191;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5387;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=5389;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5482;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=5483;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=5637;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=5676;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=5763;
UPDATE `creature_template` SET `faction`=1575 WHERE `entry`=5999;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6031;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6034;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=6090;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6114;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6291;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6292;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=6294;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=6735;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7296;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7313;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=7410;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=7740;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=7848;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=7866;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=7936;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=7999;
UPDATE `creature_template` SET `faction`=37 WHERE `entry`=8199;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=8256;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=8396;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=8507;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=9047;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=9453;
UPDATE `creature_template` SET `faction`=40 WHERE `entry`=9522;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=9550;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10056;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10089;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10276;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10277;
UPDATE `creature_template` SET `faction`=974 WHERE `entry`=10394;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10398;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10399;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10400;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10406;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10407;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10408;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10409;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10412;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10413;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10416;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10417;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10436;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10437;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10438;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10439;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10440;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10463;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=10464;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=10684;
UPDATE `creature_template` SET `faction`=1055 WHERE `entry`=10817;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=10877;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=10897;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=11030;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11041;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11042;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11050;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11070;
UPDATE `creature_template` SET `faction`=21 WHERE `entry`=11078;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11081;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11083;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11145;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=11146;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11219;
UPDATE `creature_template` SET `faction`=1076 WHERE `entry`=11401;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=11406;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11460;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11461;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11462;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11464;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=11465;
UPDATE `creature_template` SET `faction`=26 WHERE `entry`=11605;
UPDATE `creature_template` SET `faction`=514 WHERE `entry`=11678;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=11709;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=11947;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=11948;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=11949;
UPDATE `creature_template` SET `faction`=1335 WHERE `entry`=11998;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=12050;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=12051;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=12053;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=12127;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=12197;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1365;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=12636;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=1365;
UPDATE `creature_template` SET `faction`=1097 WHERE `entry`=12676;
UPDATE `creature_template` SET `faction`=124 WHERE `entry`=12836;
UPDATE `creature_template` SET `faction`=130 WHERE `entry`=12976;
UPDATE `creature_template` SET `faction`=130 WHERE `entry`=12977;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13021;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13022;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13137;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13138;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13139;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13140;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13143;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13144;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13145;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13146;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13147;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13152;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13154;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13178;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13196;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13197;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13236;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13256;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13257;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13276;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13280;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13284;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13285;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13296;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13297;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13298;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13299;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13300;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13318;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13319;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13320;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13326;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13331;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13332;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13359;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13358;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13431;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13432;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13442;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13443;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=13444;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13447;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13577;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13617;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13756;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13776;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13778;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=13796;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=13797;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=13817;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=13959;
UPDATE `creature_template` SET `faction`=1594 WHERE `entry`=14187;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14282;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=14283;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=14284;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14285;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14327;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14338;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=14349;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=14723;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=14725;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14762;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14763;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14764;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14765;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14766;
UPDATE `creature_template` SET `faction`=1534 WHERE `entry`=14767;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14943;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14944;
UPDATE `creature_template` SET `faction`=1214 WHERE `entry`=14945;
UPDATE `creature_template` SET `faction`=1216 WHERE `entry`=14947;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16045;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6907;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6906;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=2909;
UPDATE `creature_template` SET `faction`=122 WHERE `entry`=6908;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=5047;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=15764;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=16001;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=16002;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=16003;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=16004;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=16005;
UPDATE `creature_template` SET `faction`=104 WHERE `entry`=16008;
UPDATE `creature_template` SET `faction`=55 WHERE `entry`=16009;
UPDATE `creature_template` SET `faction`=114 WHERE `entry`=16100;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=16105;
UPDATE `creature_template` SET `faction`=12 WHERE `entry`=16106;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=16108;
UPDATE `creature_template` SET `faction`=68 WHERE `entry`=16109;
UPDATE `creature_template` SET `faction`=120 WHERE `entry`=15724;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=15745;
UPDATE `creature_template` SET `faction`=80 WHERE `entry`=4753;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=5763;

-- Remove not used db script.
DELETE FROM `event_scripts` WHERE `id`=8420;

-- Correct type of dreadstead ritual circle. This fixes the animation.
UPDATE `gameobject_template` SET `type`=0, `flags`=20 WHERE `entry`=179668;

-- Fix scale of Orb of Domination.
UPDATE `creature_template` SET `scale`=1 WHERE `entry`=14453;

-- Correct givers for quest Cenarion Aid.
DELETE FROM `creature_questrelation` WHERE `quest`=8254;
replace into `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (5489, 8254, 5, 10);
replace into `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (6018, 8254, 5, 10);
replace into `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (11406, 8254, 5, 10);

-- Quest 5663 should be started by Miles Welsh.
UPDATE `creature_questrelation` SET `id`=3044 WHERE `id`=2129 && `quest`=5663;

-- Quest 5661 should not by started by anyone. It's unobtainable.
DELETE FROM `creature_questrelation` WHERE `id`=3044 && `quest`=5661;

-- <NYI> Touch of Weakness should not be a prerequisite of 5658.
UPDATE `quest_template` SET `NextQuestInChain`=0, `RewMoneyMaxLevel`=120, `RewSpell`=19318 WHERE `entry`=5659;

-- Quest 5644 should be started by Miles Welsh.
UPDATE `creature_questrelation` SET `id`=3044 WHERE `id`=5994 && `quest`=5644;

-- Quest 5646 should be started by Ur'kyo.
UPDATE `creature_questrelation` SET `id`=6018 WHERE `id`=3046 && `quest`=5646;


-- Quest 5643 should be started by Aelthalyste.
UPDATE `creature_questrelation` SET `id`=4606 WHERE `id`=4607 && `quest`=5643;

-- Add missing relations for quest 5654.
replace into `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (3706, 5654, 0, 10);
replace into `creature_involvedrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES (6018, 5654, 0, 10);

-- Quests 5657, 5656, 5655 are unobtainable.
DELETE FROM `creature_questrelation` WHERE `quest` IN (5657, 5656, 5655);

-- Ur'dan should only sell items after quest Ulathek the Traitor is completed.
replace into `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (7624, 8, 7624, 0, 0, 0, 0);
replace into `gossip_menu` VALUES (5864, 7037, 0);
replace into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (5864, 0, 1, 'I wish to purchase from you.', 9734, 3, 4, 0, 0, 0, 0, 0, NULL, 0, 7624);
UPDATE `creature_template` SET `gossip_menu_id`=5864, `npc_flags`=5 WHERE `entry`=14522;

-- Add missing completion text for Summon Felsteed quests.
UPDATE `quest_template` SET `OfferRewardText`='So, you\'ve decided to grace my presence again. How kind of you.$B$BMy acolytes wondered if you\'d ever show up. I told them there was no doubt. When power is concerned, you are drawn in like a moth to the flame.' WHERE `entry` IN (3631, 4487, 4488);


-- Aelthalyste
DELETE FROM `npc_trainer` WHERE `entry`=4606;
replace into `npc_trainer` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES 
(4606, 1252, 800, 12),
(4606, 1253, 10000, 30),
(4606, 1254, 18000, 40),
(4606, 1255, 10, 1),
(4606, 1256, 800, 12),
(4606, 1257, 5000, 24),
(4606, 1258, 100, 4),
(4606, 1259, 300, 10),
(4606, 1260, 2000, 18),
(4606, 1261, 6000, 26),
(4606, 1265, 200, 8),
(4606, 1268, 1200, 14),
(4606, 1269, 11000, 32),
(4606, 1275, 100, 6),
(4606, 1276, 1200, 14),
(4606, 1277, 800, 12),
(4606, 1278, 2000, 18),
(4606, 1279, 10000, 30),
(4606, 1280, 22000, 42),
(4606, 1283, 2000, 18),
(4606, 1284, 14000, 36),
(4606, 1287, 10000, 30),
(4606, 1288, 18000, 40),
(4606, 1293, 10000, 30),
(4606, 1298, 5000, 24),
(4606, 1300, 4000, 22),
(4606, 1301, 10000, 30),
(4606, 1425, 3000, 20),
(4606, 2013, 300, 10),
(4606, 2016, 4000, 22),
(4606, 2049, 30000, 50),
(4606, 2056, 100, 4),
(4606, 2057, 300, 10),
(4606, 2058, 1600, 16),
(4606, 2059, 4000, 22),
(4606, 2065, 18000, 40),
(4606, 2066, 3000, 20),
(4606, 2067, 38000, 52),
(4606, 2068, 44000, 58),
(4606, 2069, 26000, 46),
(4606, 2097, 4000, 22),
(4606, 2793, 14000, 36),
(4606, 2799, 12000, 34),
(4606, 2851, 100, 6),
(4606, 3046, 400, 28),
(4606, 6062, 16000, 38),
(4606, 6067, 10000, 30),
(4606, 6068, 14000, 36),
(4606, 6071, 8000, 28),
(4606, 6072, 12000, 34),
(4606, 6073, 200, 8),
(4606, 6079, 1200, 14),
(4606, 6080, 3000, 20),
(4606, 6081, 6000, 26),
(4606, 6082, 11000, 32),
(4606, 6083, 16000, 38),
(4606, 6386, 900, 40),
(4606, 6492, 12000, 34),
(4606, 7130, 3000, 20),
(4606, 7378, 400, 28),
(4606, 8093, 300, 10),
(4606, 8107, 1600, 16),
(4606, 8108, 4000, 22),
(4606, 8109, 8000, 28),
(4606, 8110, 12000, 34),
(4606, 8111, 18000, 40),
(4606, 8123, 1200, 14),
(4606, 8125, 8000, 28),
(4606, 8126, 3000, 20),
(4606, 8130, 5000, 24),
(4606, 8132, 11000, 32),
(4606, 8193, 14000, 36),
(4606, 9475, 6000, 26),
(4606, 9476, 11000, 32),
(4606, 9477, 16000, 38),
(4606, 9486, 18000, 40),
(4606, 9580, 3000, 20),
(4606, 9581, 10000, 30),
(4606, 9593, 18000, 40),
(4606, 10877, 18000, 40),
(4606, 10878, 28000, 48),
(4606, 10879, 42000, 56),
(4606, 10882, 12000, 34),
(4606, 10883, 26000, 46),
(4606, 10889, 22000, 42),
(4606, 10891, 42000, 56),
(4606, 10895, 22000, 42),
(4606, 10896, 30000, 50),
(4606, 10897, 44000, 58),
(4606, 10902, 22000, 42),
(4606, 10903, 28000, 48),
(4606, 10904, 40000, 54),
(4606, 10905, 46000, 60),
(4606, 10910, 24000, 44),
(4606, 10913, 24000, 44),
(4606, 10914, 44000, 58),
(4606, 10918, 24000, 44),
(4606, 10919, 30000, 50),
(4606, 10920, 42000, 56),
(4606, 10930, 24000, 44),
(4606, 10931, 30000, 50),
(4606, 10932, 42000, 56),
(4606, 10935, 26000, 46),
(4606, 10936, 40000, 54),
(4606, 10939, 28000, 48),
(4606, 10940, 46000, 60),
(4606, 10943, 30000, 50),
(4606, 10944, 46000, 60),
(4606, 10948, 26000, 46),
(4606, 10949, 38000, 52),
(4606, 10950, 44000, 58),
(4606, 10954, 38000, 52),
(4606, 10956, 46000, 60),
(4606, 10959, 42000, 56),
(4606, 10962, 46000, 60),
(4606, 11025, 30000, 50),
(4606, 11026, 46000, 60),
(4606, 14820, 1500, 50),
(4606, 15434, 700, 36),
(4606, 15452, 5000, 24),
(4606, 15454, 10000, 30),
(4606, 15455, 14000, 36),
(4606, 15457, 22000, 42),
(4606, 15459, 28000, 48),
(4606, 15460, 40000, 54),
(4606, 17316, 700, 36),
(4606, 17317, 1200, 44),
(4606, 17318, 1900, 52),
(4606, 18806, 46000, 60),
(4606, 18808, 2300, 60),
(4606, 19313, 400, 28),
(4606, 19314, 700, 36),
(4606, 19315, 1200, 44),
(4606, 19316, 1900, 52),
(4606, 19317, 2300, 60),
(4606, 19320, 150, 20),
(4606, 19321, 500, 30),
(4606, 19322, 900, 40),
(4606, 19323, 1500, 50),
(4606, 19324, 2300, 60),
(4606, 20771, 44000, 58),
(4606, 27796, 3000, 20),
(4606, 27821, 1200, 44),
(4606, 27822, 1900, 52),
(4606, 27823, 2300, 60),
(4606, 27843, 2300, 60),
(4606, 27845, 2300, 60),
(4606, 27875, 1200, 50),
(4606, 27876, 1500, 60);
DELETE FROM `npc_trainer` WHERE `entry`=4606 && `spell` IN (19313, 19315, 19316, 19317, 19323, 19324, 19329, 19330, 19334, 19335, 19336, 19342, 19343, 19344, 19354, 19355, 19356, 19360, 19361);
replace into `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(4606, 19313, 2000, 0, 0, 28, 0, 5086),
(4606, 19313, 400, 0, 0, 28, 5302, 5875),
(4606, 19315, 5400, 0, 0, 44, 0, 5086),
(4606, 19315, 1200, 0, 0, 44, 5302, 5875),
(4606, 19316, 9500, 0, 0, 52, 0, 5086),
(4606, 19316, 1900, 0, 0, 52, 5302, 5875),
(4606, 19317, 11500, 0, 0, 60, 0, 5086),
(4606, 19317, 2300, 0, 0, 60, 5302, 5875),
(4606, 19323, 7500, 0, 0, 50, 0, 5086),
(4606, 19323, 1500, 0, 0, 50, 5302, 5875),
(4606, 19324, 11500, 0, 0, 60, 0, 5086),
(4606, 19324, 2070, 0, 0, 60, 5302, 5875),
(4606, 19329, 7500, 0, 0, 50, 0, 5086),
(4606, 19329, 1500, 0, 0, 50, 5302, 5875),
(4606, 19330, 11500, 0, 0, 60, 0, 5086),
(4606, 19330, 2300, 0, 0, 60, 5302, 5875),
(4606, 19334, 7000, 0, 0, 0, 0, 5086),
(4606, 19334, 1000, 0, 0, 0, 5302, 5875),
(4606, 19335, 9500, 0, 0, 0, 0, 5086),
(4606, 19335, 1200, 0, 0, 0, 5302, 5875),
(4606, 19336, 11500, 0, 0, 60, 0, 5086),
(4606, 19336, 2300, 0, 0, 60, 5302, 5875),
(4606, 19342, 4950, 0, 0, 42, 0, 5086),
(4606, 19342, 1100, 0, 0, 42, 5302, 5875),
(4606, 19343, 6750, 0, 0, 50, 0, 5086),
(4606, 19343, 1500, 0, 0, 50, 5302, 5875),
(4606, 19344, 9900, 0, 0, 58, 0, 5086),
(4606, 19344, 2200, 0, 0, 58, 5302, 5875),
(4606, 19354, 5500, 0, 0, 42, 0, 5086),
(4606, 19354, 1100, 0, 0, 42, 5302, 5875),
(4606, 19355, 7500, 0, 0, 50, 0, 5086),
(4606, 19355, 1500, 0, 0, 50, 5302, 5875),
(4606, 19356, 47000, 0, 0, 58, 0, 5086),
(4606, 19356, 2200, 0, 0, 58, 5302, 5875),
(4606, 19360, 7500, 0, 0, 50, 0, 5086),
(4606, 19360, 1500, 0, 0, 50, 5302, 5875),
(4606, 19361, 11500, 0, 0, 60, 0, 5086),
(4606, 19361, 2070, 0, 0, 60, 5302, 5875);
-- Father Lankester
DELETE FROM `npc_trainer` WHERE `entry`=4607;
replace into `npc_trainer` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES 
(4607, 1252, 800, 12),
(4607, 1253, 10000, 30),
(4607, 1254, 18000, 40),
(4607, 1255, 10, 1),
(4607, 1256, 800, 12),
(4607, 1257, 5000, 24),
(4607, 1258, 100, 4),
(4607, 1259, 300, 10),
(4607, 1260, 2000, 18),
(4607, 1261, 6000, 26),
(4607, 1265, 200, 8),
(4607, 1268, 1200, 14),
(4607, 1269, 11000, 32),
(4607, 1275, 100, 6),
(4607, 1276, 1200, 14),
(4607, 1277, 800, 12),
(4607, 1278, 2000, 18),
(4607, 1279, 10000, 30),
(4607, 1280, 22000, 42),
(4607, 1283, 2000, 18),
(4607, 1284, 14000, 36),
(4607, 1287, 10000, 30),
(4607, 1288, 18000, 40),
(4607, 1293, 10000, 30),
(4607, 1298, 5000, 24),
(4607, 1300, 4000, 22),
(4607, 1301, 10000, 30),
(4607, 1425, 3000, 20),
(4607, 2013, 300, 10),
(4607, 2016, 4000, 22),
(4607, 2049, 30000, 50),
(4607, 2056, 100, 4),
(4607, 2057, 300, 10),
(4607, 2058, 1600, 16),
(4607, 2059, 4000, 22),
(4607, 2065, 18000, 40),
(4607, 2066, 3000, 20),
(4607, 2067, 38000, 52),
(4607, 2068, 44000, 58),
(4607, 2069, 26000, 46),
(4607, 2097, 4000, 22),
(4607, 2793, 14000, 36),
(4607, 2799, 12000, 34),
(4607, 2851, 100, 6),
(4607, 3046, 400, 28),
(4607, 6062, 16000, 38),
(4607, 6067, 10000, 30),
(4607, 6068, 14000, 36),
(4607, 6071, 8000, 28),
(4607, 6072, 12000, 34),
(4607, 6073, 200, 8),
(4607, 6079, 1200, 14),
(4607, 6080, 3000, 20),
(4607, 6081, 6000, 26),
(4607, 6082, 11000, 32),
(4607, 6083, 16000, 38),
(4607, 6386, 900, 40),
(4607, 6492, 12000, 34),
(4607, 7130, 3000, 20),
(4607, 7378, 400, 28),
(4607, 8093, 300, 10),
(4607, 8107, 1600, 16),
(4607, 8108, 4000, 22),
(4607, 8109, 8000, 28),
(4607, 8110, 12000, 34),
(4607, 8111, 18000, 40),
(4607, 8123, 1200, 14),
(4607, 8125, 8000, 28),
(4607, 8126, 3000, 20),
(4607, 8130, 5000, 24),
(4607, 8132, 11000, 32),
(4607, 8193, 14000, 36),
(4607, 9475, 6000, 26),
(4607, 9476, 11000, 32),
(4607, 9477, 16000, 38),
(4607, 9486, 18000, 40),
(4607, 9580, 3000, 20),
(4607, 9581, 10000, 30),
(4607, 9593, 18000, 40),
(4607, 10877, 18000, 40),
(4607, 10878, 28000, 48),
(4607, 10879, 42000, 56),
(4607, 10882, 12000, 34),
(4607, 10883, 26000, 46),
(4607, 10889, 22000, 42),
(4607, 10891, 42000, 56),
(4607, 10895, 22000, 42),
(4607, 10896, 30000, 50),
(4607, 10897, 44000, 58),
(4607, 10902, 22000, 42),
(4607, 10903, 28000, 48),
(4607, 10904, 40000, 54),
(4607, 10905, 46000, 60),
(4607, 10910, 24000, 44),
(4607, 10913, 24000, 44),
(4607, 10914, 44000, 58),
(4607, 10918, 24000, 44),
(4607, 10919, 30000, 50),
(4607, 10920, 42000, 56),
(4607, 10930, 24000, 44),
(4607, 10931, 30000, 50),
(4607, 10932, 42000, 56),
(4607, 10935, 26000, 46),
(4607, 10936, 40000, 54),
(4607, 10939, 28000, 48),
(4607, 10940, 46000, 60),
(4607, 10943, 30000, 50),
(4607, 10944, 46000, 60),
(4607, 10948, 26000, 46),
(4607, 10949, 38000, 52),
(4607, 10950, 44000, 58),
(4607, 10954, 38000, 52),
(4607, 10956, 46000, 60),
(4607, 10959, 42000, 56),
(4607, 10962, 46000, 60),
(4607, 11025, 30000, 50),
(4607, 11026, 46000, 60),
(4607, 14820, 1500, 50),
(4607, 15434, 700, 36),
(4607, 15452, 5000, 24),
(4607, 15454, 10000, 30),
(4607, 15455, 14000, 36),
(4607, 15457, 22000, 42),
(4607, 15459, 28000, 48),
(4607, 15460, 40000, 54),
(4607, 17316, 700, 36),
(4607, 17317, 1200, 44),
(4607, 17318, 1900, 52),
(4607, 18806, 46000, 60),
(4607, 18808, 2300, 60),
(4607, 19313, 400, 28),
(4607, 19314, 700, 36),
(4607, 19315, 1200, 44),
(4607, 19316, 1900, 52),
(4607, 19317, 2300, 60),
(4607, 19320, 150, 20),
(4607, 19321, 500, 30),
(4607, 19322, 900, 40),
(4607, 19323, 1500, 50),
(4607, 19324, 2300, 60),
(4607, 20771, 44000, 58),
(4607, 27796, 3000, 20),
(4607, 27821, 1200, 44),
(4607, 27822, 1900, 52),
(4607, 27823, 2300, 60),
(4607, 27843, 2300, 60),
(4607, 27845, 2300, 60),
(4607, 27875, 1200, 50),
(4607, 27876, 1500, 60);
DELETE FROM `npc_trainer` WHERE `entry`=4607 && `spell` IN (19313, 19314, 19315, 19316, 19317, 19320, 19321, 19322, 19323, 19324, 27796, 27821, 27822, 27823, 27843, 27845, 27875, 27876);
replace into `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(4607, 19313, 2000, 0, 0, 28, 0, 5086),
(4607, 19313, 400, 0, 0, 28, 5302, 5875),
(4607, 19314, 3500, 0, 0, 36, 0, 5086),
(4607, 19314, 700, 0, 0, 36, 5302, 5875),
(4607, 19315, 5400, 0, 0, 44, 0, 5086),
(4607, 19315, 1200, 0, 0, 44, 5302, 5875),
(4607, 19316, 9500, 0, 0, 52, 0, 5086),
(4607, 19316, 1900, 0, 0, 52, 5302, 5875),
(4607, 19317, 11500, 0, 0, 60, 0, 5086),
(4607, 19317, 2300, 0, 0, 60, 5302, 5875),
(4607, 19320, 750, 0, 0, 20, 0, 5086),
(4607, 19320, 200, 0, 0, 20, 5302, 5875),
(4607, 19321, 2500, 0, 0, 30, 0, 5086),
(4607, 19321, 500, 0, 0, 30, 5302, 5875),
(4607, 19322, 4500, 0, 0, 40, 0, 5086),
(4607, 19322, 900, 0, 0, 40, 5302, 5875),
(4607, 19323, 7500, 0, 0, 50, 0, 5086),
(4607, 19323, 1500, 0, 0, 50, 5302, 5875),
(4607, 19324, 11500, 0, 0, 60, 0, 5086),
(4607, 19324, 2070, 0, 0, 60, 5302, 5875),
(4607, 27796, 3000, 0, 0, 20, 5302, 5875),
(4607, 27821, 1200, 0, 0, 44, 5302, 5875),
(4607, 27822, 1900, 0, 0, 52, 5302, 5875),
(4607, 27823, 2300, 0, 0, 60, 5302, 5875),
(4607, 27843, 2300, 0, 0, 60, 5302, 5875),
(4607, 27845, 2300, 0, 0, 60, 5302, 5875),
(4607, 27875, 1200, 0, 0, 50, 5302, 5875),
(4607, 27876, 1500, 0, 0, 60, 5302, 5875);
-- Father Lazarus
DELETE FROM `npc_trainer` WHERE `entry`=4608;
replace into `npc_trainer` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES 
(4608, 1252, 800, 12),
(4608, 1253, 10000, 30),
(4608, 1254, 18000, 40),
(4608, 1255, 10, 1),
(4608, 1256, 800, 12),
(4608, 1257, 5000, 24),
(4608, 1258, 100, 4),
(4608, 1259, 300, 10),
(4608, 1260, 2000, 18),
(4608, 1261, 6000, 26),
(4608, 1265, 200, 8),
(4608, 1268, 1200, 14),
(4608, 1269, 11000, 32),
(4608, 1275, 100, 6),
(4608, 1276, 1200, 14),
(4608, 1277, 800, 12),
(4608, 1278, 2000, 18),
(4608, 1279, 10000, 30),
(4608, 1280, 22000, 42),
(4608, 1283, 2000, 18),
(4608, 1284, 14000, 36),
(4608, 1287, 10000, 30),
(4608, 1288, 18000, 40),
(4608, 1293, 10000, 30),
(4608, 1298, 5000, 24),
(4608, 1300, 4000, 22),
(4608, 1301, 10000, 30),
(4608, 1425, 3000, 20),
(4608, 2013, 300, 10),
(4608, 2016, 4000, 22),
(4608, 2049, 30000, 50),
(4608, 2056, 100, 4),
(4608, 2057, 300, 10),
(4608, 2058, 1600, 16),
(4608, 2059, 4000, 22),
(4608, 2065, 18000, 40),
(4608, 2066, 3000, 20),
(4608, 2067, 38000, 52),
(4608, 2068, 44000, 58),
(4608, 2069, 26000, 46),
(4608, 2097, 4000, 22),
(4608, 2793, 14000, 36),
(4608, 2799, 12000, 34),
(4608, 2851, 100, 6),
(4608, 3046, 400, 28),
(4608, 6062, 16000, 38),
(4608, 6067, 10000, 30),
(4608, 6068, 14000, 36),
(4608, 6071, 8000, 28),
(4608, 6072, 12000, 34),
(4608, 6073, 200, 8),
(4608, 6079, 1200, 14),
(4608, 6080, 3000, 20),
(4608, 6081, 6000, 26),
(4608, 6082, 11000, 32),
(4608, 6083, 16000, 38),
(4608, 6386, 900, 40),
(4608, 6492, 12000, 34),
(4608, 7130, 3000, 20),
(4608, 7378, 400, 28),
(4608, 8093, 300, 10),
(4608, 8107, 1600, 16),
(4608, 8108, 4000, 22),
(4608, 8109, 8000, 28),
(4608, 8110, 12000, 34),
(4608, 8111, 18000, 40),
(4608, 8123, 1200, 14),
(4608, 8125, 8000, 28),
(4608, 8126, 3000, 20),
(4608, 8130, 5000, 24),
(4608, 8132, 11000, 32),
(4608, 8193, 14000, 36),
(4608, 9475, 6000, 26),
(4608, 9476, 11000, 32),
(4608, 9477, 16000, 38),
(4608, 9486, 18000, 40),
(4608, 9580, 3000, 20),
(4608, 9581, 10000, 30),
(4608, 9593, 18000, 40),
(4608, 10877, 18000, 40),
(4608, 10878, 28000, 48),
(4608, 10879, 42000, 56),
(4608, 10882, 12000, 34),
(4608, 10883, 26000, 46),
(4608, 10889, 22000, 42),
(4608, 10891, 42000, 56),
(4608, 10895, 22000, 42),
(4608, 10896, 30000, 50),
(4608, 10897, 44000, 58),
(4608, 10902, 22000, 42),
(4608, 10903, 28000, 48),
(4608, 10904, 40000, 54),
(4608, 10905, 46000, 60),
(4608, 10910, 24000, 44),
(4608, 10913, 24000, 44),
(4608, 10914, 44000, 58),
(4608, 10918, 24000, 44),
(4608, 10919, 30000, 50),
(4608, 10920, 42000, 56),
(4608, 10930, 24000, 44),
(4608, 10931, 30000, 50),
(4608, 10932, 42000, 56),
(4608, 10935, 26000, 46),
(4608, 10936, 40000, 54),
(4608, 10939, 28000, 48),
(4608, 10940, 46000, 60),
(4608, 10943, 30000, 50),
(4608, 10944, 46000, 60),
(4608, 10948, 26000, 46),
(4608, 10949, 38000, 52),
(4608, 10950, 44000, 58),
(4608, 10954, 38000, 52),
(4608, 10956, 46000, 60),
(4608, 10959, 42000, 56),
(4608, 10962, 46000, 60),
(4608, 11025, 30000, 50),
(4608, 11026, 46000, 60),
(4608, 14820, 1500, 50),
(4608, 15434, 700, 36),
(4608, 15452, 5000, 24),
(4608, 15454, 10000, 30),
(4608, 15455, 14000, 36),
(4608, 15457, 22000, 42),
(4608, 15459, 28000, 48),
(4608, 15460, 40000, 54),
(4608, 17316, 700, 36),
(4608, 17317, 1200, 44),
(4608, 17318, 1900, 52),
(4608, 18806, 46000, 60),
(4608, 18808, 2300, 60),
(4608, 19313, 400, 28),
(4608, 19314, 700, 36),
(4608, 19315, 1200, 44),
(4608, 19316, 1900, 52),
(4608, 19317, 2300, 60),
(4608, 19320, 150, 20),
(4608, 19321, 500, 30),
(4608, 19322, 900, 40),
(4608, 19323, 1500, 50),
(4608, 19324, 2300, 60),
(4608, 20771, 44000, 58),
(4608, 27796, 3000, 20),
(4608, 27821, 1200, 44),
(4608, 27822, 1900, 52),
(4608, 27823, 2300, 60),
(4608, 27843, 2300, 60),
(4608, 27845, 2300, 60),
(4608, 27875, 1200, 50),
(4608, 27876, 1500, 60);
DELETE FROM `npc_trainer` WHERE `entry`=4608 && `spell` IN (19313, 19314, 19315, 19316, 19317, 19320, 19321, 19322, 19323, 19324, 27796, 27821, 27822, 27823, 27843, 27845, 27875, 27876);
replace into `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(4608, 19313, 2000, 0, 0, 28, 0, 5086),
(4608, 19313, 400, 0, 0, 28, 5302, 5875),
(4608, 19314, 3500, 0, 0, 36, 0, 5086),
(4608, 19314, 700, 0, 0, 36, 5302, 5875),
(4608, 19315, 5400, 0, 0, 44, 0, 5086),
(4608, 19315, 1200, 0, 0, 44, 5302, 5875),
(4608, 19316, 9500, 0, 0, 52, 0, 5086),
(4608, 19316, 1900, 0, 0, 52, 5302, 5875),
(4608, 19317, 11500, 0, 0, 60, 0, 5086),
(4608, 19317, 2300, 0, 0, 60, 5302, 5875),
(4608, 19320, 750, 0, 0, 20, 0, 5086),
(4608, 19320, 200, 0, 0, 20, 5302, 5875),
(4608, 19321, 2500, 0, 0, 30, 0, 5086),
(4608, 19321, 500, 0, 0, 30, 5302, 5875),
(4608, 19322, 4500, 0, 0, 40, 0, 5086),
(4608, 19322, 900, 0, 0, 40, 5302, 5875),
(4608, 19323, 7500, 0, 0, 50, 0, 5086),
(4608, 19323, 1500, 0, 0, 50, 5302, 5875),
(4608, 19324, 11500, 0, 0, 60, 0, 5086),
(4608, 19324, 2070, 0, 0, 60, 5302, 5875),
(4608, 27796, 3000, 0, 0, 20, 5302, 5875),
(4608, 27821, 1200, 0, 0, 44, 5302, 5875),
(4608, 27822, 1900, 0, 0, 52, 5302, 5875),
(4608, 27823, 2300, 0, 0, 60, 5302, 5875),
(4608, 27843, 2300, 0, 0, 60, 5302, 5875),
(4608, 27845, 2300, 0, 0, 60, 5302, 5875),
(4608, 27875, 1200, 0, 0, 50, 5302, 5875),
(4608, 27876, 1500, 0, 0, 60, 5302, 5875);

-- Add missing completion text for Summon Felsteed quests.
UPDATE `quest_template` SET `OfferRewardText`='So, you\'ve decided to grace my presence again. How kind of you.$B$BMy acolytes wondered if you\'d ever show up. I told them there was no doubt. When power is concerned, you are drawn in like a moth to the flame.' WHERE `entry` IN (3631, 4487, 4488);



-- Fix requirements for The Completed Orb of Dar'Orahil and Noh'Orahil.
UPDATE `quest_template` SET `ExclusiveGroup`=0, `PrevQuestId`=4962 WHERE `entry`=4964;
UPDATE `quest_template` SET `ExclusiveGroup`=0, `PrevQuestId`=4963 WHERE `entry`=4975;

-- Improved script for quest Cleansing of the Orb of Orahil.
DELETE FROM `quest_start_scripts` WHERE `id`=4961;
replace into `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2629, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Say Text');
replace into `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4961, 0, 60, 3, 0, 0, 0, 0, 0, 0, 4, 0, 4961, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Start Waypoints');
replace into `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4961, 0, 4, 147, 3, 2, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Remove Quest Giver Flag');

-- Waypoints for Tabetha when quest Cleansing of the Orb of Orahil is started.
replace into `creature_movement_special` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES 
(4961, 1, -4035.85, -3384.24, 38.9959, 100, 0, 0, 0),
(4961, 2, -4037.6, -3381.32, 37.9133, 100, 0, 0, 0),
(4961, 3, -4037.38, -3378.67, 37.7076, 100, 0, 0, 0),
(4961, 4, -4033.77, -3376.26, 38.0439, 100, 0, 0, 0),
(4961, 5, -4027.12, -3377.37, 38.1654, 100, 0, 0, 0),
(4961, 6, -4020.59, -3382, 38.1995, 100, 6000, 0, 496106),
(4961, 7, -4026.94, -3377.41, 38.1672, 100, 0, 0, 0),
(4961, 8, -4034.27, -3376.6, 37.9825, 100, 0, 0, 0),
(4961, 9, -4038.45, -3380.05, 37.733, 100, 0, 0, 0),
(4961, 10, -4035.32, -3384.92, 38.9973, 100, 0, 0, 0),
(4961, 11, -4031.56, -3392.97, 38.9974, 2.1293, 1000, 0, 496111),
(4961, 12, -4031.56, -3392.97, 38.9974, 2.1293, 0, 0, 0);

-- Waypoint scripts for Tabetha.
DELETE FROM `creature_movement_scripts` WHERE `id`=496106;
replace into `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496106, 0, 15, 9097, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Cast Spell Summon Demon of the Orb');
replace into `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496106, 0, 25, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Set Run');
DELETE FROM `creature_movement_scripts` WHERE `id`=496111;
replace into `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496111, 0, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Add Quest Giver Flag');
replace into `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496111, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Set Walk');
replace into `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (496111, 0, 20, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing of the Orb of Orahil: Tabetha - Move Idle');

-- Missing weapon used by Demon of the Orb.
replace into `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (6549, 5747, 0, 0);
UPDATE `creature_template` SET `equipment_id`=6549 WHERE `entry`=6549;

UPDATE `item_template` SET `spellid_1`='31726' WHERE `entry` in (51270, 51276, 51275, 51274, 51273, 51272, 51271);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200413213416');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200413213416');
-- Add your query below.


-- update Heeding the Call (5925) to Kal (3602)
UPDATE `creature_questrelation` SET `id` = 3602 WHERE `quest` = 5925;

-- update Heeding the Call (5924) to Theridran (5505)
UPDATE `creature_questrelation` SET `id` = 5505 WHERE `quest` = 5924;

-- update Heeding the Call (5923) to Denatharion (4218)
UPDATE `creature_questrelation` SET `id` = 4218 WHERE `quest` = 5923;

-- update Heeding the Call (5926) to Innkeeper Pala (6746)
UPDATE `creature_questrelation` SET `id` = 6746 WHERE `quest` = 5926;

-- update Heeding the Call (5928) to Gennia Runetotem (3064)
UPDATE `creature_questrelation` SET `id` = 3064 WHERE `quest` = 5928;

-- remove quest Heeding the Call (5927) from Gart Mistrunner  (3060)
DELETE FROM `creature_questrelation` WHERE `quest` = 5927 AND `id` = 3060;

-- remove all incorrect trainers from Torwa Pathfinder (9063)
DELETE FROM `creature_questrelation` WHERE `quest` = 9063 AND `id` NOT IN(3033, 4217, 5505, 12042);

-- add correct progress text for Great Bear Spirit (5929)
UPDATE `quest_template` SET `RequestItemsText` = "Return only when the Great Bear Spirit has released you back unto me.  Your training cannot continue without its blessing." WHERE `entry` = 5929;

-- add correct progress text for Great Bear Spirit (5930)
UPDATE `quest_template` SET `RequestItemsText` = "Return only when the Great Bear Spirit has released you back unto me.  Your training cannot continue without its blessing." WHERE `entry` = 5930;

-- add correct progress text for Trial of the Lake (28)
UPDATE `quest_template` SET `RequestItemsText` = "To complete the Trial of the Lake, you must use the Shrine Bauble within the boundaries of this shrine.  Until you do so, your trial remains unfinished and it is at risk of failure." WHERE `entry` = 28;

-- add correct progress text for Trial of the Lake (29)
UPDATE `quest_template` SET `RequestItemsText` = "To complete the Trial of the Lake, you must use the Shrine Bauble within the boundaries of this shrine.  Until you do so, your trial remains unfinished and it is at risk of failure." WHERE `entry` = 29;

-- add correct progress text for Body and Heart (6002)
UPDATE `quest_template` SET `RequestItemsText` = "When you have faced the challenge that lies before you, your understanding of strength of body and strength of heart will be fully realized.  Until that time, I cannot help you further." WHERE `entry` = 6002;

-- add correct progress text for Body and Heart (6001)
UPDATE `quest_template` SET `RequestItemsText` = "When you have faced the challenge that lies before you, your understanding of strength of body and strength of heart will be fully realized.  Until that time, I cannot help you further." WHERE `entry` = 6001;

-- fix typo for Trial of the Sea Lion (30)
UPDATE `quest_template` SET `OfferRewardText` = "You've completed the Trial of the Sea Lion, $n - congratulations.$B$BEach task in acquiring the pendant shows that both agility and endurance are necessary to act in harmony with what you desire to do underwater. Neither can exist without the other, and both cannot be done without your willingness to embrace the aspect of the sea lion.$b$bRemember these lessons well, and count on them once you have gained your aquatic form." WHERE `entry` = 30;

-- fix typo for Trial of the Sea Lion (272)
UPDATE `quest_template` SET `OfferRewardText` = "You've completed the Trial of the Sea Lion, $n - congratulations.$B$BEach task in acquiring the pendant shows that both agility and endurance are necessary to act in harmony with what you desire to do underwater. Neither can exist without the other, and both cannot be done without your willingness to embrace the aspect of the sea lion.$b$bRemember these lessons well, and count on them once you have gained your aquatic form." WHERE `entry` = 272;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200414202333');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200414202333');
-- Add your query below.


-- update Call of Fire (1523) to Xanis Flameweaver (5906)
UPDATE `creature_questrelation` SET `id` = 5906 WHERE `quest` = 1523;

-- remove all incorrect trainers from Elemental Mastery (8410)
DELETE FROM `creature_questrelation` WHERE `quest` = 8410 AND `id` NOT IN(3032, 13417);

-- add completion text for Stormcaller's Footguards (8621)
UPDATE `quest_template` SET `OfferRewardText` = "You've done well, $n.  You've proven you're no ordinary mortal.$b$bI give you these with the confidence they'll aid you in crushing the vile qiraji." WHERE `entry` = 8621;

-- add completion text for Stormcaller's Diadem (8623)
UPDATE `quest_template` SET `OfferRewardText` = "You've succeeded!  The whispers from the Twin Emperors have ceased.$b$bTake this as a reward.  The mere sight of it will strike fear in the hearts of the Qiraji... it shall remind them of their fallen leaders and of the mortal that slew them." WHERE `entry` = 8623;

-- add completion text for Stormcaller's Hauberk (8622)
UPDATE `quest_template` SET `OfferRewardText` = "I did not expect you to return from your attempt, $n.$b$bYou've fulfilled a destiny greater than that of most immortal beings.$b$bBy slaying C'Thun you've not only saved all of Azeroth, you've also tipped the scales of cosmic events beyond your comprehension.$b$bAccept this breastplate as a symbol of the glory and burden that will come as a consequence of your actions.$b$bMay its power aid you in the challenges that await you, god-slayer!" WHERE `entry` = 8622;

-- add completion text for Stormcaller's Leggings (8624)
UPDATE `quest_template` SET `OfferRewardText` = "Yes... the worm's skin will make for an excellent protective layer.  Combined with the strongest parts from the Qiraji we've destroyed on our way here, this should make for a formidable piece of armor.  May it aid you in facing the unspeakable horrors that await inside!" WHERE `entry` = 8624;

-- add completion text for Call of Air (1532)
UPDATE `quest_template` SET `OfferRewardText` = "For the time being, I shall give you what you need to focus your spells and to call upon the spirits of air. Take this totem, and when you are ready, train with me some more." WHERE `entry` = 1532;

-- remove quest Call of Water (2985) from Swart (3173)
DELETE FROM `creature_questrelation` WHERE `quest` = 2985 AND `id` = 3173;

-- correct template for Earth Sapta (1463) to ensure it enables/disables correctly when Call of Earth (1516) is complete
UPDATE `quest_template` SET `PrevQuestId` = -1517 WHERE `entry` = 1463;

-- correct template for Earth Sapta (1462) to ensure it enables/disables correctly when Call of Earth (1520) is complete
UPDATE `quest_template` SET `PrevQuestId` = -1520 WHERE `entry` = 1462;

-- add missing spells to Haromm (986)
DELETE FROM `npc_trainer` WHERE `entry`=986;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES
(986, 1303, 100, 0, 0, 8, 0, 5875),
(986, 1304, 1800, 0, 0, 16, 0, 5875),
(986, 1305, 3500, 0, 0, 24, 0, 5875),
(986, 1315, 1800, 0, 0, 16, 0, 5875),
(986, 1324, 100, 0, 0, 8, 0, 5875),
(986, 1325, 900, 0, 0, 14, 0, 5875),
(986, 1326, 100, 0, 0, 6, 0, 5875),
(986, 1327, 800, 0, 0, 12, 0, 5875),
(986, 1333, 720, 0, 0, 12, 0, 5875),
(986, 1338, 6000, 0, 0, 28, 0, 5875),
(986, 1339, 8000, 0, 0, 32, 0, 5875),
(986, 1340, 12000, 0, 0, 40, 0, 5875),
(986, 1345, 4000, 0, 0, 26, 0, 5875),
(986, 1352, 7000, 0, 0, 30, 0, 5875),
(986, 1354, 2000, 0, 0, 18, 0, 5875),
(986, 1355, 3500, 0, 0, 24, 0, 5875),
(986, 1356, 8000, 0, 0, 32, 0, 5875),
(986, 1357, 2200, 0, 0, 20, 0, 5875),
(986, 1358, 4000, 0, 0, 26, 0, 5875),
(986, 1363, 8000, 0, 0, 32, 0, 5875),
(986, 1444, 12000, 0, 0, 40, 0, 5875),
(986, 2014, 800, 0, 0, 12, 0, 5875),
(986, 2076, 100, 0, 0, 6, 0, 5875),
(986, 2862, 22000, 0, 0, 48, 0, 5875),
(986, 2863, 30000, 0, 0, 56, 0, 5875),
(986, 2874, 900, 0, 0, 14, 0, 5875),
(986, 5386, 3000, 0, 0, 22, 0, 5875),
(986, 5387, 2200, 0, 0, 20, 0, 5875),
(986, 5678, 4000, 0, 0, 26, 0, 5875),
(986, 5731, 100, 0, 0, 8, 0, 5875),
(986, 6043, 8000, 0, 0, 32, 0, 5875),
(986, 6379, 2200, 0, 0, 20, 0, 5875),
(986, 6380, 7000, 0, 0, 30, 0, 5875),
(986, 6381, 12000, 0, 0, 40, 0, 5875),
(986, 6383, 7000, 0, 0, 30, 0, 5875),
(986, 6384, 12000, 0, 0, 40, 0, 5875),
(986, 6400, 2000, 0, 0, 18, 0, 5875),
(986, 6401, 6000, 0, 0, 28, 0, 5875),
(986, 6402, 11000, 0, 0, 38, 0, 5875),
(986, 6496, 9000, 0, 0, 34, 0, 5875),
(986, 8006, 12000, 0, 0, 40, 0, 5875),
(986, 8007, 2200, 0, 0, 20, 0, 5875),
(986, 8009, 6000, 0, 0, 28, 0, 5875),
(986, 8011, 10000, 0, 0, 36, 0, 5875),
(986, 8013, 7200, 0, 0, 32, 0, 5875),
(986, 8020, 10, 0, 0, 1, 0, 5875),
(986, 8021, 100, 0, 0, 8, 0, 5875),
(986, 8022, 1800, 0, 0, 16, 0, 5875),
(986, 8025, 400, 0, 0, 10, 0, 5875),
(986, 8031, 2000, 0, 0, 18, 0, 5875),
(986, 8032, 4000, 0, 0, 26, 0, 5875),
(986, 8035, 2200, 0, 0, 20, 0, 5875),
(986, 8039, 6000, 0, 0, 28, 0, 5875),
(986, 8043, 100, 0, 0, 4, 0, 5875),
(986, 8047, 100, 0, 0, 8, 0, 5875),
(986, 8048, 900, 0, 0, 14, 0, 5875),
(986, 8049, 3500, 0, 0, 24, 0, 5875),
(986, 8051, 400, 0, 0, 10, 0, 5875),
(986, 8054, 2000, 0, 0, 18, 0, 5875),
(986, 8055, 6000, 0, 0, 28, 0, 5875),
(986, 8057, 2200, 0, 0, 20, 0, 5875),
(986, 8059, 9000, 0, 0, 34, 0, 5875),
(986, 8077, 400, 0, 0, 10, 0, 5875),
(986, 8086, 800, 0, 0, 12, 0, 5875),
(986, 8135, 12000, 0, 0, 40, 0, 5875),
(986, 8144, 2000, 0, 0, 18, 0, 5875),
(986, 8158, 900, 0, 0, 14, 0, 5875),
(986, 8159, 3500, 0, 0, 24, 0, 5875),
(986, 8164, 3500, 0, 0, 24, 0, 5875),
(986, 8165, 11000, 0, 0, 38, 0, 5875),
(986, 8169, 3000, 0, 0, 22, 0, 5875),
(986, 8173, 11000, 0, 0, 38, 0, 5875),
(986, 8180, 7000, 0, 0, 30, 0, 5875),
(986, 8183, 3500, 0, 0, 24, 0, 5875),
(986, 8186, 6000, 0, 0, 28, 0, 5875),
(986, 8189, 4000, 0, 0, 26, 0, 5875),
(986, 8231, 6000, 0, 0, 28, 0, 5875),
(986, 8234, 7000, 0, 0, 30, 0, 5875),
(986, 8237, 12000, 0, 0, 40, 0, 5875),
(986, 8252, 11000, 0, 0, 38, 0, 5875),
(986, 8500, 3000, 0, 0, 22, 0, 5875),
(986, 8501, 8000, 0, 0, 32, 0, 5875),
(986, 8513, 8000, 0, 0, 32, 0, 5875),
(986, 8738, 12000, 0, 0, 40, 0, 5875),
(986, 8837, 16000, 0, 0, 42, 0, 5875),
(986, 10393, 11000, 0, 0, 38, 0, 5875),
(986, 10394, 18000, 0, 0, 44, 0, 5875),
(986, 10397, 22000, 0, 0, 48, 0, 5875),
(986, 10398, 30000, 0, 0, 56, 0, 5875),
(986, 10401, 3500, 0, 0, 24, 0, 5875),
(986, 10402, 9000, 0, 0, 34, 0, 5875),
(986, 10409, 9000, 0, 0, 34, 0, 5875),
(986, 10410, 18000, 0, 0, 44, 0, 5875),
(986, 10411, 29000, 0, 0, 54, 0, 5875),
(986, 10415, 10000, 0, 0, 36, 0, 5875),
(986, 10416, 22000, 0, 0, 48, 0, 5875),
(986, 10417, 34000, 0, 0, 60, 0, 5875),
(986, 10429, 22000, 0, 0, 48, 0, 5875),
(986, 10430, 32000, 0, 0, 58, 0, 5875),
(986, 10433, 22000, 0, 0, 48, 0, 5875),
(986, 10434, 30000, 0, 0, 56, 0, 5875),
(986, 10439, 24000, 0, 0, 50, 0, 5875),
(986, 10440, 34000, 0, 0, 60, 0, 5875),
(986, 10443, 27000, 0, 0, 52, 0, 5875),
(986, 10446, 10000, 0, 0, 36, 0, 5875),
(986, 10449, 12000, 0, 0, 40, 0, 5875),
(986, 10450, 27000, 0, 0, 52, 0, 5875),
(986, 10457, 11000, 0, 0, 38, 0, 5875),
(986, 10464, 24000, 0, 0, 50, 0, 5875),
(986, 10465, 34000, 0, 0, 60, 0, 5875),
(986, 10469, 18000, 0, 0, 44, 0, 5875),
(986, 10470, 27000, 0, 0, 52, 0, 5875),
(986, 10471, 34000, 0, 0, 60, 0, 5875),
(986, 10474, 20000, 0, 0, 46, 0, 5875),
(986, 10475, 32000, 0, 0, 58, 0, 5875),
(986, 10480, 11000, 0, 0, 38, 0, 5875),
(986, 10481, 29000, 0, 0, 54, 0, 5875),
(986, 10488, 24000, 0, 0, 50, 0, 5875),
(986, 10512, 10000, 0, 0, 36, 0, 5875),
(986, 10514, 20000, 0, 0, 46, 0, 5875),
(986, 10515, 30000, 0, 0, 56, 0, 5875),
(986, 10528, 22000, 0, 0, 48, 0, 5875),
(986, 10540, 16000, 0, 0, 42, 0, 5875),
(986, 10541, 32000, 0, 0, 58, 0, 5875),
(986, 10588, 10000, 0, 0, 36, 0, 5875),
(986, 10589, 20000, 0, 0, 46, 0, 5875),
(986, 10590, 30000, 0, 0, 56, 0, 5875),
(986, 10597, 7000, 0, 0, 30, 0, 5875),
(986, 10602, 18000, 0, 0, 44, 0, 5875),
(986, 10603, 34000, 0, 0, 60, 0, 5875),
(986, 10615, 16000, 0, 0, 42, 0, 5875),
(986, 10616, 27000, 0, 0, 52, 0, 5875),
(986, 10624, 20000, 0, 0, 46, 0, 5875),
(986, 10625, 29000, 0, 0, 54, 0, 5875),
(986, 10628, 30000, 0, 0, 56, 0, 5875),
(986, 11316, 16000, 0, 0, 42, 0, 5875),
(986, 11317, 27000, 0, 0, 52, 0, 5875),
(986, 15113, 10000, 0, 0, 36, 0, 5875),
(986, 15115, 20000, 0, 0, 46, 0, 5875),
(986, 15116, 30000, 0, 0, 56, 0, 5875),
(986, 15209, 24000, 0, 0, 50, 0, 5875),
(986, 15210, 30000, 0, 0, 56, 0, 5875),
(986, 16317, 18000, 0, 0, 44, 0, 5875),
(986, 16318, 29000, 0, 0, 54, 0, 5875),
(986, 16347, 20000, 0, 0, 46, 0, 5875),
(986, 16348, 30000, 0, 0, 56, 0, 5875),
(986, 16357, 22000, 0, 0, 48, 0, 5875),
(986, 16358, 32000, 0, 0, 58, 0, 5875),
(986, 16363, 34000, 0, 0, 60, 0, 5875),
(986, 16394, 32000, 0, 0, 58, 0, 5875),
(986, 17362, 4400, 0, 0, 48, 0, 5875),
(986, 17363, 7200, 0, 0, 58, 0, 5875),
(986, 20613, 7000, 0, 0, 30, 0, 5875),
(986, 20778, 3500, 0, 0, 24, 0, 5875),
(986, 20779, 10000, 0, 0, 36, 0, 5875),
(986, 20780, 22000, 0, 0, 48, 0, 5875),
(986, 20781, 34000, 0, 0, 60, 0, 5875),
(986, 25910, 24000, 0, 0, 50, 5086, 5875);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200416183102');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200416183102');
-- Add your query below.


-- Remove entries from custom table.
DELETE FROM `script_texts` WHERE `entry` IN (-1000306, -1000307, -1000308, -1000309, -1000310, -1000311, -1000312, -1000314, -1000315, -1000316, -1000317, -1000318, -1000313, -1000553, -1000554);

-- Add talk emote.
UPDATE `broadcast_text` SET `emote_id1`=1 WHERE `entry` IN (534, 535, 536, 537, 538, 539);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200417073640');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200417073640');
-- Add your query below.


-- Add condition field to vendor tables.
ALTER TABLE `npc_vendor`
	ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `itemflags`;
ALTER TABLE `npc_vendor_template`
	ADD COLUMN `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `itemflags`;

-- Dreadsteed of Xoroth is taken on rewarded.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (7630, 8, 7631, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (7629, 9, 7631, 0, 0, 0, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (7631, -2, 7629, 7630, 0, 0, 0);

-- Assign vendor condition to Xorothian Glyphs, Black Lodestone and J'eevee's Jar.
UPDATE `npc_vendor` SET `condition_id`=7631 WHERE `item` IN (18670, 18629, 18663);

-- Add gossip menu to Gorzeeki Wildeyes.
INSERT INTO `gossip_menu` VALUES (5818, 6991, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (5818, 0, 1, 'Gorzeeki, I wish to make a purchase.', 9586, 3, 4, 0, 0, 0, 0, 0, '', 0, 67);
UPDATE `creature_template` SET `gossip_menu_id`=5818 WHERE `entry`=14437;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200417113246');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200417113246');
-- Add your query below.


-- Add missing aura and fix movement of Corrupt Water Spirit.
UPDATE `creature` SET `wander_distance`=3, `movement_type`=1 WHERE `id`=5897;
UPDATE `creature_template_addon` SET `auras`='8203' WHERE `entry`=5897;

-- Fix gameobject spawns for Call of Water (Part 7).
DELETE FROM `gameobject` WHERE `guid`=27558;
UPDATE `gameobject` SET `position_x`=425.1126, `position_y`=1864.08, `position_z`=9.974041, `orientation`=3.412122, `rotation2`=-0.9908657, `rotation3`=0.1348523 WHERE `guid`=33369;
UPDATE `gameobject` SET `position_x`=419.041, `position_y`=1843.152, `position_z`=11.98904, `orientation`=3.141479, `rotation0`=0.0130887, `rotation1`=0.004362106, `rotation2`=-0.9999046, `rotation3`=0 WHERE `guid`=33417;
UPDATE `gameobject` SET `position_x`=425.0673, `position_y`=1864.188, `position_z`=10.35329, `orientation`=6.265733, `rotation0`=0, `rotation1`=0, `rotation2`=-0.00872612, `rotation3`=0.9999619 WHERE `guid`=35418;

-- Update start script for Call of Water (Part 7).
DELETE FROM `quest_start_scripts` WHERE `id`=100;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (100, 0, 9, 15175, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Call of Water (Part 7): Respawn Water Manifestation Effect');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (100, 0, 68, 5897, 2, 5897, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Call of Water (Part 7): Start Script For All Corrupt Water Spirits');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (100, 15, 10, 5895, 180000, 0, 0, 0, 0, 0, 0, 4, 0, 6, 1, 417.05, 1822.39, 13.007, 0.035, 0, 'Call of Water (Part 7): Summon Minor Manifestation of Water');
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (100, 15, 9, 15176, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Call of Water (Part 7): Respawn Water Manifestation Aura');
DELETE FROM `event_scripts` WHERE `id`=5897;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (5897, 0, 48, 100, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupt Water Spirit - Kill Self');


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200417194325');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200417194325');
-- Add your query below.


-- update Desperate Prayer (5635) to Priestess Josetta (377)
UPDATE `creature_questrelation` SET `id` = 377 WHERE `quest` = 5635;

-- add Desperate Prayer (5637) to Maxan Anvol (1226)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(1226, 5637, 0, 10);

-- add missing quest Desperate Prayer (5640)
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `RequiredRaces`, `QuestFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `RewMoneyMaxLevel`, `RewSpell`, `CompleteEmote`) VALUES
(5640, -262, 10, 10, 16, 5, 8, 5634, "Desperate Prayer", "Praise be to Elune, and to your Light, $n.$b$bAbout this time, many of our order learn abilities reflecting their faith in Elune. If knowledge serves me, I believe the same holds true for your order also.$b$bWhen your business in Darnassus is complete, I would seek out one of your High Priestesses for further training., and may the Light be with you.", "Speak to High Priestess Laurena in Stormwind.", "I'm glad you've arrived, $n. There are many things we will have to discuss, but more importantly is your training in the ways of the Light.$b$bThere are lessons all servants of the Light must learn. If you are ready, we'll begin discussing some of those now.", NULL, 120, 19338, 1);

-- add quest Desperate Prayer (5640) to Priestess Alathea (11401)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(11401, 5640, 0, 10);

-- add involved relation to High Priestess Laurena (376) for quest Desperate Prayer (5640)
INSERT INTO `creature_involvedrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(376 , 5640, 0, 10);

-- add completion text for Desperate Prayer (5635, 5636, 5637, 5638, 5639)
UPDATE `quest_template` SET `OfferRewardText` = "I'm glad you've arrived, $n. There are many things we will have to discuss, but more importantly is your training in the ways of the Light.$b$bThere are lessons all servants of the Light must learn. If you are ready, we'll begin discussing some of those now." WHERE `entry` IN (5635, 5636, 5637, 5638, 5639);

-- update completion text for Arcane Feedback (5677)
UPDATE `quest_template` SET `OfferRewardText` = "Ah, you have wonderful timing, $n. I was beginning to wonder if all of my messengers had been successful. I'm glad to see they were, otherwise I would wager you'd still be out in the world learning more about all the threats that exist against our people.$b$bAre you ready? Ready for more training I mean. You're growing in power more quickly, and I feel you are ready to learn more about our faith." WHERE `entry` = (5677);

-- add missing quest Arcane Feedback (5678)
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `RequiredRaces`, `QuestFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewMoneyMaxLevel`, `RewSpell`, `CompleteEmote`) VALUES
(5678, -262, 20, 20, 16, 1, 8, 5676, "Arcane Feedback", "It is time for you to return to Stormwind, young one. Your superiors there have called you back for more training. And although it disturbs me some, your race and mine are allies and I would not betray that.$b$bI do not mean to be so coy with you--my distrust of arcane magics, be they divine inspired or not, is still strong within me.$b$bYou will know of what I speak after you return to your Cathedral of Light. Speak to High Priestess Laurena when you arrive.", "Speak to High Priestess Laurena in Stormwind.", "Ah, you have wonderful timing, $n. I was beginning to wonder if all of my messengers had been successful. I'm glad to see they were, otherwise I would wager you'd still be out in the world learning more about all the threats that exist against our people.$b$bAre you ready? Ready for more training I mean. You're growing in power more quickly, and I feel you are ready to learn more about our faith.", 240, 19345, 1);

-- add quest Arcane Feedback (5678) to Priestess Alathea (11401)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(11401, 5678, 0, 10);

-- add involved relation to High Priestess Laurena (376) for quest Arcane Feedback (5678)
INSERT INTO `creature_involvedrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(376 , 5678, 0, 10);

-- update Returning Home (5628) to Priestess Josetta (377)
UPDATE `creature_questrelation` SET `id` = 377 WHERE `quest` = 5628;

-- remove all quests from Priestess Josetta (377) except Returning Home (5628), Garments of the Light (5624) and Desperate Prayer (5635)
DELETE FROM `creature_questrelation` WHERE `id` = 377 AND `quest` not in (5624, 5628, 5635);

-- update Returning Home (5629) to Laurna Morninglight (3600)
UPDATE `creature_questrelation` SET `id` = 3600 WHERE `quest` = 5629;

-- add Returning Home (5630) to Maxan Anvol (1226)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(1226, 5630, 0, 10);

-- add Returning Home (5632) to Nara Meideros (11397)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(11397, 5632, 0, 10);

-- update Returning Home (5633) to Braenna Flintcrag (5142)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(5142, 5633, 0, 10);

-- add quest Stars of Elune (5627) to Priestess Alathea (11401)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(11401, 5627, 0, 10);

-- update all Returning Home quests and Stars of Elune (5627) to the same ExclusiveGroup
UPDATE `quest_template` SET `ExclusiveGroup` = 5631 WHERE `entry` IN (5630, 5632, 5633, 5627);

-- update RewSpell for Stars of Elune (5627)
UPDATE `quest_template` SET `RewSpell` = 19350 WHERE `entry` = 5627;

-- add involved relation to Priestess Alathea (11401) for quest Stars of Elune (5627)
INSERT INTO `creature_involvedrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(11401 ,5627, 0, 10);

-- add completion text for Returning Home (5630, 5632, 5633)
UPDATE `quest_template` SET `OfferRewardText` = "Wonderful, you've returned home, $n. It always pleases Tyrande and myself when those we've trained go out into the world and return to us safely. How have things been with you? Does Elune still bless your travels? Perhaps after we speak more about the business at hand, you could tell me more of your travels." WHERE `entry` IN (5630, 5632, 5633);

-- add quest A Lack of Fear (5647) to Priestess Alathea (11401)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(11401, 5647, 0, 10);

-- update A Lack of Fear (5645) to High Priestess Laurena (376)
UPDATE `creature_questrelation` SET `id` = 376 WHERE `quest` = 5645;

-- update completion text for A Lack of Fear (5645)
UPDATE `quest_template` SET `OfferRewardText` = "It is good you've come, $n. Our race is proud and strong, and it is time you learn to not only be so yourself, but to invoke such emotion and confidence in others. You prepared, lad?" WHERE `entry` = 5645;

-- add missing quest A Lack of Fear (5647)
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredClasses`, `RequiredRaces`, `QuestFlags`, `ExclusiveGroup`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewMoneyMaxLevel`, `RewSpell`, `CompleteEmote`) VALUES
(5647, -262, 20, 20, 16, 4, 8, 5641, "A Lack of Fear", "Your race is so very strong, $n. We are proud to call you allies. And as each day's sun sets, you and your kin grow closer to not only finding your true origins, but find great confidence that you are on the right path in so many things. That feeling must make you feel so triumphant.$b$bWord came from Ironforge just recently. It asked that you return there and speak to High Priest Rohan in the Mystic Ward. I would not keep him waiting. May Elune guide your travels.", "Speak to High Priest Rohan in Ironforge.", "You've got the makings of a great $c, $n. Keep up the good work!$b$nYou've already shown you're ready for battle. Perhaps it's time we taught ya a little somethin' more.", 240, 19337, 1);

-- add involved relation to High Priest Rohan (11406) for quest A Lack of Fear (5647)
INSERT INTO `creature_involvedrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(11406 ,5647, 0, 10);

-- update Elune's Grace (5673) to High Priestess Laurena (376)
UPDATE `creature_questrelation` SET `id` = 376 WHERE `quest` = 5673;

-- update Elune's Grace (5675) to High Priest Rohan (11406)
UPDATE `creature_questrelation` SET `id` = 11406 WHERE `quest` = 5675;

-- remove quest Elune's Grace (5674) from  Astarii Starseeker (4090)
DELETE FROM `creature_questrelation` WHERE `quest` = 5674 AND `id` = 4090;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200418172253');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200418172253');
-- Add your query below.


-- add shackle undead 3 to preist trainers
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES
(377, 10956, 46000, 0, 0, 60, 0, 5875),
(3600, 10956, 46000, 0, 0, 60, 0, 5875),
(4090, 10956, 46000, 0, 0, 60, 0, 5875),
(4091, 10956, 46000, 0, 0, 60, 0, 5875),
(4092, 10956, 46000, 0, 0, 60, 0, 5875),
(11401, 10956, 46000, 0, 0, 60, 0, 5875),
(5141, 10956, 46000, 0, 0, 60, 0, 5875),
(5142, 10956, 46000, 0, 0, 60, 0, 5875),
(5143, 10956, 46000, 0, 0, 60, 0, 5875),
(11406, 10956, 46000, 0, 0, 60, 0, 5875),
(376, 10956, 46000, 0, 0, 60, 0, 5875),
(5484, 10956, 46000, 0, 0, 60, 0, 5875),
(5489, 10956, 46000, 0, 0, 60, 0, 5875),
(11397, 10956, 46000, 0, 0, 60, 0, 5875),
(1226, 10956, 46000, 0, 0, 60, 0, 5875);

-- remove starshards (all ranks) and elunes grace (all ranks) from Maxan Anvol (1226)
DELETE FROM `npc_trainer` WHERE `entry` = 1226 AND `spell` IN (19351, 19352, 19353, 19354, 19355, 19356, 19358, 19359, 19360, 19361);

-- add desperate prayer (all ranks) to Maxan Anvol (1226)
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES
(1226, 19339, 500, 0, 0, 18, 0, 5086),
(1226, 19339, 100, 0, 0, 18, 5302, 5875),
(1226, 19340, 1500, 0, 0, 26, 0, 5086),
(1226, 19340, 300, 0, 0, 26, 5302, 5875),
(1226, 19341, 2700, 0, 0, 34, 0, 5086),
(1226, 19341, 600, 0, 0, 34, 5302, 5875),
(1226, 19342, 4950, 0, 0, 42, 0, 5086),
(1226, 19342, 1100, 0, 0, 42, 5302, 5875),
(1226, 19343, 6750, 0, 0, 50, 0, 5086),
(1226, 19343, 1500, 0, 0, 50, 5302, 5875),
(1226, 19344, 9900, 0, 0, 58, 0, 5086),
(1226, 19344, 2200, 0, 0, 58, 5302, 5875);

-- add prayer of spirit (27845) to Theodrus Frostbeard (5141) and High Priest Rohan (11406)
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES
(5141, 27845, 2300, 0, 0, 60, 5302, 5875),
(11406, 27845, 2300, 0, 0, 60, 5302, 5875);

-- add starshards (all ranks) and  elunes grace(all ranks) to Nara Meideros (11397)
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES
(11397, 19351, 450, 0, 0, 18, 0, 5086),
(11397, 19351, 100, 0, 0, 18, 5302, 5875),
(11397, 19352, 1500, 0, 0, 26, 0, 5086),
(11397, 19352, 300, 0, 0, 26, 5302, 5875),
(11397, 19353, 3000, 0, 0, 34, 0, 5086),
(11397, 19353, 600, 0, 0, 34, 5302, 5875),
(11397, 19354, 5500, 0, 0, 42, 0, 5086),
(11397, 19354, 1100, 0, 0, 42, 5302, 5875),
(11397, 19355, 7500, 0, 0, 50, 0, 5086),
(11397, 19355, 1500, 0, 0, 50, 5302, 5875),
(11397, 19356, 47000, 0, 0, 58, 0, 5086),
(11397, 19356, 2200, 0, 0, 58, 5302, 5875),
(11397, 19358, 2500, 0, 0, 30, 0, 5086),
(11397, 19358, 500, 0, 0, 30, 5302, 5875),
(11397, 19359, 4500, 0, 0, 40, 0, 5086),
(11397, 19359, 900, 0, 0, 40, 5302, 5875),
(11397, 19360, 7500, 0, 0, 50, 0, 5086),
(11397, 19360, 1500, 0, 0, 50, 5302, 5875),
(11397, 19361, 11500, 0, 0, 60, 0, 5086),
(11397, 19361, 2070, 0, 0, 60, 5302, 5875);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200419100434');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200419100434');
-- Add your query below.


-- Remove Protector of the People spawns.
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=8096);
DELETE FROM `creature` WHERE `id`=8096;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200419213418');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200419213418');
-- Add your query below.

UPDATE `gameobject_template` SET `name`='Survival Tent (Alliance)' WHERE (`entry`='1000001') AND (`patch`='0');
UPDATE `gameobject_template` SET `name`='Survival Tent (Horde)' WHERE (`entry`='1000236') AND (`patch`='0');
UPDATE `gameobject_template` SET `script_name`='go_survival_tent' WHERE (`entry`='1000236') AND (`patch`='0');

REPLACE INTO `item_template` (`entry`, `patch`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (51434, 0, 0, 0, 'Gnomish Plastic Surgery Tools: Change Faction', 'Type: .faction <the name of the character you want to look like>. It should be a character of the same class.', 7064, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

UPDATE `item_template` SET `name`='Gnomish Plastic Surgery Tools: Change Race' WHERE (`entry`='50002') AND (`patch`='0');
UPDATE `item_template` SET `name`='Gnomish Plastic Surgery Tools: Change Look' WHERE (`entry`='50001') AND (`patch`='0');

UPDATE `item_template` SET `name`='Horde Protector\'s Scroll [DEPRECATED ITEM]' WHERE (`entry`='50057') AND (`patch`='0');
UPDATE `item_template` SET `duration`='30' WHERE (`entry`='50057') AND (`patch`='0');
UPDATE `item_template` SET `script_name`='' WHERE (`entry`='50057') AND (`patch`='0');

replace into item_template (
entry, patch, class, subclass, name,description, display_id, quality, flags, buy_count,
buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level,
required_level, required_skill, required_skill_rank, required_spell, required_honor_rank,
required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable,
container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3,
stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7,
stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10,
delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2,
dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block,
armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1,
spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2,
spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2,
spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3,
spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4,
spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5,
spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material,
start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound,
duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry,
script_name)
values
 ('50056', '0', '4', '0', 'City Protector\'s Medallion', 'Sends you to your capital city. You must become a City Protector to use this item.', '946', '3', '0', '1', '0', '0', '2', '-1', '-1', '60',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '15', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '11593', '0', '0', '0', '3600000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '604800', '0', '0', '0', '0', '0',
 '2', '1', 'item_city_portal');
 
 UPDATE `item_template` SET `spellid_1`='11593' WHERE (`entry`='51021') AND (`patch`='0');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200420094924');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200420094924');
-- Add your query below.


-- Call to Arms gameobjects added in 1.7.
UPDATE `gameobject_template` SET `patch`=5 WHERE `entry` IN (180396, 180397, 180398, 180394, 180400, 180395, 180399);
UPDATE `gameobject` SET `patch_min`=5 WHERE `id` IN (180396, 180397, 180398, 180394, 180400, 180395, 180399);

-- Display id of PVP HOLIDAY HORDE CTF changed in 1.11.
DELETE FROM `gameobject_template` WHERE `entry`=180394;
INSERT INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (180394, 5, 5, 2552, 'PVP HOLIDAY HORDE CTF', 1375, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (180394, 9, 5, 6707, 'PVP HOLIDAY HORDE CTF', 1375, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- GameObjects added in patch 1.5
UPDATE `gameobject_template` SET `patch`=3 WHERE `entry` IN (180101, 180102, 178925, 178927, 178929, 178932, 178935, 178936, 178940, 178943, 178944, 178945, 178946, 178947, 178948, 178955, 178956, 178957, 178958, 179044, 179064, 179424, 179425, 179435, 179436, 179439, 179440, 179441, 179442, 179443, 179444, 179445, 179446, 179449, 179450, 179453, 179454, 179458, 179945);
UPDATE `gameobject` SET `patch_min`=3 WHERE `patch_min` < 3 && `id` IN (180101, 180102, 178925, 178927, 178929, 178932, 178935, 178936, 178940, 178943, 178944, 178945, 178946, 178947, 178948, 178955, 178956, 178957, 178958, 179044, 179064, 179424, 179425, 179435, 179436, 179439, 179440, 179441, 179442, 179443, 179444, 179445, 179446, 179449, 179450, 179453, 179454, 179458, 179945);
-- GameObjects only found inside AV.
UPDATE `gameobject_template` SET `patch`=3 WHERE `entry` IN (3832, 3833, 3834, 3835, 3836, 3837, 3838, 29784, 177261, 177262, 177263, 177292, 177293, 177405, 177406, 177408, 177409, 177410, 177411, 177412, 177413, 178646, 178684, 178685, 179066, 179384, 179385, 179386, 179387, 179388, 179389, 179390, 179391, 179392, 179393, 179394, 179395, 179396, 179397, 179419, 179437, 179438, 180422, 180423, 180424, 300039, 300040, 300041, 300045, 300046, 300047);
UPDATE `gameobject` SET `patch_min`=3 WHERE `patch_min` < 3 && `id` IN (3832, 3833, 3834, 3835, 3836, 3837, 3838, 29784, 177261, 177262, 177263, 177292, 177293, 177405, 177406, 177408, 177409, 177410, 177411, 177412, 177413, 178646, 178684, 178685, 179066, 179384, 179385, 179386, 179387, 179388, 179389, 179390, 179391, 179392, 179393, 179394, 179395, 179396, 179397, 179419, 179437, 179438, 180422, 180423, 180424, 300039, 300040, 300041, 300045, 300046, 300047);
UPDATE `gameobject` SET `patch_min`=3 WHERE `map`=30 && `patch_min` < 3;
UPDATE `pool_template` SET `patch_min`=3 WHERE `entry` IN (1334, 1335);
UPDATE `pool_gameobject` SET `patch_min`=3 WHERE `pool_entry` IN (1334, 1335);
-- GameObjects only found inside WSG.
UPDATE `gameobject_template` SET `patch`=3 WHERE `entry` IN (179917, 179918, 179919, 179920, 179921);
UPDATE `gameobject` SET `patch_min`=3 WHERE `patch_min` < 3 && `id` IN (179917, 179918, 179919, 179920, 179921);
UPDATE `gameobject` SET `patch_min`=3 WHERE `map`=489 && `patch_min` < 3;
-- GameObjects only found inside AB.
UPDATE `gameobject_template` SET `patch`=5 WHERE `entry` IN (180218, 180220, 180223, 180226, 180227);
UPDATE `gameobject` SET `patch_min`=5 WHERE `id` IN (180218, 180220, 180223, 180226, 180227);
UPDATE `gameobject` SET `patch_min`=5 WHERE `map`=529 && `patch_min` < 5;
-- GameObjects only found in Dire Maul.
UPDATE `gameobject_template` SET `patch`=1 WHERE `entry` IN (176907, 177211, 177217, 177219, 177220, 177257, 177258, 177259, 179485, 179502, 179503, 179504, 179505, 179506, 179511, 179517, 179544, 179549, 179564, 300050, 300051, 300400, 300401, 300402, 300403, 300404, 300405, 300601);
-- GameObjects only found in Blackwing Lair.
UPDATE `gameobject_template` SET `patch`=4 WHERE `entry` IN (176964, 176965, 176966, 177808, 179115, 179116, 179117, 179148, 179364, 179365, 200000, 300500);
-- GameObjects only found in AQ Temple.
UPDATE `gameobject_template` SET `patch`=7 WHERE `entry` IN (180634, 180635, 180636, 180690, 180745);
-- GameObjects whose display id was added in patch 1.3.
UPDATE `gameobject_template` SET `patch`=1 WHERE `entry` IN (179147, 181099, 182535, 182536);
UPDATE `gameobject` SET `patch_min`=1 WHERE `patch_min` < 1 && `id` IN (179147, 181099, 182535, 182536);
UPDATE `gameobject_loot_template` SET `patch_min`=1 WHERE `patch_min` < 1 && `entry` IN (16464, 16465, 16466, 16467, 16577, 42901, 42902, 42903, 42904, 42905, 42906);

-- TBC gameobjects.
DELETE FROM `gameobject_template` WHERE `entry` IN (185222, 181447, 184450);

-- Nefarian's throne was added in 1.6.
UPDATE `gameobject_template` SET `patch`=4 WHERE `entry`=179118;
UPDATE `gameobject` SET `patch_min`=4 WHERE `id`=179118;

-- Alliance Banner Aura, Large display id changed in 1.9.
DELETE FROM `gameobject_template` WHERE `entry`=180421;
INSERT INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (180421, 3, 6, 2232, 'Alliance Banner Aura, Large', 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (180421, 7, 6, 6492, 'Alliance Banner Aura, Large', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `gameobject` SET `patch_min`=3 WHERE `id`=180421;

-- Snowfall Banner display id changed in 1.6. Original unknown. Picked unused banner display id.
DELETE FROM `gameobject_template` WHERE `entry`=180418;
INSERT INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (180418, 3, 1, 5211, 'Snowfall Banner', 0, 0, 1, 0, 1479, 196608, 180102, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (180418, 4, 1, 6211, 'Snowfall Banner', 0, 0, 1, 0, 1479, 196608, 180102, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `gameobject` SET `patch_min`=3 WHERE `id`=180418;

/*
 World of Warcraft Client Patch 1.3.0 (2005-03-22)
 - A number of areas in the world now have footlockers in them.  
   These areas are in place for rogues to visit to increase their 
   lockpicking skills. The contents of these footlockers are only token 
   amounts of treasure, but they should allow for a more interesting 
   experience while increasing lockpicking skill. The difficulty of the 
   locks in the area correspond to the level of the zone, so if your 
   lockpicking skill is around 100, you would go to Durnholde Keep in 
   Hillsbrad. But if your skill is 250, you might head to Tyrs Hand in 
   Eastern Plaguelands.
*/
UPDATE `gameobject_template` SET `patch`=1 WHERE `entry` IN (179486, 179487, 179488, 179489, 179490, 179491, 179492, 179493, 179494, 179496, 179497, 179498);
UPDATE `gameobject` SET `patch_min`=1 WHERE `patch_min`=0 && id IN (179486, 179487, 179488, 179489, 179490, 179491, 179492, 179493, 179494, 179496, 179497, 179498);

-- This is a Dire Maul quest, and thus added in 1.3.
UPDATE `quest_template` SET `patch`=1 WHERE `entry`=1193;
UPDATE `gameobject_questrelation` SET `patch_min`=1 WHERE `quest`=1193;
UPDATE `gameobject_involvedrelation` SET `patch_min`=1 WHERE `quest`=1193;

-- Correct patch and old display id of Derotain Mudsipper.
DELETE FROM `creature_template` WHERE `entry`=14567;
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (14567, 2, 9969, 0, 0, 0, 'Derotain Mudsipper', 'The Thorium Brotherhood', 0, 52, 52, 3200, 3200, 0, 0, 2669, 35, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 87, 113, 0, 234, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 68.1824, 93.7508, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 14567, 0, 0, 0, 0, 2, '');
INSERT INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (14567, 3, 14668, 0, 0, 0, 'Derotain Mudsipper', 'The Thorium Brotherhood', 0, 52, 52, 3200, 3200, 0, 0, 2669, 1475, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 87, 113, 0, 234, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 68.1824, 93.7508, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 14567, 0, 0, 0, 0, 2, '');
UPDATE `creature_equip_template` SET `patch`=2 WHERE `entry`=14567;
UPDATE `creature` SET `patch_min`=2 WHERE `id`=14567;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200420110232');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200420110232');
-- Add your query below.


-- Add spell chain ranks for Faerie Fire (Bear).
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`, `build_min`, `build_max`) VALUES (16855, 0, 16855, 1, 0, 0, 4695);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`, `build_min`, `build_max`) VALUES (17387, 16855, 16855, 2, 0, 0, 4695);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`, `build_min`, `build_max`) VALUES (17388, 17387, 16855, 3, 0, 0, 4695);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`, `build_min`, `build_max`) VALUES (17389, 17388, 16855, 4, 0, 0, 4695);

-- Faerie Fire (Bear) Rank 2
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 3061, 1500, 0, 0, 30, 0, 4695),
(3034, 3061, 1500, 0, 0, 30, 0, 4695),
(3036, 3061, 1500, 0, 0, 30, 0, 4695),
(3064, 3061, 1500, 0, 0, 30, 0, 4695),
(3602, 3061, 1500, 0, 0, 30, 0, 4695),
(4217, 3061, 1500, 0, 0, 30, 0, 4695),
(4218, 3061, 1500, 0, 0, 30, 0, 4695),
(4219, 3061, 1500, 0, 0, 30, 0, 4695),
(5504, 3061, 1500, 0, 0, 30, 0, 4695),
(5505, 3061, 1500, 0, 0, 30, 0, 4695),
(5506, 3061, 1500, 0, 0, 30, 0, 4695),
(8142, 3061, 1500, 0, 0, 30, 0, 4695),
(9465, 3061, 1500, 0, 0, 30, 0, 4695),
(12042, 3061, 1500, 0, 0, 30, 0, 4695);

-- Faerie Fire (Bear) Rank 3
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 17394, 4000, 0, 0, 42, 0, 4695),
(3034, 17394, 4000, 0, 0, 42, 0, 4695),
(3036, 17394, 4000, 0, 0, 42, 0, 4695),
(3064, 17394, 4000, 0, 0, 42, 0, 4695),
(3602, 17394, 4000, 0, 0, 42, 0, 4695),
(4217, 17394, 4000, 0, 0, 42, 0, 4695),
(4218, 17394, 4000, 0, 0, 42, 0, 4695),
(4219, 17394, 4000, 0, 0, 42, 0, 4695),
(5504, 17394, 4000, 0, 0, 42, 0, 4695),
(5505, 17394, 4000, 0, 0, 42, 0, 4695),
(5506, 17394, 4000, 0, 0, 42, 0, 4695),
(8142, 17394, 4000, 0, 0, 42, 0, 4695),
(9465, 17394, 4000, 0, 0, 42, 0, 4695),
(12042, 17394, 4000, 0, 0, 42, 0, 4695);

-- Faerie Fire (Bear) Rank 4
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 17395, 7000, 0, 0, 54, 0, 4695),
(3034, 17395, 7000, 0, 0, 54, 0, 4695),
(3036, 17395, 7000, 0, 0, 54, 0, 4695),
(3064, 17395, 7000, 0, 0, 54, 0, 4695),
(3602, 17395, 7000, 0, 0, 54, 0, 4695),
(4217, 17395, 7000, 0, 0, 54, 0, 4695),
(4218, 17395, 7000, 0, 0, 54, 0, 4695),
(4219, 17395, 7000, 0, 0, 54, 0, 4695),
(5504, 17395, 7000, 0, 0, 54, 0, 4695),
(5505, 17395, 7000, 0, 0, 54, 0, 4695),
(5506, 17395, 7000, 0, 0, 54, 0, 4695),
(8142, 17395, 7000, 0, 0, 54, 0, 4695),
(9465, 17395, 7000, 0, 0, 54, 0, 4695),
(12042, 17395, 7000, 0, 0, 54, 0, 4695);

-- Training cost changes for spell 3739.
DELETE FROM `npc_trainer` WHERE `spell`=3739;
-- Faerie Fire (Cat) Rank 2
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 3739, 1500, 0, 0, 30, 0, 4695),
(3034, 3739, 1500, 0, 0, 30, 0, 4695),
(3036, 3739, 1500, 0, 0, 30, 0, 4695),
(3064, 3739, 1500, 0, 0, 30, 0, 4695),
(3602, 3739, 1500, 0, 0, 30, 0, 4695),
(4217, 3739, 1500, 0, 0, 30, 0, 4695),
(4218, 3739, 1500, 0, 0, 30, 0, 4695),
(4219, 3739, 1500, 0, 0, 30, 0, 4695),
(5504, 3739, 1500, 0, 0, 30, 0, 4695),
(5505, 3739, 1500, 0, 0, 30, 0, 4695),
(5506, 3739, 1500, 0, 0, 30, 0, 4695),
(8142, 3739, 1500, 0, 0, 30, 0, 4695),
(9465, 3739, 1500, 0, 0, 30, 0, 4695),
(12042, 3739, 1500, 0, 0, 30, 0, 4695);
-- Faerie Fire (Feral) Rank 2
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 3739, 300, 0, 0, 30, 4878, 5875),
(3034, 3739, 300, 0, 0, 30, 4878, 5875),
(3036, 3739, 300, 0, 0, 30, 4878, 5875),
(3064, 3739, 300, 0, 0, 30, 4878, 5875),
(3602, 3739, 300, 0, 0, 30, 4878, 5875),
(4217, 3739, 300, 0, 0, 30, 4878, 5875),
(4218, 3739, 300, 0, 0, 30, 4878, 5875),
(4219, 3739, 300, 0, 0, 30, 4878, 5875),
(5504, 3739, 300, 0, 0, 30, 4878, 5875),
(5505, 3739, 300, 0, 0, 30, 4878, 5875),
(5506, 3739, 300, 0, 0, 30, 4878, 5875),
(8142, 3739, 300, 0, 0, 30, 4878, 5875),
(9465, 3739, 300, 0, 0, 30, 4878, 5875),
(12042, 3739, 300, 0, 0, 30, 4878, 5875);

-- Training cost changes for spell 17396.
DELETE FROM `npc_trainer` WHERE `spell`=17396;
-- Faerie Fire (Cat) Rank 3
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 17396, 4000, 0, 0, 42, 0, 4695),
(3034, 17396, 4000, 0, 0, 42, 0, 4695),
(3036, 17396, 4000, 0, 0, 42, 0, 4695),
(3064, 17396, 4000, 0, 0, 42, 0, 4695),
(3602, 17396, 4000, 0, 0, 42, 0, 4695),
(4217, 17396, 4000, 0, 0, 42, 0, 4695),
(4218, 17396, 4000, 0, 0, 42, 0, 4695),
(4219, 17396, 4000, 0, 0, 42, 0, 4695),
(5504, 17396, 4000, 0, 0, 42, 0, 4695),
(5505, 17396, 4000, 0, 0, 42, 0, 4695),
(5506, 17396, 4000, 0, 0, 42, 0, 4695),
(8142, 17396, 4000, 0, 0, 42, 0, 4695),
(9465, 17396, 4000, 0, 0, 42, 0, 4695),
(12042, 17396, 4000, 0, 0, 42, 0, 4695);
-- Faerie Fire (Feral) Rank 3
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 17396, 800, 0, 0, 42, 4878, 5875),
(3034, 17396, 800, 0, 0, 42, 4878, 5875),
(3036, 17396, 800, 0, 0, 42, 4878, 5875),
(3064, 17396, 800, 0, 0, 42, 4878, 5875),
(3602, 17396, 800, 0, 0, 42, 4878, 5875),
(4217, 17396, 800, 0, 0, 42, 4878, 5875),
(4218, 17396, 800, 0, 0, 42, 4878, 5875),
(4219, 17396, 800, 0, 0, 42, 4878, 5875),
(5504, 17396, 800, 0, 0, 42, 4878, 5875),
(5505, 17396, 800, 0, 0, 42, 4878, 5875),
(5506, 17396, 800, 0, 0, 42, 4878, 5875),
(8142, 17396, 800, 0, 0, 42, 4878, 5875),
(9465, 17396, 800, 0, 0, 42, 4878, 5875),
(12042, 17396, 800, 0, 0, 42, 4878, 5875);

-- Training cost changes for spell 17397.
DELETE FROM `npc_trainer` WHERE `spell`=17397;
-- Faerie Fire (Cat) Rank 4
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 17397, 7000, 0, 0, 54, 0, 4695),
(3034, 17397, 7000, 0, 0, 54, 0, 4695),
(3036, 17397, 7000, 0, 0, 54, 0, 4695),
(3064, 17397, 7000, 0, 0, 54, 0, 4695),
(3602, 17397, 7000, 0, 0, 54, 0, 4695),
(4217, 17397, 7000, 0, 0, 54, 0, 4695),
(4218, 17397, 7000, 0, 0, 54, 0, 4695),
(4219, 17397, 7000, 0, 0, 54, 0, 4695),
(5504, 17397, 7000, 0, 0, 54, 0, 4695),
(5505, 17397, 7000, 0, 0, 54, 0, 4695),
(5506, 17397, 7000, 0, 0, 54, 0, 4695),
(8142, 17397, 7000, 0, 0, 54, 0, 4695),
(9465, 17397, 7000, 0, 0, 54, 0, 4695),
(12042, 17397, 7000, 0, 0, 54, 0, 4695);
-- Faerie Fire (Feral) Rank 4
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES 
(3033, 17397, 1400, 0, 0, 54, 4878, 5875),
(3034, 17397, 1400, 0, 0, 54, 4878, 5875),
(3036, 17397, 1400, 0, 0, 54, 4878, 5875),
(3064, 17397, 1400, 0, 0, 54, 4878, 5875),
(3602, 17397, 1400, 0, 0, 54, 4878, 5875),
(4217, 17397, 1400, 0, 0, 54, 4878, 5875),
(4218, 17397, 1400, 0, 0, 54, 4878, 5875),
(4219, 17397, 1400, 0, 0, 54, 4878, 5875),
(5504, 17397, 1400, 0, 0, 54, 4878, 5875),
(5505, 17397, 1400, 0, 0, 54, 4878, 5875),
(5506, 17397, 1400, 0, 0, 54, 4878, 5875),
(8142, 17397, 1400, 0, 0, 54, 4878, 5875),
(9465, 17397, 1400, 0, 0, 54, 4878, 5875),
(12042, 17397, 1400, 0, 0, 54, 4878, 5875);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200420124228');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200420124228');
-- Add your query below.


-- Events list for Ribbly Screwspigot.
DELETE FROM `creature_ai_events` WHERE `creature_id`=9543;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (954301, 9543, 0, 2, 0, 100, 0, 30, 1, 0, 0, 954301, 0, 0, 'Ribbly Screwspigot - Flee at 30% HP');
DELETE FROM `creature_ai_scripts` WHERE `id`=954301;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (954301, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - Flee');
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (95430, 'Blackrock Depths - Ribbly Screwspigot', 9080, 100, 1, 0, 0, 0, 5, 14, 5, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Have Quest Ribbly Screwsigot.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4136, 9, 4136, 1, 0, 0, 0);
-- Not Have Quest Ribbly Screwsigot.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4137, -3, 4136, 0, 0, 0, 0);

-- Gossip for Ribbly Screwspigot.
INSERT INTO `gossip_menu` VALUES (1970, 2643, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1970, 0, 0, 'Your family says hello, Ribbly.  And they want your head!', 4971, 1, 1, -1, 0, 197000, 0, 0, '', 0, 4136);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (1970, 1, 0, 'You\'re good for nothing, Ribbly. It\'s time to pay for your wickedness!.', 4972, 1, 1, -1, 0, 197000, 0, 0, NULL, 0, 4137);
DELETE FROM `gossip_scripts` WHERE `id`=197000;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (197000, 0, 22, 14, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - Set Faction');
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (197000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4973, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - Say Text');
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (197000, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - Start Attack');
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (197000, 0, 37, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Screwspigot - Set Instance Data');
UPDATE `creature_template` SET `gossip_menu_id`=1970, `spell_list_id`=95430, `ai_name`='EventAI', `script_name`='' WHERE `entry`=9543;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200420163953');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200420163953');
-- Add your query below.


-- add quest Chillwind Point (5149) to Brandur Ironhammer (5149)
INSERT INTO `creature_questrelation` (`id`, `quest`, `patch_min`, `patch_max`) VALUES
(5149, 8415, 6, 10);

-- update completion text for The Tome of Nobility (1661)
UPDATE `quest_template` SET `OfferRewardText` = "Congratulations, and may the Light protect you." WHERE `entry` = 1661;

-- update The Tome of Valor (1794) to Tiza Battleforge (6179)
UPDATE `creature_questrelation` SET `id` = 6179 WHERE `quest` = 1794;

-- update involved relation to Tiza Battleforge (6179) for The Tome of Valor (1794)
UPDATE `creature_involvedrelation` SET `id` = 6179 WHERE `quest` = 1794;

-- add completion text for Tome of Valor (1794)
UPDATE `quest_template` SET `OfferRewardText` = "It has been proven that the Light is with you, $n, but as times grow more dangerous, it becomes important to know what strength lies beneath the flesh. When demons, dragons, or any other evil set foot in your lands, your mettle will be tested. Will you be strong enough?$b$bBravery, regardless of the situation, is as much a part of paladinhood as the Light, your armor, and your weapon. Protecting the weak, and not losing faith are two more lessons you must master while you study in the Cathedral of Light." WHERE `entry` = 1794;

-- add completion text for The Tome of Nobility (4485)
UPDATE `quest_template` SET `OfferRewardText` = "Ah, you've returned to the Cathedral, $n. Good. A lot has happened recently, and I would seek your aid if you prove worthy.$b$bMany treacherous enemies are about. I will need your help to stop them." WHERE `entry` IN (4485, 4486);

-- add completion text for The Test of Righteousness (1653)
UPDATE `quest_template` SET `OfferRewardText` = "Good day, $n. The Light is with you, I trust?$b$bWhat's that? You were sent by Duthorian!? My wife, how is she? I knew there was going to be trouble if I left. Please tell me she's... oh, thank goodness. I'm so glad that she's safe. The Defias were a threat long before these attacks, but now the King's advisors cannot deny it.$b$bWhat else did Duthorian have to say?$b$bYou're the one that was sent to protect my wife? Then I thank you again, $n. I couldn't think of a better test of valor than that." WHERE `entry` = 1653;

-- add The Tome of Nobility (1661) to exclusive group (4485)
UPDATE `quest_template` SET `ExclusiveGroup` = 4485 WHERE `entry` = 1661;

-- add progress text for The Tome of Valor (1651)
UPDATE `quest_template` SET `RequestItemsText` = "We'll make our stand at the house!" WHERE `entry` = 1651;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200422192535');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200422192535');
-- Add your query below.

REPLACE INTO `page_text` (`entry`, `text`) VALUES (692, 'You led a quiet life of love and good deeds.   You gave to the poor, cured the sick, and comforted the dying.   You waited with joyful certain, secure in the belief that you would be granted an afterlife of everlasting peace.$B$BYou were betrayed.$B$BI cannot offer you comfort.   Revenge, on the other hand, is well within my power.   Come to the old church in Deathknell, and I will teach you how to inflict deadly damage through the very faith you were taught.$B$B   -Dark Cleric Duesten, Priest Trainer.');
REPLACE INTO `page_text` (`entry`, `text`) VALUES (693, 'Revel in your new state of undeath, and wield your powers to cleanse the world of those who would see us eradicated.   Although our enemies are legion, we will destroy them with flame and shadow.$B$BWhen you are ready for me to teach you the ways of darkness and summoning you will find me in the old Deathknell church.$B$B   -Maximillion, Warlock Trainer.');
REPLACE INTO `page_text` (`entry`, `text`) VALUES (694, 'Get your bones up and out of that crypt; there''s work to be done!   The Scarlet Crusade moves swiftly against our people, and other humans kill us whenever they can.   We have need of your sword.$B$BWhen you want to learn more of weapons, come find me in the ruined tavern in Deathknell.   I will teach you.$B$B   -Dannal Stern, Warrior Trainer.');
REPLACE INTO `page_text` (`entry`, `text`) VALUES (695, 'Don''t get all weepy about being undead and losing your family and all that rot.   You live, and that''s what matters.   Even though you are now undead, possession is still nine tenths of the law.   Sneak past your enemies, or kill them and take what they had.$B$BI can teach you what you need to know about deadly strikes and stealth.   Come look for me in the ruined tavern in Deathknell.$B$B   -David Trias, Rogue Trainer.');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200422203517');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200422203517');
-- Add your query below.

-- Required quest for 3981 must be 3906, not 3907. https://classic.wowhead.com/quest=3981/
UPDATE `quest_template` SET `PrevQuestId` = 3906 WHERE `entry` = 3981;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200423010021');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200423010021');
-- Add your query below.

replace into creature_template (
entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max,
health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range,
call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier,
base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell,
trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id,
pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1,
spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type,
inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask,
school_immune_mask, flags_extra, script_name)
values
('51500', '0', '3374', '0', '0', '0', 'Teller Plushner', 'Guild Vault Administrator', '0', '60', '60',
'5000', '6000', '0', '0', '300', '31', '1', '1', '1.14286', '1', '20',
'5', '0', '0', '1', '0', '0', '0', '0', '1',
'0', '0', '1', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '', '0',
'3', '0', '0', '1', '0', '0', '0', '0',
'0', '0', 'npc_guild_bank');

replace into broadcast_text (ID, MaleText) values ('90340', 'The Guild Vault is a storage space available for your guild members only.');
replace into npc_text (ID, BroadcastTextID0) values ('90340', '90340');

replace into creature_template (
entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max,
health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range,
call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier,
base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell,
trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id,
pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1,
spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type,
inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask,
school_immune_mask, flags_extra, script_name)
values
('51501', '0', '3374', '0', '0', '0', 'Guild Vault', 'Turtle WoW Staff', '0', '60', '60',
'5000', '6000', '0', '0', '300', '35', '5', '1', '1.14286', '1', '20',
'5', '0', '0', '1', '0', '0', '0', '0', '1',
'0', '0', '1', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '', '0',
'3', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '');

delete from npc_vendor where entry = 51501;		
replace into npc_vendor (entry, item) values 
(51501, 11023),
(51501, 9312),
(51501, 9313),
(51501, 9318),
(51501, 9314),
(51501, 21738),
(51501, 21593),
(51501, 21595),
(51501, 21592),
(51501, 21719),
(51501, 21720),
(51501, 21717),
(51501, 21590),
(51501, 21718),
(51501, 21714),
(51501, 21716),
(51501, 21589);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200423162411');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200423162411');
-- Add your query below.


-- Fix equipment for two npcs in Stormwind.
DELETE FROM `creature_addon` WHERE `guid`=79776;
DELETE FROM `creature_addon` WHERE `guid`=79750;
UPDATE `creature` SET `movement_type`=0 WHERE `guid`=79750;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
