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
