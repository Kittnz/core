update item_template set display_id1 = 15720 where name = 'Bronze Bruiser';

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values 
-- Artisan Leatherworker: Una
(3007,47200,3500,165,200,0),
(3007,47201,3500,165,200,0),
(3007,47202,3500,165,200,0),
(3007,47203,3500,165,205,0),
(3007,47204,3500,165,210,0),
(3007,47205,3500,165,210,0),
(3007,47248,3500,165,275,0),
(3007,47249,3500,165,280,0),
(3007,47250,3500,165,275,0),
(3007,47251,3500,165,280,0),
(3007,47252,3500,165,285,0),
(3007,47253,3500,165,275,0),
-- Artisan Leatherworker: Telonis
(4212,47200,3500,165,200,0),
(4212,47201,3500,165,200,0),
(4212,47202,3500,165,200,0),
(4212,47203,3500,165,205,0),
(4212,47204,3500,165,210,0),
(4212,47205,3500,165,210,0),
(4212,47248,3500,165,275,0),
(4212,47249,3500,165,280,0),
(4212,47250,3500,165,275,0),
(4212,47251,3500,165,280,0),
(4212,47252,3500,165,285,0),
(4212,47253,3500,165,275,0),
-- Artisan Tailor: Georgio Bolero
(1346,47212,3500,197,230,0),
(1346,47213,3500,197,235,0),
(1346,47214,3500,197,230,0),
(1346,47215,3500,197,225,0),
(1346,47216,3500,197,225,0),
(1346,47217,3500,197,230,0),
(1346,47218,3500,197,205,0),
(1346,47219,3500,197,210,0),
(1346,47220,3500,197,205,0),
(1346,47221,3500,197,205,0),
(1346,47222,3500,197,200,0),
(1346,47223,3500,197,200,0),
(1346,47224,3500,197,265,0),
(1346,47225,3500,197,265,0),
(1346,47226,3500,197,270,0),
(1346,47227,3500,197,260,0),
(1346,47228,3500,197,260,0),
(1346,47229,3500,197,265,0),
-- Artisan Tailor: Josef Gregorian
(4576,47212,3500,197,230,0),
(4576,47213,3500,197,235,0),
(4576,47214,3500,197,230,0),
(4576,47215,3500,197,225,0),
(4576,47216,3500,197,225,0),
(4576,47217,3500,197,230,0),
(4576,47218,3500,197,205,0),
(4576,47219,3500,197,210,0),
(4576,47220,3500,197,205,0),
(4576,47221,3500,197,205,0),
(4576,47222,3500,197,200,0),
(4576,47223,3500,197,200,0),
(4576,47224,3500,197,265,0),
(4576,47225,3500,197,265,0),
(4576,47226,3500,197,270,0),
(4576,47227,3500,197,260,0),
(4576,47228,3500,197,260,0),
(4576,47229,3500,197,265,0),
-- Artisan Blacksmith: Artisan Blacksmith
(3355,47206,3500,164,220,0),
(3355,47207,3500,164,220,0),
(3355,47208,3500,164,225,0),
(3355,47209,3500,164,225,0),
(3355,47210,3500,164,230,0),
(3355,47211,3500,164,230,0),
-- Artisan Blacksmith: Bengus Deepforge
(4258,47206,3500,164,220,0),
(4258,47207,3500,164,220,0),
(4258,47208,3500,164,225,0),
(4258,47209,3500,164,225,0),
(4258,47210,3500,164,230,0),
(4258,47211,3500,164,230,0),
-- Journeyman Blacksmith: Smith Argus
(514,47242,90,164,30,0),
(514,47243,90,164,75,0),
(514,47244,90,164,120,0),
-- Journeyman Blacksmith: Dane Lindgren
(957,47242,90,164,30,0),
(957,47243,90,164,75,0),
(957,47244,90,164,120,0),
-- Journeyman Blacksmith: Tognus Flintfire
(1241,47242,90,164,30,0),
(1241,47243,90,164,75,0),
(1241,47244,90,164,120,0),
-- Journeyman Blacksmith: Dwukk
(3174,47242,90,164,30,0),
(3174,47243,90,164,75,0),
(3174,47244,90,164,120,0),
-- Journeyman Blacksmith: Guillaume Sorouy
(3557,47242,90,164,30,0),
(3557,47243,90,164,75,0),
(3557,47244,90,164,120,0),
-- Journeyman Blacksmith: Basil Frye
(4605,47242,90,164,30,0),
(4605,47243,90,164,75,0),
(4605,47244,90,164,120,0),
-- Journeyman Blacksmith: Delfrum Flintbeard
(6299,47242,90,164,30,0),
(6299,47243,90,164,75,0),
(6299,47244,90,164,120,0),
-- Journeyman Blacksmith: Ug'thok
(10266,47242,90,164,30,0),
(10266,47243,90,164,75,0),
(10266,47244,90,164,120,0),
-- Journeyman Blacksmith: Groum Stonebeard
(10277,47242,90,164,30,0),
(10277,47243,90,164,75,0),
(10277,47244,90,164,120,0),
-- Journeyman Blacksmith: Thrag Stonehoof
(10278,47242,90,164,30,0),
(10278,47243,90,164,75,0),
(10278,47244,90,164,120,0);

replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) values
(83510, 9, 3, 'Schematic: Portable Wormhole Generator — Stormwind', '', 15274, 1, 64, 1, 1000, 250, 0, -1, -1, 24, 0, 202, 120, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47260, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(83511, 9, 3, 'Schematic: Portable Wormhole Generator — Orgrimmar', '', 15274, 1, 64, 1, 1000, 250, 0, -1, -1, 24, 0, 202, 120, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47261, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into npc_vendor values
-- Horde
(3413, 83511, 0, 0, 0, 0),
-- Alliance
(5519, 83510, 0, 0, 0, 0);

update item_template set inventory_type = 16 where entry = 60500;

replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (81035, 3542, 0, 0, 0, 'Jake Booker', 'Bowyer', 0, 15, 15, 273, 273, 0, 0, 20, 68, 16388, 1, 1.14286, 0, 18, 5, 0, 0, 1, 13, 17, 0, 68, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 21.5072, 29.5724, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3165, 0, 0, 0, 0, 524298, 0, '');

replace into npc_vendor values
(81035, 2512, 0, 0, 0, 0),
(81035, 2515, 0, 0, 0, 0),
(81035, 5439, 0, 0, 0, 0),
(81035, 11362, 0, 0, 0, 0),
(81035, 83517, 0, 0, 0, 0),
(81035, 15807, 0, 0, 0, 0);

replace into item_template values
 ('83513', '2', '10', 'Staff  of Insom\'ni', '', '20440', '2', '0', '1', '202524', '50631', '17', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '14', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3200', '0',
 '0', '121', '171', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10',
 '0', '0', '0', '9358', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '2', '0', '0', '85', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83514', '4', '2', 'Hermit\'s Mantle', '', '61110', '2', '0', '1', '56824', '14206', '3', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '17', '3', '5',
 '6', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '113', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '50', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('83515', '4', '0', 'Band of the Exile', '', '1006', '2', '0', '1', '40620', '10155', '11', '-1', '-1', '58',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '11', '4', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
 
 update quest_template set  
 rewchoiceitemid1 = 83513, rewchoiceitemcount1 = 1,
 rewchoiceitemid2 = 83514, rewchoiceitemcount2 = 1, 
 rewchoiceitemid3 = 83515, rewchoiceitemcount3 = 1  
 where entry = 40214;

update creature_loot_template set chanceorquestchance = 0.1 where item in (83241,83242,83243,83244);

delete from creature_loot_template where entry = 92213;
delete from creature_loot_template where item = 83240;

replace into creature_loot_template values (92213, 83233, 16.6, 1, 1, 1, 0);
replace into creature_loot_template values (92213, 83234, 16.6, 1, 1, 1, 0);
replace into creature_loot_template values (92213, 83237, 16.6, 1, 1, 1, 0);
replace into creature_loot_template values (92213, 83238, 16.6, 1, 1, 1, 0);
replace into creature_loot_template values (92213, 83239, 16.6, 1, 1, 1, 0);
replace into creature_loot_template values (92213, 83240, 16.6, 1, 1, 1, 0);
replace into creature_loot_template values (92213, 83236, 100, 2, 1, 1, 0);

update battlemaster_entry set entry = 13761 where bg_template = 5;

replace into item_template values
 ('83517', '2', '18', 'Balanced Light Crossbow', '', '11247', '1', '0', '1', '1408', '352', '15', '-1', '-1', '16',
 '11', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2900', '100',
 '2', '12', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update creature_template set display_id1 = 18756 where entry = 91712;
 update creature_template set display_id1 = 18755 where entry = 92180;
 update creature_template set npc_flags = 3 where entry = 2543;
 
 replace into creature_display_info_addon values(18755, 0, 0, 0, 0);
 replace into creature_display_info_addon values(18756, 0, 0, 0, 0);
 
set @gossip_menu_id = 45040; set @magic_number = 2543;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Dalaran, we are currently in the process of reconstruction, so I do apologize if our hospitality may be lacking at this moment.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 45041; set @magic_number = 92017;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hello, and welcome to Sorrowguard, I am Paladin Janathos, and I keep vigil over this place\n\nThis Stronghold was built before the first war as a means to watch the entrance westward into the Kingdom of Azeroth.\n\nIt has fallen into a state of disrepair since its fall during the first war.\n\nAfter its destruction I was sent here to attempt to reclaim it. While we have done some repairs and occupied the place, there is always more that can be done. Especially with the darkness of the swamps beside us, and the orcs lurking at Stonard.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into mangos_string values('10051','The battle for Sunnyglade Valley begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10052','The battle for Sunnyglade Valley begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10053','Let the battle for Sunnyglade Valley begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10054','The %s has taken %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10055','$n has defended %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10056','$n has assaulted %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10057','$n claims %s! If left unchallenged, the %s will control it in 1 minute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10058','Past grudges led you to your failure, what a waste...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10059','The timeway been changed and we were unable to find which events shifted it, and now it will take unpredictable effect.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10060','Great work, heroes! For these bitter few moments, lay down your weapons away from each other. And strike together at your common foe!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10061','Gladeshire Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10062','Gol\'Dregar Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
replace into mangos_string values('10063','Fort Valiance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

update mangos_string set content_default = 'The final battle is at hand, heroes. Join the fray and locate the hidden agents of the Infinite Dragonflight amongst your enemies!' where entry = 10060;

replace into mount_spells values (81239, 46519);
replace into mount_spells values (81240, 46520);

replace into companion_spells values (81258, 49515);

replace into item_template values
 ('83518', '9', '4', 'Plans: Imperial Plate Gloves', '', '811', '2', '0', '1', '12000', '3000', '0', '-1', '-1', '53',
 '0', '164', '270', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '47239', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update quest_template set rewitemid1 = 83518, rewitemcount1 = 1 where entry = 55300;