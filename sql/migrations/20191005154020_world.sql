replace into migrations values (20191005154020);


-- Remove speed boosters entirely, for now:
-- delete from miraclerace_gameobject where raceid in (1, 2);

-- Aurrius stuff:
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, buy_price) values
(51013, 'Hauberk of the Templar', 5, 25749, 1, 1, 5000),
(51014, 'Girdle of the Templar', 6, 31143, 1, 1, 5000),
(51015, 'Chausses of the Templar', 7, 24506, 1, 1, 5000),
(51016, 'Sabatons of the Templar', 8, 28396, 1, 1, 5000),
(51017, 'Gauntlets of the Templar ', 10, 28397, 1, 1, 5000),
(51018, 'Pauldrons of the Templar', 3, 26164, 1, 1, 5000),
(51019, 'Armet of the Templar', 1, 34495, 1, 1, 5000);
replace into creature_template (entry, name, subname, scale, level_min, level_max, health_min, health_max, display_id1, faction, type, inhabit_type, npc_flags) values
(50539, 'Jason Redick', 'Armorer', 1, 4, 7, 978, 987, 243, 35, 7, 3, 16388);
delete from npc_vendor where entry = 50539;		
replace into npc_vendor (entry, item) values 
(50539, 51013),
(50539, 51014),
(50539, 51015),
(50539, 51016),
(50539, 51017),
(50539, 51018),
(50539, 51019),
(50539, 5976);

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
 ('51020', '0', '0', '0', 'Turtle Erdbeerschnaps', 'Party means presents! Also party means a lot of joy. What joy is there with no schnaps?', '983', '1', '0', '1', '150000', '150000', '0', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '25037', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', '');
  
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
 ('51021', '0', '15', '0', 'Speedy\'s Jukebox', 'Dance like no one\'s watching.', '22303', '3', '0', '1', '200000', '200000', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1300', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '18282', '0', '0', '0', '900000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'turtle_radio');
 
replace into gameobject_template (entry, patch, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, script_name) values 
(1000055, 0, 1, 2091, 'Speedy\'s Jukebox', 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_turtle_radio');

replace into `broadcast_text` (`ID`, `MaleText`) values
('90300', 'Little box starts to crackle and seems like coming to life at your touch. Various buttons and levers are almost asking you to press them so the melody of your choosing could flow toward.');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90300', '90300'); 

replace into quest_template (entry, method, minlevel, questlevel, type, zoneorsort, prevquestid, nextquestid, nextquestinchain, title,
                             details, objectives, offerrewardtext, requestitemstext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, rewitemid1, rewitemcount1,
                             rewrepfaction1, rewrepvalue1) values
(60000, 2, 1, 60, 0, 284, 0, 60001, 60001, 'Party Means Presents', 'Oh, I know of a good present I\'d love to have. It\'s not near, not easy to get, not even something you could buy… Something untangible yet so much valuable.$B$BI haven\'t seen my li\'l fella Nozdormu so long and I\'m kinda miss him. What do you mean he\'s not available? Alrighty. What about Anachronos then? He\'s a bit stingy but he\'ll do as well.$B$BI\'d like to see him present. I mean come to party. Yeah, like in person. He\'s my li\'l sweet peach after all. Bring me to see him, $N. That''d be a great present for me. Sure thing for you too.', 'Make sure Speedy can see Anachronos today.', 'Yaaaaay! Best present and best party!', 'Are we already there?', 0, 0, 0, 0, 0, 0, 0, 0, 910, 500),
(60001, 2, 1, 60, 0, 284, 60000, 60002, 60002, 'Spirits of the Party!', 'There\'s something we truly miss now, my friend. Not dwarves. I mean, yes, we miss\'em all the time, since they are mostly busy with brewing something up. Oh, that reminds me, we need some liquor, spirits, wine and beverages of all sorts!$B$BI heard there are so many across the whole Azeroth. Could you please bring\'em in? No doubts you\'ll have your share as well.', 'Bring 20 Skin of Dwarven Stout to Speedy.', 'I heard they call it booze. Booze! Can you believe it? Hehehe!', 'Bring me the booze!', 2596, 20, 0, 0, 0, 0, 2594, 20, 0, 0),
(60002, 2, 1, 60, 0, 284, 60001, 0, 60003, 'Cake is Real!', 'Yes! I\'m having a Birthday party! Can\'t you see the cake? Oh, true. There\'s none. Was it Chromie again? Hmm…$B$BBut you\'re absolutely right, it\'s not really a party with no cake on the platter. Could you, perhaps help me out with the ingredients?', 'Bring 5 Ice Cold Milk, 3 Small Egg and 10 Soothing Spices to Speedy.', 'Thanks! I can now start preparing the cake.', 'Come oooon, I want to start cooking.', 1179, 3, 6889, 3, 3713, 10, 21215, 20, 0, 0),
(60003, 0, 1, 60, 0, 284, 60002, 0, 0, 'Happy Little Turtle', 'This is the best party I have ever had.$B$BThank you a lot for taking care of me for this entire year.', 'Have fun and enjoy the party.', 'This is the best party I have ever had.$B$BThank you a lot for taking care of me for this entire year.', '', 0, 0, 0, 0, 0, 0, 51021, 1, 0, 0);

update item_template set script_name = 'turtle_party', spellid_1 = 26389, spellcharges_1 = 0 where entry = 51020;

replace into creature_questrelation (id, quest)    values (16547, 60000); 
replace into creature_involvedrelation (id, quest) values (16547, 60000);

replace into creature_questrelation (id, quest)    values (16547, 60001); 
replace into creature_involvedrelation (id, quest) values (16547, 60001);

replace into creature_questrelation (id, quest)    values (16547, 60002); 
replace into creature_involvedrelation (id, quest) values (16547, 60002);

replace into creature_questrelation (id, quest)    values (16547, 60003); 
replace into creature_involvedrelation (id, quest) values (16547, 60003);

update creature_template set npc_flags='3' where entry='16547';

update quest_template set rewitemid2 = 51020, rewitemcount2 = 1 where entry = 60003;
update quest_template set reqitemid1 = 51022, reqitemcount1 = 1 where entry = 60000;
update quest_template set rewmoneymaxlevel=650 where entry in (60000, 60001, 60002, 60003);

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
 ('51022', '0', '12', '0', 'Carefully Written Birthday Card', 'Let\'s repeat it some time in the future. I\'ll be available next time in just a few eons ahead. Signed, Anachronos.', '31762', '2', '0', '1', '0', '0', '0', '-1', '-1', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1300', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) values (50550, 6, 2719, 0, 0, 0, 'Anachronos', null, 15192, 61, 61, 262000, 262000, 262000, 262000, 9471, 776, 3, 1.05, 1.14286, 1.2, 20, 5, 0, 3, 1, 1357, 1546, 0, 278, 1, 2000, 2000, 2, 512, 0, 0, 0, 0, 0, 0, 560, 770, 100, 2, 0, 0, 0, 100001, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'eventai', 0, 1, 0, 0, 3, 0, 0, 0, 2764783451, 0, 32770, 'birthday_dragon');

update creature_template set faction = 35 where entry = 50550;
update creature_template set npc_flags = 1 where entry = 50550;

replace into `broadcast_text` (`ID`, `MaleText`) values
('90301', 'Mortal! Your time hasn\'t come yet!\n\nBegone and be... what?\n\nAbout Speedy? You have my attention, young one...');
replace into `npc_text` (`ID`, `BroadcastTextID0`) values ('90301', '90301'); 

replace into broadcast_text (ID, MaleText) values ('90305', 'Yay! Birthday! I heard there\'s a custom to celebrate the birthday once a year and celebration means party. Party means presents! Party means treats! I also heard that party means a lot of joy. What joy is there with no liqour? I mean spirits.');
replace into npc_text (ID, BroadcastTextID0) values ('90305', '90305');
delete from quest_start_scripts where id=60000;
insert into quest_start_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (60000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90305, 0, 0, 0, 0, 0, 0, 0, 0, '');
update quest_template set startscript = 60000 where entry = 60000;
update quest_template set questflags = 1024 where entry = 60003;
