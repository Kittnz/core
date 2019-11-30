replace into migrations values (20191130021621);

-- 10878

-- 13609 lantern
-- 2715  lantern

update creature_template set level_min = 30, level_max = 40 where entry between 50638 and 50653;
update creature_template set health_min = 1500, health_max = 3000 where entry between 50638 and 50653;

-- More Winter Veil Vale Citizens:

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES 

(50660, 6, 10878, 0, 0, 0, 'Lantaria Woodshadow', 'Cenarion Circle', 0, 30, 40, 2000, 3000, 0, 0, 7, 35, 0, 1.2, 1.14286, 1, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524288, '');

REPLACE INTO `creature_equip_template` (`entry`, `patch`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (50660, 0, 13609, 0, 0);
update creature_template set equipment_id = 50660 where entry =50660 ;
update creature_template set faction = 35 where entry = 50660;
update creature_template set npc_flags = 2 where entry = 50660;

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
 ('50318', '0', '2', '0', '1', '60', '60', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', 'Bracing The Inevitable', 'While it\'s great we all gather around finely decorated pine here there is a serious trouble coming up for all the wild creatures out there. As you know, the whole ecosystem we live within might be easily corrupted with some species out of the scene to do their part of work everyone is trying to uphold.$B$BI\'m talking about moonkins. If you\'re still uninformed then it\'s crucial we have them saved. What do you mean \"how\"?!? Young moonkins will be freezing to death this winter if we don\'t do someth... I know!$B$BBring them our festive Egg Nog to make\'em warm. Hugs will also do but you bring them Egg Nog in the first place! Where you get it? Well, I\'m sure there\'s a recipe we had somewhere nearby…', 'Bring festive Egg Nog to 15 moonkins to make them warm.', 'Well done! Now it\'s safe to say that we will endure!$B$BEat this, Greatfather Winter!', 'Did you bring Egg Nog to moonkins yet?', '', '', '',
'', '', '51248', '0', '0', '0', '15', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51060', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', '609', '0', '0', '0', '0',
'200', '0', '2970', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '1', '4', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max)
      values
      ('50660','50318','10','10');
	  
	  replace into creature_involvedrelation (id, quest, patch_min, patch_max)
      values
      ('50660','50318','10','10');