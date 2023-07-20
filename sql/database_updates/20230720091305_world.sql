-- Set GUID 2578190 and 2578191 to play emote 333 TATE_READY1H.
REPLACE INTO `creature_addon` (`guid`, `display_id`, `mount_display_id`, `equipment_id`, `stand_state`, `sheath_state`, `emote_state`, `auras`) VALUES
(2578190, 0, 0, -1, 0, 1, 333, NULL),
(2578191, 0, 0, -1, 0, 1, 333, NULL);
-- Enable displayids 20439-20455 (Melanastrasza turned into a wisp so her display is still broken).
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20439, 0, 0, 0, 0),
(20440, 0, 0, 0, 0),
(20441, 0, 0, 0, 0),
(20442, 0, 0, 0, 0),
(20443, 0, 0, 0, 0),
(20444, 0, 0, 0, 0),
(20445, 0, 0, 0, 0),
(20446, 0, 0, 0, 0),
(20447, 0, 0, 0, 0),
(20448, 0, 0, 0, 0),
(20449, 0, 0, 0, 0),
(20450, 0, 0, 0, 0),
(20451, 0, 0, 0, 0),
(20452, 0, 0, 0, 0),
(20453, 0, 0, 0, 0),
(20454, 0, 0, 0, 0),
(20455, 0, 0, 0, 0);
-- NPC Lord Xanvarak is unattackable, his faction seems correct but he is in a state of standing still not doing anything and cannot be aggroed.
update creature_template set unit_flags = 0 where entry = 61609;
-- Change NPC scale of Firstborn of Arugal to 2.
update creature_template set scale = 2 where entry = 61558;
-- NPC Haunted Stable Tender and Haunted Blacksmith change damage to 389-512.
update creature_template set dmg_min = 389, dmg_max = 512 where entry in (61201,61202); 
-- Create the following dummy item: "Monster - Kamio Fan", sword, 1h, displayid: 32596
-- Npc entry 61410 and 61414 equip item: "Monster - Kamio Fan". 
set @equip_template = 20428; set @weapon_1 = 61773; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61410;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20428; set @weapon_1 = 61773; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61414;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- NPC ID 61487 should drop Item ID 84507 with a 100% chance from a new loottable.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61487, 84507, 100, 0, 1, 1, 0);
-- NPC Lord Blackwald II (creature Entry 61222), add item drop Entry 61184 (The Scythe of Elune) on its own loot table with a 0.85% drop chance.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61222, 61184, 0.85, 10, 1, 1, 0);
-- Add the following items in their own loot group:
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30590, 84500, 0, 4, 1, 1, 0),
(30590, 84501, 0, 4, 1, 1, 0),
(30590, 84502, 0, 4, 1, 1, 0),
(30590, 84503, 0, 4, 1, 1, 0),
(30590, 84504, 0, 4, 1, 1, 0),
(30590, 84505, 0, 4, 1, 1, 0),
(30590, 84506, 0, 4, 1, 1, 0),
(30590, 84509, 0, 4, 1, 1, 0);
-- To the following creatures: 60742, 60743, 60744, 60745, 60746, 61212, with a drop chance of 0.13%.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60742, 30590, 0.13, 4, -30590, 1, 0),
(60743, 30590, 0.13, 4, -30590, 1, 0),
(60744, 30590, 0.13, 4, -30590, 1, 0),
(60745, 30590, 0.13, 4, -30590, 1, 0),
(60746, 30590, 0.13, 4, -30590, 1, 0),
(61212, 30590, 0.13, 4, -30590, 1, 0);
-- Add item 61733 (Formula: Eternal Dreamstone Shard) to the loot table of Solnius (Creature Entry 60748) on its own loot table with a drop chance of 0.85%.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60748, 61733, 0.85, 12, 1, 1, 0),
-- NPC Solnius, add loot 61198 to its own loot table with a 100% drop chance to drop between 6-10 of the item.
(60748, 61198, 100, 13, 6, 10, 0);
-- NPC Erennius add loot 61198 to its own loot table with a 100% drop chance to drop between 2-5 of the item.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(60747, 61198, 100, 13, 2, 5, 0);
-- Remove any green or blue item drops from Firstborn of Arugal, and make a new loottable that drops one of these items with the listed chances:
delete from creature_loot_template where entry = 61558 and item in (8028 ,51764,51765,5758 ,7909 ,7910 ,12689,15731,20400);
delete from creature_loot_template where entry = 61558 and item in (30045,30043,30046,30584);
-- Old Hunter's Boots 40%
-- Explorer's Pauldron 40%
-- Arugal Family Seal 20%
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30591, 61587, 40, 10, 1, 1, 0),
(30591, 61586, 40, 10, 1, 1, 0),
(30591, 61588, 20, 10, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61558, 30591, 100, 10, -30591, 1, 0);
-- Create object called 'The Orb of Pyforos' which uses the model 'BE_ScryingOrb' with a scale of 1.4, this orb should have quest/gossip text, when interacted use the following gossip text: <The orb glows with an intensity of dark energy. Fire can be seen tracing along its surface. Any attempt to get close to the orb causes it to fade away, becoming translucent, making material objects pass through it. It would appear powerful magic is present here.>
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020052, 2, 29623, 'The Orb of Pyforos', 0, 32, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_the_orb_of_pyforos');
replace into broadcast_text (entry, Male_Text) values (30133, '<The orb glows with an intensity of dark energy. Fire can be seen tracing along its surface. Any attempt to get close to the orb causes it to fade away, becoming translucent, making material objects pass through it. It would appear powerful magic is present here.>');
replace into npc_text (ID, BroadcastTextID0) values (30133, 30133);
-- Object Strange Marble Bust make scale 2.2.
update gameobject_template set size = 2.2 where entry = 2020051;
-- Change the displayid of gameobject 3000208 to 33182.
update gameobject_template set displayid = 33182 where entry = 3000208;
