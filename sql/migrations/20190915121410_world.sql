replace into migrations values (20190915121410);

set @height = -46;
truncate table miraclerace_checkpoint;
replace into miraclerace_checkpoint (raceid, positionx, positiony, positionz, cameraposx, cameraposy, cameraposz) values
(1, -6201.01, -3901.35, -60.2815, -6201.01, -3901.35, @height),
(1, -6358.91, -3902.69, -62.2377, -6358.91, -3902.69, @height),
(1, -6430.95, -3998.23, -62.8418, -6430.95, -3998.23, @height),
(1, -6399.89, -4167.54, -63.0010, -6399.89, -4167.54, @height),
(1, -6276.93, -4211.54, -61.5375, -6276.93, -4211.54, @height),
(1, -6139.69, -4188.55, -62.2672, -6139.69, -4188.55, @height),
(1, -6032.51, -4195.18, -62.5750, -6032.51, -4195.18, @height),
(1, -5922.14, -4200.73, -62.7331, -5922.14, -4200.73, @height),
(1, -5757.89, -4186.62, -61.4904, -5757.89, -4186.62, @height),
(1, -5647.06, -4084.18, -61.3742, -5647.06, -4084.18, @height),
(1, -5650.55, -3918.05, -61.4841, -5650.55, -3918.05, @height),
(1, -5732.75, -3792.44, -60.7805, -5732.75, -3792.44, @height),
(1, -5864.30, -3789.30, -60.2010, -5864.30, -3789.30, @height),
(1, -5996.42, -3852.06, -60.5732, -5996.42, -3852.06, @height),
(1, -6146.15, -3902.03, -59.8756, -6146.15, -3902.03, @height);

-- Race Spectator:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50523, 0, 11676, 11689, 11691, 10620, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50524, 0, 7214, 7218, 7219, 7231, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50525, 0, 5435, 5433, 5424, 5451, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, ''),
(50526, 0, 5530, 5531, 5532, 5545, 'Race Spectator', '', 0, 5, 5, 112, 112, 0, 0, 120, 35, 0, 0.92, 1.14286, 1, 20, 5, 0, 0, 1.8, 15, 21, 0, 0, 1.9, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
-- /cheer
replace into creature_template_addon (entry, emote) values ('50523', '4'),('50524', '4'),('50525', '4'),('50526', '4');

-- Ironaya and Archaedas texts:
delete from script_texts where entry = -1070000;
update broadcast_text set Sound = 5851, type = 1 where ID = 3261;
update broadcast_text set Sound = 5855, type = 1 where ID = 3400;
update broadcast_text set Sound = 5856, type = 1 where ID = 6536;
update broadcast_text set Sound = 5857, type = 1 where ID = 6537;
update broadcast_text set Sound = 5858, type = 1 where ID = 6215;

-- Fix crash on script loading: 
delete from creature_movement_scripts where command = 79;

-- Miracle Raceway engineers:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50521, 0, 7169, 0, 0, 0, 'Jizzle Grikbot', 'Chief Engineer', 90200, 30, 30, 1605, 1605, 0, 0, 1200, 35, 2, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, ''),
(50522, 0, 5438, 0, 0, 0, 'Gregor Fizzwuzz', 'Senior Assistant', 90200, 30, 30, 1605, 1605, 0, 0, 1200, 35, 2, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, '');

-- Miracle Raceway quest rewards:
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(51002, 15, 2, 'Green Steam Tonk',  'Summon and control your steam tonk.', 8931, 1, 1, 28505, 1500),
(51003, 15, 2, 'Purple Steam Tonk', 'Summon and control your steam tonk.', 8931, 1, 1, 28505, 1500);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('50527', '15381', 'Green Steam Tonk', '', '1', '1', '64', '64', '35', '', 1),
('50528', '15382', 'Purple Steam Tonk', '', '1', '1', '64', '64', '35', '', 1);
replace into custom_pet_entry_relation (item_entry, creature_entry) values
('51002', '50527'), 
('51003', '50528');
replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(51004, 15, 'Miracle Raceway Winner\'s Box', 6394, 1, 1, 4, ''); 
replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) values
(51004, 18253, 100, 1, 1, 1), 
(51004, 13444, 100, 2, 1, 1),
(51004, 13446, 100, 3, 1, 1),
(51004, 13454, 100, 4, 1, 1), 
(51004, 13453, 100, 4, 1, 1);
-- TODO: add more elixirs and randomize their drop.
replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, MaxLevel, QuestLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, RewMailMoney, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) values 
-- Test drive quests:
(50310, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50525, 1, 0, 'Goblin Engineering At It\'s Finest!', 'Ey, kid! Yes, you! I see you\'re an adventuring type and ready to jump into any frey if only there\'s one to jump into, right? Just as I thought. What? Of course there\'s a reward involved, how else could it be around here? It\'s a Mirage Raceway after all!\n\nWhat to do? Oh, that\'s so simple, I\'m sure that even a gnome would manage to test our jolly vehicle on the sustain for … errh, durability conditions! Yes! So, if you\'re ready to earn some coins and crack some scorpids flat then you\'re at the right spot, kid! What helmet? Instruction? Bah! Who needs\'em anyway?!\n\nLet\'s blast it!', 'Ride a goblin race car to see if it survives the start at all.', 'Data should be gathered and then processed. Do you realize how important it is for us? Good. Now then, see to it done!', 'Ahhh, finally! I\'ve been awaiting for this data... Many thanks, many thanks indeed.', NULL, NULL, NULL, NULL, NULL, 0, 50525, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50522, 51002, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50312, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50524, 1, 0, 'Gnomes Are Genuine Inventors', 'I am sure that you\'re very well aware of the fact about us, gnomes, we\'re the best inventors. Assuming you\'re striving to improve your skills and knowledge you will eventually be considered to study from us. Obviously, no gnome is that stupid to decline this intriguing and exciting partnership, alas it might be costly sometimes.\n\nSpeaking shorter; we need someone to compliment our natural resourcefulness of brain activity with their muscle and durability!\n\nIf you successfully ride this awesome masterpiece of gnomish engineering any other dimwit goblin would simply call a race car then you will be granted an opportunity to represent our bright society of inventors even further in Mirage Races!\n\nCool, right?\n\nWell, here\'s the instructions we\'ve specifically designed for other races for better understanding and comprehension.\n\nGood luck, sentient one!', 'Ride a goblin race car to see if it survives the start at all.', 'What helmet? Instruction? Bah! Who needs\'em anyway?!', 'Starts the engine, of course! Levers for stearing.', NULL, NULL, NULL, NULL, NULL, 0, 50524, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50523, 51003, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- Real race quests:
(50311, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50310, 0, 0, 0, 50525, 1, 0, 'Mirage Raceway: Goblin\'s Team', 'Oh, so nice you\'re alive and back in one piece! I had no doubts in you, of course.\n\nSo you\'re ready for another run on our goblin engineering masterpiece, eh? Well then if you know the drill you better get ready and take the first place yet again!', 'Complete the lap with best time.', 'Data should be gathered and then processed. Do you realize how important it is for us? Good. Now then, see to it done!', 'Ahhh, finally! I\'ve been awaiting for this data... Many thanks, many thanks indeed.', NULL, NULL, NULL, NULL, NULL, 0, 50525, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51004, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50313, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50312, 0, 0, 0, 50524, 1, 0, 'Mirage Raceway: Gnome\'s Team', 'Salutations, sentient one! We\'re very much satisfied with the results you have achieved with the test drive for our mechanical engineering device and proved to be very useful for providing us so much needed data for analysis.We\'re ready to allow you continuous partial involvement with our research team and have agreed on supplying you for your efforts.\n\nWhen you\'re ready to proceed with data gathering be sure to remember the instructions provided and safety measures recommended.\n\nHave a great day!', 'Complete the lap with best time.', 'Don\'t swap the pedals!', 'You got it, eh?', NULL, NULL, NULL, NULL, NULL, 0, 50524, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51004, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

