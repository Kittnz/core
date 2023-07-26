-- New quest to slay the enemy mini boss in Sunnyglade.
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (40820, 2, 5023, 51, 0, 60, 41, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 'Strategic Strike', 'As much as I enjoy watching you grunts throw yourself into the meat grinder, this won\'t win us the battle. If we are to conquer these lands, we must decapitate their leadership. Gather the other grunts, and find Lady Katrin, the humans\' battlefield strategist. Once their command structure crumbles, their footmen will be easy pickings for our warriors.', 'Search the battlefield for Lady Katrin and slay her.', 'You have proven yourself a worthy warrior, $N. Well done.', 'Waste no time. We must strike at once!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61211, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50245, 0, 0, 0, 1, 0, 0, 0, 76, 0, 0, 0, 0, 100, 0, 0, 0, 0, 4400, 14000, 2640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (40821, 2, 5023, 51, 0, 60, 41, 0, 589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 'Strategic Strike', 'Listen up, soldiers! Our scouts have identified one of the orcs\' battlefield leaders. He is an extraordinarily bloodthirsty and cunning blademaster by the name of Axun. Take a company of men, and search for him. The sooner we eliminate this menace, the better our chances of holding the line. We must not let these savages advance further into human lands.', 'Search the battlefield for Blademaster Axun and slay him.', 'Well done! I was starting to think no one would take down that monster!', 'Clear your head of impure thoughts, $C. We must trust the light to guide us to victory.', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61210, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50246, 0, 0, 0, 1, 0, 0, 0, 72, 0, 0, 0, 0, 100, 0, 0, 0, 0, 4400, 14000, 2640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (61211, 40821);
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (61210, 40820);
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (61211, 40821);
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (61210, 40820);
UPDATE `creature_template` SET `npc_flags`=2 WHERE `entry` IN (61210, 61211);

-- Add introduction scene.
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (61207, 10008, 0, 0, 0, 0, 'Chromie', 'Wardens of Time', 0, 63, 63, 98621, 98621, 48424, 48424, 3490, 35, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 1130, 1500, 0, 285, 1, 2200, 1500, 2, 0, 0, 0, 0, 0, 0, 0, 600, 825, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 617299931, 0, 33025, 0, '');
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (99137, 61207, 0, 0, 0, 27, 962.269, 174.656, 100.009, 3.95811, 86400, 86400, 0, 100, 100, 2, 64, 0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES 
(99137, 1, 962.269, 174.656, 100.009, 3.95811, 10000, 0, 0),
(99137, 2, 962.269, 174.656, 100.009, 3.95811, 3000, 0, 9913702),
(99137, 3, 958.462, 170.678, 100.039, 100, 0, 0, 0),
(99137, 4, 957.089, 162.662, 100.115, 100, 120000, 0, 9913704);
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (99138, 61207, 0, 0, 0, 27, 1679.8, 423.805, 114.945, 2.11606, 86400, 86400, 0, 100, 100, 2, 64, 0);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES 
(99138, 1, 1679.8, 423.805, 114.945, 2.11606, 10000, 0, 0),
(99138, 2, 1679.8, 423.805, 114.945, 2.11606, 3000, 0, 9913802),
(99138, 3, 1677.07, 429.288, 114.888, 100, 0, 0, 0),
(99138, 4, 1676.3, 438.379, 115.006, 100, 120000, 0, 9913804);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49300, NULL, 'Heroes of the Alliance, thank you for answering our call for help.', 0, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49301, NULL, 'Heroes of the Horde, thank you for answering our call for help.', 0, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49302, NULL, 'I will brief you on the current situation. Listen carefully, as we have only one chance to make this right.', 0, 0, 0, 2, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49303, NULL, 'Agents of the Infinite Dragonflight are seeking to alter history, by changing the outcome of this battle.', 0, 0, 0, 5, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49304, NULL, 'They have disguised themselves as orcish warriors, and are attempting to tip the scales towards a victory for the orcs.', 0, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49305, NULL, 'They have disguised themselves as soldiers of the alliance, and are attempting to tip the scales in their favor.', 0, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49306, NULL, 'If they succeed in their efforts, this will have catastrophic consequences in the present.', 0, 0, 0, 274, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49307, NULL, 'Luckily for us, there is a way to identify their agents, and put an end to their machinations.', 0, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49308, NULL, 'Search the battlefield for flickering time sparks, and turn them in to Alurzion for analysis.', 0, 0, 0, 25, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49309, NULL, 'Once you\'ve collected a total of 100 sparks, the identity of their leader will be revealed.', 0, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49310, NULL, 'But beware, as he will likely turn back into his true form once attacked, and unleash the full strenght of his abilities.', 0, 0, 0, 5, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49311, NULL, 'The more flickering time sparks you turn in, the weaker their leader will become. Holding the central island is the key to victory, as you cannot turn in sparks otherwise.', 0, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (49312, NULL, 'Good luck, heroes. The future depends on you.', 0, 0, 0, 66, 0, 0, 0, 0, 0);
DELETE FROM `creature_movement_scripts` WHERE `id`=9913702;
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9913702, 0, 0, 15, 7741, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Cast Spell Summon Demon'),
(9913702, 1, 0, 15, 7741, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Cast Spell Summon Demon '),
(9913702, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49301, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=9913704;
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9913704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49302, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49303, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49305, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49306, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49307, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49308, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49309, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49310, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49311, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49312, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Say Text'),
(9913704, 40, 0, 15, 10418, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Cast Spell Arugal spawn-in spell'),
(9913704, 41, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Horde) - Despawn');
DELETE FROM `creature_movement_scripts` WHERE `id`=9913802;
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9913802, 0, 0, 15, 7741, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Cast Spell Summon Demon'),
(9913802, 1, 0, 15, 7741, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Cast Spell Summon Demon'),
(9913802, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49300, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text');
DELETE FROM `creature_movement_scripts` WHERE `id`=9913804;
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9913804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49302, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49303, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49304, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49306, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49307, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49308, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49309, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49310, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49311, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49312, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Say Text'),
(9913804, 40, 0, 15, 10418, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Cast Spell Arugal spawn-in spell'),
(9913804, 41, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chromie (Alliance) - Despawn');

-- Make the sparks actually look like sparks.
UPDATE `gameobject_template` SET `displayId`=22397, `size`=2 WHERE `entry`=179312;
UPDATE `gameobject` SET `position_z`=`position_z`+1 WHERE `id`=179312;
UPDATE `gameobject_template` SET `name`='Large Time Spark', `displayId`=22396, `size`=2.5 WHERE `entry`=179311;
-- UPDATE `gameobject` SET `position_z`=`position_z`+2 WHERE `id`=179311; spawned in core

-- Add the superconducting magnet in the keep.
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (179313, 3, 5874, 'Strange Device', 0, 0, 1, 57, 179313, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (179313, 50247, 100, 0, 1, 1, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (90117, 179313, 27, 1311.54, 238.832, 66.6467, 1.67731, 0, 0, 0.743746, 0.668462, 7200, 7200, 100, 1, 0, 0);
DELETE FROM `creature_loot_template` WHERE `item`=50247;
