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
 '0', '0', '0', '18282', '0', '0', '0', '1500000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
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
(60002, 2, 1, 60, 0, 284, 60001, 60003, 60003, 'Cake is Real!', 'Yes! I\'m having a Birthday party! Can\'t you see the cake? Oh, true. There\'s none. Was it Chromie again? Hmm…$B$BBut you\'re absolutely right, it\'s not really a party with no cake on the platter. Could you, perhaps help me out with the ingredients?', 'Bring 5 Ice Cold Milk, 3 Small Egg and 10 Soothing Spices to Speedy', 'Thanks! I can now start preparing the cake.', 'Come oooon, I want to start cooking.', 1179, 3, 6889, 3, 3713, 10, 21215, 20, 0, 0),
(60003, 0, 1, 60, 0, 284, 60002, 0, 0, 'Thanks a lot', '', '', 'This is the best party I have ever had.$B$BThanks a lot for taking care of me for this entire year.', '', 0, 0, 0, 0, 0, 0, 51021, 1, 0, 0);

update item_template set script_name = 'turtle_party', spellid_1 = 26389, spellcharges_1 = 0 where entry = 51020;
