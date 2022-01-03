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
update quest_template set title = 'The Boran Family', Details = 'I come from a large family, one that once occupied the boroughs of Kul Tiras. We weren\'t exactly a rich family, but we were not poor either! I traveled out with two of my brothers when the third war started up in Lordaeron, hoping to earn some fortune and glory. I helped the navy , my brother Karl started work in Menethil Harbor, while Samual went to Southshore to assist the war effort.\n\nEver since I set said years ago, I have had no communication with them, and would like to reach out if you could deliver a letter to the both of them. They must have thought I perished after so long without a word or peep and I want to ease their minds.', Objectives = 'Deliver the letters from Arnold Boran to his two brothers.', RequestItemsText = 'Have you seen my brothers yet? It will require travelling, but I would appreciate it greatly.', OfferRewardText = 'My family has always been close knit, and I know that such a long length without hearing from me would certainly cause worry. I am simply happy to dispell such concern and let them know all is fine. Thanks again, this has meant a lot for me.' where entry = 40141;
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