-- Make War Mode available from any level:
delete from npc_vendor where item = 80060;
replace into npc_vendor values (51540, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51541, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51542, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51543, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51544, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51545, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51546, 80060, 0, 0, 0, 0);
replace into npc_vendor values (51547, 80060, 0, 0, 0, 0);
-- Icepoint Crawler:
update creature_template set display_id1 = 981 where entry = 60545;
-- Greaves of the Elite Guard
update item_template set armor = 603 where entry = 60434;
-- Spawn timers (random):
update creature set spawntimesecsmin = 7200, spawntimesecsmax = 7200 where guid = 2567945;
-- Karazhan Crypt spawn timers:
update creature set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where map = 800 and spawntimesecsmin = 300;
update creature set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where map = 800 and spawntimesecsmin = 25;
-- Delete buggy PvP quests:
delete from quest_template where entry in (80255, 80302);
delete from creature_questrelation where quest in (80255, 80302);
delete from creature_involvedrelation where quest in (80255, 80302);
-- Quest Taming the Beast IV, add quest reward:
update quest_template set rewspell = 23356, rewspellcast = 1579 where entry = 40262;
-- Remove quest requirement Batskin Letter from quest A Dark Ranger's Mastery:
update quest_template set prevquestid = 0 where entry = 40260;
-- Removal of thise useless template is breaking trading window (cause unknown):
-- delete from item_template where entry = 0;
-- Temporal Bronze Disc:
update item_template set description = 'Given to you by Chromie to close time rifts around the timeways, but where does the energy go?', bonding = 1, map_bound = 269 where entry = 80008;
-- Waters of Vision should be off-harnd frill:
update item_template set class = 4, subclass = 0 where entry = 51861;
-- Fix dumb Dim Torch issue:
update spell_template set effect2 = 0 where entry = 46064;
-- Glyph of War additional description.
update item_template set description = 'You can no longer disable PvP mode but experience gain from all sources is increased. Effect persists after reaching level 60.' where entry = 80060;
-- Crescent Grove spawn timers:
update gameobject set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where map = 802 and spawntimesecsmin = 300;
-- Aggro range fixes for Stormwind Vault:
update creature_template set detection_range = 15 where entry in (60602, 60601, 60603, 93105, 60604);
-- Unseen Stalkers shouldn't drop plagued flesh samples.
delete from creature_loot_template where item = 13174 and entry = 91910;
-- Fix Little Pawn companion:
update companion_spells set spellid = 46484 where itemid = 51433;
-- Fix Nightmare Dreamrunner name:
update item_template set name = 'Nightmare Dreamrunner' where entry = 50407;
-- Make happy cloud happy again!
update spell_template set effectmiscvalue1 = 90978 where entry = 46519;
-- Foremax Klix should have a goblin model.
update creature_template set display_id1 = 7229 where entry = 91302;
-- Change Custodian A-01 to a lv 60 elite with stats to back it up, same with Earthshaper Thoron.
update creature_template set rank = 1, level_min = 60, level_max = 60, health_min = 7989, health_max = 9898, armor = 1400 where entry = 60634;
update creature_template set rank = 1, level_min = 60, level_max = 60, health_min = 7989, health_max = 9898, armor = 1400 where entry = 60635;
-- Fix Riding Zhevra mount:
update spell_template set effectmiscvalue1 = 50091 where entry = 46453;
replace into mount_spells values (50400, 46453);
replace into item_template values (50400, 15, 4, 'Barrens Zhevra', 'Zhevras are rarely used as mounts in Azeroth due to their stubborn nature and tendency to bite.', 22037, 3, 0, 1, 0, 0, 0, -1, -1, 40, 40, 762, 75, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
-- Skystormer Axe:
update item_template set spellid_1 = 7694 where entry = 81325;
-- Fix Tiny Shore Crab companion:
update spell_template set effectmiscvalue1 = 81019 where entry = 46496;
-- Fix Mechanical Squirrel companion:
update item_template set spellid_1 = 46498 where entry = 4401;
replace into companion_spells values (4401, 4055);
-- Pack Leader Sharn should be a humanoid:
update creature_template set type = 7 where entry = 91715;
-- WANTED: Hole Escapee:
update quest_template set objectives = 'Find the prisoner Baxxil near Ratchet and return him alive or dead to Hizzle at Sparkwater Port.', details = 'To those reading this message, a local prisoner named Baxxil has recently escaped from the hole after something of a tunneling incident, and escaped off the coast.\n\nHe has been reported and sighted just west of Ratchet in the Barrens. Justice must be dealt. Bring this prisoner back dead or alive, and return to Hizzle!' where entry = 55048;
-- Fixed Razzle's vendor list:
update npc_vendor set incrtime = 36000 where entry = 91256;
-- Tarqsiku should be an Elemental:
update creature_template set type = 4 where entry = 60544;
-- Fixed health values for Bael'modan Golems:
update creature_template set health_min = 700, health_max = 833 where entry = 60442;
-- Misc. Icepoint Rock fixes:
update creature_template set display_id1 = 981 where entry = 60605;
update creature_template set display_id1 = 18349 where entry = 60545;
update creature_template set scale = 0.7 where entry = 70040;
replace into creature_display_info_addon values (18349, 0, 0, 0, 0);
-- Fixed Dwarf Mage's starting gear:
delete from playercreateinfo_item where race = 3 and class = 8;
replace into playercreateinfo_item values (3, 8, 35, 1);
replace into playercreateinfo_item values (3, 8, 55, 1);
replace into playercreateinfo_item values (3, 8, 159, 2);
replace into playercreateinfo_item values (3, 8, 1395, 1);
replace into playercreateinfo_item values (3, 8, 4540, 4);
replace into playercreateinfo_item values (3, 8, 6096, 1);
replace into playercreateinfo_item values (3, 8, 6116, 1);
replace into playercreateinfo_item values (3, 8, 6948, 1);
-- Defias loot should not drop from mobs in Tirisfal Uplands:
update creature_template set loot_id = 0 where entry = 91352;
update creature_template set loot_id = 0 where entry = 91353;
update creature_template set loot_id = 0 where entry = 91772;
update creature_template set loot_id = 0 where entry = 91975;
update creature_template set loot_id = 0 where entry = 91980;
update creature_template set loot_id = 0 where entry = 91981;
update creature_template set loot_id = 0 where entry = 91773;
-- Hostile snowstorm weather in Icepoint Rock:
replace into game_weather values (5024, NULL, 0, 100, 0, 0, 100, 0, 0, 100, 0, 0, 100, 0);
-- Fixed loot tabled for Harbinger Aph’ygth:
update creature_template set loot_id = 65114 where entry = 65114;
-- Fix Lordaeron Remnants factions:
update creature_template set faction = 210, type = 7 where entry = 91352;
update creature_template set faction = 210, type = 7 where entry = 91353;
update creature_template set faction = 210, type = 7 where entry = 91772;
update creature_template set faction = 210, type = 7 where entry = 91975;
update creature_template set faction = 210, type = 7 where entry = 91980;
update creature_template set faction = 210, type = 7 where entry = 91981;
update creature_template set faction = 210, type = 7 where entry = 91773;
update creature_template set faction = 210, type = 7 where entry = 91976;
update creature_template set faction = 210, type = 7 where entry = 91978;
update creature_template set faction = 210, type = 7 where entry = 91979;
update creature_template set faction = 210, type = 7 where entry = 91977;
-- Fix Armored War Raptors spell:
update mount_spells set spellid = 46447 where itemid = 50401;
-- Update Rift Guard hp (nerf!!)
update creature_template set health_min = 12104, health_max = 12104 where entry = 65101;
-- More nerfs!
-- update creature_template set dmg_min = dmg_min+150, dmg_max = dmg_max+150 where entry between 65100 and 65107;
-- Remove Chromie:
delete from creature where guid = 2569278;
-- Insert hidden walls:
replace into gameobject values (5001521, 180322, 269, -1609.51, 7101.05, 23.7942, 6.04992, 0, 0, 0.116369, -0.993206, 300, 300, 100, 1, 0, 0);
replace into gameobject values (5001522, 180322, 269, -1606.15, 7115.99, 23.7218, 6.04992, 0, 0, 0.116369, -0.993206, 300, 300, 100, 1, 0, 0);
-- Add invisible trigger:
replace into creature_template values (66003, 262, 0, 0, 0, 'An Unknown Entity', null, 0, 63, 63, 9999, 9999, 0, 0, 1900, 35, 0, 1, 1.14286, 0, 20, 5, 0, 3, 1, 11, 11, 0, 290, 1, 1800, 1900, 1, 0, 0, 0, 0, 0, 0, 0, 387.6, 532.95, 100, 1, 0, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 222, 1110, '', 0, 3, 0, 0, 3, 0, 0, 0, 2147483648, 0, 32898, 0, '');
replace into creature values (2569287, 66003, 0, 0, 0, 269, 0, 0, -1591.57, 7106.07, 23.7356, 3.11391, 25, 25, 0, 100, 100, 0, 0, 0);
-- Fix Simple Flour exploit:
update item_template set sell_price = 150, buy_price = 550 where entry = 30817;
-- Molkerei's damned horse:
replace into item_template values (83520, 15, 4, 'Marshmallow', 'Molkerei\'s favorite steed.', 13108, 3, 64, 1, 100000, 0, 0, -1, -1, 40, 40, 762, 75, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
replace into mount_spells values (83520, 16083);
-- Restore correct name & conditions for Glyph of the Turtle:
update item_template set name = 'Glyph of the Turtle' where entry = 51230;
replace into conditions (condition_entry, type, value1, value2) values (80000, 15, 1, 2);
-- Add new NPCs Junior Foreman Silverbeard, Denalah Silverpoint and Melyndella. Commit by Kruxis.
REPLACE INTO creature_template (entry, display_id1, name, level_min, level_max, faction) VALUES (66000, 312, 'Junior Foreman Silverhand', 25, 25, 55);
REPLACE INTO creature_template (entry, display_id1, name, level_min, level_max, faction) VALUES (66001, 17540, 'Denalah Silverpoint', 38, 38, 371);
REPLACE INTO creature_template (entry, display_id1, name, level_min, level_max, faction) VALUES (66002, 10034, 'Melyndella', 15, 15, 35);
-- Update Rift Guard hp (reverse the nerf!!)
update creature_template set health_min = 14104, health_max = 14104 where entry = 65101;
-- Revised commit my Kruxis
REPLACE INTO creature_template (entry, display_id1, name, level_min, level_max, faction, health_min, health_max, mana_min, mana_max, armor, npc_flags, speed_walk, speed_run, detection_range, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, unit_class, holy_res, fire_res, frost_res, shadow_res, arcane_res, movement_type, regeneration) VALUES (66000, 312, 'Junior Foreman Silverhand', 25, 25, 55, 664, 712, 0, 0, 1009, 0, 1, 1.14286, 18, 36, 46, 0, 106, 1, 2000, 1, 0, 0, 0, 0, 0, 1, 3);
REPLACE INTO creature_template (entry, display_id1, name, level_min, level_max, faction, health_min, health_max, mana_min, mana_max, armor, npc_flags, speed_walk, speed_run, detection_range, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, unit_class, holy_res, fire_res, frost_res, shadow_res, arcane_res, movement_type, regeneration) VALUES (66001, 17540, 'Denalah Silverpoint', 38, 38, 371, 1305, 1035, 0, 0, 1370, 0, 1, 1.14286, 18, 57, 74, 0, 148, 1, 2000, 1, 0, 0, 0, 0, 0, 1, 3);
REPLACE INTO creature_template (entry, display_id1, name, level_min, level_max, faction, health_min, health_max, mana_min, mana_max, armor, npc_flags, speed_walk, speed_run, detection_range, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, unit_class, holy_res, fire_res, frost_res, shadow_res, arcane_res, movement_type, regeneration) VALUES (66002, 10034, 'Melyndella', 15, 15, 35, 328, 328, 0, 0, 20, 0, 1, 1.14286, 18, 21, 27, 0, 74, 1, 2000, 1, 0, 0, 0, 0, 0, 1, 3);
-- Harbinger Aph’ygth should not be slowable, rootable or stunned:
update creature_template set mechanic_immune_mask = 1022066674 where entry = 65114;
-- Fix Banshee's Veil:
replace into item_template values (60409, 4, 1, 'Banshee\'s Veil', '', 23747, 3, 0, 1, 17184, 4296, 16, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 14793, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 1, NULL);
delete from item_template where entry = 80762;
-- Fix Nightmare Dreamrunner:
update spell_template set effectmiscvalue1 = 50098 where entry = 46450;
-- Fix Chronoboon, Refreshment Table & Soulwell:
update item_template set spellid_1 = 50900 where entry = 83000;
update item_template set spellid_1 = 50900 where entry = 83002;
update item_template set spellid_1 = 50900 where entry = 83003;
