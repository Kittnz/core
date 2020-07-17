update item_template set spelltrigger_2 = 0 where entry = 51733;

update quest_template set objectives = 'Slay 20 Crypt Horrors in Terrorweb Tunnel.', details = 'Listen closely, for I have no time or strength to repeat, I\'m obviously dying here… Light … Elune, give me peace of death, I beg you…\n\n<Argent Watcher Mal\'adaris gazes on you with fierce intent.>\n\nTwenty of those horrors $R, and only one … it! Destroy\'em for all the living…\n\n<Argent Watcher Mal\'adaris points you directly to the north.>\n\nCave … no, a tunnel… Don\'t go alone.' where entry = 60065;
update quest_template set details = 'There are not many of those revent believers in the Light with desire to not only uphold the Law and Order but also to save humanity itself!\n\nHumanity is on a verge of survival as it had never been before! Alas, you don\'t have to trust a mere messenger of the Light on a word, yes!\n\nI dare you to check on it yourself without hesitation if you truly believe in the Holy Light! How? It is simple.\n\nYou might think that now isn\'t the time of war and strive while you traverse these stone walls and confines of the great Cathedral of Light here in Stormwind. In reality, however there are humans, out kin, who suffer the consequences of the Scourge invasion and strive for survival back at our homeland - Lordaeron.\n\nIf you are ready to help, then rack up and talk to me again to see the precipice of humanity\'s possible end where it\'s all started. Tirisfal Glades.\n\nOnce there talk to the emissary named Godrick Bell. He\'ll get you on track. Go with the Light.' where entry = 50301;
update quest_template set objectives = 'Bring 15 Bolts of Runcloth, 1 Golden Pearl, 20 Long Soft Tails and 15 Delicate Feathers to Fashionista''s apprentice and recieve one Fashion Coin as a reward.' where entry = 60035;

-- New community quests:

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
 ('51855', '0', '15', '0', 'Dirty Old Ring', 'It\'s so light it almost slipped out of your hand', '9833', '1', '0', '1', '0', '0', '11', '-1', '-1', '0',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '60130', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16384', '0', '0', '0', '0',
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
 ('51856', '0', '4', '0', 'Gold Ring', 'Solid gold. Shocking!', '9823', '2', '65600', '0', '1000', '1000', '11', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '1', '6', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16384', '0', '0', '0', '0',
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
 ('60130', '0', '2', '87', '6', '6', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', 'That Dirty Old Ring', 'A dirty old ring covered in mud has taken your attention. You felt, something... It wasn\'t rage, anger, happiness or sadness... Maybe it wasn\'t even a feeling, just a short whisper \"hey\". The feeling quickly passed. Using a small piece of cloth you tried to wipe off the mud... but no, the more you try to clean, dirtier the ring gets. Is it a magic ring? Guess it\'s nothing but you never know.', 'Find if someone knows more about magic rings in Goldshire.', 'With a small gesture of his right hand and silent whisper, the mud disappeared... instead, in its place stood a gold ring.', 'What? What is this? Don\'t waste my time! With all you adventurers running through this inn, making such a noise and fuss about little things like th- oh... wait!', '', '', '',
'', '', '51855', '0', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0',
'51856', '0', '0', '0', '1', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '360', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0','0',
0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values ('328','60130','10','10');
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values ('328','60130','10','10');

update quest_template set questflags = 512 where entry = 60130;

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values (285, 51855, 20, 0, 1, 1);
update creature_template set npc_flags = 16390 where entry = 3322;

update item_template set inventory_type = 17, class = 2, subclass = 5, sheath = 1 where entry = 51834;
update item_template set sheath = 2 where entry = 51833;
update item_template set sheath = 3 where entry = 51832;


-- Delgren the Purifier - No XP on kill, no loot, 10 seconds respawn.
UPDATE `creature_template` SET `flags_extra` = 2 + 64 + 524288, `loot_id`=0, `civilian`=0 WHERE `entry`=3663;
UPDATE `creature` SET `spawntimesecsmin`=10, `spawntimesecsmax`=10 WHERE `id`=3663;
DELETE FROM `creature_loot_template` WHERE `entry`=3663;

-- Feero Ironhand - No XP on kill, 10 seconds respawn.
UPDATE `creature_template` SET `flags_extra` = 64 + 524288 + 1048576, `civilian`=0 WHERE `entry`=4484;
UPDATE `creature` SET `spawntimesecsmin`=10, `spawntimesecsmax`=10 WHERE `id`=4484;

-- Delete non blizzlike graveyards for Deeprun Tram
DELETE FROM `game_graveyard_zone` WHERE  `id`=852 AND `ghost_zone`=2257;
DELETE FROM `game_graveyard_zone` WHERE  `id`=101 AND `ghost_zone`=2257;

-- Taim Ragetotem <Alterac Valley Battlemaster>, Thunderbluff
UPDATE `creature` SET `position_x`=-1384.38, `position_y`=-98.4701, `position_z`=159.018, `orientation`=2.93215 WHERE `guid`=24670;

-- Horde Warbringer, Thunderbluff
UPDATE `creature` SET `position_x`=-1381.13, `position_y`=-87.0034, `position_z`=159.532, `orientation`=3.14159 WHERE `guid`=26901;

-- Varimathras
UPDATE `creature` SET `orientation`='0.820305' WHERE  `guid`=31901;
UPDATE `creature_template` SET `scale`='1.2' WHERE  `entry`=2425;

-- Pattern: Icy Cloak - Micha Yance
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 2381 AND `item` = 4355;

-- Formula: Enchant Bracer - Lesser Deflection - Micha Yance
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `entry` = 2381 AND `item` = 11163;

-- Weighted Throwing Axe - Sarah Raycroft
DELETE FROM `npc_vendor` WHERE `entry` = 3541 AND `item` = 3131;

-- Balanced Throwing Dagger - Sarah Raycroft
DELETE FROM `npc_vendor` WHERE `entry` = 3541 AND `item` = 2946;

-- Striped Yellowtail - Hal McAllister
UPDATE `npc_vendor` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 3540 AND `item` = 21552;

-- Strong Fishing Pole - Lindea Rabonne
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` = 2383 AND `item` = 6365;

-- Flagon of Mead - Barkeep Kelly
DELETE FROM `npc_vendor` WHERE `entry` = 2366 AND `item` = 2594;

-- Southshore Stout - Barkeep Kelly
DELETE FROM `npc_vendor` WHERE `entry` = 2366 AND `item` = 3703;

-- Cherry Grog - Barkeep Kelly
DELETE FROM `npc_vendor` WHERE `entry` = 2366 AND `item` = 4600;

-- Cheap Beer - Barkeep Kelly
DELETE FROM `npc_vendor` WHERE `entry` = 2366 AND `item` = 19222;

-- Lesser Healing Potion - Nandar Branson
DELETE FROM `npc_vendor` WHERE `entry` = 2380 AND `item` = 858;

-- Lesser Mana Potion - Nandar Branson
DELETE FROM `npc_vendor` WHERE `entry` = 2380 AND `item` = 3385;

-- Fiery Cloak - Robert Aebischer
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 14400 WHERE `entry` = 3543 AND `item` = 4797;

-- Heavy Runed Cloak - Robert Aebischer
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 14400 WHERE `entry` = 3543 AND `item` = 4798;

-- Antiquated Cloak - Robert Aebischer
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 14400 WHERE `entry` = 3543 AND `item` = 4799;

-- Mighty Chain Pants - Robert Aebischer
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 14400 WHERE `entry` = 3543 AND `item` = 4800;

-- Legionnaire's Leggings - Robert Aebischer
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 14400 WHERE `entry` = 3543 AND `item` = 4816;

-- Weighted Throwing Axe - Kayren Soothallow
DELETE FROM `npc_vendor` WHERE `entry` = 2401 AND `item` = 3131;

-- Balanced Throwing Dagger - Kayren Soothallow
DELETE FROM `npc_vendor` WHERE `entry` = 2401 AND `item` = 2946;

-- Executor Staff - Ott
DELETE FROM `npc_vendor` WHERE `entry` = 3539 AND `item` = 3277;


-- Nefarian pet
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
 ('51857', '0', '4', '0', 'Blackrock\'s Lord Shirt', 'Who\'s the Lord now!?', '27943', '2', '0', '1', '0', '0', '4', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', '0', '28505', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
REPLACE INTO `creature_template` VALUES (51584,0,10095,0,0,0,'Chromatic Whelp','',0,1,1,64,64,0,0,0,35,0,1,1.14286,0.75,20,5,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,'');
replace into custom_pet_entry_relation (item_entry, creature_entry) values (51857, 51584);

update creature_spells set spellId_1 = 17228 where entry = 156290;
update creature_template set faction = 1254 where entry = 15495;


REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51590, 0, 6878, 0, 0, 0, 'Charlie the Cheerful', 'House Avernus', 342, 30, 30, 1605, 1605, 0, 0, 1200, 1625, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 524298, '');

update creature_template set faction = 35 where entry = 51590;

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51591, 0, 4712, 0, 0, 0, 'Zha\'nu', 'House Avernus', 342, 30, 30, 1605, 1605, 0, 0, 1200, 1625, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 524298, '');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51592, 0, 9334, 0, 0, 0, 'Miss Randy', 'House Avernus', 342, 30, 30, 1605, 1605, 0, 0, 1200, 1625, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 524298, '');
update creature_template set faction = 35 where entry = 51591;
update creature_template set faction = 35 where entry = 51592;
update creature_template set npc_flags = 0 where entry = 51592;
update creature_template set npc_flags = 0 where entry = 51591;
update creature_template set gossip_menu_id = 0 where entry = 51591;
update creature_template set gossip_menu_id = 0 where entry = 51592;

REPLACE INTO `creature_template_addon` (`entry`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(51591, 0, 0, 0, 0, 0, 10, 0, NULL),
(51592, 0, 0, 0, 0, 0, 10, 0, NULL);

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51593, 0, 2065, 0, 0, 0, 'Alaenas', 'Shadowleaf Infantry', 59000, 30, 30, 993, 993, 0, 0, 1200, 80, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 3, 0, 0, 100, 0, 0, 524298, '');

replace into broadcast_text (ID, MaleText) values ('90500', 'Ishnu-Alah, and welcome to the Shadowleaf Infantry Outpost, we came from Feralas and we are aiding Tyrande and her people in order to free this land from corruption, and also make sure the Horde doesn’t destroy our forests!\n\nOh, sorry if I am bothering you with our problems, since you are here, feel free to buy some food or even stay here for the night if you wish.');
replace into npc_text (ID, BroadcastTextID0) values ('90500', '90500');
replace into gossip_menu (entry, text_id, condition_id) VALUES ('59000', '90500', '0'); 

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51594, 0, 4841, 4842, 4843, 4844, 'Yaelara Strongfeather', 'Shadowleaf Infantry', 0, 40, 40, 1770, 1770, 0, 0, 1890, 79, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 6087, 6087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 6087, 0, 0, 0, 0, 525312, '');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51595, 0, 4841, 4842, 4843, 4844, 'Delarya Stonemoon', 'Shadowleaf Infantry', 0, 40, 40, 1770, 1770, 0, 0, 1890, 79, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 6087, 6087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 6087, 0, 0, 0, 0, 525312, '');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51596, 0, 4841, 4842, 4843, 4844, 'Syleria Silentbranch', 'Shadowleaf Infantry', 0, 40, 40, 1770, 1770, 0, 0, 1890, 79, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 6087, 6087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 6087, 0, 0, 0, 0, 525312, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000390, 0, 5, 25, 'Shadowleaf Infantry Outpost', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (1000391, 0, 19, 4332, 'Mailbox', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (50520, 0, 16221, 0, 0, 0, 'Mazoga', 'The Knights Templar', 59001, 30, 30, 1605, 1605, 0, 0, 1200, 35, 135, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 10, '');

replace into broadcast_text (ID, MaleText) values ('90501', 'I’m a free knight! I don’t have a lord. You got a problem with that?\n\n<She glares at you for a moment before lighting up>/n/nAh whatever... Welcome to our chapel! I can give you a sleeping bag or offer you some rations.');
replace into npc_text (ID, BroadcastTextID0) values ('90501', '90501');
replace into gossip_menu (entry, text_id, condition_id) VALUES ('59001', '90501', '0'); 