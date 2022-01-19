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
-- Fix A Journey into the Caverns:
replace into creature_involvedrelation values (65005, 80604);
-- Make Arc'tiras immune to frost:
update creature_template set mechanic_immune_mask = 1022066674, school_immune_mask = 16 where entry = 93107;
-- Update Zu'jin:
update creature_template set name = 'Zul\'jin', subname = 'Amani Warlord', faction = 1494 where entry = 80867;
-- NPC Guid 2562845, 2562891, 2562846 and 2562890 should be linked together:
replace into creature_linking values (2562846, 2562845, 3); 
replace into creature_linking values (2562890, 2562845, 3); 
-- Fix Black Morass spawn timers:
update creature set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where map = 269 and spawntimesecsmin = 180;
update creature set spawntimesecsmin = 10800, spawntimesecsmax = 10800 where map = 269 and spawntimesecsmin = 300;
-- Fixes for Arenytall Family Value:
replace into gameobject_template values (3000520, 3, 23430, 'Areyntall Strongbox', 0, 4, 1, 43, 3000520, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into gameobject_loot_template (entry, item, chanceorquestchance, mincountorref, maxcount, condition_id) values (3000520,60167,-100,1,1,0);
-- Hunter quests fixes:
replace into quest_template values (80755, 2, -261, 10, 0, 10, 0, 4, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 40262, 0, 0, 0, 0, 0, 0, 'Training the Beast', 'You now have the power to tame a pet, but you must also gain the skills to train it.', 'Speak with Diane Willowfield to learn the ability to train and feed your pets.', 'Yes, I will grant you the skills you need to train and guide your pet. Not only will you be able to teach your pet new abilities, you will now be able to feed your pet, as well as revive it, should it fall in battle.$B$BNow, go.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 420, 0, 240, 23357, 5300, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0);
replace into creature_questrelation values (60488, 80755);
replace into creature_involvedrelation values (60488, 80755);
-- Change respawn timer of Forgotten Tome object to 30 seconds:
update gameobject set spawntimesecsmin = 30, spawntimesecsmax = 30 where id = 2010823;
-- Raise the HP of all bosses in Crescent Grove by 2k flat:
update creature_template set health_min = 9526+2000, health_max = 9526+2000 where entry = 92111;
update creature_template set health_min = 13242+2000, health_max = 13242+2000 where entry = 92110;
update creature_template set health_min = 8780+2000, health_max = 8780+2000 where entry = 92109;
update creature_template set health_min = 9027+2000, health_max = 9027+2000 where entry = 92108;
update creature_template set health_min = 7412+2000, health_max = 7412+2000 where entry = 92107;
-- Argon Halmantle wisp display ID
UPDATE creature_template SET display_id1 = 5508 WHERE name = 'Argon Halmantle';
-- Kilroggs eye rename
UPDATE item_template SET name = '"Kilrogg\'s" Eye' WHERE entry = 81299;
-- Dragons to Dragon's
UPDATE item_template SET name = '"Genuine" Dragon\'s Claw' WHERE entry = 81298;
-- Fixed Blackflame Wand:
update item_template set range_mod = 100 where entry = 83215;
-- Da Lord of Da Forest:
update quest_template set objectivetext1 = 'Listen to Zul\'jin' where entry = 80801;
-- Fix Turbo-Charged Flying Machine & cloud mounts:
update spell_template set effectmiscvalue1 = 90977 where entry = 46225;
delete from mount_spells where itemid in (81239, 81240);
replace into mount_spells values (81239, 46519);
replace into mount_spells values (81240, 46520);
update spell_template set effectmiscvalue1 = 90979 where entry = 46520;
-- Buff Damage of Master Raxxieth by around 10%:
update creature_template set dmg_min = 220, dmg_max = 310 where entry = 92110;
-- Object Grain Sacks, change greeting text to : <The Grain is stored in a small sack.>:
update gameobject_template set name = 'Grain Sack' where entry = 2010824;
-- Boss Alarus of Karazhan Crypt needs to be buffed, make him unstunnable, and uninterruptable, increase his auto attack damage by 20%:
update creature_template set mechanic_immune_mask = 1022066674, school_immune_mask = 48, dmg_min = 380, dmg_max = 510 where entry = 91928;
-- Lower drop chance of Mysterious Cow Scroll from Cow to 0.5%:
update creature_loot_template set chanceorquestchance = 0.5 where item = 60149;
-- Fixes for Satisfaction for Shak:
update quest_template set details = 'Long before I came to this place, I was quite a valuable member of the Venture Co.\n\nThat was a long time ago though, and a different me, but if anything stuck, it\'s the stupid nickname I got.\n\nWhen I was one of the engineers, I was comissioned to make a design for a mega shredder to deforest Stonetalon.\n\nTurns out, another design was better than mine, and by quite a bit. I don\'t have a problem with that, but what I got a problem with is being fired from Foreman Klix for "letting him down".\n\nHe called me a "hack", and now the nickname has stuck. Bastard\'s got what\'s coming to him. You\'ll find him out at the Windshear crag where I used to work at the old lumbermill. He\'s an old coot and I doubt he\'s moved on.\n\nBring me his ring, it\'s this oversized studded thing he wears over his middle finger.' where entry = 55042;
-- Fixes for Adding a Little Sting:
update quest_template set objectives = 'Collect 5 Chunk of Boar Meat and 5 Scorpid Stinger and bring them to Hargosh in Sparkwater Port.' where entry = 55004;
-- Fix Snowball:
delete from mount_spells where itemid = 51249;
replace into mount_spells values (51249, 46452);
-- Fix Armored Red Raptor:
delete from mount_spells where itemid = 50403;
replace into mount_spells values (50403, 46502);
-- Fix Armored White Bear:
delete from mount_spells where itemid = 81158;
replace into mount_spells values (81158, 46202);
-- The Boran Family fix:
update quest_template set title = 'The Boran Family', Details = 'I come from a large family, one that once occupied the boroughs of Kul Tiras. We weren\'t exactly a rich family, but we were not poor either! I traveled out with two of my brothers when the third war started up in Lordaeron, hoping to earn some fortune and glory. I helped the navy , my brother Karl started work in Menethil Harbor, while Samual went to Southshore to assist the war effort.\n\nEver since I set sail years ago, I have had no communication with them, and would like to reach out if you could deliver a letter to the both of them. They must have thought I perished after so long without a word or peep and I want to ease their minds.', Objectives = 'Deliver the letters from Arnold Boran to his two brothers.', RequestItemsText = 'Have you seen my brothers yet? It will require travelling, but I would appreciate it greatly.', OfferRewardText = 'My family has always been close knit, and I know that such a long length without hearing from me would certainly cause worry. I am simply happy to dispell such concern and let them know all is fine. Thanks again, this has meant a lot for me.' where entry = 40141;
-- Fix Goblin barber vendor:
update creature_template set name = 'Zeez Fluxlight' where entry = 50054;
-- Witherbark Warleader quest drop fixed
REPLACE INTO creature_loot_template VALUES (91789, 60123, -100, 0, 1, 1, 0);
-- Update Antnormi Head quest
UPDATE quest_template SET ObjectiveText1 = "Collect Antnormi's Head" WHERE entry = 80605;
REPLACE INTO creature_questrelation VALUES (65005, 80605);
REPLACE INTO creature_involvedrelation VALUES (65004, 80605);
REPLACE INTO creature_involvedrelation VALUES (65005, 80604);
-- Update all Copper Veins to 900 seconds
UPDATE gameobject SET spawntimesecsmin = 900, spawntimesecsmax = 900 WHERE id = 1731;
-- The Tower of Lapidis IX quest should give key 60244 at start of quest
UPDATE quest_template SET srcitemid = 60244, srcitemcount = 1 WHERE entry = 40303;
-- Why are there so many Chromies?!
DELETE FROM creature WHERE guid IN (2569332, 2569331, 2569333);
-- Up the DR of SouthSea Sashes for quest
UPDATE creature_loot_template SET ChanceOrQuestChance = -50 WHERE item = 60208;
-- Invis trigger for quest 40295
REPLACE INTO gameobject_template VALUES (2010868, 5, 381, 'Quest 40295 Custom Trigger', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'custom_exploration_trigger');
-- Trigger locations. Don't commit guids please, there's a high chance that something will be overwritten on prod server because GMs build stuff for players!
delete from gameobject where id = 2010868;
replace into gameobject (id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (2010868, 1, 2638.33, -5393.39, 83.5813, 3.61251, 0, 0, 0.972407, -0.233291, 300, 300, 100, 1, 0, 0);
replace into gameobject (id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (2010868, 1, 2581.45, -5327.6, 78.5973, 2.51296, 0, 0, 0.951007, 0.309169, 300, 300, 100, 1, 0, 0);
replace into gameobject (id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (2010868, 1, 2669.08, -5285.41, 82.2823, 0.342899, 0, 0, 0.170611, 0.985339, 300, 300, 100, 1, 0, 0);
replace into gameobject (id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (2010868, 1, 2692.67, -5352.07, 86.3872, 5.37416, 0, 0, 0.439025, -0.898475, 300, 300, 100, 1, 0, 0);
-- Grammar: Draenic Communication
update quest_template set details = 'Akh Z\'ador is a Riftseeker who led us to this world. He was one of the few of our kind that knew the magic of our ancient ancestors. He was skilled enough to bring our entire tribe here, and that of the Fallow Sanctuary, with the help of the other lesser Riftseekers.\n\nA few weeks ago, he attempted to return to the old world in search of more exiles to bring to the Harborage. I suspect something went terribly wrong, for I could not detect his presence upon our old world with the Sanv Charm. You see, the magic he is using is old, and somewhat unstable. We barely understand its usage, and only the bright minds like Akh Z\'ador can manipulate it enough to travel.\n\nI need you to gather materials in order to cast a spell to find his location and see perhaps where it is he has gone. Local materials should work just fine. Gather six Tangled Essence from the Tangled Horrors to the east, and a Marsh-Murloc Eye from Murlocs at the coast.' where entry = '40032';
-- A Canon's Misfortune fix:
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES (3000525, 5, 381, 'Invisible Reset Trigger', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Fix Drape of the Herd:
update item_template set subclass = 1 where entry = 60488;
-- Fix Zebra (not Zhevra):
delete from mount_spells where itemid = 50426;
replace into mount_spells values (50426, 46446);
update spell_template set effectmiscvalue1 = 50102 where entry = 46446;
-- Goblin Hair Dyes:
replace into item_template values 
(80660, 0, 0, 'Goblin Hair Dye: Copper', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80661, 0, 0, 'Goblin Hair Dye: Ruby', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80662, 0, 0, 'Goblin Hair Dye: Red', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80663, 0, 0, 'Goblin Hair Dye: Purple', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye'),
(80664, 0, 0, 'Goblin Hair Dye: Black', '', 33449, 2, 0, 1, 50000, 0, 0, -1, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46029, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_hairdye');
replace into npc_vendor values (50054, 80660, 0, 0, 0, 0);
replace into npc_vendor values (50054, 80661, 0, 0, 0, 0);
replace into npc_vendor values (50054, 80662, 0, 0, 0, 0);
replace into npc_vendor values (50054, 80663, 0, 0, 0, 0);
replace into npc_vendor values (50054, 80664, 0, 0, 0, 0);
-- Object Grain Sacks, change greeting text to : <The Grain is stored in a small sack.>:
replace into broadcast_text (entry, male_text) values (2010824, '<The Grain is stored in a small sack.>');
replace into npc_text (id, broadcasttextid0) values (2010824, 2010824);
-- 760 Lost One Muckdweller has respawn timer set too fast:
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where id = 760;
-- 3810 Elder Ashenvale Bear has respawn timer set too fast:
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where id = 3810;
-- Transmog quests fixes:
update quest_template set objectives = 'Complete Fashionista\'s apprentice\' request and receive one Fashion Coin as a reward.', details = 'Greetings!\n\nAren\'t you here for some Fashion Coins exchange? Well then, one will cost you some materials. Here\'s what we need at the moment...\n\nI need all the items on the list and not a single one of it less. Make sure they aren\'t damaged or chipped.' where title like '%Fashion Demands Sacrifices%';
update item_template set description = '' where entry = 51217;
-- Fix Wooden Planter:
update item_template set spellid_1 = 46062 where entry = 51705;
-- Grammar: The Grumbling Grove:
update quest_template set details = 'Okay, look. Any treasure hunter is gonna find some haunted treasure from time to time, see? And we can\'t go back to the boss empty-handed. I mean CAN\'T.\n\nLike "he\'ll have us shipped off to the mines" can\'t.\n\nSo here\'s what we\'re gonna do, okay? We\'re gonna try and get this thing anyway. You\'ve done good so far, kid, so you think you\'re up for a little more enforcing? There seem to be more of the first expedition\'s mechs in the little forest on the other side of the valley, and... uh... some vultures that don\'t look real natural. Clear \‘em out, and we\'ll see what\'s in there.' where entry = 80106;
-- Fixed Alpha Agression quest drop:
update creature set id = 60420 where id = 91355;
delete from creature_template where entry = 91355;
-- Spirit of Palkeote adjustments:
update creature_template set rank = 1, health_min = 7679, health_max = 7879, dmg_min = 180, dmg_max = 230  where entry = 51598;
-- Picnic Basket fixes:
update item_template set spellid_1 = 26846 where entry = 81116;
-- Cursed Darkhound tameable
update creature_template set type_flags = 1 where entry = 1548;
-- Bug #555
UPDATE quest_template SET requiredraces = 0 WHERE entry IN (367, 368, 369, 492, 445, 407);
-- Bug # 554
UPDATE gameobject SET position_z = 150.00 WHERE guid = 5637;
-- Bug # 557
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id = 3810;
-- Bug # 560 DR ref: https://classic.wowhead.com/item=3397/young-crocolisk-skin
UPDATE creature_loot_template SET Chanceorquestchance = -29 WHERE item = 3397;
-- Bug # 567 Duplicate Mailbox @ Blue Recluse
delete from gameobject where guid = 73246;
-- Bug # 572 Hazzuri Scav
UPDATE creature_template SET beast_family = 0 WHERE entry = 91824;
-- Bug # 581 Make the Right Choice
UPDATE quest_template SET objectives = "Bring 1 Righteous Orb and 1 Flawless Draenethyst Sphere to Fashionista's Apprentice and recieve 3 Fashion Coins as a reward.", ObjectiveText1 = "Collect 5 Righteous Orbs", objectivetext2 = "Collect a Flawless Draenethyst Sphere", reqitemcount1 = 1 WHERE entry = 60036;
-- Bug # 589 Res Gossip Menu fix
update broadcast_text SET male_text = "Return me to life.", female_text = "Return me to life." WHERE entry = 2547;
-- Big Chieftan's Kodo fix:
update spell_template set effectmiscvalue1 = 81102 where entry = 18363;
-- Fix Skull of Tham:
replace into item_template values (60417, 2, 14, 'Skull of Tham', '', 28226, 3, 0, 1, 34587, 8647, 23, -1, -1, 63, 58, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 8, 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9344, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 2, 6, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 1, NULL);
delete from item_template where entry = 80768;
-- The First Settlement quest rep fix
UPDATE quest_template SET rewrepfaction1 = 269 WHERE entry = 80289;
-- Item Hazzuri Primalist Defender (60234), change sheath to shield on back:
update item_template set sheath = 4 where entry = 60234;
-- Make Tarangos immune to stuns/slow.
update creature_template set mechanic_immune_mask = 1022066674 where entry = 49001;
-- Torta's Egg should be only lootable when on the quest and lower the damn drop:
update creature_loot_template set chanceorquestchance = -20, groupid = 6 where item = 60445;
-- Concavius should be a demon:
update creature_template set type = 3 where entry = 92213;
-- Quest The Azurestone:
update quest_template set details = 'Another of our kin, I take it you are coming here to seek your true purpose upon this world, or you have come to pay your tributes to this old group. The Azurestone Order is as old as Ironforge itself, and has its roots upon the building of our mighty city.\n\nIf you wish to join our order, and learn our lessons, you will need to first listen to the tale of the Azurestone.' where entry = 40338;
-- Armored Brewfest kodo is missing description, text is required:
update item_template set description = '' where entry = 80455;
-- Fix gossip for both Marrek Stromnur and other gnome trainer:
update broadcast_text set male_text = 'Greetings. I\'m a mage trainer, and you\'re a mage.' where entry = 2525;
-- Quest Red Skies of Durotar:
update quest_template set objectives = 'Bring 5 Chunks of Boar Meat, 3 Mutton Chops and 1 Bone Chew Toy to Bristlefur in Razor Hill.' where entry = 40298;
-- Fixed Frostname's Riding Bear name:
update item_template set name = 'Armored Frostmane Bear' where entry = 81158;
-- https://vanillawowdb.com/?spell=3455 Elixir of Fortitude shoult not be teached by Ainethil (should only be able to learn it from the scroll) https://vanillawowdb.com/?npc=4160 and should have a lv requirment of 35 (curently is 25):
delete from npc_trainer where spell = 3455;
delete from npc_trainer where spell = 3450;
-- Fix fucking zebras:
-- This is horned Ridnig Zhevra, a shop item: 
update item_template set name = 'Riding Zhevra', required_level = 0, required_skill = 0, required_skill_rank = 0 where entry = 50400;
-- This is Barrens Zebra, a rare drop item:
update item_template set name = 'Barrens Zebra' where entry = 50426;
-- Spellpower coefficient on Life Tap is too low again:
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/767:
update spell_template set effectbonuscoefficient1 = 0.80 where entry in (1454, 1455, 1456, 11687, 11688, 11689);
-- Killian Sanatha should be selling Fishing Rod, Shiny Baubles and Nightcrawlers besides those two recipes he already got in stock:
replace into npc_vendor values (5748, 6256, 0, 0, 0, 0);
replace into npc_vendor values (5748, 6529, 0, 0, 0, 0);
replace into npc_vendor values (5748, 6530, 0, 0, 0, 0);
-- Winterhoof Cleansing Totem:
update item_template set allowable_race = -1 where entry = 5411;
-- Quest: The Bloodsail Compound III #664
UPDATE creature_template SET faction = 35 WHERE entry = 8139;
-- Buff Magister Salorn
UPDATE creature_template SET spell_id1 = 12675 WHERE entry = 91719;
-- Typo fix
UPDATE creature_template SET NAME = "Razzari Priest" WHERE entry = 92148;
-- Unit flags change for corpse at Naxiar npc
UPDATE creature_template SET unit_flags = 514 WHERE entry = 60413;
-- Add Treasure Chest to Uldaman End Boss
replace into gameobject_template values (141979, 3, 1387, 'Ancient Treasure', 0, 0, 1, 43, 2010828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
delete from gameobject where id = 141979;
replace into gameobject (id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (141979, 70, 154.767, 288.163, -52.2262, 2.21672, 0, 0, 0.894967, 0.446132, 300, 300, 100, 1, 0, 0);
-- Stone Guardians have the wrong respawn timer, they respawn too fast:
update creature set spawntimesecsmin = 600, spawntimesecsmax = 600 where id = 60402;
-- Fix Kamio Stone.
update item_template set spellid_1 = 56042 where entry = 70043;
-- Childrens Week moved to monthly
UPDATE game_event SET occurence = 40320, start_time = "2022-02-01 12:00:00" WHERE entry = 10;
-- Venomous Jungle Serpent's do not have the correct amount of HP/damage for their level:
UPDATE creature_template SET health_min = 3050, health_max = 3400, dmg_min = 310, dmg_max = 420 WHERE entry = 91966;
-- Quest Kalanar's Mallet needs to be labeled as Crescent Grove quest:
update quest_template set zoneorsort = 5077 where entry = 40326;
-- Foulweald Shamans have the wrong respawn timer, they respawn too fast:
update creature set spawntimesecsmin = 600, spawntimesecsmax = 600 where id = 3748;
-- Graccu & Tea stuff:
delete from npc_vendor_template where item = 15723;
-- Custom graveyard system:
drop table if exists custom_graveyards;
create table custom_graveyards (
  `id` mediumint unsigned not null default 0 comment 'Identifier',
  `name` varchar(64) character set utf8 collate utf8_general_ci not null default '',
  `map_id` smallint unsigned not null default 0,
  `zone_id` smallint unsigned not null default 0,
  `area_id` smallint unsigned not null default 0,
  `max_level` tinyint unsigned not null default 0,
  `map_gy_alliance` smallint unsigned not null default 0,
  `gy_x_alliance` float not null default 0,
  `gy_y_alliance` float not null default 0,
  `gy_z_alliance` float not null default 0,
  `orientation_alliance` float not null default 0,
  `map_gy_horde` smallint unsigned not null default 0,
  `gy_x_horde` float not null default 0,
  `gy_y_horde` float not null default 0,
  `gy_z_horde` float not null default 0,
  `orientation_horde` float not null default 0,
  primary key (`id`) using btree
) engine = myisam character set = utf8 collate = utf8_general_ci comment = 'Custom graveyards' row_format = fixed;

replace into custom_graveyards values 
(1,  'Gurubashi Arena'     ,  0,     33,    2177,    60,  0, -13243.44, 239.78, 33.23, 5.3,    0, -13209.50, 221.45, 33.23, 2.95),
(2,  'Winter Veil Vale'    ,  0,     1,     1,       60,  0, -4828.36, 587.81, 428.40, 0.76,    0, -4828.36, 587.81, 428.40, 0.7),
(3,  'Venture Camp'        ,  1,     406,   4011,    10,  1,  1788.58, 1335.74, 144.35, 4.0,    1,  1788.58, 1335.74, 144.3, 4.0),
(4,  'Venture Camp'        ,  1,     406,   406,     10,  1,  1788.58, 1335.74, 144.35, 4.0,    1,  1788.58, 1335.74, 144.3, 4.0),
(5,  'Amani\'Alor'         ,  1,     406,   2041,    60,  1,  2947.03, 2557.98, 139.30, 2.3,    1,  2947.03, 2557.98, 139.3, 2.3),
(6,  'Farstrider\'s Lodge' ,  0,     38,    147,     10,  0, -5653.60, -4181.4, 391.90, 1.0,    0, -5653.60, -4181.4, 391.9, 1.0),
(7,  'Black Morass'        ,  269,   2366,  2366,    60,  1, -8453.40, -4690.7, -202.9, 4.9,    1, -8453.4, -4690.7, -202.9, 4.9),
(8,  'Caverns of Time'     ,  1,     1941,  1941,    60,  1, -8453.40, -4690.7, -202.9, 4.9,    1, -8453.4, -4690.7, -202.9, 4.9),
(9,  'Alah\'Thalas'        ,  0,     2037,  2040,    60,  0,  4285.19, -2859.71, 5.16, 5.06,    0,  4285.19, -2859.7, 5.16, 5.06),
(10,  'Karazhan Crypt'     ,   800,   41,    2563,    60,  0, -11111.5, -1832.20, 71.80, 6.1,    0, -11111.5, -1832.20, 71.8, 6.1),
(11,  'Karazhan Crypt'     ,   800,   41,    41,      60,  0, -11111.5, -1832.20, 71.80, 6.1,    0, -11111.5, -1832.20, 71.8, 6.1),
(12,  'Karazhan Crypt'     ,   800,   41,    10,      60,  0, -11111.5, -1832.20, 71.80, 6.1,    0, -11111.5, -1832.20, 71.8, 6.1),
(12,  'Karazhan Crypt'     ,   800,   10,    10,      60,  0, -11111.5, -1832.20, 71.80, 6.1,    0, -11111.5, -1832.20, 71.8, 6.1),
(13,  'Lapidis Isle'       ,   0,     409,   0,       60,  0, -11505.1, 3509.70, 66.1,  2.04,    0, -11111.5, -1832.20, 71.8, 6.1),
(14,  'Gilijim Isle'       ,   0,     408,   0,       60,  0, -13912.03, 2350.9, 28.57, 5.14,    0, -13912.03, 2350.9, 28.57, 5.1),
(15,  'Tirisfal Uplands'   ,   0,     85,    5028,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(16,  'Tirisfal Uplands'   ,   0,     85,    5029,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(17,  'Tirisfal Uplands'   ,   0,     85,    5030,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(18,  'Tirisfal Uplands'   ,   0,     85,    5031,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(19,  'Tirisfal Uplands'   ,   0,     85,    5032,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(20,  'Tirisfal Uplands'   ,   0,     85,    5033,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(21,  'Tirisfal Uplands'   ,   0,     85,    5034,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(22,  'Tirisfal Uplands'   ,   0,     85,    5035,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(23,  'Tirisfal Uplands'   ,   0,     85,    5036,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(24,  'Tirisfal Uplands'   ,   0,     85,    5037,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(25,  'Tirisfal Uplands'   ,   0,     85,    5038,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(26,  'Tirisfal Uplands'   ,   0,     85,    5039,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(27,  'Tirisfal Uplands'   ,   0,     85,    5040,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(28,  'Tirisfal Uplands'   ,   0,     85,    5041,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37),
(29,  'Tirisfal Uplands'   ,   0,     85,    5042,    60,  0, 2163.39, 2811.55, 22.93, 3.37,    0, 2163.39, 2811.55, 22.93, 3.37);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/772
-- Quest Traitor to the Bloodsail:
update quest_template set rewrepfaction2 = 21, rewrepvalue2 = 500 where entry = 9259;
update quest_template set rewrepfaction3 = 87, rewrepvalue3 = -500 where entry = 9259;
-- Uncovering Evil fix
update creature set spawntimesecsmin =5, spawntimesecsmax = 5 where guid = 2567562;
-- Weapon sheath change by Kruxis
UPDATE item_template SET sheath = 0 WHERE entry = 81357;
-- Dummy quest for War Mode opt-out:
replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,55055,0,0,0,0,0,'War Mode Cancelled','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
update quest_template set questflags = 1024 where entry = 55055;
-- Grol the Exile Fix
UPDATE creature_template SET unit_flags = 2 WHERE entry = 91285;
-- No need for this fucked script
UPDATE gameobject_template SET script_name = "" WHERE entry = 175322;
-- New NPCs Ancient Wolf Spirit & Margok Hatewind
REPLACE INTO gossip_menu VALUES (15611, 100401, 0);
REPLACE INTO gossip_menu VALUES (15612, 100402, 0);
REPLACE INTO broadcast_text VALUES (100402, '"The spirits are always calling, one just needs to listen to hear them." ', '"The spirits are always calling, one just needs to listen to hear them." ', 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO broadcast_text VALUES (100401, '<The Ancient Wolf Spirit seems to be distracted by something else.>', '<The Ancient Wolf Spirit seems to be distracted by something else.>', 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_template VALUES (66005, 3855, 0, 0, 0, 'Margok Hatewind', NULL, 15612, 40, 40, 1857, 2120, 0, 0, 2100, 29, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 70, 84, 0, 148, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 82011, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO creature_template VALUES (66004, 1236, 0, 0, 0, 'Ancient Wolf Spirit', NULL, 15611, 44, 44, 1857, 2050, 0, 0, 2050, 35, 0, 1, 1.14286, 2.4, 18, 5, 0, 0, 1, 61, 74, 0, 148, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO creature_equip_template VALUES (82011, 35, 0, 0);
-- replace warning text for quest 40172:
update quest_template set Objectives = 'Speak to Garfield ‘The Fox\' Sparkleblast if you wish to aid him.\n\n(This quest will align you with the Bloodsail Buccaneers  and reduce your reputation with the Steamwheedle Cartel significantly.)' where entry = 40172;
-- For quest 40036 - [A Broken Oath] Creature 6196 - [Spitelash Myrmidon]  does not drop item 60137 - [Myrmidon Signet]:
REPLACE INTO creature_loot_template VALUES (6196, 60137, -100, 0, 1, 1, 0);
-- Quest needs grammar/edits Objectives:...."a stop to the Scourge's advances"... and all refrences to the Scourge should be capitalized:
update quest_template set details = 'I hope that you have come to assist us. We are currently beset by the enemies on every side and could surely use any help that we can get. West of here is a farm where a large battle occurred recently between our troops and Humans of Lordaeron. We planned to use the dead there to boost our troops, but the Cult of the Damned appeared before us with the same idea.\n\nIf left unchecked, the Scourge will soon have a large force to attack from the west, and we cannot let that happen. If you are feeling up to it, I got a reward ready for anyone who is willing to put a stop to the Scourge advances.' where entry = 40139;
update quest_template set objectives = 'Father Brightcopf wants me to put a stop to the Scourge\'s advances on the Corinth Farm.' where entry = 40139;
-- Player's race capitalized from $r to $R:
update quest_template set details = '$R, I have a task for you. A rather important one. <Nargelas shows you a well-decorated jewelry box>.\n\nIn here lays a key to respect and right to rule the Tirisfal Uplands. You see, before the scourge invaded, my wife Grelda was supposed to inherit these lands from her father. On the coronation day, the contents of this box were supposed to pass on into her possession.\n\nMany moons have passed, and yet my courtiers and I had no luck in opening the lock on this thing. But during my research, a name came up. Vathras Millson. A historian or some such, but I heard that he specializes in these kinds of things. That is why I need you to head to Steepcliff Port and find him. I heard he owns an Inn now.\n\nOh, and do be careful. The box is worth more than your life.' where entry = 40278;
-- NPC Norga. Faction changes to Orgrimmar:
update creature_template set faction = 29 where entry = 91720;
-- updates loot ID for NPC "Rogue Conjurer" and deleted drop ITEM "Red Defias mask":
update creature_template set loot_id = 91762 where entry = 91762;
REPLACE INTO creature_loot_template VALUES
(91762,		118,	0.0026,	 0,		 1, 1, 0),
(91762,		414,	4.8235,	 0,		 1, 1, 0),
(91762,		765,	0.02,	 0,		 1, 1, 0),
(91762,		774,	0.2,	 0,		 1, 1, 0),
(91762,		785,	0.02,	 0,		 1, 1, 0),
(91762,		818,	0.66,	 0,		 1, 1, 0),
(91762,		829,	-80,	 0,		 1, 1, 0),
(91762,		856,	0.0103,  0,		 1, 1, 0),
(91762,		858,	1.4147,  0,		 1, 2, 0),
(91762,		955,	0.36,	 0,		 1, 1, 0),
(91762,		1179,	2.2268,	 0,		 1, 1, 0),
(91762,		1180,	0.34,	 0,		 1, 1, 0),
(91762,		1181,	0.52,	 0,		 1, 1, 0),
(91762,		1210,	0.2,	 0,		 1, 1, 0),
(91762,		1705,	0.02,	 0,		 1, 1, 0),
(91762,		2287,	0.02,	 0,		 1, 1, 0),
(91762,		2406,	0.02,	 0,		 1, 1, 0),
(91762,		2407,	0.02,	 0,		 1, 1, 0),
(91762,		2408,	0.02,	 0,		 1, 1, 0),
(91762,		2409,	0.02,	 0,		 1, 1, 0),
(91762,		2447,	0.02,	 0,		 1, 1, 0),
(91762,		2449,	0.02,	 0,		 1, 1, 0),
(91762,		2450,	0.02,	 0,		 1, 1, 0),
(91762,		2452,	0.02,	 0,		 1, 1, 0),
(91762,		2453,	0.02,	 0,		 1, 1, 0),
(91762,		2455,	0.6724,  0,		 1, 1, 0),
(91762,		2553,	0.02,	 0,		 1, 1, 0),
(91762,		2555,	0.02,	 0,		 1, 1, 0),
(91762,		2589,	38.3344, 0,		 1, 3, 0),
(91762,		2598,	0.04,	 0,		 1, 1, 0),
(91762,		2657,	0.0103,  0,		 1, 1, 0),
(91762,		2698,	0.18, 	 0,		 1, 1, 0),
(91762,		2770,	0.1, 	 0,		 1, 1, 0),
(91762,		2771,	0.04,	 0,		 1, 1, 0),
(91762,		2775,	0.02,	 0,		 1, 1, 0),
(91762,		2835,	0.04,	 0,		 1, 1, 0),
(91762,		2836,	0.02,	 0,		 1, 1, 0),
(91762,		2881,	0.02,	 0,		 1, 1, 0),
(91762,		2971,	0.1267,  0,		 1, 1, 0),
(91762,		2972,	0.0853,  0,		 1, 1, 0),
(91762,		2975,	0.0853,  0,		 1, 1, 0),
(91762,		2979,	0.0983,  0,		 1, 1, 0),
(91762,		2996,	0.02,    0,		 1, 1, 0),
(91762,		3013,	0.54,    0,		 1, 1, 0),
(91762,		3207,	0.1216,  0,		 1, 1, 0),
(91762,		3213,	0.0207,  0,		 1, 1, 0),
(91762,		3356,	0.02, 	 0,		 1, 1, 0),
(91762,		3609,	0.04, 	 0,		 1, 1, 0),
(91762,		3610,	0.02, 	 0,		 1, 1, 0),
(91762,		3643,	0.1035,  0,		 1, 1, 0),
(91762,		4292,	0.02,	 0,		 1, 1, 0),
(91762,		4293,	0.02,	 0,		 1, 1, 0),
(91762,		4345,	0.02,	 0,		 1, 1, 0),
(91762,		4346,	0.02,	 0,		 1, 1, 0),
(91762,		4359,	0.02,	 0,		 1, 1, 0),
(91762,		4361,	0.02,	 0,		 1, 1, 0),
(91762,		4363,	0.02,	 0,		 1, 1, 0),
(91762,		4364,	0.02,	 0,		 1, 1, 0),
(91762,		4405,	0.02,	 0,		 1, 1, 0),
(91762,		4408,	0.02,	 0,		 1, 1, 0),
(91762,		4409,	0.02,	 0,		 1, 1, 0),
(91762,		4537,	0.02,	 0,		 1, 1, 0),
(91762,		4541,	0.0052,  0,		 1, 1, 0),
(91762,		4592,	0.02,	 0,		 1, 1, 0),
(91762,		4605,	0.02,	 0,		 1, 1, 0),
(91762,		4677,	0.02,	 0,		 1, 1, 0),
(91762,		4678,	0.0828,  0,		 1, 1, 0),
(91762,		4683,	0.031,   0,		 1, 1, 0),
(91762,		4684,	0.0336,  0,		 1, 1, 0),
(91762,		4689,	0.0362,  0,		 1, 1, 0),
(91762,		4690,	0.0388,  0,		 1, 1, 0),
(91762,		5368,	0.0052,  0,		 1, 1, 0),
(91762,		5503,	0.02,    0,		 1, 1, 0),
(91762,		5573,	0.0103,  0,		 1, 1, 0),
(91762,		5574,	0.0181,  0,		 1, 1, 0),
(91762,		6271,	0.02,	 0,		 1, 1, 0),
(91762,		6342,	0.04,	 0,		 1, 1, 0),
(91762,		6344,	0.02,	 0,		 1, 1, 0),
(91762,		6347,	0.02,	 0,		 1, 1, 0),
(91762,		6348,	0.02,	 0,		 1, 1, 0),
(91762,		6510,	0.02,	 0,		 1, 1, 0),
(91762,		6515,	0.02,	 0,		 1, 1, 0),
(91762,		6549,	0.16,	 0,		 1, 1, 0),
(91762,		6555,	0.18,	 0,		 1, 1, 0),
(91762,		6716,	0.02,	 0,		 1, 1, 0),
(91762,		7109,	0.02,	 0,		 1, 1, 0),
(91762,		7288,	0.02,	 0,		 1, 1, 0),
(91762,		7351,	0.02,	 0,		 1, 1, 0),
(91762,		9744,	0.02,	 0,		 1, 1, 0),
(91762,		9746,	0.0284,  0,		 1, 1, 0),
(91762,		9751,	0.02,    0,		 1, 1, 0),
(91762,		9755,	0.0388,  0,		 1, 1, 0),
(91762,		9759,	0.0362,  0,		 1, 1, 0),
(91762,		9760,	0.02,    0,		 1, 1, 0),
(91762,		9761,	0.02,    0,		 1, 1, 0),
(91762,		9762,	0.0207,  0,		 1, 1, 0),
(91762,		30018,	2.5,	 0, -30018, 1, 0),
(91762,		30019,	0.5,	 0, -30019, 1, 0),
(91762,		30020,	0.5,	 0, -30020, 1, 0),
(91762,		30038,	0.5,	 0, -30038, 1, 0),
(91762,		30041,	0.5,	 5, -30041, 1, 0),
(91762,		30042,	0.5,	 7, -30042, 1, 0);
-- Quest zone for quest "The Rogue Heights" changed to Tirisfal section:
update quest_template set zoneorsort = 85 where entry = 40083;
-- Quest zone for quest "Magical Interference" changed to Tirisfal section:
update quest_template set zoneorsort = 85 where entry = 40084;
-- Quest zone for quest "Stealing Arcane Goods" changed to Tirisfal section:
update quest_template set zoneorsort = 85 where entry = 40085;
-- gretings text for NPC "Lord Cruk'zogg" updated:
update broadcast_text set male_text = 'I am Lord Cruk\'zogg, I lead here. We were once part of the great Gor\'dosh tribe, but now we are alone.\n\nYou will help me recreate the glory of Maul\'ogg!' where entry = 92180;
-- NPC "Cenarion Emissary Blackhoof" noq friendly for Aliance:
update creature_template set faction = 79 where entry = 15187;
-- Rename inapropriate faction names:
update faction set name1 = 'Red Dragonflight' where name1 = 'Bitch';
update faction set name1 = 'Blue Dragonflight' where name1 = 'Fuck';
update faction set name1 = 'Green Dragonflight' where name1 = 'Piss';
-- Misc. item fixed from Kruxis:
UPDATE item_template SET sheath = 3 WHERE entry = 1172;
UPDATE item_template SET item_level = 35 WHERE entry = 60124;
UPDATE item_template SET item_level = 15 WHERE entry = 60465;
-- Rename the custom item "Bloodforged Helm" to something else:
update item_template set name = 'Blood-Spattered Helm' where entry = 83216;
-- Mantle of Damnation drop chance to 0.25
DELETE FROM creature_loot_template WHERE item = 83464 AND chanceorquestchance = 12.5;
-- Quest typo:
update quest_template set objectives = 'Speak to Garfield \'The Fox\' Sparkleblast if you wish to aid him.\n\nTHIS QUEST WILL ALIGN YOU WITH THE BLOODSAIL BUCCANEERS AND REDUCE YOUR REPUTATION WITH THE STEAMWHEEDLE CARTEL SIGNIFICANTLY.' where entry = 40172;
-- Fixed Frayfeather Hippogryph mount:
update spell_template set effectmiscvalue1 = 81005 where entry = 46451;
-- Armored Violet Raptor mount:
replace into mount_spells values (50402, 46501);
-- Misc. fixes from Kruxis:
UPDATE item_template SET spellid_1 = 10799 WHERE entry = 50402;
UPDATE item_template SET bonding = 0, class = 15 WHERE entry = 60271;
UPDATE item_template SET bonding = 0, class = 15 WHERE entry = 1941;
-- Fixed Armored Obsidian War Raptor mount:
replace into mount_spells values (50404, 46503);
-- Kruxis commits A Tusken Affair / Graypaw Wolf
UPDATE quest_template SET ZoneOrSort = 1637 WHERE entry = 80300;
UPDATE creature_template SET skinning_loot_id = 3256 WHERE entry = 91989;
-- Darlthos Jewelery Box
UPDATE item_template SET name = 'Darthlo\'s Jewelry Box' WHERE entry = 60189;
-- Spelling fix Azure Scale
UPDATE quest_template SET details = 'When Gnomeregan first sent us here, they tasked us to obtain an Azure Scale from the Blue Dragonflight. Sadly, we have not had the means to do so! We\'ve been too busy with other projects, and—well—we didn\'t want to stir the hive. Especially since we don\'t have any actual military capabilities!\n\nNow with you around, there is a possibility! The Dragonflight has gathered around Lake Mennar to the northwest. Get me an Azure Scale from the Blue Dragonflight, and make sure to bring buddies. I\'d hate to have you die on my account!' WHERE entry = 40062;
-- The Shaow Well
UPDATE quest_template SET details = 'We need to head down and investigate this Shadow Well, my assistant Thalo tried and he has not returned.\n\nThe air is smelly and these black slimes are overflowing, they even seem resistant to my spells.\n\nDon\'t go alone.' WHERE entry = 80291;
-- Breaking Contracts
UPDATE quest_template SET Details = 'In the shady, hidden corners of Azeroth there is always a deal going on, you may not see it, but its there. I got word of a deal going down on Thoradin\'s Wall that I want you to go and steal. The contract itself is that of a dear rival of mine, and if I can do anything to interrupt his business and make a profit, well I\'m just smilling ear to ear.\n\nYou can find Thoradin\'s wall between Hillsbrad and the Arathi Highlands, it is what separates the two. Supposedly some ancient wall built by Stromgarde, or something of that nature.\n\nThe ramp should be on the Hillsbrad side of the wall, near the southern end, I do know they hired some Syndicate goons to watch the ramp, but they should be no problem for you. The main muscle will be an ogre name Thoregg who guards the packages there, him you should be careful of.\n\nGet the shipment, bring it back to me, easy yeah? Oh, and no matter what, don\'t open the crate.' WHERE entry = 40223;
-- Aerla Goldermoon
UPDATE broadcast_text SET male_text = 'We have many allies across the great sea, located far to the east within the Eastern Kingdoms. This dock leads toward the human city of Storwmind and the harbor located there. If you are looking to travel, this would be the boat to board\n\nIf it\'s not here yet, simply wait, it shall arrive soon.' WHERE entry = 60621;
-- Menethil Boat Text
UPDATE broadcast_text SET male_text = 'On the northern dock, you can board a ship that will carry you to Rut\'theran Village and Darnassus.\n\nFrom the southern dock, you can find passage across the Great Sea to the human city of Stormwind in the Eastern Kingdoms.\n\nSafe journeys to you!' WHERE entry = 8106;
-- Make Unrelenting Raider's (16126) Shadow Bolt Volley (27831) interruptible
-- Proofs:
-- https://youtu.be/s_Z4G9_O7rQ?t=151
-- https://youtu.be/wapLvjPI9mE?t=146
-- Flag before update: interruptFlags = 9
UPDATE spell_template SET interruptFlags = '11' WHERE entry = 27831; 
-- Misc. item fixes from Kruxis:
UPDATE item_template SET inventory_type = 7 WHERE entry in (83042, 83043, 83044, 83045);
UPDATE item_template SET display_id = 50161 WHERE entry = 65007;
-- COMMENTED OUT TILL 1.16.1 !!!
-- Attaching new effects to items:
-- update item_template set spellid_1 = 48008, spelltrigger_1 = 2, spellppmRate_1 = 0.85, spellcooldown_1 = 600 where entry = 65005;
-- update item_template set spellid_1 = 48004, spelltrigger_1 = 2, spellppmRate_1 = 0.9, spellcooldown_1 = 600 where entry = 65008;
-- update item_template set spellid_1 = 48003, spelltrigger_1 = 1 where entry = 65004;
-- update item_template set spellid_1 = 48002, spelltrigger_1 = 0, spellcooldown_1 = 600 where entry = 65003;
-- update item_template set spellid_1 = 48007, spelltrigger_1 = 1 where entry = 65014;
-- update item_template set spellid_1 = 48009, spelltrigger_1 = 1 where entry = 65006;
-- Shang Item Level Fixes:
-- update item_template set item_level = 64 where entry = 81368;
-- update item_template set item_level = 64 where entry = 81365;
-- update item_template set item_level = 64 where entry = 81367;
-- update item_template set required_level = 60 where entry = 81369;
-- update item_template set spellid_1 = 48005, spelltrigger_1 = 2, spellppmRate_1 = 1, spellcooldown_1 = 300 where entry = 65013;
-- Add Hexed Voodoo Pads 83064 to darkspear troll rep quartermaster:
replace into npc_vendor values (80949, 83064, 0, 0, 0, 0);
update item_template set sell_price = 50000, buy_price = 50000 where entry = 80304;
-- Viridian Hippogryph:
replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range, call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell, trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1, spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type, inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask, school_immune_mask, flags_extra, phase_quest_id, script_name) VALUES (80467, 18298, 0, 0, 0, 'Viridian Hippogryph', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
-- Artifact fix:
update gameobject_template set name = 'Arcane Artifact' where entry = 3000223;
-- Alarus loot fix:
delete from creature_loot_template where item = 83472 and groupid = 2;
-- Viszlow:
update creature_template set display_id1 = 11375 where entry = 40049;
-- Unstable Belt Of Striking cannot be disenchanted:
update item_template set disenchant_id = 49 where entry = 60502;
update item_template set display_id = 61090 where entry = 65007;
-- COT Remove Creature
DELETE FROM creature WHERE id = 66003;
-- Poison cloud for grain:
replace into gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, phase_quest_id, script_name) VALUES (2000560, 5, 27484, 'Poisoned Grain Effect (Unused)', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/803
UPDATE item_template SET spellcharges_1 = '-1', stackable = '10', sheath = 0, spellcooldown_5 = 0, spellcategorycooldown_5 = 0 WHERE entry = 81296;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/776
UPDATE creature_template SET name = 'Annabelle' WHERE entry = 60585;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/750
UPDATE quest_template SET objectives = 'Collect 10 Raptor Eggs and bring them to Grovug Mithrilmane stationed in Dun Agarth.' WHERE entry = 55101;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/692
UPDATE quest_template SET details = 'For many long years our neighbor was that of a furbolg, he has grown aged over the last few years but was extremely wise. Old Greypaw often kept to himself, and minded his own business, sometimes venturing over for a night time talk if he so needed the company.\n\nAs of lately I fear for his mental health, the other furbolg of the forest have begun to act irrationally, and I fear Greypaw may be succumbing to a similar fate. He has not stopped by in months, and has kept to his home to the north.\n\nHe has been aggressive to either me or Ardaen approaching and wishing to talk, but perhaps you may be able to speak with him, and ask if he is doing okay. It would certainly ease my mind to know an old friend is well.' WHERE entry = 40197;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/620
UPDATE broadcast_text SET male_text = 'Nothing is greater than fishing!' WHERE entry = 60510;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/596
UPDATE quest_template SET details = 'My research is ever continuing, though the mystery still remains afoot, my friend and associate Poppy Zabini is also a mage within the region.\n\nHe too has been researching into this matter, though I do believe his time is much more occupied than mine.\n\nWould you please head to meet with him? He is currently located just a small walk north to the manor with the blue roof.' WHERE entry = 55216;
UPDATE quest_template SET details = 'Back during the third war I was a renowned engineer. I did field repairs on flying machines, and all other contraptions. Some say that these inventions are simply Gnomish in design, but blast \'em!\n\nI always put my own twists on them for extra sturdiness. After all, it has to handle a Dwarf!\n\nI''m one of the big engineers here in Hawk\'s Vigil, but I\'m sort of running low on supplies to tinker with. I know those fellows up the cliff from here at the Ironforge Airport have tons just laying around.\n\nHead up there, and find my friend Orion Coalborn. He should have some extra supplies he\'d be willing to give me!' WHERE entry = 55212;
UPDATE quest_template SET details = 'The dark magic within Hawk\'s Vigil has seemingly appeared out of nowhere, its presence went undetected by myself and my kin for quite a while.\n\nOr at least has only cropped up the last few weeks at a level where many like myself and Marge would have come to notice it. I am under the belief that either a dormant force has been slowly gaining power for some time, or that perhaps something, or someone, has recently come to Hawk\'s Vigil with such potency.\n\nI wish you luck in finding what is causing the tainting darkness. I sensed something similar before the third war and do not wish to relive the experience.\n\nTell Marge what little I know, it may be of assistance.', OfferRewardText = 'Hmm... So he believes that this source of dark magic could be new to this region?\n\nI haven\'t thought of that as a posibility.' WHERE entry = 55217;
UPDATE quest_template SET details = 'So, Zabini may be onto something actually.  In all my research I have been unable to locate the source of this magic. Whoever has been using it seems to know their craft.\n\nHm... There may be a clue in the information he has provided.\n\nLord Commander Ryke knows all the comings and goings of Hawk\'s Vigil, and more precisely who is new to the town.\n\nIf someone has come in the last few weeks, we could consider them as a potential source of this darkness, or at the least, investigate the conjecture.', OfferRewardText = 'Interesting report. Let me check my records about the new people within the town and see if there is anything suspicious.' WHERE entry = 55218;
UPDATE broadcast_text SET male_text = 'There\'s a war coming $n... I don\'t know when, I don\'t know who we\'ll be fighting... But it\'s coming.' WHERE entry = 52024;
UPDATE quest_template SET details = '<Lord Commander Ryke finishes looking over his records.>\n\nSo it seems that we have had someone recently move into town, though he hails from the city of Stormwind - Harlus Ashbuckle.\n\nIt would be out of my jurisdiction to engage with him, being that this individual has... complications.\n\nHe is currently being investigated by SI:7. I only tell you this because of our investigation, but we have an operative in the town keeping tabs upon him.\n\nMeet up with the operative. He goes by the name of Robb Dursley and can usually be found near the town center.\n\nSee if you can get any information on this Harlus character.', OfferRewardText = 'Oh...\n\n<Robb Dursley\'s cheerful demeanor drops.>\n\nThat is why you\'ve come?\n\nWhat we are going to speak of must remain a secret, understood $N?' WHERE entry = 55219;
UPDATE quest_template SET details = 'The operations of the SI:7 are secretive in nature, and this must remain as such.\n\nIf Lord Commander Ryke\'s suspicions is true, then it means Harlus Ashbuckle would be breaking the vow he has sworn to the nobility of Stormwind.\n\nOf course, that\'s the same nobility that got him out of the Stockades despite his crimes including the practice of forbidden magic and murder.\n\nAs much as I have my aversion for the House of Nobles, I do what I am told.\n\nTake my report with my findings to Master Mathias Shaw, leader of the SI:7 within Stormwind\'s Old Town.\n\nKeep them sealed! Should the seal be broken and you find yourself within these walls, you may not see the light of day again.' WHERE entry = 55220;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/769
UPDATE quest_template SET details = 'Long ago I traveled the forests of Ashenvale in search of a place to call home. As the druids tended to The Crescent Grove, I figured such a tranquil location would make the perfect home. For centuries I tended to my garden and assisted the druids with whatever needs they had.\n\nAs of recently, a band of Furbolg calling themselves, the Groveweald, had moved in. They expelled me from my home and even had the audacity to burn it to the ground. In my panic, I left behind many valuable heirlooms and treasures. Without a doubt, most of it burnt to the ground.\n\nPlease travel to my burned down home in the Crescent Grove and gather from behind the house my mallet. It was given to me by my father, and I used to build my house. Collect it, for it means a lot to me.', Objectives = 'Travel to the Crescent Grove and find the burned down home of Kalanar Brightshine. Then retrieve Kalanar\'s Mallet and return it to him in Astranaar.' WHERE entry = 40326;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/861
UPDATE quest_template SET OfferRewardText = 'The Baron sent you? How kind of him to actually send reinforcements. Come here mate, lend me your ear, can\'t just say it out loud!' WHERE entry = 60152;
UPDATE creature_template SET display_id1 = 1280 WHERE entry = 51607;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/853
UPDATE quest_template SET RewRepValue1 = 800 WHERE entry = 8114;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/805
UPDATE quest_template SET title = "Aggressive Wildlife" WHERE entry = 40120;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/792
UPDATE quest_template SET RewRepFaction1 = 269 WHERE entry in (80290, 80291, 80292);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/601
UPDATE quest_template SET ZoneOrSort = 331 WHERE entry = 40326;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/501
UPDATE creature_template SET skinning_loot_id = 113 WHERE entry = 119;
-- NPC Nina Millson can to teach cooking already:
REPLACE INTO npc_trainer VALUES
(91754, 2551, 100, 0, 0, 5),
(91754, 2559, 50, 185, 10, 0),
(91754, 2561, 100, 185, 50, 0),
(91754, 2562, 200, 185, 75, 0),
(91754, 2563, 150, 185, 80, 0),
(91754, 3412, 500, 185, 50, 10),
(91754, 6502, 100, 185, 50, 0),
(91754, 6503, 300, 185, 125, 0),
(91754, 21176, 4000, 185, 200, 0);
-- NPC Ghoststalker level reduced for 22:
delete from creature_template where entry = 60420;
REPLACE INTO creature_template VALUES
(60420, 776, 0, 0, 0, 'Ghoststalker', NULL, 0, 22, 22, 573, 573, 0, 0, 922, 38, 0, 1, 1.24, 1.5, 18, 5, 0, 0, 1, 31, 38, 0, 98, 1, 2000, 2000, 1, 0, 0, 1, 0, 0, 0, 0, 32.8944, 45.2298, 100, 1, 0, 60420, 0, 3825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
-- Added quest item "Sack of Flour" for quest 40301:
delete from item_template where entry = 60444;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60444,1297,'Sack of Flour',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'Spiced, as all good things should be.',0);
-- Fix fake Serpentblooms:
update gameobject set id = 13891 where id = 19535 and map = 43;
-- GO "Tin Vein" alredy spawn outside a mountain:
update gameobject set position_x = 1714.48, position_y = -1285.90, position_z = 161.54 where guid = 48121;
-- Quest "Arugal's Folly" (60108) already is shareble:
update quest_template set questflags = 8 where entry = 60108;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/524
update creature_template set equipment_id = 3024 where entry = 6182;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/231
update quest_template set offerrewardtext = '$N, your successful re-engineering of the cauldrons is a tremendous victory for us!\n\nLet all within my presence hear: for service to the Forsaken and to the Horde as a whole above and beyond what was expected - in the face of overwhelming odds and incredible danger, might I add - I give $N this, and I extend upon him our undying gratitude as a true hero of the Horde.\n\nHuzzah!' where entry = 5238;
-- New go trigger for block menu of NPC Felstone (3 min)
REPLACE INTO gameobject_template VALUES
(2010698, 2, 0, 'ivent_trigger', 0, 32, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/812
UPDATE quest_template SET details = 'It would seem the Corinth family once held quite a few connections with both Lordaeron and the Stormwind Nobles.\n\nAll of them have died but Martin still remained, and fled to Stormwind after the war.\n\nAccording to some of these documents as part of his exile he was intending on heading to Menethil Harbor to settle there, we know this is not the case, but perhaps he had left something for us to find. Speak with the Innkeep at Menethil, ask if they had seen a Martin Corinth or Harlus Ashbuckle.' WHERE entry = 55222;
-- Changed wrong GO Goblin Contrio Panel to truely GO Site Control Panel:
update gameobject set id = 2010817 where guid = 4013179;
-- Changed quest zone for quests Bristleback Aggression and Preventive Strike to Red Cloud Mesa:
update quest_template set zoneorsort = 220 where entry in (60150, 60115);
-- Changed quest zone to Crescent Grove for quests Kalanar's Mallet:
update quest_template set zoneorsort = 5077 where entry = 40326;
-- Added spawn GO "Gunther's Lockbox" for quest In Gunther’s Favor:
delete from gameobject where ID = 1000177;
replace into gameobject (id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state, spawn_flags, visibility_mod) values (1000177, 0, -126.497, 772.794, 63.7299, 4.71796, 0, 0, 0.705134, -0.709074, 300, 300, 100, 1, 0, 0);
-- Trash loot added for NPC Graypaw Wolf:
REPLACE INTO creature_loot_template VALUES
(91989, 785, 0.02, 0, 1, 1, 0),
(91989, 818, 0.16, 0, 1, 1, 0),
(91989, 1206, 0.12, 0, 1, 1, 0),
(91989, 1210, 0.34, 0, 1, 1, 0),
(91989, 2406, 0.02, 0, 1, 1, 0),
(91989, 2408, 0.02, 0, 1, 1, 0),
(91989, 2409, 0.02, 0, 1, 1, 0),
(91989, 2447, 0.08, 0, 1, 1, 0),
(91989, 2449, 0.02, 0, 1, 1, 0),
(91989, 2450, 0.16, 0, 1, 1, 0),
(91989, 2452, 0.04, 0, 1, 1, 0),
(91989, 2555, 0.02, 0, 1, 1, 0),
(91989, 2657, 0.04, 0, 1, 1, 0),
(91989, 2672, 81.6873, 0, 1, 2, 0),
(91989, 2770, 0.12, 0, 1, 1, 0),
(91989, 2835, 0.02, 0, 1, 1, 0),
(91989, 2881, 0.02, 0, 1, 1, 0),
(91989, 3299, 3.2387, 0, 1, 1, 0),
(91989, 3301, 24.99, 0, 1, 1, 0),
(91989, 3394, 0.02, 0, 1, 1, 0),
(91989, 4292, 0.06, 0, 1, 1, 0),
(91989, 4293, 0.02, 0, 1, 1, 0),
(91989, 4345, 0.06, 0, 1, 1, 0),
(91989, 4346, 0.02, 0, 1, 1, 0),
(91989, 4408, 0.02, 0, 1, 1, 0),
(91989, 4409, 0.02, 0, 1, 1, 0),
(91989, 5573, 0.02, 0, 1, 1, 0),
(91989, 5574, 0.02, 0, 1, 1, 0),
(91989, 5635, 2.1591, 0, 1, 1, 0),
(91989, 5972, 0.02, 0, 1, 1, 0),
(91989, 6342, 0.02, 0, 1, 1, 0),
(91989, 6344, 0.02, 0, 1, 1, 0),
(91989, 6347, 0.02, 0, 1, 1, 0),
(91989, 6348, 0.04, 0, 1, 1, 0),
(91989, 6375, 0.02, 0, 1, 1, 0),
(91989, 6390, 0.02, 0, 1, 1, 0),
(91989, 6391, 0.02, 0, 1, 1, 0),
(91989, 6716, 0.02, 0, 1, 1, 0),
(91989, 7288, 0.02, 0, 1, 1, 0),
(91989, 10316, 0.02, 0, 1, 1, 0),
(91989, 11038, 0.02, 0, 1, 1, 0),
(91989, 11039, 0.02, 0, 1, 1, 0),
(91989, 30020, 0.5, 0, -30020, 1, 0),
(91989, 30021, 0.5, 0, -30021, 1, 0),
(91989, 30022, 0.5, 0, -30022, 1, 0),
(91989, 30024, 0.5, 0, -30024, 1, 0),
(91989, 30038, 0.5, 0, -30038, 1, 0);
-- hp update for https://github.com/slowtorta/turtlewow-bug-tracker/issues/862
update creature_template set health_min = 1000, health_max = 1000 where entry = 10482;
-- Item [Quel'dorei Cleric's Wand] have no shoot animation:
update item_template set display_id = 28218 where entry = 80545;
-- "Dry Hiding" gives Durotar Labor Union reputation:
update quest_template set rewrepfaction1 = 21 where entry = 55025;
-- Penus.
UPDATE item_template SET description = 'Has a note attached to the top.' WHERE entry = 60142;
-- Lapidis Isle Quest: Sailor's Innovation:
update quest_template set offerrewardtext = 'Ahh, yeah this should be everything, a meal worthy for the Admiral!', reworreqmoney = 18900 where entry = 40142;
-- Naxxramas First Kill shirt, better late than never:
replace into item_template (entry, class, subclass, name, description, display_id, quality, flags, buy_count, buy_price, sell_price, inventory_type, allowable_class, allowable_race, item_level, required_level, required_skill, required_skill_rank, required_spell, required_honor_rank, required_city_rank, required_reputation_faction, required_reputation_rank, max_count, stackable, container_slots, stat_type1, stat_value1, stat_type2, stat_value2, stat_type3, stat_value3, stat_type4, stat_value4, stat_type5, stat_value5, stat_type6, stat_value6, stat_type7, stat_value7, stat_type8, stat_value8, stat_type9, stat_value9, stat_type10, stat_value10, delay, range_mod, ammo_type, dmg_min1, dmg_max1, dmg_type1, dmg_min2, dmg_max2, dmg_type2, dmg_min3, dmg_max3, dmg_type3, dmg_min4, dmg_max4, dmg_type4, dmg_min5, dmg_max5, dmg_type5, block, armor, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, spellid_3, spelltrigger_3, spellcharges_3, spellppmrate_3, spellcooldown_3, spellcategory_3, spellcategorycooldown_3, spellid_4, spelltrigger_4, spellcharges_4, spellppmrate_4, spellcooldown_4, spellcategory_4, spellcategorycooldown_4, spellid_5, spelltrigger_5, spellcharges_5, spellppmrate_5, spellcooldown_5, spellcategory_5, spellcategorycooldown_5, bonding, page_text, page_language, page_material, start_quest, lock_id, material, sheath, random_property, set_id, max_durability, area_bound, map_bound, duration, bag_family, disenchant_id, food_type, min_money_loot, max_money_loot, extra_flags, other_team_entry, script_name) VALUES (51899, 4, 0, 'Frostweave Shirt of Frozen Souls', 'October 4, 2021 —  Kel\'Thuzad has been defeated for the first time! ', 24610, 2, 65568, 1, 0, 0, 4, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set spellid_1 = 26000 where entry = 51899;
-- -- https://github.com/slowtorta/turtlewow-bug-tracker/issues/892
UPDATE quest_template SET Details = 'Lake Falathim was a place I spent much of my youth, it was a place of relaxation and good times. Only now it is taken over by the Saltspittle, who attacked with ferocity and no remorse. Some died during the attack, but I was lucky to escape.\n\nWhen I was about to leave I left behind an item that is most valueable to me. My Uncle who died during the Battle of Hyjal left me a book in my possession. It is one he wrote about both his technique in battle and his experiences regarding war. I\'ve found much knowledge and wisdom from that book, and I desire to know everything that he had jotted down before his passing.\n\nTravel to Lake Falathim to the south west, and find my belongings. While you are there, make sure to get revenge, and slay the Saltspittle, their fins should do fine.', RequestItemsText = 'That place is crawling with murlocs, I would advise you steel yourself for what must be done.', EndText = 'That book meant quite a lot to me, I never thought I would see it again, thank you $C.' WHERE entry = 40230;
-- Bugfix https://github.com/slowtorta/turtlewow-bug-tracker/issues/499
update creature_loot_template set condition_id = 2 WHERE condition_id = 4215;

-- Southfury guild house
-- NPC 1: Razzik Goldbucket, goblin male, food/alcohol vendor. DisplayID 7100. Should sell food and alcohol. Will say the following lines when talked to: “Welcome to Southfury Trading Company, friend! Did ya come here for business? If you need something shipped, our first-class caravaneers got ya covered. Or are ya carryin’ a bit too much coin around and expectin’ some good-for-nothin’s to come after ya? No problem, we got some well-trained muscle to protect your pretty bottom! Or maybe you're lookin’ for some exotic wares from the South Seas? If money can buy it, we will get it for ya, promised! Southfury Trading Company - You got coin and we want it!”
-- NPC 2: Dragga Stonehand, orc female. DisplayID 6551. Wears balcksmith/worker clothing.
-- NPC 3: Southfury Bruiser, DisplayID 10704
-- NPC 4: Southfury Bruiser, DisplayID 550
REPLACE INTO creature_template VALUES
(60636, 7100, 0, 0, 0, 'Razzik Goldbucket', '', 0, 60, 60, 3100, 3100, 0, 0, 2861, 290, 5, 1, 1.14286, 0, 20, 5, 0, 0, 1, 104, 130, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60637, 6551, 0, 0, 0, 'Dragga Stonehand', '', 0, 60, 60, 3100, 3100, 0, 0, 2861, 290, 16388, 1, 1.14286, 0, 20, 5, 0, 0, 1, 104, 130, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60638, 10704, 0, 0, 0, 'Southfury Bruiser', '', 0, 60, 60, 3100, 3100, 0, 0, 2861, 290, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 104, 130, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60639, 550, 0, 0, 0, 'Southfury Bruiser', '', 0, 60, 60, 3100, 3100, 0, 0, 2861, 290, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 104, 130, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41073; set @magic_number = 60636;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Southfury Trading Company, friend! Did ya come here for business? If you need something shipped, our first-class caravaneers got ya covered.\n\nOr are ya carryin\' a bit too much coin around and expectin\' some good-for-nothin\'s to come after ya? No problem, we got some well-trained muscle to protect your pretty bottom! Or maybe you\'re lookin\' for some exotic wares from the South Seas? If money can buy it, we will get it for ya, promised!\n\nSouthfury Trading Company - You got coin and we want it!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
(60636, 2593, 0, 0, 0, 0),
(60636, 2594, 0, 0, 0, 0),
(60636, 2595, 0, 0, 0, 0),
(60636, 2596, 0, 0, 0, 0),
(60636, 2723, 0, 0, 0, 0),
(60636, 4600, 0, 0, 0, 0),
(60636, 117, 0, 0, 0, 0),
(60636, 159, 0, 0, 0, 0),
(60636, 414, 0, 0, 0, 0),
(60636, 422, 0, 0, 0, 0),
(60636, 787, 0, 0, 0, 0),
(60636, 1179, 0, 0, 0, 0),
(60636, 1205, 0, 0, 0, 0),
(60636, 1645, 0, 0, 0, 0),
(60636, 1707, 0, 0, 0, 0),
(60636, 1708, 0, 0, 0, 0),
(60636, 2070, 0, 0, 0, 0),
(60636, 2287, 0, 0, 0, 0),
(60636, 3770, 0, 0, 0, 0),
(60636, 3771, 0, 0, 0, 0),
(60636, 3927, 0, 0, 0, 0),
(60636, 4536, 0, 0, 0, 0),
(60636, 4537, 0, 0, 0, 0),
(60636, 4538, 0, 0, 0, 0),
(60636, 4539, 0, 0, 0, 0),
(60636, 4540, 0, 0, 0, 0),
(60636, 4541, 0, 0, 0, 0),
(60636, 4542, 0, 0, 0, 0),
(60636, 4544, 0, 0, 0, 0),
(60636, 4592, 0, 0, 0, 0),
(60636, 4593, 0, 0, 0, 0),
(60636, 4594, 0, 0, 0, 0),
(60636, 4599, 0, 0, 0, 0),
(60636, 4601, 0, 0, 0, 0),
(60636, 4602, 0, 0, 0, 0),
(60636, 8766, 0, 0, 0, 0),
(60636, 8932, 0, 0, 0, 0),
(60636, 8950, 0, 0, 0, 0),
(60636, 8952, 0, 0, 0, 0),
(60636, 8953, 0, 0, 0, 0),
(60636, 8957, 0, 0, 0, 0),
(60636, 21552, 0, 0, 0, 0);

-- Hand of wrath guild house
-- NPC 1: Sergeant Perth, forsaken female. DisplayID 3654. Will say the following lines when talked to: "The Hand of Wrath is a military unit led by Executor Rotheart. It is the iron hand of the Horde, crushing its enemies. The Hand serves the Warchief and the leaders of the races of the Horde. Founded out of the Forsaken Vanguard by the order of the Dark Lady as a way to forge brotherhood between all races of the Horde in the fires of war. Officers are straight down the tunnel if you're looking to join or have some business with us. If not then stop wasting my time."
-- NPC 2: Goma, orc female. DisplayID 12166. General goods vendor
REPLACE INTO creature_template VALUES
(60640, 3654, 0, 0, 0, 'Sergeant Perth', '', 0, 60, 60, 3100, 3100, 0, 0, 2861, 290, 1, 1, 1.14286, 0, 20, 5, 0, 0, 1, 104, 130, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60641, 12166, 0, 0, 0, 'Goma', 'General Goods', 0, 60, 60, 3100, 3100, 0, 0, 2861, 290, 4, 1, 1.14286, 0, 20, 5, 0, 0, 1, 104, 130, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.9664, 98.9538, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41074; set @magic_number = 60640;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Hand of Wrath is a military unit led by Executor Rotheart. It is the iron hand of the Horde, crushing its enemies. The Hand serves the Warchief and the leaders of the races of the Horde.\n\nFounded out of the Forsaken Vanguard by the order of the Dark Lady as a way to forge brotherhood between all races of the Horde in the fires of war. Officers are straight down the tunnel if you\'re looking to join or have some business with us. If not then stop wasting my time.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
(60641, 159, 0, 0, 0, 0),
(60641, 1205, 0, 0, 0, 0),
(60641, 1645, 0, 0, 0, 0),
(60641, 1708, 0, 0, 0, 0),
(60641, 2515, 0, 0, 0, 0),
(60641, 2519, 0, 0, 0, 0),
(60641, 2946, 0, 0, 0, 0),
(60641, 3030, 0, 0, 0, 0),
(60641, 3033, 0, 0, 0, 0),
(60641, 3107, 0, 0, 0, 0),
(60641, 3108, 0, 0, 0, 0),
(60641, 3131, 0, 0, 0, 0),
(60641, 3135, 0, 0, 0, 0),
(60641, 3137, 0, 0, 0, 0),
(60641, 4470, 0, 0, 0, 0),
(60641, 4471, 0, 0, 0, 0),
(60641, 4497, 0, 0, 0, 0),
(60641, 4498, 0, 0, 0, 0),
(60641, 6183, 0, 0, 0, 0),
(60641, 11284, 0, 0, 0, 0),
(60641, 11285, 0, 0, 0, 0),
(60641, 15326, 0, 0, 0, 0),
(60641, 15327, 0, 0, 0, 0);
-- COT UPDATE
REPLACE INTO `broadcast_text` VALUES (91976, 'It seems you\'ve fractured the timeline, $n. You weren\'t meant to perish here. You must correct your mistakes to align the timelines. I cannot do that for you. I cannot do that for you. ', 'It seems you\'ve fractured the timeline, $n. You weren\'t meant to perish here. You must correct your mistakes to align the timelines. I cannot do that for you. ', 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (91978, 'Please don\'t disturb me. Correcting the timeline requires an immense amount of concentration.', 'Please don\'t disturb me. Correcting the timeline requires an immense amount of concentration.', 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Second Neto has arrived
REPLACE INTO `creature` VALUES (2569310, 65130, 0, 0, 0, 269, 0, 0, -1541.75, 7113.94, 25.1502, 6.16236, 25, 25, 0, 100, 100, 0, 0, 0);
-- Remove Warlock's Doomguard loot:
update creature_template set loot_id = 0 where entry = 14385;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/899
UPDATE quest_template SET title = 'Search the Stockades', Objectives = 'Delve into the Stockades and find information about Martin Corinth.' WHERE entry = 55221;
-- Upland Remnants balance: Gheor
UPDATE creature_template SET health_min = 783, health_max = 879, armor = 810, attack_power = 105, ranged_attack_power = 110 WHERE entry = 91975;
UPDATE creature_template SET armor = 640, dmg_min = 24, dmg_max = 34, attack_power = 76, ranged_dmg_min = 27, ranged_dmg_max = 39 WHERE entry in (91980, 91981);
-- Added Blessing of the Wilds to QM of Cenarion Hold: Khazgrim/Shang
REPLACE INTO npc_vendor (entry, item, condition_id) VALUES (15293, 83092, 5);
-- Fucking Crescent Grove loot table shit stuff... just apply, its biting with Quest-loot
UPDATE creature_loot_template SET groupid = 2 WHERE entry = 92100 AND item = 60446;
UPDATE creature_loot_template SET groupid = 2 WHERE entry = 92101 AND item = 60446;
-- NPC update for Guild House: Coun
UPDATE creature_template SET equipment_id = 10036, level_min = 40, level_max = 40, subname = 'Southfury Trading Co' WHERE entry = 60638;
UPDATE creature_template SET equipment_id = 2949, level_min = 40, level_max = 40, subname = 'Southfury Trading Co' WHERE entry = 60639;
UPDATE creature_template SET level_min = 14, level_max = 14, subname = 'Southfury Trading Co' WHERE entry = 60636;
UPDATE creature_template SET level_min = 20, level_max = 20, subname = 'Southfury Trading Co' WHERE entry = 60637;
UPDATE creature_template SET level_min = 35, level_max = 35, subname = 'Hand of Wrath' WHERE entry = 60640;
UPDATE creature_template SET level_min = 24, level_max = 24, subname = 'Hand of Wrath' WHERE entry = 60641;
-- Giving better instructions on quest: Tinyfin
UPDATE quest_template SET details = 'Listen closely, for I have no time or strength to repeat, I\'m obviously dying here… Light… Elune, give me peace of death, I beg you...\n\n<Argent Watcher Mal\'adaris gazes on you with fierce intent.>\n\nTwenty of those horrors $R, and only one... it! Destroy \'em for all the living...\n\n<Argent Watcher Mal\'adaris points you directly to the north.>\n\nCave... no, a tunnel... Don\'t go alone.\n\nMy time here is over... Please slay those beasts... and report to Lord... Maxwell Tyrosus in the Light\'s Hope... Cha...\n\n<Argent Watcher Mal\'adaris falls unconcious.>', Objectives = 'Slay 20 Crypt Horrors in the Terrorweb Tunnel.' WHERE entry = 60065;
-- Editing loot_table for Rogue Enforcer: Gheor
REPLACE INTO item_template VALUES (91761, 4, 0, 'Black Rogue Mask', '', 32731, 1, 0, 1, 406, 81, 1, 31240, -1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO creature_loot_template VALUES (91761, 414, 4.8324, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 765, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 774, 0.12, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 785, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 818, 0.46, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 856, 0.0122, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 858, 1.3157, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 915, -80, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 954, 0.3, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 955, 0.54, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 1179, 2.3078, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 1180, 0.48, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 1206, 0.08, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 1210, 0.34, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 1705, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 1926, 1.15, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2287, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2407, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2447, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2450, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2452, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2453, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2455, 0.6441, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2553, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2555, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2589, 18.4474, 0, 1, 3, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2592, 19.5067, 0, 1, 2, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2598, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2601, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2657, 0.0153, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2772, 0.94, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2775, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2835, 0.24, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2882, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2883, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2971, 0.0397, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2972, 0.0458, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2975, 0.0366, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2979, 0.0183, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 2996, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 3012, 0.28, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 3207, 0.0305, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 3393, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 3394, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 3609, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 3643, 0.0458, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4292, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4293, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4294, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4345, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4346, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4349, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4408, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4409, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4537, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4541, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4605, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 4678, 0.0214, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 5500, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 5503, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 5573, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 5574, 0.0122, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 5578, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 5972, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6271, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6344, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6347, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6348, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6375, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6390, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6391, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6549, 0.04, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6555, 0.06, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 6716, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 7288, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 91761, 1.9934, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 10316, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 11038, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 11039, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 11081, 0.02, 0, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 30018, 2.5, 0, -30018, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 30021, 0.5, 0, -30021, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 30022, 0.5, 0, -30022, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 30024, 0.5, 0, -30024, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 30037, 2.5, 0, -30037, 1, 0);
REPLACE INTO creature_loot_template VALUES (91761, 30038, 0.5, 0, -30038, 1, 0);
UPDATE creature_template SET loot_id = 91761 WHERE entry in (91761, 91762, 91763);
-- Added questitem: Shang
replace into item_template values
 ('40061', '4', '0', 'Rethress Tide Crest', '', '898', '2', '0', '1', '80000', '20000', '12', '-1', '-1', '60',
 '55', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '10', '0', '0', '8747', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '29', '0', '0', '0',
 '0', '1', NULL);
 UPDATE quest_template SET RewItemId2 = 40061, RewItemCount2 = 1 WHERE entry = 40061;
-- UPDATE creature_template SET display_id1 = 4394 WHERE entry = 60641;
UPDATE creature_template SET display_id1 = 4394 WHERE entry = 60641;
-- Object Kalanar's Strongbox , reduce respawn time to 1 minute:
update gameobject set spawntimesecsmin = 60, spawntimesecsmax = 60 where id = 2010860;
-- Fix Hunter quest chain:
update quest_template set prevquestid = 0 where entry = 40261;
-- Cenarion Stuff:
update item_template set sell_price = 50000, buy_price = 50000 where entry = 80301;
update item_template set name = 'Appearance: Blessing of the Wilds' where entry = 83092;
update item_template set name = 'Appearance: Wildhammer Warpaint' where entry = 50204;
-- Item Groveweald badge never got fixed, it drops for everyone upon a single drop, it is not intended to be like this, and should not be lootable by everyone:
update creature_loot_template set groupid = 6 where item = 60176;
update item_template set flags = 0 where entry = 60176;
-- GO "Atal'ai Chest" restored in DB. Loot updated for this GO:
REPLACE INTO gameobject_template VALUES
(2010874, 3, 23435, 'Atal\'ai Chest', 0, 4, 1, 43, 2010874, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
update gameobject_loot_template set entry = 2010874 where item = 60344;
-- COT Oopsy
update `creature_template` SET `npc_flags` = 1 WHERE `entry` = 65130;
-- Neto NPC Mooove (DOING INSERT SO REPLACE DOESNT .... REPLACE)
delete from creature where id = 65130 and map = 269;
INSERT INTO `creature` VALUES (2569315, 65130, 0, 0, 0, 269, 0, 0, -1532.3, 7114.52, 24.4365, 0.080401, 25, 25, 0, 100, 100, 0, 0, 0);
REPLACE INTO `broadcast_text` VALUES (91976, 'It seems you\'ve fractured the timeline, $n. You weren\'t meant to perish here. You must correct your mistakes to align the timelines. I cannot do that for you.', 'It seems you\'ve fractured the timeline, $n. You weren\'t meant to perish here. You must correct your mistakes to align the timelines. I cannot do that for you. ', 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Quest 40261 needs to be made HUNTER only, it is allowing all classes of the race undead to have pets:
UPDATE quest_template SET RequiredClasses = 4 WHERE entry = 40261;
-- Item Pyrewood Shackles deleted from NPC Tirisclaw and loot updated:
update creature_template set loot_id = 91739 where entry = 91739;
update creature_template set loot_id = 91740 where entry = 91740;
update creature_template set loot_id = 91741 where entry = 91741;
REPLACE INTO creature_loot_template VALUES
(91740, 414, 4.3836, 0, 1, 1, 0),
(91740, 774, 0.82, 0, 1, 1, 0),
(91740, 818, 2.14, 0, 1, 1, 0),
(91740, 856, 0.0685, 0, 1, 1, 0),
(91740, 858, 1.0959, 0, 1, 1, 0),
(91740, 955, 0.26, 0, 1, 1, 0),
(91740, 1179, 2.2603, 0, 1, 1, 0),
(91740, 1180, 0.24, 0, 1, 1, 0),
(91740, 1181, 0.5, 0, 1, 1, 0),
(91740, 1210, 0.72, 0, 1, 1, 0),
(91740, 2406, 0.04, 0, 1, 1, 0),
(91740, 2407, 0.04, 0, 1, 1, 0),
(91740, 2408, 0.14, 0, 1, 1, 0),
(91740, 2409, 0.04, 0, 1, 1, 0),
(91740, 2447, 0.02, 0, 1, 1, 0),
(91740, 2450, 0.02, 0, 1, 1, 0),
(91740, 2452, 0.02, 0, 1, 1, 0),
(91740, 2453, 0.02, 0, 1, 1, 0),
(91740, 2455, 0.6164, 0, 1, 1, 0),
(91740, 2553, 0.04, 0, 1, 1, 0),
(91740, 2555, 0.08, 0, 1, 1, 0),
(91740, 2589, 36.7808, 0, 1, 5, 0),
(91740, 2598, 0.1, 0, 1, 1, 0),
(91740, 2657, 0.0685, 0, 1, 1, 0),
(91740, 2881, 0.04, 0, 1, 1, 0),
(91740, 2971, 0.2055, 0, 1, 1, 0),
(91740, 2972, 0.274, 0, 1, 1, 0),
(91740, 2975, 0.411, 0, 1, 1, 0),
(91740, 2979, 0.274, 0, 1, 1, 0),
(91740, 3013, 0.34, 0, 1, 1, 0),
(91740, 3207, 0.6164, 0, 1, 1, 0),
(91740, 3213, 0.2055, 0, 1, 1, 0),
(91740, 3609, 0.06, 0, 1, 1, 0),
(91740, 3610, 0.08, 0, 1, 1, 0),
(91740, 3643, 0.3425, 0, 1, 1, 0),
(91740, 4292, 0.02, 0, 1, 1, 0),
(91740, 4293, 0.02, 0, 1, 1, 0),
(91740, 4345, 0.02, 0, 1, 1, 0),
(91740, 4346, 0.02, 0, 1, 1, 0),
(91740, 4408, 0.06, 0, 1, 1, 0),
(91740, 4409, 0.02, 0, 1, 1, 0),
(91740, 4537, 0.02, 0, 1, 1, 0),
(91740, 4677, 0.1, 0, 1, 1, 0),
(91740, 4678, 0.137, 0, 1, 1, 0),
(91740, 4683, 0.274, 0, 1, 1, 0),
(91740, 4684, 0.3425, 0, 1, 1, 0),
(91740, 4689, 0.2055, 0, 1, 1, 0),
(91740, 4690, 0.0685, 0, 1, 1, 0),
(91740, 5573, 0.14, 0, 1, 1, 0),
(91740, 5574, 0.0685, 0, 1, 1, 0),
(91740, 6271, 0.1, 0, 1, 1, 0),
(91740, 6342, 0.08, 0, 1, 1, 0),
(91740, 6344, 0.02, 0, 1, 1, 0),
(91740, 6347, 0.02, 0, 1, 1, 0),
(91740, 6549, 0.22, 0, 1, 1, 0),
(91740, 6555, 0.4, 0, 1, 1, 0),
(91740, 6716, 0.02, 0, 1, 1, 0),
(91740, 7288, 0.04, 0, 1, 1, 0),
(91740, 9742, 0.137, 0, 1, 1, 0),
(91740, 9743, 0.0685, 0, 1, 1, 0),
(91740, 9744, 0.0685, 0, 1, 1, 0),
(91740, 9746, 0.0685, 0, 1, 1, 0),
(91740, 9750, 0.137, 0, 1, 1, 0),
(91740, 9751, 0.137, 0, 1, 1, 0),
(91740, 9752, 0.137, 0, 1, 1, 0),
(91740, 9755, 0.137, 0, 1, 1, 0),
(91740, 9758, 0.0685, 0, 1, 1, 0),
(91740, 9759, 0.3425, 0, 1, 1, 0),
(91740, 9760, 0.08, 0, 1, 1, 0),
(91740, 9762, 0.137, 0, 1, 1, 0),
(91740, 30018, 5, 0, -30018, 1, 0),
(91740, 30019, 1, 0, -30019, 1, 0),
(91740, 30020, 1, 0, -30020, 1, 0),
(91740, 30021, 1, 0, -30021, 1, 0),
(91740, 30024, 1, 0, -30024, 1, 0),
(91740, 30038, 1, 0, -30038, 1, 0);
REPLACE INTO creature_loot_template VALUES
(91739, 414, 4.3836, 0, 1, 1, 0),
(91739, 774, 0.82, 0, 1, 1, 0),
(91739, 818, 2.14, 0, 1, 1, 0),
(91739, 856, 0.0685, 0, 1, 1, 0),
(91739, 858, 1.0959, 0, 1, 1, 0),
(91739, 955, 0.26, 0, 1, 1, 0),
(91739, 1179, 2.2603, 0, 1, 1, 0),
(91739, 1180, 0.24, 0, 1, 1, 0),
(91739, 1181, 0.5, 0, 1, 1, 0),
(91739, 1210, 0.72, 0, 1, 1, 0),
(91739, 2406, 0.04, 0, 1, 1, 0),
(91739, 2407, 0.04, 0, 1, 1, 0),
(91739, 2408, 0.14, 0, 1, 1, 0),
(91739, 2409, 0.04, 0, 1, 1, 0),
(91739, 2447, 0.02, 0, 1, 1, 0),
(91739, 2450, 0.02, 0, 1, 1, 0),
(91739, 2452, 0.02, 0, 1, 1, 0),
(91739, 2453, 0.02, 0, 1, 1, 0),
(91739, 2455, 0.6164, 0, 1, 1, 0),
(91739, 2553, 0.04, 0, 1, 1, 0),
(91739, 2555, 0.08, 0, 1, 1, 0),
(91739, 2589, 36.7808, 0, 1, 5, 0),
(91739, 2598, 0.1, 0, 1, 1, 0),
(91739, 2657, 0.0685, 0, 1, 1, 0),
(91739, 2881, 0.04, 0, 1, 1, 0),
(91739, 2971, 0.2055, 0, 1, 1, 0),
(91739, 2972, 0.274, 0, 1, 1, 0),
(91739, 2975, 0.411, 0, 1, 1, 0),
(91739, 2979, 0.274, 0, 1, 1, 0),
(91739, 3013, 0.34, 0, 1, 1, 0),
(91739, 3207, 0.6164, 0, 1, 1, 0),
(91739, 3213, 0.2055, 0, 1, 1, 0),
(91739, 3609, 0.06, 0, 1, 1, 0),
(91739, 3610, 0.08, 0, 1, 1, 0),
(91739, 3643, 0.3425, 0, 1, 1, 0),
(91739, 4292, 0.02, 0, 1, 1, 0),
(91739, 4293, 0.02, 0, 1, 1, 0),
(91739, 4345, 0.02, 0, 1, 1, 0),
(91739, 4346, 0.02, 0, 1, 1, 0),
(91739, 4408, 0.06, 0, 1, 1, 0),
(91739, 4409, 0.02, 0, 1, 1, 0),
(91739, 4537, 0.02, 0, 1, 1, 0),
(91739, 4677, 0.1, 0, 1, 1, 0),
(91739, 4678, 0.137, 0, 1, 1, 0),
(91739, 4683, 0.274, 0, 1, 1, 0),
(91739, 4684, 0.3425, 0, 1, 1, 0),
(91739, 4689, 0.2055, 0, 1, 1, 0),
(91739, 4690, 0.0685, 0, 1, 1, 0),
(91739, 5573, 0.14, 0, 1, 1, 0),
(91739, 5574, 0.0685, 0, 1, 1, 0),
(91739, 6271, 0.1, 0, 1, 1, 0),
(91739, 6342, 0.08, 0, 1, 1, 0),
(91739, 6344, 0.02, 0, 1, 1, 0),
(91739, 6347, 0.02, 0, 1, 1, 0),
(91739, 6549, 0.22, 0, 1, 1, 0),
(91739, 6555, 0.4, 0, 1, 1, 0),
(91739, 6716, 0.02, 0, 1, 1, 0),
(91739, 7288, 0.04, 0, 1, 1, 0),
(91739, 9742, 0.137, 0, 1, 1, 0),
(91739, 9743, 0.0685, 0, 1, 1, 0),
(91739, 9744, 0.0685, 0, 1, 1, 0),
(91739, 9746, 0.0685, 0, 1, 1, 0),
(91739, 9750, 0.137, 0, 1, 1, 0),
(91739, 9751, 0.137, 0, 1, 1, 0),
(91739, 9752, 0.137, 0, 1, 1, 0),
(91739, 9755, 0.137, 0, 1, 1, 0),
(91739, 9758, 0.0685, 0, 1, 1, 0),
(91739, 9759, 0.3425, 0, 1, 1, 0),
(91739, 9760, 0.08, 0, 1, 1, 0),
(91739, 9762, 0.137, 0, 1, 1, 0),
(91739, 30018, 5, 0, -30018, 1, 0),
(91739, 30019, 1, 0, -30019, 1, 0),
(91739, 30020, 1, 0, -30020, 1, 0),
(91739, 30021, 1, 0, -30021, 1, 0),
(91739, 30024, 1, 0, -30024, 1, 0),
(91739, 30038, 1, 0, -30038, 1, 0);
REPLACE INTO creature_loot_template VALUES
(91741, 118, 0.04, 0, 1, 1, 0),
(91741, 414, 4.3073, 0, 1, 1, 0),
(91741, 765, 0.02, 0, 1, 1, 0),
(91741, 774, 0.88, 0, 1, 1, 0),
(91741, 785, 0.02, 0, 1, 1, 0),
(91741, 818, 2.4447, 0, 1, 1, 0),
(91741, 856, 0.75, 0, 1, 1, 0),
(91741, 858, 1.5134, 0, 1, 1, 0),
(91741, 955, 0.38, 0, 1, 1, 0),
(91741, 1179, 1.979, 0, 1, 1, 0),
(91741, 1180, 0.22, 0, 1, 1, 0),
(91741, 1181, 0.52, 0, 1, 1, 0),
(91741, 1210, 0.58, 0, 1, 1, 0),
(91741, 2406, 0.1, 0, 1, 1, 0),
(91741, 2407, 0.04, 0, 1, 1, 0),
(91741, 2408, 0.06, 0, 1, 1, 0),
(91741, 2409, 0.02, 0, 1, 1, 0),
(91741, 2447, 0.02, 0, 1, 1, 0),
(91741, 2455, 0.8149, 0, 1, 1, 0),
(91741, 2553, 0.1, 0, 1, 1, 0),
(91741, 2555, 0.06, 0, 1, 1, 0),
(91741, 2589, 38.4168, 0, 1, 5, 0),
(91741, 2598, 0.12, 0, 1, 1, 0),
(91741, 2657, 0.02, 0, 1, 1, 0),
(91741, 2971, 0.2328, 0, 1, 1, 0),
(91741, 2972, 0.1164, 0, 1, 1, 0),
(91741, 2975, 0.4657, 0, 1, 1, 0),
(91741, 2979, 0.3492, 0, 1, 1, 0),
(91741, 2996, 0.02, 0, 1, 1, 0),
(91741, 3013, 0.44, 0, 1, 1, 0),
(91741, 3207, 0.3492, 0, 1, 1, 0),
(91741, 3213, 0.2328, 0, 1, 1, 0),
(91741, 3609, 0.2, 0, 1, 1, 0),
(91741, 3610, 0.1, 0, 1, 1, 0),
(91741, 3643, 0.1164, 0, 1, 1, 0),
(91741, 4292, 0.04, 0, 1, 1, 0),
(91741, 4345, 0.02, 0, 1, 1, 0),
(91741, 4346, 0.04, 0, 1, 1, 0),
(91741, 4408, 0.22, 0, 1, 1, 0),
(91741, 4541, 0.02, 0, 1, 1, 0),
(91741, 4677, 0.02, 0, 1, 1, 0),
(91741, 4678, 0.4657, 0, 1, 1, 0),
(91741, 4683, 0.1164, 0, 1, 1, 0),
(91741, 4684, 0.16, 0, 1, 1, 0),
(91741, 4689, 0.1164, 0, 1, 1, 0),
(91741, 4690, 0.16, 0, 1, 1, 0),
(91741, 5573, 0.04, 0, 1, 1, 0),
(91741, 5574, 0.14, 0, 1, 1, 0),
(91741, 6271, 0.04, 0, 1, 1, 0),
(91741, 6342, 0.12, 0, 1, 1, 0),
(91741, 6344, 0.04, 0, 1, 1, 0),
(91741, 6348, 0.02, 0, 1, 1, 0),
(91741, 6549, 0.5, 0, 1, 1, 0),
(91741, 6555, 0.44, 0, 1, 1, 0),
(91741, 6716, 0.02, 0, 1, 1, 0),
(91741, 7288, 0.14, 0, 1, 1, 0),
(91741, 9746, 0.2, 0, 1, 1, 0),
(91741, 9755, 0.2328, 0, 1, 1, 0),
(91741, 9759, 0.2328, 0, 1, 1, 0),
(91741, 9762, 0.3492, 0, 1, 1, 0),
(91741, 30018, 5, 0, -30018, 1, 0),
(91741, 30020, 1, 0, -30020, 1, 0),
(91741, 30021, 1, 0, -30021, 1, 0),
(91741, 30024, 1, 0, -30024, 1, 0),
(91741, 30038, 1, 0, -30038, 1, 0);
-- Item "Azure Scale" deleted from quest reward a quest "Killing the Tidelord":
UPDATE quest_template SET RewItemId1 = 40061, RewItemCount1 = 1 WHERE entry = 40061;
UPDATE quest_template SET RewItemId2 = 0, RewItemCount2 = 0 WHERE entry = 40061;
-- GO "Water-Weaving and Command" have respawn time 30 sec alredy:
update gameobject set spawntimesecsmin = 30, spawntimesecsmax = 30 where id = 1000501;
-- Gossip for NPC "Thurman Mullby" updated:
set @gossip_menu_id = 41083; set @magic_number = 1285;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Best deals in Dun Agrath my friend, won\'t find any better. Now, what can I help you with?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Setted leash_range 50m for NPC "Naxiar":
update creature_template set leash_range = 50 where entry = 60409;
-- New NPCs for guilds "Golden Moon" and "Ered Ruin" added:
REPLACE INTO creature_template VALUES
(60645, 7016, 0, 0, 0, 'Mr. Twinkle', 'Golden Moon', 0, 20, 20, 629, 629, 0, 0, 852, 290, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 30.096, 41.382, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 41, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60646, 7051, 0, 0, 0, 'Evatax', 'Golden Moon', 0, 18, 18, 629, 629, 0, 0, 852, 290, 16388, 1, 1.14286, 0, 18, 5, 0, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 30.096, 41.382, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 41, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60647, 6882, 6588, 7330, 0, 'Artist', 'Golden Moon', 0, 10, 10, 198, 198, 0, 0, 455, 290, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 13, 17, 0, 62, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.048, 20.691, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 17, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60648, 1311, 0, 0, 0, 'Olom', 'Ered Ruin', 0, 35, 35, 1279, 1279, 0, 0, 1340, 290, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 74, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60649, 4195, 0, 0, 0, 'Rainn Farred', 'Ered Ruin', 0, 30, 30, 1179, 1179, 0, 0, 1240, 290, 16388, 1, 1.14286, 0, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 74, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60650, 4449, 0, 0, 0, 'Pipnam', 'Olom\'s Minion', 0, 35, 35, 1279, 1279, 0, 0, 1340, 290, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 74, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60651, 2834, 0, 0, 0, 'Elerona', 'Rainn\'s Minion', 0, 30, 30, 1179, 1179, 0, 0, 1240, 290, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 74, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41084; set @magic_number = 60645;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to the Golden Moon Circus, the home of the Golden Moon Traveling Troupe.\n\nEnjoy yourselves as we entertain you through our magical acts and trickery - but be wary that we are not responsible for any burning, choking, drowning, money loss, body loss or loss of mind that might or might not happen to you.\n\nThank you for your understatement and have a pleasant day.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41085; set @magic_number = 60648;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings, $r. For I have felt the tug of your call to be summoned here.\n\nOn this plane I am known as Olom. I am a fisher between the realms. The Void. The Nether. Even the surface. You are a new face. I think. Or did you make it over here yourself?\n\nMaybe I\'m getting old, too old. This body should probably not still be alive under natural circumstances.\n\nAs a younger orc I broke free from my demonic master, so I was overjoyed to finally discover there were others out there after so many years. It gladdens my heart to know that a new age and style of warlock is growing.\n\nThe concerns of this world rarely lessen. Sadly. The reports Pipnam has been bringing me as of late hint towards more uncanny forces brewing. He spends much time scouring the lands for interesting tidbits I may learn from. Maybe your talents will prove useful to us and this world when the time comes to act in its defense?\n\nBut I digress. You should find respite at the camp therein, if you haven\'t already been acquainted with the fel-lows that meet there from time to time.\n\nWe are the Ered Ruin. The Doom Guard.\n\nWelcome to our home.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
(60646, 159, 0, 0, 0, 0),
(60646, 1205, 0, 0, 0, 0),
(60646, 1645, 0, 0, 0, 0),
(60646, 1708, 0, 0, 0, 0),
(60646, 2515, 0, 0, 0, 0),
(60646, 2519, 0, 0, 0, 0),
(60646, 2946, 0, 0, 0, 0),
(60646, 3030, 0, 0, 0, 0),
(60646, 3033, 0, 0, 0, 0),
(60646, 3107, 0, 0, 0, 0),
(60646, 3108, 0, 0, 0, 0),
(60646, 3131, 0, 0, 0, 0),
(60646, 3135, 0, 0, 0, 0),
(60646, 3137, 0, 0, 0, 0),
(60646, 4470, 0, 0, 0, 0),
(60646, 4471, 0, 0, 0, 0),
(60646, 4497, 0, 0, 0, 0),
(60646, 4498, 0, 0, 0, 0),
(60646, 6183, 0, 0, 0, 0),
(60646, 11284, 0, 0, 0, 0),
(60646, 11285, 0, 0, 0, 0),
(60646, 15326, 0, 0, 0, 0),
(60646, 15327, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES
(60649, 2928, 0, 0, 0, 0),
(60649, 2930, 0, 0, 0, 0),
(60649, 3371, 0, 0, 0, 0),
(60649, 3372, 0, 0, 0, 0),
(60649, 3777, 0, 0, 0, 0),
(60649, 5060, 0, 0, 0, 0),
(60649, 5140, 0, 0, 0, 0),
(60649, 5173, 0, 0, 0, 0),
(60649, 5565, 0, 0, 0, 0),
(60649, 8923, 0, 0, 0, 0),
(60649, 8924, 0, 0, 0, 0),
(60649, 8925, 0, 0, 0, 0),
(60649, 16583, 0, 0, 0, 0),
(60649, 17020, 0, 0, 0, 0),
(60649, 17021, 0, 0, 0, 0),
(60649, 17026, 0, 0, 0, 0),
(60649, 17028, 0, 0, 0, 0),
(60649, 17029, 0, 0, 0, 0),
(60649, 17030, 0, 0, 0, 0),
(60649, 17031, 0, 0, 0, 0),
(60649, 17032, 0, 0, 0, 0),
(60649, 17033, 0, 0, 0, 0),
(60649, 17034, 0, 0, 0, 0),
(60649, 17035, 0, 0, 0, 0),
(60649, 17036, 0, 0, 0, 0),
(60649, 17037, 0, 0, 0, 0),
(60649, 17038, 0, 0, 0, 0),
(60649, 21177, 0, 0, 0, 0);

REPLACE INTO gameobject_template VALUES
(2010875, 5, 24805, 'Southfury Trading Company', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Quest "Tower of Lapidis X" marked as Elite:
UPDATE quest_template SET type = 1 WHERE entry = 40303;
-- Display ID for NPC "Goma" updated:
UPDATE creature_template SET display_id1 = 4481 WHERE entry = 60641;
-- Blood Ring:
-- replace into battleground_template (id, min_players_per_team, max_players_per_team, min_level, max_level, alliance_win_spell, alliance_lose_spell, horde_win_spell, horde_lose_spell, alliance_start_location, horde_start_location) VALUES (4, 2, 2, 0, 60, 0, 0, 0, 0, 9000, 9001);
-- Fixed Wobblefree Fizz-rifle:
update item_template set range_mod = 100 where entry = 60165;
-- Satisfaction for Shak quest item doesn't drop for whole group:
update item_template set flags = 2048 where entry = 81344;
-- Quests Appealling to the Alliance and Appealing to the Horde must be rewritten in a way that we don't change existing leader scripts. I spent all morning trying to fix already existing quests such a What The Wind Carries. Please rewrite it in a way that receiving appeals are simple quest rewards and not results of clicking on gossip menus. It's impossible for us to make both DB scripts and core scripts to work together and now important Vanilla quests are broken:
update creature_template set script_name = '' where entry = 1748; -- SW
update creature_template set script_name = '' where entry = 7999; -- DN
update creature_template set script_name = '' where entry = 4949; -- OG
update creature_template set script_name = '' where entry = 10540; -- Trolls
update creature_template set script_name = '' where entry = 2784; -- Magni
delete from quest_template where entry = 80750;
delete from quest_template where entry = 80800;
delete from creature_questrelation where quest = 80800;
delete from creature_questrelation where quest = 80750;
delete from creature_involvedrelation where quest = 80800;
delete from creature_involvedrelation where quest = 80750;

update creature_template set script_name = '' where script_name = '0';
update creature_template set script_name = '' where script_name = 'at_stormwind_gates';
update creature_template set script_name = '' where script_name = 'birthday_dragon';
update creature_template set script_name = '' where script_name = 'boss_turtlhu';
update creature_template set script_name = '' where script_name = 'go_portal_to_darnassus';
update creature_template set script_name = '' where script_name = 'go_portal_to_ironforge';
update creature_template set script_name = '' where script_name = 'go_portal_to_stormwind';
update creature_template set script_name = '' where script_name = 'go_stage1_trigger_cot';
update creature_template set script_name = '' where script_name = 'item_portable_mailbox';
update creature_template set script_name = '' where script_name = 'item_thunder_ale_drink';
update creature_template set script_name = '' where script_name = 'npc_barber';
update creature_template set script_name = '' where script_name = 'npc_dirge_the_bouncer';
update creature_template set script_name = '' where script_name = 'npc_itharius';
update creature_template set script_name = '' where script_name = 'npc_joshua_westfield';
update creature_template set script_name = '' where script_name = 'npc_pats_firework_guy';
update creature_template set script_name = '' where script_name = 'npc_riding_gryphon_back';
update creature_template set script_name = '' where script_name = 'npc_surgeon';
update creature_template set script_name = '' where script_name = 'npc_transmog';
update creature_template set script_name = '' where script_name = 'wsg_arena';
-- New gossip for NPC "Olom" added:
update broadcast_text set male_text = 'Greetings.\n\nOn this plane I am known as Olom, a fisher between the realms. You are a new face... I think?\n\nAs a younger orc I broke free from my demonic master, so I was overjoyed to finally discover there were others out there after so many years who have sided against the Legion. It gladdens my heart to know that a new age and style of warlock is growing.\n\nPipnam here reports many evils brewing. So we need to be ready for the worst, as our name suggests.\n\nWe are the Ered Ruin. The Doom Guard.\n\nWelcome.' where entry = 60648;
-- BWL loot: select * from reference_loot_template where entry = 30342;
update reference_loot_template set chanceorquestchance = 6.6 where entry = 30342;
-- Disable in-builts LFG:
delete from gossip_menu_option where option_text like '%Tell me about dun%';
-- Wrong respawn timer, they respawn too fast:
update creature set spawntimesecsmin =  300, spawntimesecsmax = 300 where id in (6351, 6371);
-- Added items for selling for NPCs 91888, 91873, 91865, 91868:
UPDATE creature_template SET npc_flags = 4 WHERE entry = 91888;
UPDATE creature_template SET npc_flags = 4 WHERE entry = 91873;
UPDATE creature_template SET npc_flags = 6 WHERE entry = 91865;
UPDATE creature_template SET npc_flags = 6 WHERE entry = 91868;

REPLACE INTO npc_vendor VALUES (91888, 159, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 1179, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 1205, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 1645, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 1708, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 2593, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 2594, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 2595, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 2596, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 2686, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 2723, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91888, 8766, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 117, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 159, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 414, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 422, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 1179, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 1205, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 1645, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 1707, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 1708, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 2070, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 2287, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 2665, 1, 300, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 2678, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 2692, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 3770, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 3771, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 3927, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 4540, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 4541, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 4542, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 4544, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 4599, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 4601, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 8766, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 8932, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 8950, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 8952, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 17194, 1, 300, 0, 0);
REPLACE INTO npc_vendor VALUES (91873, 30817, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 159, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 1205, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 1645, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 1708, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 2515, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 2519, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 2946, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 3030, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 3033, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 3107, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 3108, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 3131, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 3135, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 3137, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 4470, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 4471, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 4497, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 4498, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 6183, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 11284, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 11285, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 15326, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (91868, 15327, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES
(91865, 2928, 0, 0, 0, 0),
(91865, 2930, 0, 0, 0, 0),
(91865, 3371, 0, 0, 0, 0),
(91865, 3372, 0, 0, 0, 0),
(91865, 3777, 0, 0, 0, 0),
(91865, 5060, 0, 0, 0, 0),
(91865, 5140, 0, 0, 0, 0),
(91865, 5173, 0, 0, 0, 0),
(91865, 5565, 0, 0, 0, 0),
(91865, 8923, 0, 0, 0, 0),
(91865, 8924, 0, 0, 0, 0),
(91865, 8925, 0, 0, 0, 0),
(91865, 16583, 0, 0, 0, 0),
(91865, 17020, 0, 0, 0, 0),
(91865, 17021, 0, 0, 0, 0),
(91865, 17026, 0, 0, 0, 0),
(91865, 17028, 0, 0, 0, 0),
(91865, 17029, 0, 0, 0, 0),
(91865, 17030, 0, 0, 0, 0),
(91865, 17031, 0, 0, 0, 0),
(91865, 17032, 0, 0, 0, 0),
(91865, 17033, 0, 0, 0, 0),
(91865, 17034, 0, 0, 0, 0),
(91865, 17035, 0, 0, 0, 0),
(91865, 17036, 0, 0, 0, 0),
(91865, 17037, 0, 0, 0, 0),
(91865, 17038, 0, 0, 0, 0),
(91865, 21177, 0, 0, 0, 0);
-- Chest coords:
update gameobject set position_x = 1451.4, position_y = -1480.7, position_z = 56.87 where guid = 4007551;
-- Firework stuff:
update item_template set name = 'Everlasting Firework', spellid_1 = 25465 where entry = 23714;
-- Link Den Morther and her cubs:
replace into creature_linking values (37566, 37523, 3); 
replace into creature_linking values (37569, 37523, 3); 
replace into creature_linking values (37568, 37523, 3); 
replace into creature_linking values (37567, 37523, 3); 
-- Argent Dawn Commission from Argent Officer Garush can't be taken by goblins:
update quest_template set requiredraces = 434 where entry = 5405;
-- Wrong quest loot "Southsea Sashes" from NPC "Stormbay Warrior" deleted:
delete from creature_loot_template where entry = 6371 and item = 60208;
-- New Bonds --
delete from quest_template where entry = 40363;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40363,2,215,10,7,0,0,'New Bonds','Hello, I am Melyndella! I come from the verdant woodlands of Moonglade. Ever since the Tauren have joined the Cenarion Circle, I have been wanting to get to know them. However, it has been terribly hard to gain their trust! Many locals have accused us Dryads of being Centaur or otherwise associated with them. The Galak clan have caused a lot of pain to this land. Please, help weaken them so I can earn the trust of the village.','Kill 12 Galak Centaurs in Mulgore.','Is it done, $r? The Tauren are such a serene people, I would really like to help them feel at one with us.','Thank you so much, $N. The village will now live more peacefully. This is a start but there is still more work to do.',0,0,0,0,0,0,0,0,2967,12,0,0,0,0,0,0,0,0,212,840,81,150,609,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (66002, 40363);
replace into creature_involvedrelation (id, quest) values (66002, 40363);
update quest_template set requiredraces = 690 where entry = 40363;

update creature_template set npc_flags = 2 where entry = 66002;

-- An Understanding of Peace --
delete from quest_template where entry = 40364;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40363,40364,2,215,11,8,0,0,'An Understanding of Peace','Thank you for your help, $N. Now that the Centaurs pose less of a threat, there is more of an opportunity to learn about the Tauren. Perhaps you can speak to Gennia Runetotem? She is a Druid trainer in the village and has been kind to me, I believe she can help!','Speak to Gennia Runetotem.','Greetings, what can I do for you?','Ah, the young Dryad sends you on her behalf? My people are not quick to trust, especially when they see her as part of the Centaurs that nearly drove us to extinction. However, I do believe I can assist.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,212,175,81,25,609,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (66002, 40364);
replace into creature_involvedrelation (id, quest) values (3064, 40364);
update quest_template set requiredraces = 690 where entry = 40364;

-- A Trial of Peace --
delete from quest_template where entry = 40365;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40364,40365,2,215,11,8,0,0,'A Trial of Peace','Word of Melyndella and your deeds against the Centaurs has spread, but slaying our enemies is not enough to befriend us. She must show respect and understanding towards our traditions. Venture forth into the northern Prairie across the lake, and acquire for me eight pelts from Prairie Stalkers. Bring them to her, she will know what to do.','Collect 8 Prairie Stalker Pelt and return it to Melyndella.','Ah, hello again! Did Gennia help?','These are pelts from the prairie wolves... She didn\'t tell you what I should do with them? Hmm, these Tauren are quite enigmatic. I will try to solve this trial.',60513,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,212,840,81,150,609,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (3064, 40365);
replace into creature_involvedrelation (id, quest) values (66002, 40365);
update quest_template set requiredraces = 690 where entry = 40365;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60513,7740,'Prairie Stalker Pelt',12,1,2048,1,-1,-1,1,8,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60513;
replace into creature_loot_template values
(2959,60513,-40,1,1,1,0);

-- A Harmonious Offering --
delete from quest_template where entry = 40366;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40365,40366,2,215,11,8,0,0,'A Harmonious Offering','I believe I have the answer, $N! I have blessed these pelts and bundled them up. Take them to the Innkeeper\'s Assistant - I have learned her name is Waya Tallgrain - and let her know they are my offering to the village.','Deliver the Blessed Prairie Pelts to Waya Tallgrain and listen to his response. Return to Melyndella with the good news.','Hello again! Have you presented my offering? What did she say?','They appreciate the gift? How lovely! I am forever grateful, $N. I want to learn more from the people of the village so I am happy to stay here for a time. I will use my talents alongside Gennia keep the lands balanced and ensure the Tauren live well. Thank you so much for all you did, I will remember you!',0,0,0,0,0,0,0,0,60356,1,0,0,0,0,0,0,60514,1,502,840,81,250,609,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Return to Melyndella with the good news');

replace into creature_questrelation (id, quest) values (66002, 40366);
replace into creature_involvedrelation (id, quest) values (66002, 40366);
update quest_template set requiredraces = 690 where entry = 40366;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60514,7740,'Blessed Prairie Pelts',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

delete from creature_template where entry = 60356;
replace into creature_template (entry, name, display_id1) values (60356, 'quest_40366_dummy_triger', 328);

REPLACE INTO creature_template VALUES
(60652, 2118, 0, 0, 0, 'Waya Tallgrain', 'Innkeeper\'s Assistant', 1294, 30, 30, 1002, 1002, 0, 0, 1200, 104, 3, 1, 1.14286, 1.35, 18, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 6747, 0, 0, 0, 0, 524298, 0, 'npc_waya_tallgrain');

delete from creature where id  = 60652;
REPLACE INTO creature (id, id2, id3, id4, map, display_id, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod) VALUES
(60652, 0, 0, 0, 1, 0, 0, -2381.26, -343.847, -8.95692, 6.14, 25, 25, 0, 100, 100, 0, 0, 0);


-- A Pebble to Pick with Them --
delete from quest_template where entry = 40367;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40367,2,17,20,18,0,0,'A Pebble to Pick with Them','Hail adventurer! You look like you can carry yourself in a fight. My colleagues and I ran into a bit of a pickle, you see. This is Bael Modan, a facility built by a powerful race that disappeared eons ago. According to some scholars, these Titans had a hand in the formation of our culture.\n\nWe were trying to open the door in the main chamber when a horrible screech echoed through the digsite. Dozens of statues we dug up came to life and went on a rampage. Those golems have no archaeological value when they try to kill you if you get near them. Get in there and smash them up so we can carry on our work.','Kill 16 Bael\'modan Golems in the Bael\'modan digsite.','Is it done $r? These constructs killed some of my best diggers. I want them turned to rubble!','Well done. I hope this helps put my kin to rest while ensuring the safety of the survivors. Don\'t worry, their sacrifice was not in vein. Now we can continue the excavation and learn more about the Titans and this site.',0,0,0,0,0,0,0,0,60442,16,0,0,0,0,0,0,0,0,4212,1175,47,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (66000, 40367);
replace into creature_involvedrelation (id, quest) values (66000, 40367);

update creature_template set npc_flags = 2 where entry = 66000;

-- Honoring the Departed --
delete from quest_template where entry = 40368;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40368,2,11,30,28,0,0,'Honoring the Departed','Pardon me for taking a moment of your time, wanderer, but I would ask you to help me honor someone as it is a special time of the year. Four years ago, my commanding officer and dear friend Jennalla Deemspring perished to the hand of Arthas Menethil. It is time to remember her and others like her. Please collect six sprigs of Auribloom from the village and the surrounding forest.','Collect 6 sprigs of Auribloom.','Is it done, $r? The Auribloom should not be too difficult to find.','Thank you, $r. Four years ago my commanding officer ordered me to escort a caravan of villagers out of Lordaeron. I remained with them as they settled here and built Hawk\'s Vigil. Arthas himself had returned to Lordaeron to lead the genocide of his own people.\n\nMany perished to give us a chance to escape, Jennalla among them. With the incense produced from the Auriblooms, we honor their memory.',60515,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12012,3175,269,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (66001, 40368);
replace into creature_involvedrelation (id, quest) values (66001, 40368);

update creature_template set npc_flags = 2 where entry = 66001;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60515,18953,'Sprigs of Auribloom',12,1,2048,1,-1,-1,1,6,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2010876, 3, 269, 'Auribloom', 0, 4, 0.5, 43, 2010876, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from gameobject_loot_template where entry = 2010876;
replace into gameobject_loot_template values
(2010876,60515,-100,0,1,1,0);

-- Further Studies --
delete from quest_template where entry = 40369;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (6343,40369,2,1657,10,10,512,0,'Further Studies','Fascinating... I wonder if such changes may cause other creatures in the food chain to be affected. I think it is a matter worth studying further! But for that I would need samples of something larger... Ah, crabs! Yes. I believe we could find something new if we study those crustaceans.','Gather 10 Crustacean Carcasses from crabs in Darkshore, then return to Nessa Shadowsong in Rut\'theran Village.','As scary as those pinchy crawlers may look, they tend to run away from you faster than you can catch a fish. Have you gathered any parts we could study further?','Ah, what a lovely haul this is! Look at these samples! Fascinating! Wait... What\'s this? Ah, it seems you have found yourself a small companion! Perhaps you should study its behaviour before you decide on your favourite seasoning.',60516,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,125,275,69,175,0,0,0,0,0,0,0,0,0,81159,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

replace into creature_questrelation (id, quest) values (10118, 40369);
replace into creature_involvedrelation (id, quest) values (10118, 40369);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(60516,33542,'Fine Crab Carcass',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0);

delete from creature_loot_template where item = 60513;
replace into creature_loot_template values
(2232,60516,-40,1,1,1,0),
(2234,60516,-10,1,1,1,0);
-- Fixed Lil' Smoky companion.
update item_template set spellid_1 = 46498 where entry = 11826;
replace into companion_spells values (11826, 15049);
-- Missing fleein' events:
update creature_template set ai_name = 'EventAI' where entry = 2167;
replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (1000, 2167, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Blackwood Pathfinder - Flee at 15% HP');
update creature_template set ai_name = 'EventAI' where entry = 2171;
replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (1001, 2171, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Blackwood Shaman - Flee at 15% HP');
update creature_template set ai_name = 'EventAI' where entry = 2169;
replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (1002, 2169, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Blackwood Totemic - Flee at 15% HP');
update creature_template set ai_name = 'EventAI' where entry = 11713;
replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (1003, 11713, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Blackwood Tracker - Flee at 15% HP');
update creature_template set ai_name = 'EventAI' where entry = 2170;
replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (1004, 2170, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Blackwood Ursa - Flee at 15% HP');
update creature_template set ai_name = 'EventAI' where entry = 2168;
replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (1005, 2168, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Blackwood Warrior - Flee at 15% HP');
update creature_template set ai_name = 'EventAI' where entry = 2324;
replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (1006, 2324, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Blackwood Windtalker - Flee at 15% HP');
-- Striders don't flee:
update creature_template set ai_name = 'EventAI' where entry = 2321;
replace into creature_ai_events (id, creature_id, condition_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_script, action2_script, action3_script, comment) values (1007, 2321, 0, 2, 0, 100, 0, 15, 0, 0, 0, 12203, 0, 0, 'Foreststrider Fledgling - Flee at 15% HP');