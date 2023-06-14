-- NPC Samantha Stewards remove item Pattern: Devilsaur Gauntlets (Entry 15728) from vendor list.
delete from npc_vendor where entry = 61272 and item = 15758;
-- Add item 8384 to Samantha Stewards vendor list with a limit of 1 (2 hr resupply timer). 
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61272, 0, 8384, 1, 7200, 0, 0);
-- Remove the following items from Samantha Stewards sell list:
delete from npc_vendor where entry = 61272 and item in (117,159,1179,1205,1645,1708,2287,3770,3771,4599,8766,8952);
-- Copy sell list of Mariette Shademoore (Entry 61373) to NPC Nolan Tanner (61370).
delete from npc_vendor where entry = 61370;
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4540, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4541, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4542, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4544, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 4601, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61370, 0, 8950, 0, 0, 0, 0);
-- Add item 7976 to NPC Larry Bolder with limited stock of 1, and a resupply time of 2hrs.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61276, 0, 7976, 1, 7200, 0, 0);
-- Add item
replace into item_template values
 ('61616', '4', '4', 'Boldercrest Breastplate', '', '22480', '2', '0', '1', '80000', '7366', '5', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '427', '0', '0', '0',
 '0', '0', '0', '9142', '1', '0', '0', '-1', '0', '-1', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '115', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
-- to Larry Bolders sell list with a limited stock of 1, and a 2hr restock timer
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61276, 0, 61616, 1, 7200, 0, 0);
-- Add item
replace into item_template values
 ('61617', '4', '6', 'Iron-plated Defender', '', '26325', '2', '0', '1', '65000', '17508', '14', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '1428', '0', '0', '0',
 '0', '0', '0', '13384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '4', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
-- to Larry Bolders sell list with a limited stock of 1, and a 2hr restock timer
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61276, 0, 61617, 1, 7200, 0, 0);
-- Item Le Fishe Au Chocolat add sell value of 3 silver, and buy value of 12 silver.
update item_template set buy_price = 1200, sell_price = 300 where entry = 84040;
-- Maltimor's Prototype loot ID changed:
update creature_template set loot_id = 61551 where entry = 61551;
-- Replace Duskskitterer's quest item drops with these items, each with equal chance to drop.
delete from reference_loot_template where entry = 30565;
REPLACE INTO reference_loot_template VALUES
(30565, 61610, 0, 1, 1, 1, 0),
(30565, 61611, 0, 1, 1, 1, 0),
(30565, 61612, 0, 1, 1, 1, 0);
-- Maltimor's Prototype, Widow of the Woods, Firstborn of Arugal should have a 24-48 hour respawn timer.
update creature set spawntimesecsmin = 86400, spawntimesecsmax = 172800 where ID in (61551,61553,61558);
-- Dawnhowl, Duskskitter, Baron Silverlaine, Bonecruncher should have a 12-24 hour respawn timer.
update creature set spawntimesecsmin = 43200, spawntimesecsmax = 86400 where ID in (61554,61552,3887,61555);
-- Replace Bonecruncher BoE uncommon item loottable to drop one of three items listed, with equal drop chances:
delete from creature_loot_template where entry = 61555;
update creature_template set loot_id = 61555 where entry = 61555;
-- Shadeflayer Goliath should drop the following items with the listed drop chances:
REPLACE INTO reference_loot_template VALUES
(30581, 61545, 10, 1, 1, 1, 0),
(30581, 61546, 40, 1, 1, 1, 0),
(30581, 61547, 10, 1, 1, 1, 0),
(30581, 61548, 40, 1, 1, 1, 0);
REPLACE INTO creature_loot_template VALUES
(61533, 30581, 100, 0, -30581, 1, 0);
-- Embereye should not drop the following items:
delete from creature_loot_template where entry = 61516 and item = 30581;
