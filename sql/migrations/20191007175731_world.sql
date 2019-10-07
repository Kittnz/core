replace into migrations values (20191007175731);

-- Fix Race Agains Time quest:

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, MaxLevel, QuestLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, RewMailMoney, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) values 
(50316, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'Race Against Time!', 'Hahahah! Did you see their faces?! Simply outstanding job, my friend!\n\nNow now, no need to be shy, you did explicitly well and I\'m sure you\'ll be able to do even better with race against time!\n\nPretty simple task. You hop in, press the accelerator and fly away to beat the best lap!\n\nGiven you don\'t hit any sheep, lost your track or stopped whatsoever you\'ll be able to win!\n\nPrize? Of course, there are some prizes, of course. Worry not.', 'Finish the Race with best time and come back to Daisy at Shimmering Flats to collect your reward.', 'Pretty simple task. You hop in, press the accelerator and fly away to beat the best lap!', 'Well done, my friend! Be sure to come back when you\'re ready to repeat!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51004, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
update quest_template set limittime = 107 where entry = 50316;
update quest_template set questflags = 1 where entry = 50316;
update quest_template set specialflags = 3 where entry = 50316;
update quest_template set rewitemid1 = 51009 where entry = 50316;

update quest_template set zoneorsort = 2240 where entry = 50316;
update creature_template set npc_flags = 3 where entry = 4507;
update quest_template set nextquestinchain = 0 where entry in (50311, 50313);

-- Goblin Car Controller Spells: 50529

update creature_template set

spell_id1 = 15283, -- Normal Stun
spell_id2 = 22863, -- Speed Bonus
spell_id3 = 1953, -- Blink + Unstun
spell_id4 = 4079  -- Invisibility

where entry = 50531;

-- Gnome Car Controller Spells: 50531

update creature_template set

spell_id1 = 15283, -- Normal Stun
spell_id2 = 22863, -- Speed Bonus
spell_id3 = 1953, -- Blink + Unstun
spell_id4 = 13234 -- Harm Prevention Belt

where entry = 50529;

delete from spell_effect_mod where id = 454;
replace into spell_effect_mod (Id, EffectIndex, Effect, EffectDieSides, EffectBaseDice, EffectDicePerLevel, EffectRealPointsPerLevel, EffectBasePoints, EffectAmplitude, EffectPointsPerComboPoint, EffectChainTarget, EffectMultipleValue, EffectMechanic, EffectImplicitTargetA, EffectImplicitTargetB, EffectRadiusIndex, EffectApplyAuraName, EffectItemType, EffectMiscValue, EffectTriggerSpell) values
('454', '0', '-1', '-1', '-1', '-1', '-1', '50', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1');