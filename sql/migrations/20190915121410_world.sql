replace into migrations values (20190915121410);

-- replace into game_event (entry, start_time, end_time, occurence, length, holiday, description, hardcoded, disabled, patch_min, patch_max) values ('161', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '999999999', '0', 'miracle mirage race', '1', '0', '0', '10');

create table miraclerace_checkpoint (
  id int unsigned not null auto_increment,
  raceid int unsigned not null,
  positionx float not null,
  positiony float not null,
  positionz float not null,
  cameraposx float not null,
  cameraposy float not null,
  cameraposz float not null,
  cameraposorientation float not null,
  primary key (id),
  unique index id_unique (id asc));

set @height = -46;
truncate table miraclerace_checkpoint;
replace into miraclerace_checkpoint (raceid, positionx, positiony, positionz, cameraposx, cameraposy, cameraposz) values
-- Main racetrack:
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
(1, -6146.15, -3902.03, -59.8756, -6146.15, -3902.03, @height),
-- Test racetrack: 
(2, -5787.68, -4018.67, -58.7782, 0, 0, 0),
(2, -5822.68, -4018.18, -58.751, 0, 0, 0),
(2, -5870.23, -4018.35, -58.751, 0, 0, 0),
(2, -5931.47, -4018.32, -58.751, 0, 0, 0),
(2, -6012.91, -4015.88, -58.751, 0, 0, 0),
(2, -6092.2, -4014.09, -58.751, 0, 0, 0),
(2, -6157.24, -4013.88, -58.751, 0, 0, 0),
(2, -6213.02, -4014.08, -58.751, 0, 0, 0),
(2, -6254.5, -4011.59, -58.751, 0, 0, 0);
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
(51004, 15, 'Mirage Raceway Winner\'s Box', 6394, 1, 1, 4, ''); 
replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) values
(51004, 18253, 100, 1, 1, 1), 
(51004, 13444, 100, 2, 1, 1),
(51004, 13446, 100, 3, 1, 1),
(51004, 13454, 100, 4, 1, 1), 
(51004, 13453, 100, 4, 1, 1);
-- TODO: add more elixirs and randomize their drop.
replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, MaxLevel, QuestLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, RewMailMoney, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) values 
-- Test drive quests:
(50310, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50525, 1, 0, 'Goblin Engineering At It\'s Finest!', 'Ey, kid! Yes, you! I see you\'re an adventuring type and ready to jump into any fray if only there\'s one to jump into, right? Just as I thought. What? Of course there\'s a reward involved, how else could it be around here? It\'s a Mirage Raceway after all!\n\nWhat to do? Oh, that\'s so simple, I\'m sure that even a gnome would manage to test our jolly vehicle on the sustain for … errh, durability conditions! Yes! So, if you\'re ready to earn some coins and crack some scorpids flat then you\'re at the right spot, kid! What helmet? Instruction? Bah! Who needs\'em anyway?!\n\nLet\'s blast it!', 'Ride a goblin race car to see if it survives the start at all.', 'Data should be gathered and then processed. Do you realize how important it is for us? Good. Now then, see to it done!', 'Ahhh, finally! I\'ve been awaiting for this data... Many thanks, many thanks indeed.', NULL, NULL, NULL, NULL, NULL, 0, 50525, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50522, 51002, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50312, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50524, 1, 0, 'Gnomes Are Genuine Inventors', 'I am sure that you\'re very well aware of the fact about us, gnomes, we\'re the best inventors. Assuming you\'re striving to improve your skills and knowledge you will eventually be considered to study from us. Obviously, no gnome is that stupid to decline this intriguing and exciting partnership, alas it might be costly sometimes.\n\nSpeaking shorter; we need someone to compliment our natural resourcefulness of brain activity with their muscle and durability!\n\nIf you successfully ride this awesome masterpiece of gnomish engineering any other dimwit goblin would simply call a race car then you will be granted an opportunity to represent our bright society of inventors even further in Mirage Races!\n\nCool, right?\n\nWell, here\'s the instructions we\'ve specifically designed for other races for better understanding and comprehension.\n\nGood luck, sentient one!', 'Ride a gnome race car to see if it survives the start at all.', 'What helmet? Instruction? Bah! Who needs\'em anyway?!', 'Starts the engine, of course! Levers for stirring!', NULL, NULL, NULL, NULL, NULL, 0, 50524, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50523, 51003, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
-- Real race quests:
(50311, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50310, 0, 0, 0, 50525, 1, 0, 'Mirage Raceway: Goblin\'s Team', 'Oh, so nice you\'re alive and back in one piece! I had no doubts in you, of course.\n\nSo you\'re ready for another run on our goblin engineering masterpiece, eh? Well then if you know the drill you better get ready and take the first place yet again!', 'Complete the lap with best time.', 'Data should be gathered and then processed. Do you realize how important it is for us? Good. Now then, see to it done!', 'Ahhh, finally! I\'ve been awaiting for this data... Many thanks, many thanks indeed.', NULL, NULL, NULL, NULL, NULL, 0, 50525, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51004, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50313, 0, 2, 0, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50312, 0, 0, 0, 50524, 1, 0, 'Mirage Raceway: Gnome\'s Team', 'Salutations, sentient one! We\'re very much satisfied with the results you have achieved with the test drive for our mechanical engineering device and proved to be very useful for providing us so much needed data for analysis.We\'re ready to allow you continuous partial involvement with our research team and have agreed on supplying you for your efforts.\n\nWhen you\'re ready to proceed with data gathering be sure to remember the instructions provided and safety measures recommended.\n\nHave a great day!', 'Complete the lap with best time.', 'Don\'t swap the pedals!', 'You got it, eh?', NULL, NULL, NULL, NULL, NULL, 0, 50524, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51004, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Update test quest flags:
update quest_template set questflags = 1 where entry = 50310;
update quest_template set specialflags = 2 where entry = 50310;
update quest_template set questflags = 1 where entry = 50312;
update quest_template set specialflags = 2 where entry = 50312;
-- Update real quest flags:
update quest_template set questflags = 1 where entry = 50311;
update quest_template set specialflags = 3 where entry = 50311;
update quest_template set questflags = 1 where entry = 50313;
update quest_template set specialflags = 3 where entry = 50313;
-- Update test quest PrevQuestId:
update quest_template set prevquestid = 50315 where entry = 50310;
update quest_template set prevquestid = 50315 where entry = 50312;
-- Fara Boltbreaker, and her Gadgetzan Times quest:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50530, 0, 7909, 0, 0, 0, 'Fara Boltbreaker', 'Gadgetzan Times Reporter', 90200, 30, 30, 1605, 1605, 0, 0, 1200, 35, 2, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, '');
-- Gadgetzan Times quest (invitation to Miracle Raceway):
replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, MaxLevel, QuestLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, RewMailMoney, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript) values 
(50315, 0, 2, 2240, 1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gadgetzan Times: BREAKING NEWS!', 'A new magazine is always a new adventure!\n\nHitting newstands around Azeroth is the latest, most informative and entertaining magazine in all of Azerothian history: the Gadgetzan Times!\n\nPublished by Sparkle Entertainment Lightning & Fireworks, the Gadgetzan Times will bring the far reaches of the world right to your doorstep.', 'Get the latest issue of Gadgetzan Times.', 'Ahhh, finally!', 'Many thanks, many thanks, stay INFORMED!', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51006, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -5000, 2400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into item_template (entry, class, subclass, name, display_id, Quality, Flags, Buy_Count, stackable, bonding, Material, Page_Text) values
(51006, 15, 0, 'Gadgetzan Times', 7695, 1, 16384, 1, 1, 1, -1, 50080);
replace into page_text values
(50080, 'The sounds of desert creatures and sandstorms have been replaced. Gone is the clattering of scorpids, evicted from their natural home by the powerful roar of engines. As engineers from around the world congregate to create the fastest machine ever to traverse these once open plains, Gadgetzan Times was given the unique opportunity to talk with some of the pit crew.\n\nWhat we are trying to achieve here is not simply a land speed record. - G.T. was told by Gregor Fizzwuzz, assistant to the great Brassbolts brothers, - I mean sure, we want to build something that will be remembered through history as a fine piece of Gnomish Engineering, but more importantly; we want to beat those Goblins!', 0);
-- TODO: rest of the pages.
replace into creature_questrelation (id, quest) values (50530, 50315); 
replace into creature_involvedrelation (id, quest) values (50530, 50315);
-- Sheep, Definitely Non-Explosive:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50513, 0, 3886, 0, 0, 0, 'Sheep', 'Definitely Non-Explosive', 0, 30, 30, 1605, 1605, 0, 0, 1200, 35, 0, 1.08, 1.14286, 0, 1, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 2, 0, 9, 0, 0, 0, 0, 45.144, 62.073, 100, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, 'npc_race_sheep');
-- Flying machine GO of Fara Boltbreaker:
replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, script_name) values 
(1000050, 0, 1, 330, 'Tanaris Airlines, Outstanding Flying Machine BNX-92', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_flying_machine');
-- Racetrack speed modifiers:
replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, script_name) values 
(1000051, 0, 5, 5973, 'Racetrack Speed Bonus', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1000052, 0, 5, 3073, 'Racetrack Freezing Trap', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Racetrack sheep spawn points:
drop table if exists miraclerace_creaturespool;
create table if not exists miraclerace_creaturespool 
( raceid int unsigned not null,
  entry int unsigned not null,
  chance int unsigned not null,
  positionx float not null,
  positiony float not null,
  positionz float not null); 
replace into miraclerace_creaturespool (raceid, entry, chance, positionx, positiony, positionz) values
-- Main track cheeps:
(1, 50513, rand()*(100-10)+10, -6208.65, -3896.71, -60.359),
(1, 50513, rand()*(100-10)+10, -6211.08, -3904.97, -60.3782),
(1, 50513, rand()*(100-10)+10, -6220.44, -3898.68, -60.4702),
(1, 50513, rand()*(100-10)+10, -6234.98, -3903.45, -60.6291),
(1, 50513, rand()*(100-10)+10, -6247.22, -3906.03, -61.0673),
(1, 50513, rand()*(100-10)+10, -6260.44, -3895.7, -61.6136),
(1, 50513, rand()*(100-10)+10, -6273.64, -3902.26, -62.0666),
(1, 50513, rand()*(100-10)+10, -6293.15, -3901.07, -62.8145),
(1, 50513, rand()*(100-10)+10, -6311.16, -3899.31, -62.9676),
(1, 50513, rand()*(100-10)+10, -6322.46, -3905.9, -62.8208),
(1, 50513, rand()*(100-10)+10, -6344.49, -3898.03, -62.4523),
(1, 50513, rand()*(100-10)+10, -6360.74, -3904.68, -62.2075),
(1, 50513, rand()*(100-10)+10, -6379.65, -3912.58, -61.7637),
(1, 50513, rand()*(100-10)+10, -6396.83, -3915.57, -61.6596),
(1, 50513, rand()*(100-10)+10, -6404.65, -3919.58, -61.8655),
(1, 50513, rand()*(100-10)+10, -6416.31, -3935.83, -62.5238),
(1, 50513, rand()*(100-10)+10, -6419.98, -3976.73, -62.8332),
(1, 50513, rand()*(100-10)+10, -6425.42, -3989.89, -62.8395),
(1, 50513, rand()*(100-10)+10, -6441.26, -4017.12, -62.9661),
(1, 50513, rand()*(100-10)+10, -6446.8, -4031.76, -61.5556),
(1, 50513, rand()*(100-10)+10, -6435.99, -4049.76, -63.2826),
(1, 50513, rand()*(100-10)+10, -6425.92, -4067.37, -63.1371),
(1, 50513, rand()*(100-10)+10, -6424.65, -4087.12, -63.517),
(1, 50513, rand()*(100-10)+10, -6431.45, -4104.9, -63.6327),
(1, 50513, rand()*(100-10)+10, -6430, -4117.71, -63.6047),
(1, 50513, rand()*(100-10)+10, -6417.1, -4134.27, -63.9541),
(1, 50513, rand()*(100-10)+10, -6410.39, -4142.33, -63.6492),
(1, 50513, rand()*(100-10)+10, -6398.59, -4157.57, -62.3602),
(1, 50513, rand()*(100-10)+10, -6392.21, -4179.29, -62.6035),
(1, 50513, rand()*(100-10)+10, -6379.89, -4191.35, -61.7476),
(1, 50513, rand()*(100-10)+10, -6356.91, -4196.69, -61.114),
(1, 50513, rand()*(100-10)+10, -6339.09, -4214.63, -62.6552),
(1, 50513, rand()*(100-10)+10, -6325.53, -4222.34, -62.3832),
(1, 50513, rand()*(100-10)+10, -6308.2, -4224.42, -61.4971),
(1, 50513, rand()*(100-10)+10, -6285.67, -4212.43, -61.4715),
(1, 50513, rand()*(100-10)+10, -6265.04, -4202.32, -61.5978),
(1, 50513, rand()*(100-10)+10, -6242.42, -4203.05, -61.695),
(1, 50513, rand()*(100-10)+10, -6228.09, -4203.24, -61.6441),
(1, 50513, rand()*(100-10)+10, -6205.7, -4197.62, -61.6263),
(1, 50513, rand()*(100-10)+10, -6174.26, -4185.61, -61.7052),
(1, 50513, rand()*(100-10)+10, -6161.8, -4184.31, -61.7697),
(1, 50513, rand()*(100-10)+10, -6134.69, -4192.06, -62.3631),
(1, 50513, rand()*(100-10)+10, -6118.47, -4190.84, -62.5956),
(1, 50513, rand()*(100-10)+10, -6087.47, -4185.24, -61.9641),
(1, 50513, rand()*(100-10)+10, -6066.63, -4182.93, -62.3381),
(1, 50513, rand()*(100-10)+10, -6040.47, -4183.41, -61.5369),
(1, 50513, rand()*(100-10)+10, -6010.58, -4193.35, -62.3877),
(1, 50513, rand()*(100-10)+10, -5980.67, -4203.23, -62.278),
(1, 50513, rand()*(100-10)+10, -5959.42, -4205.18, -62.3034),
(1, 50513, rand()*(100-10)+10, -5929.37, -4200.2, -62.6402),
(1, 50513, rand()*(100-10)+10, -5898.94, -4203.39, -62.8956),
(1, 50513, rand()*(100-10)+10, -5865.22, -4200.66, -62.6618),
(1, 50513, rand()*(100-10)+10, -5834.85, -4192.31, -62.1314),
(1, 50513, rand()*(100-10)+10, -5815.98, -4192.24, -61.6921),
(1, 50513, rand()*(100-10)+10, -5800.51, -4194.91, -61.3326),
(1, 50513, rand()*(100-10)+10, -5779.79, -4193.06, -61.478),
(1, 50513, rand()*(100-10)+10, -5761.88, -4184.35, -61.5208),
(1, 50513, rand()*(100-10)+10, -5740.18, -4181.05, -61.3788),
(1, 50513, rand()*(100-10)+10, -5728.48, -4184.02, -61.2814),
(1, 50513, rand()*(100-10)+10, -5717.11, -4178.97, -60.9956),
(1, 50513, rand()*(100-10)+10, -5709.28, -4162.33, -60.5445),
(1, 50513, rand()*(100-10)+10, -5690.72, -4153.39, -60.9819),
(1, 50513, rand()*(100-10)+10, -5673.4, -4149.19, -61.4357),
(1, 50513, rand()*(100-10)+10, -5664.12, -4134.99, -61.5891),
(1, 50513, rand()*(100-10)+10, -5663.83, -4113.99, -61.5217),
(1, 50513, rand()*(100-10)+10, -5660.96, -4106.47, -61.4916),
(1, 50513, rand()*(100-10)+10, -5640.37, -4081.01, -61.35),
(1, 50513, rand()*(100-10)+10, -5641.04, -4071.97, -61.2902),
(1, 50513, rand()*(100-10)+10, -5647.95, -4052.14, -61.1419),
(1, 50513, rand()*(100-10)+10, -5646.63, -4029.17, -61.1253),
(1, 50513, rand()*(100-10)+10, -5647.59, -4001.92, -61.1495),
(1, 50513, rand()*(100-10)+10, -5649.24, -3985.56, -61.1667),
(1, 50513, rand()*(100-10)+10, -5644.44, -3968.31, -61.1815),
(1, 50513, rand()*(100-10)+10, -5657, -3941.24, -61.2115),
(1, 50513, rand()*(100-10)+10, -5651.67, -3928.53, -61.3709),
(1, 50513, rand()*(100-10)+10, -5647.36, -3908.6, -61.5651),
(1, 50513, rand()*(100-10)+10, -5650.36, -3898.72, -61.6908),
(1, 50513, rand()*(100-10)+10, -5669.01, -3876.26, -61.9747),
(1, 50513, rand()*(100-10)+10, -5674.23, -3858.9, -62.3597),
(1, 50513, rand()*(100-10)+10, -5687.21, -3818.57, -61.3472),
(1, 50513, rand()*(100-10)+10, -5705.99, -3811.45, -61.3396),
(1, 50513, rand()*(100-10)+10, -5724.16, -3805.13, -60.5568),
(1, 50513, rand()*(100-10)+10, -5735.76, -3797.11, -60.1499),
(1, 50513, rand()*(100-10)+10, -5758.71, -3784.54, -61.6638),
(1, 50513, rand()*(100-10)+10, -5775.52, -3787.36, -61.7002),
(1, 50513, rand()*(100-10)+10, -5798.53, -3787.2, -61.421),
(1, 50513, rand()*(100-10)+10, -5821.74, -3775.72, -61.2197),
(1, 50513, rand()*(100-10)+10, -5828.67, -3776.79, -61.1562),
(1, 50513, rand()*(100-10)+10, -5846.62, -3787.68, -60.4707),
(1, 50513, rand()*(100-10)+10, -5861.65, -3793.16, -60.0519),
(1, 50513, rand()*(100-10)+10, -5893.74, -3793.88, -59.8046),
(1, 50513, rand()*(100-10)+10, -5898.62, -3797.1, -59.7632),
(1, 50513, rand()*(100-10)+10, -5920.57, -3818.05, -60.0856),
(1, 50513, rand()*(100-10)+10, -5943.36, -3828.91, -60.6056),
(1, 50513, rand()*(100-10)+10, -5966.89, -3833.01, -60.7504),
(1, 50513, rand()*(100-10)+10, -5980.46, -3838.6, -60.6852),
(1, 50513, rand()*(100-10)+10, -6005.92, -3860.43, -60.4956),
(1, 50513, rand()*(100-10)+10, -6032.45, -3871.18, -60.3552),
(1, 50513, rand()*(100-10)+10, -6063.2, -3876.79, -60.2224),
(1, 50513, rand()*(100-10)+10, -6078.68, -3885.52, -60.1376),
(1, 50513, rand()*(100-10)+10, -6107.35, -3902.39, -59.9101),
(1, 50513, rand()*(100-10)+10, -6117.13, -3903.78, -59.9301),
(1, 50513, rand()*(100-10)+10, -6142.66, -3904.75, -59.8828),
(1, 50513, rand()*(100-10)+10, -6164.32, -3901.69, -59.8917),
(1, 50513, rand()*(100-10)+10, -6191.15, -3905.9, -60.1542),
-- Test track sheeps:
(2, 50513, rand()*(100-10)+10, -6219.1, -4005.1, -58.7494),
(2, 50513, rand()*(100-10)+10, -6247.96, -4000.81, -58.7494),
(2, 50513, rand()*(100-10)+10, -6246.48, -4017.45, -58.7494),
(2, 50513, rand()*(100-10)+10, -6197.83, -4012.05, -58.7494),
(2, 50513, rand()*(100-10)+10, -6080.61, -4008.31, -58.7494),
(2, 50513, rand()*(100-10)+10, -6041.8, -4021.71, -58.7494),
(2, 50513, rand()*(100-10)+10, -6012.7, -4015.41, -58.7494),
(2, 50513, rand()*(100-10)+10, -5973.97, -4014.31, -58.7494),
(2, 50513, rand()*(100-10)+10, -5939.13, -4018.28, -58.7494),
(2, 50513, rand()*(100-10)+10, -5901.31, -4018.74, -58.7494),
(2, 50513, rand()*(100-10)+10, -5876.22, -4013.01, -58.7439),
(2, 50513, rand()*(100-10)+10, -5845.52, -4022.79, -58.7496),
(2, 50513, rand()*(100-10)+10, -5836.68, -4023.64, -58.7496),
(2, 50513, rand()*(100-10)+10, -5800.81, -4017.22, -58.7704),
(2, 50513, rand()*(100-10)+10, -5794.06, -4022.09, -58.7507),
(2, 50513, rand()*(100-10)+10, -5779.79, -4023.48, -58.7723),
(2, 50513, rand()*(100-10)+10, -5789.01, -4011.74, -58.7876),
(2, 50513, rand()*(100-10)+10, -5804.28, -4020.29, -58.753),
(2, 50513, rand()*(100-10)+10, -5817.34, -4023.24, -58.751),
(2, 50513, rand()*(100-10)+10, -5838.08, -4009.66, -58.758),
(2, 50513, rand()*(100-10)+10, -5849.69, -4010.28, -58.7502),
(2, 50513, rand()*(100-10)+10, -5870.33, -4025, -58.7502),
(2, 50513, rand()*(100-10)+10, -5876.07, -4026.35, -58.7502),
(2, 50513, rand()*(100-10)+10, -5901.24, -4011.5, -58.7502),
(2, 50513, rand()*(100-10)+10, -5908.33, -4011.22, -58.7502),
(2, 50513, rand()*(100-10)+10, -5922.85, -4021.63, -58.7502),
(2, 50513, rand()*(100-10)+10, -5935.79, -4022.58, -58.7502),
(2, 50513, rand()*(100-10)+10, -5946.61, -4011.44, -58.7502),
(2, 50513, rand()*(100-10)+10, -5959.99, -4012.37, -58.7502),
(2, 50513, rand()*(100-10)+10, -5971.36, -4021.9, -58.7502),
(2, 50513, rand()*(100-10)+10, -5981.52, -4024.52, -58.7502),
(2, 50513, rand()*(100-10)+10, -5999.21, -4012.43, -58.7502),
(2, 50513, rand()*(100-10)+10, -6009.23, -4008.15, -58.7502),
(2, 50513, rand()*(100-10)+10, -6033.94, -4019.29, -58.7502),
(2, 50513, rand()*(100-10)+10, -6036.37, -4020.18, -58.7502),
(2, 50513, rand()*(100-10)+10, -6055.43, -4017.67, -58.7502),
(2, 50513, rand()*(100-10)+10, -6043.92, -4010.95, -58.7502),
(2, 50513, rand()*(100-10)+10, -6057.59, -4007.79, -58.7502),
(2, 50513, rand()*(100-10)+10, -6082.25, -4018.77, -58.7502),
(2, 50513, rand()*(100-10)+10, -6093.45, -4019.01, -58.7502),
(2, 50513, rand()*(100-10)+10, -6114.17, -4011.95, -58.7502),
(2, 50513, rand()*(100-10)+10, -6128.49, -4006.56, -58.7502),
(2, 50513, rand()*(100-10)+10, -6133.19, -4006.96, -58.7502),
(2, 50513, rand()*(100-10)+10, -6145.7, -4016.47, -58.7502),
(2, 50513, rand()*(100-10)+10, -6152.49, -4017.23, -58.7502),
(2, 50513, rand()*(100-10)+10, -6163.91, -4013.05, -58.7502),
(2, 50513, rand()*(100-10)+10, -6179.51, -4007.84, -58.7502),
(2, 50513, rand()*(100-10)+10, -6185.99, -4009.88, -58.7502),
(2, 50513, rand()*(100-10)+10, -6192.3, -4021.18, -58.7502),
(2, 50513, rand()*(100-10)+10, -6199.62, -4021.83, -58.7502),
(2, 50513, rand()*(100-10)+10, -6199.62, -4021.83, -58.7502),
(2, 50513, rand()*(100-10)+10, -6211.69, -4011.99, -58.7502),
(2, 50513, rand()*(100-10)+10, -6213.56, -4010.87, -58.7502),
(2, 50513, rand()*(100-10)+10, -6219.95, -4011.24, -58.7502),
(2, 50513, rand()*(100-10)+10, -6228.26, -4016.87, -58.7502),
(2, 50513, rand()*(100-10)+10, -6244.16, -4010.07, -58.7502),
(2, 50513, rand()*(100-10)+10, -6264.78, -4011.69, -58.7502);
-- Update movement type for racetrack sheep:
update creature_template set movement_type = 1 where entry = 50513;
-- Goblin and Gnome car keys:
set @key_spell = 1575;
replace into item_template (entry, patch, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values 
(50524, 0, 13, 0, 'Gnome Car Key', 'Allows you to control marvelous gnomish invention. Handle with care.', 6710, 1, 64, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @key_spell, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 'item_miracle_acceptInvite'),
(50525, 0, 13, 0, 'Goblin Car Key', 'You\'ll be driving best GOBLIN car ever, kid! What makes it fast? Explosions of course!', 6711, 1, 64, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @key_spell, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 'item_miracle_acceptInvite');
-- Second racetrack girl, Dolores:
replace into creature_template (entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, script_name) values 
(50533, 0, 3463, 0, 0, 0, 'Dolores', 'Race Starter Girl', 0, 15, 15, 644, 644, 0, 0, 20, 35, 1, 1, 1.14286, 0, 20, 5, 0, 0, 1, 17, 22, 0, 74, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 24.552, 33.759, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 4507, 0, 0, 0, 0, 2, 'npc_dolores');
-- Update Daisy & Dolores gossip_menu_ids:
replace into broadcast_text (ID, MaleText) values ('90250', 'The winner ain\'t the one with the fastest car, it\'s the one who refuses to lose.');
replace into npc_text (ID, BroadcastTextID0) values ('90250', '90250');
replace into broadcast_text (ID, MaleText) values ('90251', 'There\'s no secret. You just press the accelerator to the floor and steer left.');
replace into npc_text (ID, BroadcastTextID0) values ('90251', '90251');
-- Events list for Fara Boltbreaker:
replace into broadcast_text (ID, MaleText) values ('90252', 'Latest news from the best race event ever! Come and get your own magazine!');
replace into npc_text (ID, BroadcastTextID0) values ('90252', '90252');
delete from creature_ai_scripts where id = 50530;
replace into creature_ai_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (50530, 300, 0, 1, 0, 0, 0, 0, 0, 0, 0, 90252, 0, 0, 0, 0, 0, 0, 0, 0, 'Fara_peaking.');
update creature_template set ai_name = "EventAI" where entry = 50530;
delete from creature_ai_events where creature_id=50530;
insert into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (50530, 50530, 0, 1, 0, 100, 1, 0, 0, 0, 0, 50530, 0, 0, 'fara, speaking.');
