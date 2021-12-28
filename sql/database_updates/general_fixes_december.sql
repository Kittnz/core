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