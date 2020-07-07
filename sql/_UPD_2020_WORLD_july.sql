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
