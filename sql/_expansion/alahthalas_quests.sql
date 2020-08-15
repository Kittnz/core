update creature_template set npc_flags = 2 where entry = 1752; -- Caledra Questgiver Flag
update creature_template set display_id1 = 18209 where entry = 1752; -- Caledra Display ID
update creature_template set script_name = 'npc_caledra' where entry = 1752; -- Caledra Script
update creature_template set script_name = 'npc_elsharin' where entry = 5498; -- Elsharin Script

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (80004, 0, 18220, 18222, 18221, 18223, 'Alah\'Thalas Defender', NULL, 0, 60, 60, 9763, 9763, 0, 0, 3500, 1254, 268435456, 1, 1.71429, 0, 20, 5, 0, 1, 1, 825, 1244, 0, 272, 1, 2000, 2000, 1, 36864, 0, 0, 0, 0, 0, 0, 626, 687, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7918, 2480, 0, 0, 151840, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 15184, 0, 0, 613105627, 0, 1024, '');

replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale, npc_flags, rank) values
(80000, 10381, 'High Elf Ranger', '', 9, 10, 350, 640, 269, '', 1, 2, 2),
(80001, 17329, 'Arcanist Anu\'delen', '', 60, 60, 3350, 4640, 269, '', 1, 2, 2),
(80002, 6631, 'Ashylah Starcaller', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1),
(80003, 262, 'Caledra Gossip Trigger 1', '', 60, 60, 3350, 4640, 35, '', 1, 2, 1),
(80005, 18003, 'Norel', '', 20, 59, 1350, 3300, 269, '', 1, 2, 1),
(80006, 17329, 'Ranger-Captain Alisaeh Sunblade', '', 60, 60, 3350, 4640, 269, '', 1, 2, 2),
(80007, 17329, 'Dummy Horde Player Trigger', '', 60, 60, 3350, 4640, 35, '', 1, 2, 2),
(80008, 6631, 'Malvinah Sunblade', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1),
(80009, 6631, 'Kathy Wake', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80010, 6631, 'Trogg Vermin', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80011, 6631, 'Burnt Wheels Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80012, 6631, 'Shadowforge Fire Priest', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80013, 6631, 'Dark Iron Scrapping Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80014, 6631, 'Sunblade Reunion Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1), -- Reserved. TODO.
(80015, 6631, 'Porting to Goldshire Gossip Trigger 1', '', 60, 60, 3350, 4640, 269, '', 1, 2, 1); -- Reserved. TODO.

SET @npc_entry = 5498;
SET @text_id = 300000;
SET @gossip_menu_id = 60000;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @text_id, '0'); 
replace into broadcast_text (ID, MaleText) values (@text_id, 'Setting up a new home is difficult and we have run into our share of issues. It’s important to remember what’s at stake.');
replace into npc_text (ID, BroadcastTextID0) values (@text_id, @text_id);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @npc_entry;

SET @npc_entry = 1752;
SET @text_id = 300001;
SET @gossip_menu_id = 60001;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @text_id, '0'); 
replace into broadcast_text (ID, MaleText) values (@text_id, 'Recently I\'ve heard from our new allies across the sea that a group of them intends to consolidate and settle a new home...\n\nWhile we have our reservations about their past, they are still family and they should not bear the scorn for the actions of their ancestors.');
replace into npc_text (ID, BroadcastTextID0) values (@text_id, @text_id);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @npc_entry;

SET @npc_entry = 80001;
SET @text_id = 300002;
SET @gossip_menu_id = 60002;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @text_id, '0'); 
replace into broadcast_text (ID, MaleText) values (@text_id, 'Test.');
replace into npc_text (ID, BroadcastTextID0) values (@text_id, @text_id);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @npc_entry;



replace into item_template values

('80000', '0', '0', '0', 'Arcane Crystal', '', '3273', '1', '0', '1', '0', '0', '0', '-1', '-1', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0','0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0','0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0','0', '-1', '0','-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '1', NULL),

('80001', '0', '0', '0', 'Arcane Artifact', '', '31205', '1', '0', '1', '0', '0', '0', '-1', '-1', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0','0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0','0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0','0', '-1', '0','-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '1', NULL),

('80002', '0', '0', '0', 'Broken Arcane Crystal', '', '3273', '0', '0', '1', '0', '0', '0', '-1', '-1', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0','0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0','0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0','0', '-1', '0','-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '1', NULL), 

('80003', '0', '0', '0', 'Crashed Arcane Artifact', '', '31205', '0', '0', '1', '0', '0', '0', '-1', '-1', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0','0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0','0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0','0', '-1', '0','-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '1', NULL), 

('80004', '0', '0', '0', 'Silver Whistle', '', '31205', '0', '0', '1', '0', '0', '0', '-1', '-1', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0','0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0','0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0','0', '-1', '0','-1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '1', NULL);

update item_template set stackable = 10 where entry in (80000, 80001, 80002, 80003);



replace into gameobject_template values 
(3000000, 0, 3, 2971, 'Arcane Crystal', 0, 0, 0.7, 57, 3000000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000001, 0, 1, 2770, 'Portal to Alah\'Thalas', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_alahthalas'),
(3000002, 0, 1, 6696,  'Portal to Alah\'Thalas', 35, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_alahthalas'),
(3000003, 0, 3, 2652, 'Arcane Artefact', 0, 0, 0.7, 57, 3000003, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Arcane Crystal Loot
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES 
(3000000, 80000, 80, 1, 1, 1, 0, 0, 10),
(3000000, 80002, 20, 1, 1, 1, 0, 0, 10);
-- Arcane Atrefact Loot
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES 
(3000003, 80001, 80, 1, 1, 1, 0, 0, 10),
(3000003, 80003, 20, 1, 1, 1, 0, 0, 10);

-- ASSISTING THE CHILDREN OF THE SUN // Human |Version

SET @quest_entry = 80000;
SET @quest_zone = 1519;
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 650;
SET @quest_level = 15;
SET @min_level = 10;
SET @questgiver_id = 80000;
SET @quest_finisher = 1752;
SET @nextquest = 80001;
SET @nextquestinchain = 80001;
SET @prevquest = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80003;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 1;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Assisting the Children of the Sun', 

'Bal\'a dash, malanore, $R! I represent a group of my people who seek to restore our former glory.\n\nWe seek to settle a new home for us and your assistance would be more than welcome.\n\nWhen you have the time, journey to Stormwind and speak to Caledra Dawnbreeze in the Stormwind Keep.\n\nTrust that you will be well compensated for your aid!', 

'Speak to Caledra Dawnbreeze in Stormwind Keep.', 

'Ahh, so you seek to assist us in our effort?\n\nWonderful…\n\nOur people have set up a new settlement called Alah\'thalas on the coast north of Stratholme, bordering Quel\'thalas.However, setting up a new home is difficult and we have run into our share of issues.\n\nYour help will definitely be appreciated! I shall sum up our situation for you.', 

'Yes? What can I do for you, stranger?', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, rewitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, rewitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, rewitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, rewitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
update quest_template set ObjectiveText1 = 'Listen to Caledra\'s Story' where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');   
  
-- TO ALAH’THALAS! // Human |Version

SET @quest_entry = 80001;
SET @quest_zone = 1519; 
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 650;
SET @quest_level = 20;
SET @min_level = 10;
SET @questgiver_id = 1752;
SET @quest_finisher = 5498;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80000;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'To Alah’Thalas!', 

'Now that you know what we’re dealing with and our history...\n\nThe time has come to act. If you’re truly interested in helping us, then this is the way.\n\nOne of our most talented mages has established a leyline connection to Alah\'thalas.\n\nGo to the Mage Tower in the Mage District, and speak to Elsharin. She will be able to take you there, once you arrive I am sure someone will tend to you.\n\n', 

'Speak to Elsharin, she can be found beyond the portal in the Mage district Mage Tower in Stormwind.', 

'Oh you\'ve come to assist Alah\'thalas!\n\nI\'m quite happy I must say, I knew Caledra could find nice people! I\'m surprised she found a $C as capable as you!\n\nThe loss of Quel\'thalas has grieved me greatly, but now I see hope, hope that our people can have a future again!\n\nTalk to me when you are ready and I will send you to Alah\'thalas!', 

'Oh my! What can I do for you, $R?', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');

-- A CRYSTAL CLEAR TASK 

SET @quest_entry = 80002;
SET @quest_zone = 1519; 
SET @faction_id = 269;
SET @faction_count = 75;
SET @xp_or_money = 350; 
SET @quest_level = 20;
SET @min_level = 10;
SET @questgiver_id = 80001; 
SET @quest_finisher = 80001;
SET @nextquest = 80003;
SET @nextquestinchain = 80003;
SET @prevquest = 80001;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80000;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 8;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'A Crystal Clear Task', 

'Greetings, $R. Since you\'re here this means you’ve come to help so listen up. We have a situation here… You might be aware, our buildings operate with Arcane magic in use.\n\nWhile our central crystal is the main power source, we use smaller crystals to effectively channel the arcane energy from the nexus to the outlying Ley points of the structure.\n\nThe downside is that these crystals break down overtime, if we had found this outpost a decade later the entire Academy could have collapsed.\n\nFortunately, our predecessors built this site on a location with Arcane crystal deposits. While the automated constructs have long since stopped working or malfunctioned, the mine remains full of intact crystals.\n\nI need you to head down there and bring me some crystals... Eight should do for now.\n\n...Are you still here? Get moving.', 

'Gather 8 Arcane Crystals from the Silver Sun Mine in Alah\'thalas.', 

'Oh? That\'s a nice haul... Good to see that you can be counted on, $R!\n\nAlright, time to calibrate these crystals so they can be integrated into the network...\n\nYou still here?... Oh right, you want a reward, yes, yes. Now move along.', 

'Have you gotten the crystals yet?\n\nRats or whatever down there… I expect this task to be done!', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');

-- RELICS IN FERALAS

SET @quest_entry = 80003;
SET @quest_zone = 1519; 
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 4600; 
SET @quest_level = 55;
SET @min_level = 40;
SET @questgiver_id = 80001; 
SET @quest_finisher = 80001;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80002;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 80001;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 4;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Relics in Feralas', 

'Well well... So far you’ve proven useful so perhaps I can give you a more important task than fetching crystals.\n\nMy people descend from the Highborne, we were once the pinnacle of Kaldorei society, ruling a great empire… While few traces remain of that here in the Eastern Kingdoms, Kalimdor is filled to the brim with ruins, ruins that have not been looted!\n\nI need you to travel to the jungle of Feralas, once home to the city state of Eldre’thalas. In the area just south of Eldre’thalas there should be some ruins...\n\nI believe the locals call it the High Wilderness. Our scouts have reported that the Ogres holding the ruins have inadvertently dug up some valuable Arcane artifacts. I want you to go down there and get me those artifacts...\n\nBefore those big oafs crush them with their feet! Now get going, quickly!', 

'Gather 4 Arcane Artifacts from the High Wilderness in Feralas.', 

'What’s that you got there?...\n\nBy the Sunwell! These are perfect! Yes yes, I’m sure some of these will assist our cause! You have my thanks $R, you have my thanks indeed...\n\nHere is your little trinket, now get going!\n\nI have research to do.', 

'What are you waiting for?\n\nEvery moment you delay some fat Ogre can crush an irreplaceable relic!\n\nGet going! We’re counting on you.', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');

-- AIDING THE SUNBORNE // Night Elf

SET @quest_entry = 80000;
SET @quest_zone = 141;
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 650;
SET @quest_level = 15;
SET @min_level = 10;
SET @questgiver_id = 80002;
SET @quest_finisher = 1752;
SET @nextquest = 80001;
SET @nextquestinchain = 80001;
SET @prevquest = 0;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80003;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 1;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Aiding the Sunborne', 

'Ishnu-alah, traveller! While our people struggle with problems on our borders, they\'re not the only ones.\n\nSeven thousand years ago, my husband was exiled from Hyjal due to his use of the outlawed Arcane magics.\n\nHe and the other exiles created a new kingdom called Quel\'thalas, during the last conflict their home was entirely razed, and almost their entire people slaughtered.\n\nRecently I\'ve heard from our new allies across the sea that a group of them intends to consolidate and settle a new home... While we have our reservations about their past, they are still family and they should not bear the scorn for the actions of their ancestors. If you have the time or will, please assist them!\n\nI\'ve been told that Caledra Dawnbreeze in Stormwind Keep is the representative of this movement.\n\nOh and there\'s no need to mention me. It would appear far more amicable if the offer came from yourself.', 

'Speak to Caledra Dawnbreeze in Stormwind Keep.', 

'Y-You seek to assist us in our efforts? Truly?\n\nI am surprised but I would never turn away a helpful hand...I apologize for my earlier outburst, the Kaldorei in this city have not been kind to my people.\n\nPerhaps by working together we could change that in time, we are both part of the Alliance after all!\n\nOur people have setup a new settlement called \'thalas on the coast north of Stratholme, bordering Quel\'thalas.\n\nHowever, setting up a new home will be difficult and we have run into our share of issues. We\'re grateful for your help! I shall sum up our current situation for you.', 

'What is it Kaldorei? I do not have the time for your lectures or scorn.', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, rewitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, rewitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, rewitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, rewitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
update quest_template set ObjectiveText1 = 'Listen to Caledra\'s Story' where entry = @quest_entry;
update quest_template set RequiredRaces = 8 where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');   

-- SMASHING ZUL’MASHAR

SET @quest_entry = 80004;
SET @quest_zone = 1519; 
SET @faction_id = 269;
SET @faction_count = 500;
SET @xp_or_money = 8000;  
SET @reward_money = 25000;  
SET @quest_level = 58;
SET @min_level = 58;
SET @questgiver_id = 80006; 
SET @quest_finisher = 80006;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80003;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 8560;
SET @creature_to_kill_2 = 8561;
SET @creature_to_kill_3 = 12261;
SET @creature_to_kill_4 = 8562;
SET @creature_to_kill_1_count = 5;
SET @creature_to_kill_2_count = 5;
SET @creature_to_kill_3_count = 5;
SET @creature_to_kill_4_count = 5;
SET @required_item_1 = 0;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Smashing Zul’mashar', 

'Greetings $N! I see that you have done quite a lot of work for Anu’delen, but now the time has come for something more serious than fetching artifacts.\n\nAlah’thalas is not far from the Scourge or the Amani, after the fall of Quel’thalas our people can no longer keep the rampaging Forest Trolls in check.\n\nOur scouts have reported that the Troll population of Zul’mashar in the Eastern Plaguelands is being converted to the Undead at a rapid pace.\n\nWe cannot have this, Forest Trolls are bad enough, we don’t need to deal with an Undead version.\n\nGo there, exterminate both the living and the dead, we can’t allow those beasts to go out of control.
', 

'Venture to Zul’mashar in the Eastern Plaguelands and kill Mossflayer Scouts,  Mossflayer Shadowhunter, Infected Mossflayer, Mossflayer Canniva, five each.', 

'Well done friend, well done indeed… Keep this up and we will continue the work started by our ancestors.\n\nThe vile Forest Trolls and the Scourge cannot be allowed to grow in numbers, it is our duty to keep them both down and eventually exterminate them.', 

'Well then? Is the deed done?', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set RewOrReqMoney = @reward_money where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');

-- SECURING THE SUPPLY LINES FROM THE HORDE

SET @quest_entry = 80005;
SET @quest_zone = 1519; 
SET @faction_id = 269;
SET @faction_count = 250;
SET @xp_or_money = 8000;  
SET @reward_money = 1050;  
SET @quest_level = 20;
SET @min_level = 20;
SET @questgiver_id = 80006; 
SET @quest_finisher = 80006;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80004;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 0;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 80007;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 7;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Securing the supply lines from the Horde', 

'Greetings $R and thank you for assisting Alah’thalas’s efforts.\n\nWe’re happy to be a part of the Alliance, unfortunately our allegiance with you has put us at odds with the Horde.\n\nEven now Horde members are raiding and pillaging our supply lines and putting our territories and Alah’thalas itself at risk!\n\nPut an end to them $R it is imperative for our survival.', 

'Kill 8 Horde Players.', 

'Thank you $R, I can’t imagine that this task was easy but your help is greatly appreciated. Without vital supplies, Alah’thalas cannot become self-sufficient.', 

'How are you dealing with your mission?', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set ObjectiveText1 = "Horde players killed" where entry = @quest_entry;
update quest_template set RewOrReqMoney = @reward_money where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');

-- HELP WITH A COMPASSIONATE MATTER

SET @quest_entry = 80006;
SET @quest_zone = 1519; 
SET @faction_id = 269;
SET @faction_count = 50;
SET @reward_money = 500; 
SET @xp_or_money = 1000; 
SET @quest_level = 20;
SET @min_level = 20;
SET @questgiver_id = 80001; 
SET @quest_finisher = 80001;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80002;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 80004;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Help With a Compassionate Matter', 

'Hello $R I have a...troubling issue.\n\nA child was sent from Stormwind and she won’t stop babbling.\n\nQuite frankly she is interfering with my work, I was apparently the most qualified to take care of her but I’d appreciate it if you helped her out with her request since you’re a great hero and all.\n\nYes yes! I will pay you too! Please help!\n\n
<Anu’delen clearly appears to be at his wits end!>', 

'Talk to Anu’delen again if you wish to help him out.', 

'Thank the Sunwell! You have no idea how much this matters to me...\n\nPeace and quiet is important while doing this vital work.\n\nTalk to the girl and help her out, this whistle can call her.', 

'So? Will you help me out?', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set RewOrReqMoney = @reward_money where entry = @quest_entry;
update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');

-- TESLINAH’S SEARCH

SET @quest_entry = 80007;
SET @quest_zone = 1519; 
SET @faction_id = 269;
SET @faction_count = 75;
SET @reward_money = 50; 
SET @xp_or_money = 1000; 
SET @quest_level = 20;
SET @min_level = 20;
SET @questgiver_id = 40020; 
SET @quest_finisher = 40020;
SET @nextquest = 0;
SET @nextquestinchain = 0;
SET @prevquest = 80006;
SET @reward_item_1 = 0;
SET @reward_item_2 = 0;
SET @reward_item_3 = 0;
SET @reward_item_4 = 0;
SET @reward_item_1_count = 80004;
SET @reward_item_2_count = 0;
SET @reward_item_3_count = 0;
SET @reward_item_4_count = 0;
SET @creature_to_kill_1 = 0;
SET @creature_to_kill_2 = 0;
SET @creature_to_kill_3 = 0;
SET @creature_to_kill_4 = 0;
SET @creature_to_kill_1_count = 0;
SET @creature_to_kill_2_count = 0;
SET @creature_to_kill_3_count = 0;
SET @creature_to_kill_4_count = 0;
SET @required_item_1 = 0;
SET @required_item_2 = 0;
SET @required_item_3 = 0;
SET @required_item_4 = 0;
SET @required_item_1_count = 0;
SET @required_item_2_count = 0;
SET @required_item_3_count = 0;
SET @required_item_4_count = 0;

replace into quest_template (entry, patch, Method, ZoneOrSort, MinLevel, QuestLevel, MaxLevel, Type, RequiredClasses, RequiredRaces, RequiredSkill,
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
StartScript, CompleteScript) values

(@quest_entry, '0', '2', @quest_zone, @min_level, @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 

'Teslinah’s Search', 

'Hello miss/mister my name is Teslinah… Please I need your help!\n\nMy mommy and I were in Farstrider Lodge after fleeing from all the bad up north...\n\nBut when we were in Stormwind we got separated! Miss Elsharin found me and took me here, believing my mommy would be here, but she’s not! Please miss/mister, will you help me?\n\nPretty please? The grumpy man over there only told me to sit in a corner and be silent, you will help me, won’t you?', 

'Talk to Anu’delen again if you wish to help him out.', 

'Her mom is missing you say? Let me see...\n\nThe girl’s name is Teslinah? We do have records of her and her mother’s arrival in Stormwind with the other refugees but she and her mother never showed up at the City hall for their registration.\n\nThis is troubling we can’t have people going missing in Stormwind, I will investigate, until my investigation is complete can I count on you to care for the girl?\n\nSince she was registered here in Stormwind I will issue some bonds to feed her properly.', 

'Yes what can I do for you $R?', 

'', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
      
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count
where entry = @quest_entry;

update quest_template set RewOrReqMoney = @reward_money where entry = @quest_entry;
update quest_template set nextquestid = @nextquest where entry = @quest_entry;
update quest_template set nextquestinchain = @nextquestinchain where entry = @quest_entry;
update quest_template set prevquestid = @prevquest where entry = @quest_entry;
	  
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'10','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'10','10');

