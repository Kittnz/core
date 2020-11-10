-- November.

-- All event targets dead.
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4966, 47, 4966, 121, 0, 0, 2);

-- Main Failure Script
DELETE FROM `event_scripts` WHERE `id`=49660;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49660, 0, 70, 4966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kanati Greycloud: Fail Quest');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49660, 0, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kanati Greycloud: Kanati Greycloud - Add Quest Giver Flag');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49660, 0, 4, 46, 512, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kanati Greycloud: Kanati Greycloud - Add Immune to NPC Flag');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49660, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 'Protect Kanati Greycloud: Kanati Greycloud - Restore Faction');

-- Main Success Script
DELETE FROM `event_scripts` WHERE `id`=49661;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49661, 0, 7, 4966, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kanati Greycloud: Complete Quest');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49661, 0, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kanati Greycloud: Kanati Greycloud - Add Quest Giver Flag');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49661, 0, 4, 46, 512, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kanati Greycloud: Kanati Greycloud - Add Immune to NPC Flag');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49661, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 'Protect Kanati Greycloud: Kanati Greycloud - Restore Faction');

-- Summon Script for Galak Assassin
DELETE FROM `event_scripts` WHERE `id`=10720;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10720, 0, 63, 4966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49662, 0, 0, 0, 0, 0, 'Protect Kanati Greycloud: Galak Assassin - Add to Scripted Map Event');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10720, 1, 3, 0, 0, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, -4902.07, -1366.51, -52.2113, 0, 0, 'Protect Kanati Greycloud: Galak Assassin - Move');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (10720, 5, 26, 0, 0, 0, 0, 10638, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 'Protect Kanati Greycloud: Galak Assassin - Attack Start');

-- Galak Assassin Failure Script
DELETE FROM `event_scripts` WHERE `id`=49662;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (49662, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Protect Kanati Greycloud Failed: Galak Assassin - Despawn');

-- Galak Assassins don't have loot.
UPDATE `creature_template` SET `loot_id`=0, `gold_min`=0, `gold_max`=0 WHERE `entry`=10720;
DELETE FROM `creature_loot_template` WHERE `entry`=10720;

-- Add spell list to Galak Assassin.
REPLACE INTO `creature_spells` (`entry`, `name`, `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`, `scriptId_1`, `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`, `scriptId_2`, `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`, `scriptId_3`, `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`, `scriptId_4`, `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`, `scriptId_5`, `spellId_6`, `probability_6`, `castTarget_6`, `targetParam1_6`, `targetParam2_6`, `castFlags_6`, `delayInitialMin_6`, `delayInitialMax_6`, `delayRepeatMin_6`, `delayRepeatMax_6`, `scriptId_6`, `spellId_7`, `probability_7`, `castTarget_7`, `targetParam1_7`, `targetParam2_7`, `castFlags_7`, `delayInitialMin_7`, `delayInitialMax_7`, `delayRepeatMin_7`, `delayRepeatMax_7`, `scriptId_7`, `spellId_8`, `probability_8`, `castTarget_8`, `targetParam1_8`, `targetParam2_8`, `castFlags_8`, `delayInitialMin_8`, `delayInitialMax_8`, `delayRepeatMin_8`, `delayRepeatMax_8`, `scriptId_8`) VALUES (107200, 'Thousand Needles - Galak Assassin', 6533, 80, 1, 0, 0, 32, 20, 30, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell_list_id`=107200 WHERE `entry`=10720;

-- Add missing passive aura to Galak Assassin.
REPLACE INTO `creature_template_addon` (`entry`, `patch`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (10720, 0, 0, 0, 1, 16, 0, 0, '3616');

-- Script on Accepting Quest
DELETE FROM `quest_start_scripts` WHERE `id`=4966;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 0, 61, 4966, 180, 0, 0, 0, 0, 0, 8, 0, 0, 1013, 49660, 0, 0, 0, 0, 0, 'Kanati Greycloud - Start Scripted Map Event');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 1, 22, 232, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kanati Greycloud - Set Faction to Escortee');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 1, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kanati Greycloud - Remove Npc Flags');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 1, 4, 46, 512, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kanati Greycloud - Unit Flags');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kanati Greycloud - Emote OneShotExclamation');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6149, 0, 0, 0, 0, 0, 0, 0, 0, 'Kanati Greycloud - Say Text');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 2, 10, 10720, 60000, 0, 0, 0, 0, 0, 0, 1, 10720, 6, 1, -4882.46, -1373.15, -52.2861, 2.09439, 0, 'Galak Assassin - Summon Creature Galak Assassin');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 2, 10, 10720, 60000, 0, 0, 0, 0, 0, 0, 1, 10720, 6, 1, -4879.15, -1362.8, -50.3615, 3.57282, 0, 'Galak Assassin - Summon Creature Galak Assassin');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 2, 10, 10720, 60000, 0, 0, 0, 0, 0, 0, 1, 10720, 6, 1, -4886.72, -1382.44, -53.2281, 0.994838, 0, 'Galak Assassin - Summon Creature Galak Assassin');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 3, 69, 4966, 0, 0, 0, 0, 0, 0, 0, 4966, 49661, 1013, 49660, 0, 0, 0, 0, 0, 'Kanati Greycloud - Edit Scripted Map Event');
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (4966, 4, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kanati Greycloud - Emote OneShotRoar');

-- Assign script to quest.
UPDATE `quest_template` SET `StartScript`=4966 WHERE `entry`=4966;

-- Remove hardcoded script from Kanati Greycloud.
UPDATE `creature_template` SET `ai_name`='ReactorAI', `script_name`='' WHERE `entry`=10638;
DELETE FROM `script_waypoint` WHERE `entry`=10638;
DELETE FROM `script_texts` WHERE `entry`=-1000410;

-- <The Warsong Outriders> guild NPCs:

REPLACE INTO `creature_template` VALUES (51620, 0, 10653, 0, 0, 0, 'Innkeeper Hern', 'Innkeeper', 344, 30, 30, 1605, 1605, 0, 0, 1200, 104, 135, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 51620, 0, 100, 0, 0, 524298, '');

SET @gossip_menu_id = 51620;
SET @magic_number = 60010; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText, Language) values (@magic_number, 'Welcome to the home of the Warsong Outriders.\n\nYou must be weary, honouring the Horde and our war efforts is thirsty work.\n\nStay a while and rest your bones.', 0);
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 51620;

update creature_template set equipment_id = 3934 where entry = 51620;

REPLACE INTO `creature_template` VALUES 
(51621, 0, 415, 0, 0, 0, 'Rell', 'Blacksmithing Supplies', 0, 45, 45, 2972, 2972, 0, 0, 2725, 29, 16390, 1, 1.14286, 0, 20, 5, 0, 0, 1, 72, 93, 0, 204, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 61.776, 84.942, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 8176, 0, 0, 0, 0, 524298, '');

update creature_template set npc_flags = 5 where entry = 51621;

SET @gossip_menu_id = 51621;
SET @magic_number = 60011; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'It is not your words that give you weight, Your actions give you weight my friend.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 51621;

update creature_template set equipment_id = 5392 where entry = 51621;

REPLACE INTO `npc_vendor` VALUES (51621, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51621, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51621, 3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51621, 3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51621, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` VALUES (51621, 18567, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (51622, 0, 4261, 4262, 4263, 4264, 'Grunt', 'Warsong Outriders', 0, 40, 40, 3026, 3026, 0, 0, 1200, 85, 0, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 355, 390, 0, 156, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 8016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 8016, 0, 0, 0, 0, 524288, '');

SET @gossip_menu_id = 51622;
SET @magic_number = 60012; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'To be stationed here? No greater honour.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 51622;

update creature_template set npc_flags = 1 where entry = 51621;

REPLACE INTO `creature_template` VALUES (51623, 0, 5585, 5555, 5556, 5586, 'Morgan', NULL, 0, 5, 5, 1064, 1064, 0, 0, 20, 188, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, 'npc_critter');

update creature_template set faction = 35 where entry = 51623;

REPLACE INTO `gameobject_template` VALUES (1000400, 0, 5, 715, 'Spear Tip Inn', 0, 0, 1.33, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Cenarion Hold teleport:

replace into item_template values
 ('51900', '0', '4', '0', 'Runed Stone of Ahn\'Qiraj', 'The shifting sands of war await your arrival. In the end the victor will either be you or Qiraji.', '3131', '1', '0', '1', '0', '0', '12', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '31726', '0', '0', '0', '-1', '10', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', 'item_cenarion_hold_teleport');

-- Vekniss Warrior should run while patrolling.
UPDATE `creature_template` SET `flags_extra`=`flags_extra` | 33554432 WHERE `entry`=15230;

-- Elexxi's guild NPCs:

update creature_template set name = 'Beatha Fisher', subname = 'Macrochelys', faction = 35 where entry = 51568;

SET @gossip_menu_id = 51568;
SET @magic_number = 60014; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText, Language) values (@magic_number, 'This be our plot of land, it\'s not much, but we call it home and home is where the heart is.', 0);
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 51568;

update creature_template set name = 'Goar\'thrak', subname = 'Macrochelys', faction = 35, display_Id1 = 6873 where entry = 50511;

update item_template set name = 'Depleted Stone of Ahn\'Qiraj', description = 'The stone is powerless. Now it\'s only a reminder of the events at the Scarab Wall.', spellid_1 = 0, quality = 0, script_name = '' where entry = 51900;

REPLACE INTO `item_template` VALUES (51901, 0, 4, 0, 'Scarab Lord\'s Garments', 'I squashed bugs for 10 hours and all I got was this lousy shirt.', 24610, 4, 0, 1, 0, 0, 4, -1, -1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set bonding = 1 where entry = 51901;

-- Delete some bad creature addon entries.
DELETE FROM `creature_addon` WHERE `guid`=80419;
DELETE FROM `creature_template_addon` WHERE `entry` IN (157, 454, 728, 731, 3862, 5427, 7384, 7456, 8960, 9696, 10200, 11361, 14832, 16117, 7550, 7560);
DELETE FROM `creature_template_addon` WHERE `mount`=0 && `bytes1`=0 && `b2_0_sheath`=0 && `b2_1_flags`=0 && `emote`=0 && `moveflags`=0 && ((`auras`='') || (`auras` IS NULL));

-- Correct damage for bosses.
-- The Prophet Skeram
UPDATE `creature_template` SET `dmg_min`=2045, `dmg_max`=2707 WHERE `entry`=15263;
-- Battleguard Sartura
UPDATE `creature_template` SET `dmg_min`=1977, `dmg_max`=2621 WHERE `entry`=15516;
-- Fankriss the Unyielding
UPDATE `creature_template` SET `dmg_min`=2197, `dmg_max`=2912 WHERE `entry`=15510;
-- Princess Huhuran
UPDATE `creature_template` SET `dmg_min`=2746, `dmg_max`=3640 WHERE `entry`=15509;
-- Emperor Vek'lor
UPDATE `creature_template` SET `dmg_min`=3067, `dmg_max`=4060 WHERE `entry`=15276;
-- Emperor Vek'nilash
UPDATE `creature_template` SET `dmg_min`=3295, `dmg_max`=4368 WHERE `entry`=15275;
-- C'Thun
UPDATE `creature_template` SET `dmg_min`=110, `dmg_max`=146 WHERE `entry`=15727;
-- Princess Yauj
UPDATE `creature_template` SET `dmg_min`=2197, `dmg_max`=2912 WHERE `entry`=15543;
-- Vem
UPDATE `creature_template` SET `dmg_min`=2471, `dmg_max`=3276 WHERE `entry`=15544;
-- Lord Kri
UPDATE `creature_template` SET `dmg_min`=3432, `dmg_max`=4550 WHERE `entry`=15511;
-- Viscidus
UPDATE `creature_template` SET `dmg_min`=2356, `dmg_max`=3123 WHERE `entry`=15299;
-- Ouro
UPDATE `creature_template` SET `dmg_min`=5190, `dmg_max`=6880 WHERE `entry`=15517;

-- Correct damage for trash.
-- Vekniss Soldier
UPDATE `creature_template` SET `dmg_min`=847, `dmg_max`=1122 WHERE `entry`=15229;
-- Vekniss Warrior
UPDATE `creature_template` SET `dmg_min`=1270, `dmg_max`=1684 WHERE `entry`=15230;
-- Vekniss Guardian
UPDATE `creature_template` SET `dmg_min`=1587, `dmg_max`=2105 WHERE `entry`=15233;
-- Vekniss Stinger
UPDATE `creature_template` SET `dmg_min`=1295, `dmg_max`=1717 WHERE `entry`=15235;
-- Vekniss Wasp
UPDATE `creature_template` SET `dmg_min`=831, `dmg_max`=1103, `armor`=3791 WHERE `entry`=15236;
-- Vekniss Hive Crawler
UPDATE `creature_template` SET `dmg_min`=2158, `dmg_max`=2862 WHERE `entry`=15240;
-- Qiraji Mindslayer
UPDATE `creature_template` SET `dmg_min`=2116, `dmg_max`=2806 WHERE `entry`=15246;
-- Qiraji Brainwasher
UPDATE `creature_template` SET `dmg_min`=1270, `dmg_max`=1684 WHERE `entry`=15247;
-- Qiraji Lasher
UPDATE `creature_template` SET `dmg_min`=1524, `dmg_max`=2020, `armor`=4091 WHERE `entry`=15249;
-- Qiraji Slayer
UPDATE `creature_template` SET `dmg_min`=1971, `dmg_max`=2607, `armor`=3316 WHERE `entry`=15250;
-- Qiraji Champion
UPDATE `creature_template` SET `dmg_min`=2746, `dmg_max`=3640 WHERE `entry`=15252;
-- Obsidian Eradicator
UPDATE `creature_template` SET `dmg_min`=2310, `dmg_max`=2743 WHERE `entry`=15262;
-- Anubisath Sentinel
UPDATE `creature_template` SET `dmg_min`=1799, `dmg_max`=2385 WHERE `entry`=15264;
-- Anubisath Defender
UPDATE `creature_template` SET `dmg_min`=3237, `dmg_max`=4294 WHERE `entry`=15277;
-- Vekniss Drone
UPDATE `creature_template` SET `dmg_min`=208, `dmg_max`=276 WHERE `entry`=15300;
-- Anubisath Warder
UPDATE `creature_template` SET `dmg_min`=3075, `dmg_max`=4077 WHERE `entry`=15311;
-- Obsidian Nullifier
UPDATE `creature_template` SET `dmg_min`=2066, `dmg_max`=3241 WHERE `entry`=15312;
-- Qiraji Scarab
UPDATE `creature_template` SET `dmg_min`=104, `dmg_max`=138, `armor`=3791 WHERE `entry`=15316;
-- Qiraji Scorpion
UPDATE `creature_template` SET `dmg_min`=103, `dmg_max`=138, `armor`=3791 WHERE `entry`=15317;
-- Yauj Brood
UPDATE `creature_template` SET `dmg_min`=282, `dmg_max`=515 WHERE `entry`=15621;
-- Vekniss Borer
UPDATE `creature_template` SET `dmg_min`=601, `dmg_max`=1100, `level_min`=60, `level_max`=60, `health_min`=7630, `health_max`=7630 WHERE `entry`=15622;
-- Spawn of Fankriss
UPDATE `creature_template` SET `dmg_min`=2856, `dmg_max`=3786 WHERE `entry`=15630;
-- Vekniss Hatchling
UPDATE `creature_template` SET `dmg_min`=684, `dmg_max`=1238 WHERE `entry`=15962;
-- Sartura's Royal Guard
UPDATE `creature_template` SET `dmg_min`=1524, `dmg_max`=2020, `armor`=4091 WHERE `entry`=15984;
-- Anubisath Warrior
UPDATE `creature_template` SET `dmg_min`=324, `dmg_max`=429 WHERE `entry`=15537;
-- Anubisath Swarmguard
UPDATE `creature_template` SET `dmg_min`=1057, `dmg_max`=1386 WHERE `entry`=15538;
-- Ouro Scarab
UPDATE `creature_template` SET `dmg_min`=197, `dmg_max`=341 WHERE `entry`=15718;
-- Toxic Slime
UPDATE `creature_template` SET `level_min`=60, `level_max`=60, `health_min`=4120, `health_max`=4120 WHERE `entry`=15925;

-- These mobs were supposedly nerfed in patch 1.10.
-- Claw Tentacle
-- Eye Tentacle
-- Giant Claw Tentacle
-- Flesh Tentacle
-- Giant Eye Tentacle
DELETE FROM `creature_template` WHERE `entry` IN (15725, 15726, 15728, 15802, 15334);
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15334, 7, 15948, 0, 0, 0, 5, 'Giant Eye Tentacle', '', 0, 60, 60, 36624, 36624, 0, 0, 4691, 91, 0, 1, 1, 20, 5, 0, 1, 1, 8500, 9500, 0, 272, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 1, 8808, '', 0, 3, 0, 0, 3, 0, 0, 0, 4626, 0, 2097152, 'mob_giant_eye_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15725, 7, 15789, 0, 0, 0, 2, 'Claw Tentacle', '', 0, 60, 60, 1526, 1526, 0, 0, 4691, 14, 0, 2.4, 1.42857, 20, 5, 0, 0, 1, 500, 800, 0, 272, 1, 2000, 1500, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 4626, 0, 2097152, 'mob_claw_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15726, 7, 15788, 0, 0, 0, 1, 'Eye Tentacle', '', 0, 60, 60, 2289, 2289, 0, 0, 4691, 91, 0, 2.4, 1.42857, 20, 5, 0, 0, 1, 500, 800, 0, 272, 1, 2000, 1800, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 700, 4321, '', 0, 3, 0, 0, 3, 0, 0, 0, 2147488274, 0, 2129920, 'mob_eye_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15728, 7, 15790, 0, 0, 0, 5, 'Giant Claw Tentacle', '', 0, 60, 60, 91560, 91560, 0, 0, 4691, 14, 0, 2.4, 1.42857, 20, 5, 0, 1, 1, 8500, 9500, 0, 272, 1, 2000, 2000, 1, 32769, 0, 0, 0, 0, 0, 0, 255, 325, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 4626, 0, 2097152, 'mob_giant_claw_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15802, 7, 15793, 0, 0, 0, 0, 'Flesh Tentacle', '', 0, 60, 60, 24416, 24416, 0, 0, 4691, 14, 0, 2.4, 1.42857, 20, 5, 0, 0, 1, 1950, 1950, 0, 272, 1, 1500, 1500, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 21010, 0, 2097152, 'mob_giant_flesh_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15334, 8, 15948, 0, 0, 0, 5, 'Giant Eye Tentacle', '', 0, 60, 60, 36624, 36624, 0, 0, 4691, 91, 0, 1, 1, 20, 5, 0, 1, 1, 1024, 1375, 0, 272, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 1, 8808, '', 0, 3, 0, 0, 3, 0, 0, 0, 4626, 0, 2097152, 'mob_giant_eye_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15725, 8, 15789, 0, 0, 0, 2, 'Claw Tentacle', '', 0, 60, 60, 1526, 1526, 0, 0, 4691, 14, 0, 2.4, 1.42857, 20, 5, 0, 0, 1, 208, 275, 0, 272, 1, 2000, 1500, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 4626, 0, 2097152, 'mob_claw_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15726, 8, 15788, 0, 0, 0, 1, 'Eye Tentacle', '', 0, 60, 60, 2289, 2289, 0, 0, 4691, 91, 0, 2.4, 1.42857, 20, 5, 0, 0, 1, 208, 275, 0, 272, 1, 2000, 1800, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 700, 4321, '', 0, 3, 0, 0, 3, 0, 0, 0, 2147488274, 0, 2129920, 'mob_eye_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15728, 8, 15790, 0, 0, 0, 5, 'Giant Claw Tentacle', '', 0, 60, 60, 91560, 91560, 0, 0, 4691, 14, 0, 2.4, 1.42857, 20, 5, 0, 1, 1, 3804, 5755, 0, 272, 1, 2000, 2000, 1, 32769, 0, 0, 0, 0, 0, 0, 255, 325, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 4626, 0, 2097152, 'mob_giant_claw_tentacle');
REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `scale`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (15802, 8, 15793, 0, 0, 0, 0, 'Flesh Tentacle', '', 0, 60, 60, 24416, 24416, 0, 0, 4691, 14, 0, 2.4, 1.42857, 20, 5, 0, 0, 1, 348, 548, 0, 272, 1, 1500, 1500, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 1, 0, 10, 8, 0, 0, 0, 0, 75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 21010, 0, 2097152, 'mob_giant_flesh_tentacle');

-- Correct levels.
-- Dirt Mound
UPDATE `creature_template` SET `level_min`=60, `level_max`=60, `health_min`=3052, `health_max`=3052 WHERE `entry`=15712;
-- Exit Trigger
UPDATE `creature_template` SET `level_min`=60, `level_max`=60, `health_min`=2289, `health_max`=2289 WHERE `entry`=15800;
-- Tentacle Portal
UPDATE `creature_template` SET `level_min`=63, `level_max`=63, `health_min`=666200, `health_max`=666200 WHERE `entry`=15904;
-- Giant Tentacle Portal
UPDATE `creature_template` SET `level_min`=63, `level_max`=63, `health_min`=666200, `health_max`=666200 WHERE `entry`=15910;

-- Correct unit flags.
-- Exit Trigger
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=15800;
-- Toxic Slime
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=15925;

-- Correct factions.
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15334;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15517;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15537;
UPDATE `creature_template` SET `faction`=310 WHERE `entry`=15538;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15712;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15718;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15725;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15726;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15728;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15800;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=15802;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15904;
UPDATE `creature_template` SET `faction`=370 WHERE `entry`=15910;
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=15925;

-- Correct base attack speeds.
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=5924;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=7467;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15463;
UPDATE `creature_template` SET `base_attack_time`=2700 WHERE `entry`=15517;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15667;
UPDATE `creature_template` SET `base_attack_time`=1000 WHERE `entry`=15718;
UPDATE `creature_template` SET `base_attack_time`=1000 WHERE `entry`=15725;
UPDATE `creature_template` SET `base_attack_time`=1000 WHERE `entry`=15726;
UPDATE `creature_template` SET `base_attack_time`=2500 WHERE `entry`=15728;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15802;

-- Correct ranged attack speeds.
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5924;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=7467;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15463;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15517;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15667;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15718;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15725;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15726;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15802;

-- Correct run speeds.
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=15517;
UPDATE `creature_template` SET `speed_run`=0.142857 WHERE `entry`=15667;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=15712;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=15718;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=15800;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=15904;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=15910;

-- Correct walk speeds.
UPDATE `creature_template` SET `speed_walk`=2.4 WHERE `entry`=15517;
UPDATE `creature_template` SET `speed_walk`=0.4 WHERE `entry`=15667;
UPDATE `creature_template` SET `speed_walk`=4.8 WHERE `entry`=15712;
UPDATE `creature_template` SET `speed_walk`=2.4 WHERE `entry`=15800;
UPDATE `creature_template` SET `speed_walk`=2.4 WHERE `entry`=15904;
UPDATE `creature_template` SET `speed_walk`=2.4 WHERE `entry`=15910;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15925;
UPDATE `creature_template` SET `speed_walk`=4 WHERE `entry`=15957;


-- Missing gameobjects.
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `size`, `name`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(21145, 0, 3, 566, 1, 'Feast Boar', 93, 3459, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21146, 0, 3, 564, 1, 'Feast Fish', 93, 3458, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21147, 0, 3, 563, 1, 'Feast Fruit', 93, 3460, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21148, 0, 3, 565, 1, 'Feast Goblet', 93, 3461, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179145, 0, 8, 192, 1, 'Campfire', 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179146, 0, 8, 192, 1, 'Campfire', 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179688, 2, 6, 5811, 1, 'Ritual Candle Aura', 0, 0, 0, 23226, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180207, 5, 5, 665, 1.1, 'Grom\'s Orc Tribute', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180209, 5, 5, 6312, 0.08, 'Grom\'s Tauren Tribute', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180670, 5, 10, 6352, 0.5, 'Bay of Storms Lightning Storm', 0, 0, 0, 196608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180687, 0, 5, 1647, 2, 'Dream Rift', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180713, 0, 5, 5457, 1, 'Light of Elune', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180888, 7, 5, 6613, 1, 'OrcTable01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181203, 9, 0, 6689, 1.01788, 'Heigan the Unclean - Exit Door', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181300, 9, 5, 6737, 1, 'Standing, Large', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Add loot to some of the missing gameobjects.
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES
(3461, 1708, 100, 0, 1, 1, 0, 0, 10), -- Feast Goblet
(3460, 4538, 100, 0, 1, 1, 0, 0, 10), -- Feast Fruit
(3459, 3771, 100, 0, 1, 1, 0, 0, 10), -- Feast Boar
(3458, 4594, 100, 0, 1, 1, 0, 0, 10); -- Feast Fish

-- Correct wrong name of existing gameobjects.
UPDATE `gameobject_template` SET `name`='Starbreeze Moonwell' WHERE `entry`=19550;
UPDATE `gameobject_template` SET `name`='Blue aura, short column, scale 3' WHERE `entry`=20917;
UPDATE `gameobject_template` SET `name`='Ectoplasmic Distiller' WHERE `entry`=181057;
UPDATE `gameobject_template` SET `name`='Grand Widow Faerlina - Web' WHERE `entry`=181235;
UPDATE `gameobject_template` SET `name`='Floating, medium' WHERE `entry`=181354;
UPDATE `gameobject_template` SET `name`='Standing, Medium, Exterior' WHERE `entry`=181355;
UPDATE `gameobject_template` SET `name`='Hanging, Square, Large' WHERE `entry`=181358;
UPDATE `gameobject_template` SET `name`='Standing, Medium Interior' WHERE `entry`=181388;
UPDATE `gameobject_template` SET `name`='Hanging, Tall/Thin, Large' WHERE `entry`=181389;
UPDATE `gameobject_template` SET `name`='Hanging, Square, Medium' WHERE `entry`=181390;
UPDATE `gameobject_template` SET `name`='Standing, small Interior' WHERE `entry`=181391;
UPDATE `gameobject_template` SET `name`='Hanging, Streamers, Medium' WHERE `entry`=181392;
UPDATE `gameobject_template` SET `name`='Hanging, Tall/Thin, Medium' WHERE `entry`=181393;
UPDATE `gameobject_template` SET `name`='Hanging, Streamers, x3' WHERE `entry`=181401;
UPDATE `gameobject_template` SET `name`='Curing Shrine' WHERE `entry`=181682;
UPDATE `gameobject_template` SET `name`='Curing Shrine' WHERE `entry`=181955;

-- Correct wrong size of existing gameobjects.
UPDATE `gameobject_template` SET `size`=0.4 WHERE `entry`=1604;
UPDATE `gameobject_template` SET `size`=0.4 WHERE `entry`=7510;
UPDATE `gameobject_template` SET `size`=0.5 WHERE `entry`=73940;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=174710;
UPDATE `gameobject_template` SET `size`=8 WHERE `entry`=177414;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=177415;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=177416;
UPDATE `gameobject_template` SET `size`=5 WHERE `entry`=177418;
UPDATE `gameobject_template` SET `size`=0.5 WHERE `entry`=177419;
UPDATE `gameobject_template` SET `size`=6 WHERE `entry`=177486;
UPDATE `gameobject_template` SET `size`=0.5 WHERE `entry`=177705;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=178549;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=178670;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=178722;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=178724;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=179512;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=179666;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=180206;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=180208;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=180249;
UPDATE `gameobject_template` SET `size`=1.75 WHERE `entry`=180250;
UPDATE `gameobject_template` SET `size`=0.5 WHERE `entry`=180252;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=180253;
UPDATE `gameobject_template` SET `size`=3.5 WHERE `entry`=180254;
UPDATE `gameobject_template` SET `size`=4 WHERE `entry`=180402;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=180404;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=180514;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=180619;
UPDATE `gameobject_template` SET `size`=4 WHERE `entry`=180669;
UPDATE `gameobject_template` SET `size`=1.4 WHERE `entry`=180691;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=180744;
UPDATE `gameobject_template` SET `size`=4 WHERE `entry`=180810;
UPDATE `gameobject_template` SET `size`=10 WHERE `entry`=180811;
UPDATE `gameobject_template` SET `size`=1.4 WHERE `entry`=181057;
UPDATE `gameobject_template` SET `size`=1.35 WHERE `entry`=181105;
UPDATE `gameobject_template` SET `size`=1.35 WHERE `entry`=181106;
UPDATE `gameobject_template` SET `size`=2.5 WHERE `entry`=181172;
UPDATE `gameobject_template` SET `size`=1.6 WHERE `entry`=181173;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=181174;
UPDATE `gameobject_template` SET `size`=1.25 WHERE `entry`=181192;
UPDATE `gameobject_template` SET `size`=1.25 WHERE `entry`=181193;
UPDATE `gameobject_template` SET `size`=1.25 WHERE `entry`=181194;
UPDATE `gameobject_template` SET `size`=2.5 WHERE `entry`=181215;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=181373;

-- Correct wrong display id of existing gameobjects.
UPDATE `gameobject_template` SET `displayId`=201 WHERE `entry`=3899;
UPDATE `gameobject_template` SET `displayId`=434 WHERE `entry`=19551;
UPDATE `gameobject_template` SET `displayId`=408 WHERE `entry`=176567;
UPDATE `gameobject_template` SET `displayId`=408 WHERE `entry`=176568;
UPDATE `gameobject_template` SET `displayId`=408 WHERE `entry`=176569;
UPDATE `gameobject_template` SET `displayId`=408 WHERE `entry`=176570;
UPDATE `gameobject_template` SET `displayId`=408 WHERE `entry`=176571;
UPDATE `gameobject_template` SET `displayId`=1407 WHERE `entry`=177276;
UPDATE `gameobject_template` SET `displayId`=6659 WHERE `entry`=181057;
UPDATE `gameobject_template` SET `displayId`=6754 WHERE `entry`=181334;
UPDATE `gameobject_template` SET `displayId`=6755 WHERE `entry`=181335;
UPDATE `gameobject_template` SET `displayId`=6755 WHERE `entry`=181336;
UPDATE `gameobject_template` SET `displayId`=6755 WHERE `entry`=181337;
UPDATE `gameobject_template` SET `displayId`=6756 WHERE `entry`=181346;

-- Missing page texts.
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (547, 'Captain,\r\n\r\nI wish you fortune in your journeys. Regrettably, fortune did not favor our first abduction attempt.\r\n\r\nWhen our team made contact with the target in the Stormwind/Ironforge tunnels, they found only a decoy.  It appears he showed more wisdom than we accredited him.\r\n\r\nBut our second plan is already in motion.  Defias agents are prepared to intercept the target as he approaches Theramore.  Soon Stormwind will feel our bite all too keenly..\r\n\r\n-M', 0);

-- Correct mistakes in existing page texts.
UPDATE `page_text` SET `text`='A party from Defias headquarters will contact the Collector, after which he will transfer the gathered gold.\r\n\r\nBe sure this process is performed without fail and with utmost discretion.  The Collector is responsible for the transfer of gold, but ultimately it is the responsibility of each member of the Defias Brotherhood to ensure that his role is acted out with attention and discipline.' WHERE `entry`=250;
UPDATE `page_text` SET `text`='The two kingdoms retained close ties for some years, but the Wildhammers were much changed by the horrors they witnessed at Grim Batol. They took to living above ground on the slopes of Aerie Peak, instead of carving a vast kingdom within the mountain. The ideological differences between the two remaining dwarven clans eventually led to their parting of ways. ' WHERE `entry`=1931;
UPDATE `page_text` SET `text`='--Day 13\r\nTroop movement near Theramore has increased.  Large numbers of humans left the city and move west, in haste.\r\n\r\n--Day 14\r\nMore troops leaving the city.  I followed a small group and watched them remove their uniforms after leaving bowshot of Theramore.  Perhaps they are deserters?\r\n\r\n--Day 15\r\nI overheard some Theramore troops talk today of guards leaving their posts.  My suspicions of the deserters must be true\r\n' WHERE `entry`=507;
UPDATE `page_text` SET `text`='Dear Diary,\r\n\r\nI left my hide-out in a rage after my last entry. Boy was I angry. I decided to redesign my minions\' uniforms to better reflect my angst. I feel a little better but something is missing. I\'ll be right back...' WHERE `entry`=2830;
UPDATE `page_text` SET `text`='I have sent another messenger to Dalaran, and hear that even now they are scouring for the pendant, in the ruins outside our protective sphere.\r\n\r\nI only hope we\'re not too late.' WHERE `entry`=284;
UPDATE `page_text` SET `text`='Remember, my brothers, we were once proud craftsmen.  We\'ll perform our current duties with the same precision we used in our past trade.\r\n\r\n-EVC' WHERE `entry`=251;
UPDATE `page_text` SET `text`='Thus empowered, the Five Aspects were charged with the world\'s defense in the Titans\' absence. With the dragons prepared to safeguard their creation, the Titans left Azeroth behind forever. Unfortunately it was only a matter of time before Sargeras learned of the newborn world\'s existence.... ' WHERE `entry`=1802;
UPDATE `page_text` SET `text`='But Kegan was very eager to speak on other subjects, particularly his time growing up in Lordaeron before its fall.  \r\n\r\nHe still holds much love for that lost kingdom, even though it is now ruined, and dead.\r\n\r\nMy growing fondness for Kegan gave me patience as I waited for my test results.' WHERE `entry`=282;
UPDATE `page_text` SET `text`='<The pages are covered in ancient elven runes.>\r\n\r\nThe pages herein contain memories of events that transpired in the collection and creation of the reagents required to craft greater arcanum.\r\n\r\nMay our enemies never gain access to these libram.\r\n\r\nMay I live to see the pallid light of the moon shine upon Quel\'Thalas once again.\r\n\r\nMay I die but for the grace of Kael\'thas.\r\n\r\nMay I kill for the glory of Illidan.\r\n\r\n-Master Kariel Winthalus' WHERE `entry`=2635;
UPDATE `page_text` SET `text`='The proud Aegwynn, believing herself to be a match for the menacing god, unleashed her powers against Sargeras\' avatar. With disconcerting ease, Aegwynn battered the demonlord with her powers and succeeded in killing his physical shell. Fearing that Sargeras\' spirit would linger on, Aegwynn locked the ruined husk of his body within one of the ancient halls of Kalimdor that had been blasted to the bottom of the sea when the Well of Eternity collapsed. ' WHERE `entry`=1912;
UPDATE `page_text` SET `text`='Dear Diary,\r\n\r\nSorry, I fell asleep. So I was flying angry and throwing out chapters of that stupid book. I saw a demon below me in Darkwhisper and decided to make the first chapter form a magical tornado of paper and shred its body into a million pieces! It was liberating. Magic + paper = fun.$B$BThat made me pretty happy so I decided to fly to the Eastern Kingdoms. My first stop was the Molten Core. Narain always talked about that place! \"Molten Core this and Ragnaros that...\"' WHERE `entry`=2834;
UPDATE `page_text` SET `text`='Below is the process and schedule of Defias gold collection from the mines of Elwynn to our headquarters in Westfall.\r\n \r\nCollection Schedule:\r\n\r\nSunday: 12:30pm\r\nWednesday: 12:30pm\r\n\r\nBy each specified day, gold gained from the Elwynn mines will be gathered at the Brackwell pumpkin patch.  The agent in charge of these gatherings, \"The Collector,\" will be known by the engraved ring he possesses.  A ring I gave him.' WHERE `entry`=79;
UPDATE `page_text` SET `text`='Illidan, who had grown dependent on magic\'s empowering energies, struggled to keep control of his nearly overwhelming hunger to tap the Well\'s energies once again. However, with Tyrande\'s patient support, he was able to restrain himself and help his brother find the reclusive demigod, Cenarius. ' WHERE `entry`=1811;
UPDATE `page_text` SET `text`='In the years that followed, after Stormwind betrayed the Stonemasons\' Guild, Sir Erlgadin grew bitter about the role of the nobles within the Kingdom.  He no longer wished to uphold the position that his father\'s bloodline had earned for him in the House of Nobles.\r\n\r\nBut I digress.  The purpose of this story is not to act as a political treatise or a biography.  This is the account of my experiences hunting big game in the green hills of Stranglethorn.' WHERE `entry`=98;
UPDATE `page_text` SET `text`='After a few years the majority of the orcish Horde had crossed into Azeroth, and Gul\'dan deemed that the time for the primary strike against humanity had come. The Horde launched its full might against the unsuspecting kingdom of Stormwind. ' WHERE `entry`=1967;
UPDATE `page_text` SET `text`='Day 2\r\n\r\nMy search continues, and no ore.  I\'m wondering if Stonegear was just making up the rumor of that ore as a joke.  Well if he did then he\'s getting a cracked skull when I get back to Steelgrill\'s Depot!\r\n\r\nTonight as I prepared my camp, I heard a growl echoing through the canyons.  \r\n\r\nIt isn\'t a wolf.  It may be a bear.' WHERE `entry`=230;
UPDATE `page_text` SET `text`='Day 4\r\n\r\nMy supplies are running low.  I still have plenty of food, but I didn\'t plan for such a long stay in the wilds outside my tank and I only brought two kegs of ale with me.\r\n\r\nI\'ve been up all night the past two nights, listening to that cursed growling, and I\'ve nearly drained my kegs dry!\r\n\r\nI\'ll have to head back to Hammerfoot and our Steam Tanks tomorrow.  I don\'t want to get lost out here, booze-less.' WHERE `entry`=232;
UPDATE `page_text` SET `text`='Incensed by Durotan\'s death, Orgrim set out to free the Horde from demonic corruption and ultimately assumed the role of warchief of the Horde by killing Gul\'dan\'s corrupt puppet, Blackhand. Under his decisive leadership the relentless Horde finally laid siege to Stormwind Keep. ' WHERE `entry`=1973;
UPDATE `page_text` SET `text`='Dear Diary,\r\n\r\nI gave him a hug and told him to keep up the good work. I feel better now. Keep that between you and me, diary.$B$BWhere was I? Oh yes, NARAIN! ARGH!!! I hate that guy. It was Narain, after all, that destroyed the curve on every exam back when we were students at the Gnomeregan Institute of Tinkering.$B$BFail me out of school, will they? As far as I\'m concerned, Gnomeregan got what it deserved!$B$BThat\'s all for today. Sleep tight, diary!' WHERE `entry`=2832;
UPDATE `page_text` SET `text`='Day 5\r\n\r\nThe cursed bear did me in!  It attacked me at midday, roaring and charging at me from behind.\r\n\r\nI would have smelled it coming had it charged from upwind - its stench was something awful!  The reek of its mangy coat and rotted breath alone nearly sent me spinning!\r\n\r\nI fought the thing off but it chewed my leg up good.  Now I can\'t move, my ale\'s gone, and I never did find that ore.  Curses!' WHERE `entry`=233;
UPDATE `page_text` SET `text`='The orcs\' failure to conquer the world for the Burning Legion forced Kil\'jaeden to create a new army to sew chaos throughout the kingdoms of the Azeroth. This new army could not be allowed to fall prey to the same petty rivalries and infighting that had plagued the Horde. It would have to be merciless and single-minded in its mission. This time, Kil\'jaeden could not afford to fail. ' WHERE `entry`=2004;
UPDATE `page_text` SET `text`='But why do I mention this?  I do so to give credence to what I am about to write, for these words came from Kegan\'s lips and it is my hope that my colleagues will, upon reading this journal, know why I believe what he said:\r\n\r\n\"Remnants of the Old Gods still linger in the deep hollows of the world.  New forces seek to harness that ancient power, and those who succeed will have a terrible weapon against their enemies.\"' WHERE `entry`=267;
UPDATE `page_text` SET `text`='Or, is bloodstone made of blood?  And if so, then whose blood?  Mine?  The blood of any human?  Any animal?  \r\n\r\nOr maybe bloodstone is the blood of some unknown thing, the very thing that Kegan had both feared and revered when he handed me his pendant.\r\n\r\nThat is the question that must be answered.  It is the key.' WHERE `entry`=277;
UPDATE `page_text` SET `text`='After seeing this my head grew light, perhaps from my recent injury (though I did not believe I had lost that much blood) or perhaps because I had finally, after so much frustration, uncovered one of the bloodstone\'s properties.  I reached behind me for my work stool and sat down, pondering.  Thoughts and questions raced through my head, dizzying and threatening to topple me.  \r\n\r\nDoes bloodstone drink blood?  Does it crave blood?  Does it attract blood?' WHERE `entry`=276;
UPDATE `page_text` SET `text`='I\'ve stood before a towering Infernal on the battlefield, the army of the Burning Legion advancing from all directions.  An unruly band of Trolls seems as harmless as a jackrabbit in the hills of Dun Morogh.\r\n\r\nWe passed the Tkashi Ruins without event, much to Barnil\'s relief.  The party proceeded to head westward, toward the Great Sea, skirting the Ruins of Zul\'Kunda just to the south.  As we ascended the high sea bluffs we spotted our first Raptor.' WHERE `entry`=115;
UPDATE `page_text` SET `text`='Our hastily aimed shots were enough to buy Barnil\'s escape.  Barnil clamored back down the hill and rejoined the party. We scurried off into the jungle; a pack of ferocious Lashtail Raptor\'s stalking our every move.\r\n\r\nThe hunters were now the hunted.' WHERE `entry`=118;
UPDATE `page_text` SET `text`='The cut was not deep but nevertheless bled fiercely.  Before I could wrap my injured finger in a bandage, a good deal of my blood had spilled on my worktable.\r\n\r\nAnd as I was cleaning up this new mess, I noticed the strangest thing...' WHERE `entry`=274;
UPDATE `page_text` SET `text`='Day 1\r\n\r\nMy tank is broken, but I know the chiron ore is in these hills somewhere.  I told Hammerfoot to stay and watch our tanks.\r\n\r\nI\'m continuing the search alone.  If I don\'t make it back, then this journal is my last testament.\r\n\r\n--Buron Hildelve, Pilot\r\nIronforge Steam Brigade' WHERE `entry`=229;
UPDATE `page_text` SET `text`='It was at this time that Kil\'jaeden discovered the lush world of Draenor floating peacefully within the Great Dark Beyond. Home to the shamanistic, clan-based orcs and the peaceful draenei, Draenor was as idyllic as it was vast. ' WHERE `entry`=1944;
UPDATE `page_text` SET `text`='Day 3\r\n\r\nThat growling continued throughout the night, and followed me all today, distracting me from my hunt for ore.  I think there\'s a bear following me!\r\n\r\nI hope he comes close.  I\'ll bury my pick into his head!' WHERE `entry`=231;
UPDATE `page_text` SET `text`='None of my new tests brought to light any revelations of the origin of bloodstone.  At the time the only riddle I solved was that bloodstone was neither living, nor dead!\r\n\r\nBut it was then, at the brink of failure, that a breakthrough was made.  My latest test involved a glass beaker whose brim was chipped, leaving a small, jagged space along its edge.  When the test was over, again revealing nothing, I went to clean my worktable and cut myself on the beaker.' WHERE `entry`=273;
UPDATE `page_text` SET `text`='As the Titans made their way across the primordial landscape, they encountered a number of hostile elemental beings. These elementals, who worshipped a race of unfathomably evil beings known only as the Old Gods, vowed to drive the Titans back and keep their world inviolate from the invaders\' metallic touch. ' WHERE `entry`=1788;
UPDATE `page_text` SET `text`='Day 6\r\n\r\nThe bear hasn\'t yet returned - I must have given him a good beating!  But I can still hear his growling.  I think he\'s waiting for me to die!\r\n\r\nTo whomever finds this book, I have a task for you.  Kill that mangy bear.  Kill it, and take this book back to my friend Hammerfoot.  He\'ll want to know what happened.\r\n\r\nAnd take my armor.  You\'ll need it against old Mangeclaw!' WHERE `entry`=234;
UPDATE `page_text` SET `text`='Before long, the spiritual race was transformed into a bloodthirsty people. Kil\'jaeden then urged Ner\'zhul and his people to take the last step: to give themselves over entirely to the pursuit of death and war. Yet the old shaman, sensing that his people would be enslaved to hatred forever, somehow resisted the demon\'s command. ' WHERE `entry`=1947;
UPDATE `page_text` SET `text`='The cauldrons, protected by the loyal cultists, would then act as plague generators, sending the plague seeping out across the unsuspecting farmlands and cities of northern Lordaeron.\r\n\r\nThe Lich King\'s plan worked perfectly. Many of Lordaeron\'s northern villages were contaminated almost immediately. Just as in Northrend, the citizens who contracted the plague died and arose as the Lich King\'s willing slaves.' WHERE `entry`=573;
UPDATE `page_text` SET `text`='That is what Kegan uttered as he handed his bloodstone pendant to me, and there was fear, and maybe reverence, in his eyes as he did so.  And as his hands met with mine they lingered, as if reluctant to give up the pendant.  Revulsion swept through me, yet to this day I know not if I reviled against his dead flesh pressed to mine, or if the pendant itself made my skin crawl.\r\n\r\nFor I felt a power within it.  A deep, hidden, hungry power.  And one yearning for release.' WHERE `entry`=268;
UPDATE `page_text` SET `text`='My hopes were to verify for my colleagues that this type of stone did possess magical properties, and if we wizards of Dalaran did not wish to exploit the power of bloodstones, we should at the least learn their properties, since our foes may one day use them against us.\r\n\r\nAnd so my studies began.' WHERE `entry`=270;
UPDATE `page_text` SET `text`='Kegan Darkmar, leader of the small group of undead who came to us in search of asylum from their \"brethren,\" defies our common attitudes toward his kind.  His skin may be rotting and blood may have long stopped flowing through his veins, but he acts very nobly and seems to care more for his compatriots\' safety than his own.\r\n\r\nIndeed, there is a humanity within him that, I confess, I sometimes see lacking in the humans around me.' WHERE `entry`=266;
UPDATE `page_text` SET `text`='In fact, it often acted in precisely the opposite fashion as expected!  It was almost as if the pendant was deliberately fouling my experiments.\r\n\r\nLike it was thinking, and alive.\r\n\r\nAngered but not discouraged, I switched from assuming the pendant was an inert piece of rock, to assuming it was a living thing.  \r\n\r\nBut again, I failed.' WHERE `entry`=272;
UPDATE `page_text` SET `text`='Fire rekindled within me, I then dove back into my experiments.  This time I made no assumptions, methodically performing every test at my disposal.  This increased my required efforts tremendously, but I would be more likely to make discoveries.  \r\n\r\nAnd, although my lab here is small and I have no subordinates to spare to aid, I did find one more intriguing quality of bloodstone...' WHERE `entry`=278;
UPDATE `page_text` SET `text`='As the forces of Azeroth and the Horde clashed across the kingdom, internal conflicts began to take their toll on both armies. King Llane, who believed the bestial orcs to be incapable of conquering Azeroth, contemptuously held his position at his capital of Stormwind. However, Sir Lothar became convinced that the battle should be taken directly to the enemy, and he was forced to choose between his convictions and his loyalty to the king. ' WHERE `entry`=1968;
UPDATE `page_text` SET `text`='But after weeks of no news my patience faltered, and upon further inquires to Dalaran I learned that the bloodstone never reached my colleagues.  My courier was somehow lost on the way, and the bloodstone pendant was lost with him!\r\n\r\nThis is grave news, for although Kegan and his followers still have bloodstone specimens with which we may experiment, I fear the pendant may fall into unsavory hands.' WHERE `entry`=283;
UPDATE `page_text` SET `text`='Kurdran Wildhammer\r\n\r\nRenowned Dragon Fighter. Gryphon Master of the Aerie Peak. Commander of the Gryphon Rider Division attached to the Alliance Expedition that marched into the orc homeworld of Draenor. Presumed deceased.\r\n\r\nWe will hear Sky-Ree\'s calls upon the winds. We will hear your hammer thunder across the mountaintops. Ride hard into the hereafter, brother. The halls of our ancestors await you.\r\n\r\n- Falstad Wildhammer - Lord of Aerie Peak' WHERE `entry`=287;
UPDATE `page_text` SET `text`='Archmage Khadgar of the Kirin Tor\r\n\r\nFormer apprentice of Medivh. Supreme Commander of the Alliance Expedition that marched into the orc homeworld of Draenor. Presumed deceased. \r\n\r\nNever did one so selflessly delve into the dark heart of magic and warfare. We wish you well, bold wanderer. Wherever you are. \r\n\r\n- Antonidas - Archmage of Dalaran' WHERE `entry`=289;
UPDATE `page_text` SET `text`='Danath Trollbane\r\n\r\nMilitia Commander of Stromgarde.Tactical Advisor to General Turalyon, Force Commander of the Alliance Expedition that marched into the orc homeworld of Draenor. Presumed deceased.\r\n\r\nWe honor your memory, nephew, and your sacrifice. Since the founding of our glorious empire, the path to valor has always been drenched with the blood of heroes. \r\n\r\n- Thoras Trollbane, Lord of Stromgarde' WHERE `entry`=291;
UPDATE `page_text` SET `text`='Ner\'zhul and his followers entered the Twisting Nether, the ethereal plane that connects all of the worlds scattered throughout the Great Dark Beyond. Unfortunately Kil\'jaeden and his demonic minions were waiting for them. Kil\'jaeden, who had sworn to take vengeance on Ner\'zhul for his prideful defiance, slowly tore the old shaman\'s body apart, piece by piece. ' WHERE `entry`=2002;
UPDATE `page_text` SET `text`='Greetings, $n. I thought you might be interested in the results of my research.$b$bAs it turns out, both Reuben and Leagrem are survived - so to speak - by family. Even if they\'re already aware of the lost soldier\'s fate, visiting one of them may prove a worthy venture.$b$bYou can find Reuben\'s ex-wife, Joanna Whitehall, in the Undercity\'s War Quarter, where she spends most of her time. I\'m unsure how receptive she\'ll be to the news, mind.$b$bAs for Leagrem, his aunt became the Orphanage Matron in Stormwind, an admirable position to hold.$b$bNo matter your path in life, I wish you the best of luck in your endeavors.$b$b' WHERE `entry`=2886;
UPDATE `page_text` SET `text`='Here lies Uther the Lightbringer\r\nFirst Paladin - Founder of the Order of the Silver Hand\r\n\r\nUther lived and died to defend the kingdom of Lordaeron. Though he was betrayed by his most beloved student, we believe that his spirit lives on. He continues to watch over us, even as the shadows close in around our ruined land. His light is the light of all humanity - and so long as we honor his example, it shall never fade. \r\n- Anonymous' WHERE `entry`=292;
UPDATE `page_text` SET `text`='As they journeyed in silence, they surveyed the wreckage of their world and realized that their passions had wrought the destruction all around them. Though Sargeras and his Legion had been ripped from the world by the Well\'s destruction, Malfurion and his companions were left to ponder the terrible cost of victory. ' WHERE `entry`=1829;
UPDATE `page_text` SET `text`='<HTML>\r\n<BODY>\r\n<H1 align=\"center\">\r\nCRYSTAL PYLON USER\'S MANUAL\r\n</H1>\r\n<BR/>\r\n<P align=\"center\"> \"A guide to collecting and using the power crystals of Un\'Goro Crater\" </P>\r\n<BR/>\r\n<BR/>\r\n<P align=\"left\">Chapter 1: The Northern Pylon </P>\r\n<BR/>\r\n<P align=\"left\">Chapter 2: The Eastern Pylon </P>\r\n<BR/>\r\n<P align=\"left\">Chapter 3: The Western Pylon </P>\r\n<BR/>\r\n</BODY>\r\n</HTML>' WHERE `entry`=1491;
UPDATE `page_text` SET `text`='The Excavation of Bael Modan\r\n\r\nThe original survey crew sent by the Explorers\' League was indeed correct in their findings. The ground here holds artifacts of unlimited value to our people. No doubt we will find many answers in our quest for knowledge beneath the sand and rock of Bael Modan.\r\n\r\nThe geology of the region dictates we use extreme measures however. Many of the sand deposits have solidified under the harsh conditions and varying climate.' WHERE `entry`=342;
UPDATE `page_text` SET `text`='The solution is quite simple however. Using wood pulp as an absorbent, we can combine traces of nitroglycerin with sodium nitrate to develop a strong blasting charge, capable of breaking through even the most dense masses.\r\n\r\nThe work will be noisy and disruptive but our search is of far greater importance than the comfort of the local inhabitants. In fact, we\'ve already had to drive a band of bull-men out of the area who were proving to be a nuisance.' WHERE `entry`=343;
UPDATE `page_text` SET `text`='The fact that we are dealing with various rogue elements out here leads me to believe we will need support from the King\'s Army. Not only will the excavation require military support, it would seem to my novice eye that the location of Bael Modan might be of strategic value to the Alliance considering the volatility of world politics in their current state.\r\n\r\nAlas, I have digressed. There is much work to be done beneath the rock. I have spent too much time writing and not enough digging...' WHERE `entry`=344;
UPDATE `page_text` SET `text`='While Medivh worked to convince the orcs and humans of the need for an alliance, the night elves fought the Legion in their own secretive ways. Tyrande Whisperwind, the immortal High Priestess of the night elf Sentinels, battled desperately to keep the demons and undead from overrunning the forests of Ashenvale. Tyrande realized that she needed help, so she set out to awaken the night elf druids from their thousand-year slumber. ' WHERE `entry`=2079;
UPDATE `page_text` SET `text`='The samophlange control console can be used to autmoatically regulate the flow of fuels, gasses, liquids, and related machinery. Once initial configuration has been completed, it should run worry free with minor maintenance.\r\n\r\nBrief listing of control console components (from left to right)\r\n\r\nI. Main Power Lever\r\n\r\nThe engaged position enables the samophlange. The control mechanism will not automatically disengage when the lever is put in the off position. This will merely' WHERE `entry`=350;
UPDATE `page_text` SET `text`=' As Hellscream and his loyal Warsong warriors stalked through the forests of Ashenvale, they clashed with the ancient night elf Sentinels. Certain that the orcs had returned to their warlike ways, the demigod Cenarius came forth to drive Hellscream and his orcs back. Yet Hellscream and his orcs, overcome with supernatural hate and rage, managed to kill Cenarius and corrupt the ancient forestlands. ' WHERE `entry`=2077;
UPDATE `page_text` SET `text`='<HTML>\r\n<BODY>\r\n<H1 align=\"center\">\r\nWestern Crystal Combinations\r\n</H1>\r\n<BR/>\r\n<P align=\"left\">There are two possible effects: one that increases your protection from damage, and one that weakens an enemy\'s defenses.</P>\r\n<BR/>\r\n<P align=\"left\">CRYSTAL WARD: Requires red and green crystals.<BR/>This will provide you with an increase to armor.</P>\r\n<BR/>\r\n<P align=\"left\">CRYSTAL YIELD: Requires blue and red crystals.<BR/>This can lower the armor of a specific target.\r\n</P>\r\n</BODY>\r\n</HTML>' WHERE `entry`=1532;
UPDATE `page_text` SET `text`='Supervisor Fizsprocket, please find enclosed a list of the equipment you have requisitioned, approved by President Razdunk.\r\n\r\nHe has asked me to remind and to emphasize to you of the Venture Company\'s vested interest in setting up operations throughout Kalimdor. Our drilling and mining outposts in the Barrens have proven profitable and efficient, but we still await sufficient production numbers from Mulgore, your jurisdiction.\r\n\r\nThe advisory board understands the difficulties in establishing' WHERE `entry`=352;
UPDATE `page_text` SET `text`='<HTML>\r\n<BODY>\r\n<H1 align=\"center\">\r\nWESTERN PYLON TABLE DIAGRAM\r\n</H1>\r\n<BR/>\r\n<IMG src=\"Interface\\Pictures\\11482_crystals_west\"/>\r\n</BODY>\r\n</HTML>' WHERE `entry`=1533;
UPDATE `page_text` SET `text`='a large scale operation so close to the tauren homeland, but do not feel that they pose a large impediment to our overall business plan in the area.\r\n\r\nWe are pleased to hear that mining has begun in the mineral rich plains of Mulgore. Because of this the board has approved your equipment request. In addition to mining, we feel that Mulgore also has much to offer in the way of lumber, thus you will also be provided with several of our newest model shredders and raw materials to construct a' WHERE `entry`=353;
UPDATE `page_text` SET `text`='begin the cooldown process, at which point it will take roughly one to two minutes (depending on the situation) to turn off.\r\n\r\nIMPORTANT NOTE: The main power lever can only be manipulated when the three control valves on the actual machinery have been disengaged. These valves can be shut off in any order.\r\n\r\nThe first is the MAIN CONTROL VALVE, which can be found at the base of the large, vertical smokestack. Next, the FUEL CONTROL VALVE can be found on the large pipe which leads ' WHERE `entry`=355;
UPDATE `page_text` SET `text`='from the fuel tanks (there should be three of them) to the smokestack. Finally, the REGULATOR VALVE can be found on the lower of the two large, cylindrical tanks that flow into the smokestack.\r\n\r\nII. Fuel Gauges\r\n\r\nDisplays the current pressure in the primary, secondary, and tertiary fuel tanks.\r\n\r\nIII. Flow Gauge\r\n\r\nDisplays the current rate of flow within the system.\r\n' WHERE `entry`=356;
UPDATE `page_text` SET `text`='IV. Flow Controls\r\n\r\nIncrease or decrease the flow rates. This is automatically controlled by the samophlange control mechanism.\r\n\r\nV. Temperature Gauge\r\n\r\nDisplays the operating temperature of the system in general.' WHERE `entry`=357;
UPDATE `page_text` SET `text`='Long had the children of the stars dwelled upon the banks of the shimmering waters of the Eternal Well. To all was known that Elune, light of the eternal twilight, aspect and goddess of the moon, dwelt within its waters at such time that she rested from her works. Upon the shores of the Well did the children of the stars, favored of Elune, build their homes, even as their gaze was trained ever skyward, into the moonlit night.\r\n\r\nThough there were many towns and places of habitation constructed' WHERE `entry`=358;
UPDATE `page_text` SET `text`='The Dark Iron armies smashed against their cousins\' strongholds and very nearly took both kingdoms. However, Madoran Bronzebeard ultimately led his clan to a decisive victory over Thaurissan\'s sorcerous army. Thaurissan and his servants fled back to the safety of their city, unaware of the events transpiring at Grim Batol, where Modgud\'s army would fare no better against Khardros and his Wildhammer warriors. ' WHERE `entry`=1920;
UPDATE `page_text` SET `text`='The earth trembled as the ancient trees in the enchanted forest were uprooted and toppled. The groves and glades tended by the sons and daughters of Cenarius and the stone towers of the children of the stars were brought to the rolling ground. There was our queen, radiant even in the desperation, in the chaos that was the battles. The enchanted sky changed colors with the discharge of magic, with the explosions that threatened to tear the world asunder.\r\n\r\nBrother fought brother. Chosen fought' WHERE `entry`=359;
UPDATE `page_text` SET `text`='upon the lakeshore, Ameth\'Aran and Bashal\'Aran were the foremost, having the touch of Azshara, the Kaldorei\'s beloved queen, in their creation. Her favored servitors, those of the Highborne, she brought to the twin towns to reside, and to govern them she placed Athrikus Narassin, though it would be that he would spend most of his days in his Tower of Althalaxx, some ways removed of the towns.\r\n\r\nHis second, a mage known of his prowess in the arcane arts as much as with his physical abilities,' WHERE `entry`=364;
UPDATE `page_text` SET `text`='The fiend of which I write is the worgen.\r\n\r\nOld, rural folklore may hearken to these creatures, for what farmer\'s child has not heard tales of beastly wolf-men stalking the woods and marshes outside his village?\r\n\r\nAnd truth may hide in such tales--perhaps they are warnings against the worgen, veiled as myths to frighten us.' WHERE `entry`=700;
UPDATE `page_text` SET `text`='was Asterion, who lived among the people of Bashal\'Aran, and went many times to Ameth\'Aran, to see to the needs and wants of its people.\r\n\r\nAnd so it was, upon the shores of the Well of Eternity, the twin towns grew and prospered, while the world beneath the stars fell slowly to madness.' WHERE `entry`=365;
UPDATE `page_text` SET `text`='The Frostwolf Artichoke: Tales of Stormpike Glory\r\n-By Vanndar Stormpike\r\n\r\nWhat is Frostwolf? The answer is simple: The Frostwolf are savages trying to halt our sovereign imperialistic imperative.\r\n\r\nMuch like an artichoke, the Frostwolf have a prickly, shielded set of defenses and much like an artichoke, once the outer layer is peeled away, the heart is exposed, ready to be eaten with a fine garlic dip.\r\n\r\nDelicious!\r\n' WHERE `entry`=2779;
UPDATE `page_text` SET `text`='blessed. It was not all the Highborne that fought. Some stood, transfixed, as the madness took them. Mighty cities and humble towns alike were felled around them.\r\n\r\nIn Ameth\'Aran, all was in ruins, its people clinging to the ground as though that might spare them from the destruction. It was then that Athrikus Narassin, favored of Azshara appeared to guide them to safety.\r\n\r\nWith a spell he could protect them, he would say. While around them, brother and sister, father and mother perished,' WHERE `entry`=366;
UPDATE `page_text` SET `text`='At this time, the undead Scourge had essentially transformed Lordaeron and Quel\'Thalas into the toxic Plaguelands. There were only a few pockets of Alliance resistance forces left. One such group, consisting primarily of high elves, was led by the last of the Sunstrider dynasty: Prince Kael\'thas. ' WHERE `entry`=2093;
UPDATE `page_text` SET `text`='Jin\'Zil,\r\n   It has been a while, but I thought you would like to know that the last of the Bloodfeather\'s have been slain. Don\'t thank me though, the person delivering the letter is the slayer. If you\'d like, I can have her head delivered to you after the caravan makes its rounds through the Barrens. I know you like that sort of stuff for your voodoo magics.\r\n   Take care old friend.\r\n\r\n-Darsok Swiftdagger' WHERE `entry`=415;
UPDATE `page_text` SET `text`='For a time the three factions kept a tenuous peace, but tensions erupted when High King Anvilmar passed away from old age. The three ruling clans went to war for control of Ironforge itself. The dwarf civil war raged under the earth for many years. Eventually the Bronzebeards, who had the largest standing army, banished the Dark Irons and Wildhammers from under the mountain. ' WHERE `entry`=1917;
UPDATE `page_text` SET `text`='Good Martek,\r\n\r\nI\'m in a jam and I need your help.\r\n\r\nMy brother and I are building a racecar and we need strong pistons.  Nothing I try is hard enough.  Nothing can hold up to our new car\'s speed.  And so the engine breaks down constantly!\r\n\r\nYou are an expert in crafting with metal.  You must help.  You are the only one who can.' WHERE `entry`=441;
UPDATE `page_text` SET `text`='CONGRATULATIONS!\r\n\r\nYou are the proud new owner of the amazing snufflenose gopher!  Although a shy creature, we are positive you\'ll find your new pet\'s fuzzy cuteness and incredible olfactory capabilities endearing.\r\n\r\nIn the following pages, you\'ll find information on your gopher\'s:\r\n\r\n1. Feeding and care\r\n2. Eccentric (and adorable) behavior\r\n3. Use of the patented Snufflenose Command Stick(tm)\r\n\r\nAgain, congratulations.  You won\'t be disappounted,\r\n\r\n-Marwig Rustbolt\r\nOwner, Snuff Inc.\r\n\r\n' WHERE `entry`=467;
UPDATE `page_text` SET `text`='Hi Felnok!\r\n\r\nMy studies in the Burning Steppes are proceeding splendidly.  And I owe $N a lot for all $ghis:her; help!  Here\'s what I need to continue:\r\n\r\nA steelcoil bumber-bitzel\r\nA 17-guage ice-spanner\r\n12 pounds of duck feathers\r\nA jar of that glue you make\r\n\r\nThanks a lot Felnok, and when we see each other again remind me not to put coal in your boots!\r\n\r\n-Tinkee' WHERE `entry`=1691;
UPDATE `page_text` SET `text`='The Keeper passed on the letter you discovered, $n, and I thought you might appreciate an update.$b$bThe last surviving family member of the \"Vargus\" mentioned has been tracked to the desert of Silithus, dwelling in Cenarion Hold. He goes by the name of Garon Hutchins.$b$bYou should speak with him during your next excursion to the wastes. He may be interested to hear what we\'ve learned.$b$b' WHERE `entry`=2888;
UPDATE `page_text` SET `next_page`=547 WHERE `entry`=527;
UPDATE `page_text` SET `text`='The Bleeding Sparrow: Manifest\r\n\r\n(20) barrels rum.  Destination: Theramore\r\n(50) sacks flour. Destination: Theramore\r\n(2) crates assorted gnome tools.  Destination: Ratchet\r\n(30) bolts cotton cloth.  Destination: Theramore\r\n(4) crates spices.  Destination: Theramore\r\n(3) passengers.  Destination: Theramore\r\n' WHERE `entry`=527;
UPDATE `page_text` SET `text`=' An enormous dark visage appeared in the sky above Northrend. Sargeras, the demon king and lord of the Burning Legion, appeared before Aegwynn and bristled with hellish energy. He informed the young Guardian that the time of Tirisfal was about to come to an end and that the world would soon bow before the onslaught of the Legion. ' WHERE `entry`=1911;
UPDATE `page_text` SET `text`='--Day 16\r\nUleg and Thargil returned from their mission to the Theramore docks.  They saw a new ship in port: the Bleeding Sparrow.  The ship arrived from Menethil Harbor in Azeroth.\r\n\r\nTomorrow Uleg and Thargil will return to the docks and steal aboard the ship.  They hope to find political documents, ones that reveal the relations between Theramore and the Alliance.' WHERE `entry`=548;
UPDATE `page_text` SET `text`='With Kel\'Thuzad\'s success in Lordaeron, the Lich King made the final preparations for his assault against human civilization. Placing his plague energies into a number of portable artifacts called plague cauldrons, Ner\'zhul ordered Kel\'Thuzad to transport the cauldrons to Lordaeron where they would be hidden within various cult-controlled villages. ' WHERE `entry`=572;
UPDATE `page_text` SET `text`='Once all his preparations had been made, Sargeras began his catastrophic invasion of Azeroth. The warrior-demons of the Burning Legion stormed into the world through the Well of Eternity and laid siege to the night elves\' sleeping cities. Led by Archimonde and Mannoroth, the Legion swarmed over the lands of Kalimdor, leaving only ash and sorrow in its wake. ' WHERE `entry`=1807;
UPDATE `page_text` SET `text`='Kael, an accomplished wizard himself, grew wary of the failing Alliance. The high elves grieved for the loss of their homeland and decided to call themselves blood elves in honor of their fallen people. Yet as they worked to keep the Scourge at bay, they suffered greatly at being cut off from the Sunwell that had empowered them. ' WHERE `entry`=2094;
UPDATE `page_text` SET `text`='This anvil is the property of Jordan Stilwell - Please do NOT use!\r\n\r\n- Jordan' WHERE `entry`=1591;
UPDATE `page_text` SET `text`='--Day 17\r\nUleg returned from his mission.  He failed, and Thargil was captured.  I sent Uleg to deliver this report to Nazeer.\r\n\r\nI will remain here.  I have witnessed increased shipping activity off the coast of Theramore.  I will continue my watch and personally report any noteworthy events.' WHERE `entry`=579;
UPDATE `page_text` SET `text`='The devastating Second War against the orcish horde left the Alliance of Lordaeron in a state of shock and disarray. The bloodthirsty orcs, led by the mighty warchief, Orgrim Doomhammer, not only smashed their way through the dwarf-held lands of Khaz Modan, but had razed many of Lordaeron\'s central provinces as well. The unrelenting orcs even succeeded in ravaging the\r\nelves\' remote kingdom of Quel\'Thalas before their rampage was finally stopped.' WHERE `entry`=627;
UPDATE `page_text` SET `text`='The Convocation of Silvermoon was founded as the ruling power over Quel\'Thalas, though the Sunstrider Dynasty maintained a modicum of political power. Comprised of seven of the greatest high elf lords, the Convocation worked to secure the safety of the elven lands and people. Surrounded by their protective barrier, the high elves remained unmoved by the old warnings of the Kaldorei and continued to use magic flagrantly in almost all aspects of their lives. ' WHERE `entry`=1863;
UPDATE `page_text` SET `text`='The Alliance armies led by Sir Anduin Lothar, Uther the Lightbringer, and Admiral Daelin Proudmoore pushed the orcs south into the shattered land of Azeroth - the first kingdom to fall before the orcs\' ruthless onslaught.\r\n\r\nThe Alliance forces under Sir Lothar managed to push Doomhammer\'s clans out of Lordaeron and back into the orc-controlled lands of Azeroth. Lothar\'s forces surrounded the orcs\' volcanic citadel of Blackrock Spire and laid siege to their defenses.' WHERE `entry`=628;
UPDATE `page_text` SET `text`='The few night elves that survived the horrific explosion rallied together on crudely made rafts and slowly made their way to the only landmass in sight. Somehow, by the grace of Elune, Malfurion, Tyrande, and Cenarius had survived the Great Sundering. The weary heroes agreed to lead their fellow survivors and establish a new home for their people. ' WHERE `entry`=1828;
UPDATE `page_text` SET `text`='There was nothing left for the ragged, scattered orc survivors but to flee to the last standing bastion of orcish power - the dark portal.\r\n\r\nTuralyon and his warriors chased the remaining orcs through the festering Swamp of Sorrows and into the corrupted Blasted Lands where the dark portal stood. There, at the foot of the colossal portal, the broken horde and the rugged Alliance clashed in what would be the last, bloodiest battle of the Second War. ' WHERE `entry`=631;
UPDATE `page_text` SET `text`='Dear Pamela,$b$bTomorrow we make our stand in Andorhal, and I fear this will be my last letter to you, my love. The undead are unfatigued and we, I fear, are only human. We cannot hold against them.  But fret not, for although we are sure to perish, our hope stays strong. The Light will prevail!$b$bAnd, my dearest, I take comfort knowing that, as those dark terrors storm our walls and crash over us, my last thoughts will not be of death.  I will think of you in my arms, and I will know peace at last.$b$bChristoph' WHERE `entry`=2884;
UPDATE `page_text` SET `text`='As the high elves fought for their lives against the trolls\' fierce onslaught, the scattered, nomadic humans of Lordaeron fought to consolidate their own tribal lands. The tribes of early humanity raided each other\'s settlements with little heed for racial unification or honor. ' WHERE `entry`=1865;
UPDATE `page_text` SET `text`='The lake, which would later be called the Well of Eternity, was the true heart of the world\'s magic and natural power. Drawing its energies from the infinite Great Dark beyond the world, the Well acted as a mystical fount, sending its potent energies out across the world to nourish life in all its wondrous forms.\r\n\r\nIn time, a primitive tribe of nocturnal humanoids cautiously made their way to the edges of the mesmerizing, enchanted lake.' WHERE `entry`=638;
UPDATE `page_text` SET `text`='The Kaldorei, or night elves as they would later be known, worshipped the moon goddess, Elune, and believed that she slept within the Well\'s shimmering depths during the daylight hours. The early night elf priests and seers studied the Well with an insatiable curiosity, driven to plumb its untold secrets and power. As their society grew, the night elves explored the\r\nbreadth of Kalimdor and encountered its myriad denizens.' WHERE `entry`=640;
UPDATE `page_text` SET `text`='The only creatures that gave them pause were the ancient and powerful dragons. Though\r\nthe great serpentine beasts were often reclusive, they did much to safeguard the known lands from potential threats. The night elves believed that the dragons held themselves to be the protectors of the world, and that they and their secrets were best left alone.' WHERE `entry`=641;
UPDATE `page_text` SET `text`='Yet, as the seemingly endless ages passed, the night elves\' civilization expanded both territorially and culturally. Their temples, roads, and dwelling places stretched across the breadth of the dark continent. Azshara, the night elves\' beautiful and gifted Queen, built an immense, wondrous palace on the Well\'s shore that housed her favored servitors within its bejeweled halls. ' WHERE `entry`=643;
UPDATE `page_text` SET `text`='Her servitors, whom she called the Quel\'dorei or -high-borne,- doted on her every command and believed themselves to be greater than the rest of their lower-caste brethren. Though Queen Azshara was loved equally by all of her people, the high-borne were secretly hated by the jealous masses.\r\n\r\nSharing the priests\' curiosity towards the Well of Eternity, Azshara ordered the educated high-borne to plumb its secrets and reveal its true purpose in the world. ' WHERE `entry`=644;
UPDATE `page_text` SET `text`='His old comrade, Durotan, returned from exile and warned him yet again of Gul\'dan\'s treachery. In speedy retribution, Gul\'dan\'s assassins murdered Durotan and his family, leaving only his infant son alive. Unknown to Doomhammer was the fact that Durotan\'s infant son was found by the human officer, Aedelas Blackmoore, and taken as a slave. \r\n\r\nThat infant orc would one day rise to become the greatest leader his people would ever know. ' WHERE `entry`=1972;
UPDATE `page_text` SET `text`='\r\nThe land of Azeroth is host to no end of wonders.  Flora, fauna, cultures and magic all teem across its surface.  Indeed, the curious will find limitless variety on this world.  One merely has to look.\r\n\r\nBut if one looks deeply enough then windows to entire new worlds are found, and each world is home to its own wonders.\r\n\r\nJust as each is home to its own horrors.  ' WHERE `entry`=698;
UPDATE `page_text` SET `text`='Once Kel\'Thuzad was whole again, Arthas led the Scourge south to Dalaran. There the lich would obtain the powerful spellbook of Medivh, and use it to summon Archimonde back into the world. From that point on, Archimonde himself would begin the Legion\'s final invasion. Not even the wizards of the Kirin Tor could stop Arthas\' forces from stealing Medivh\'s book, and soon Kel\'Thuzad had all he needed to perform his spell. ' WHERE `entry`=2072;
UPDATE `page_text` SET `text`='\r\nThis is the purpose of my book: to catalogue those beings, those otherworldly fiends who would destroy our lands, so that explorers who happen upon them will know what they face.\r\n\r\nSo if you consider yourself a guardian of Azeroth, then read on.  And know your enemy.\r\n\r\n-Ur\r\nMage of Dalaran' WHERE `entry`=699;
UPDATE `page_text` SET `text`='But before such tales are dismissed, let me now assure the reader: worgen are real.  They may not be from our world, but avenues exist between their home and ours and powerful magics can pull them here.\r\n\r\nSuch chants are best left unuttered, for wherever Worgen tread, they bring terror and bloodshed with them.' WHERE `entry`=701;
UPDATE `page_text` SET `text`='Seeking to retain relations and trade with their cousins, the dwarves of Ironforge constructed two massive arches, the Thandol Span, to bridge the gap between Khaz Modan and Lordaeron. Bolstered by mutual trade, the two kingdoms prospered. After the deaths of Madoran and Khardros, their sons jointly commissioned two great statues in honor of their fathers. ' WHERE `entry`=1929;
UPDATE `page_text` SET `text`='You will know a worgen by its resemblance to the wolves of our world.  When viewing a worgen one can easily see how its coarse hair, pointed ears and long snout are akin to the wolves we know.\r\n\r\nBut you will just as quickly see its differences:  that coarse hair surrounds a powerful, two-legged body sporting long fangs and dagger-like claws.  And behind its howl lurks a malevolence possessed by no natural beast.' WHERE `entry`=702;
UPDATE `page_text` SET `text`='The worgens\' home is a dark place, a place of nightmare.  If that world fosters locales safe from the cursed worgen, then my research has revealed no such bastions.\r\n\r\nAnd if one considers the ferocity and wickedness of the worgen, then it is likely no such bastions exist.\r\n\r\nIt is surmised that the worgen are content to remain on their world, for although some worgen possess powerful magic, they have made no attempts to reach Azeroth on their own accord.\r\n\r\nAnd for this, we are fortunate.' WHERE `entry`=703;
UPDATE `page_text` SET `text`='As mentioned above, some worgen are skilled in mystic arts, and their magic is of darkness and corruption.\r\n\r\nCurses and supernatural poisons are common, so be forewarned--those who face worgen magicians should arm themselves with wards against shadow.' WHERE `entry`=704;
UPDATE `page_text` SET `text`='It is my hope that no Dalaran wizard seeks out the Worgen, even if done in light conscience.  For no pact may be struck, no secrets may be learned, no good can come from these beasts.\r\n\r\nThey are best left to their world.  For if found in ours and not destroyed, then our peril will be dire...' WHERE `entry`=705;
UPDATE `page_text` SET `text`='Frustrated by Ner\'zhul\'s resistance, Kil\'jaeden searched for another orc who would deliver his people into the Legion\'s hands. The clever demonlord finally found the willing disciple he sought - Ner\'zhul\'s ambitious apprentice, Gul\'dan. Kil\'jaeden promised Gul\'dan untold power in exchange for his utter obedience. ' WHERE `entry`=1948;
UPDATE `page_text` SET `text`='Here are the piston\'s specifications:\r\n\r\nLength: 32 WW\r\nWidth: 12 WW\r\nWeight: 23.5 IBG to 25.5 IBG\r\nConduction: 70 TC\r\nShear Strength: 98 or higher\r\nCombobule Rating: \"Super stout\" or higher\r\n\r\nIn the case you forgot gnomish measurements:\r\nWW = \"Whisker Width\"\r\nIBG = \"Itty-Bitty Grams\"\r\nTC = \"Toe Curls\"' WHERE `entry`=751;
UPDATE `page_text` SET `text`='FEEDING AND CARE:\r\n\r\nWe are committed to providing you with everything needed to care for your pet.  Our customers have come to expect this level of service from Snuff Inc, and we agree!\r\n\r\nTo that end, we have designed sturdy gopher crates with small holes, perfect for keeping your pet safe, secure and out of the light.\r\n\r\nFor your convenience, inside every crate is a food pellet receptacle, infused with the alluring scent of blueleaf tubers (the snufflenose gopher\'s favorite treat)!\r\n\r\n' WHERE `entry`=771;
UPDATE `page_text` SET `text`='However, unknown to the Alliance, a large force of orcs still roamed free in the northern wastes of Khaz Modan. The Dragonmaw clan, led by the infamous warlock Nekros, was using an ancient artifact known as the Demon Soul to control the Dragonqueen, Alexstrasza, and her dragonflight. With the Dragonqueen as his hostage, Nekros built up a secret army within the abandoned - some say cursed - Wildhammer stronghold of Grim Batol. ' WHERE `entry`=2019;
UPDATE `page_text` SET `text`='Below you will find that which is needed for my spell to summon the great Cyclonian.  May fortune go with you.\r\n\r\n--Bath\'rah the Windwatcher\r\n\r\n' WHERE `entry`=855;
UPDATE `page_text` SET `text`='Witnessing the horrific devastation and the fires spreading across the southern mountains, King Madoran and King Khardros halted their armies and hastily turned back towards their kingdoms, unwilling to face the awesome wrath of Ragnaros. ' WHERE `entry`=1926;
UPDATE `page_text` SET `text`='WALKING YOUR GOPHER\r\n\r\nThe snufflenose gopher likes small, dark places.  And it is very shy.\r\n\r\nIf you wish to walk your gopher, then you must take it to a place that feels like home.  And you MUST take it to where your gopher can smell its favorite food: blueleaf tubers!\r\n\r\nThe closest such place is the \"trench\" area of Razorfen Kraul.  If you open your crate near the trench, and your gopher can smell any nearby tubers, then he will venture out and follow you.\r\n\r\n\r\n' WHERE `entry`=1211;
UPDATE `page_text` SET `text`='It pains us to mention that we at Snuff Inc. have received reports that some greedy tuber hunters care little for the safety of their lovable pets and send them into dark, dangerous nooks and cranies in search of tubers.\r\n\r\nWe do not condone such irresponsible behavior, but in the efforts of customer satisfaction we have included a warranty with every gopher sold, allowing new owners to return to their point of purchase and replace lost pets.\r\n\r\nHappy Hunting!\r\n' WHERE `entry`=1214;
UPDATE `page_text` SET `text`='The Lich King\'s plan worked perfectly. Many of Lordaeron\'s northern villages were contaminated almost immediately. Just as in Northrend, the citizens who contracted the plague died and arose as the Lich King\'s willing slaves. ' WHERE `entry`=2056;
UPDATE `page_text` SET `text`='The Scourge\'s first assaults on Darrowshire were sparse.  Small groups of marauding skeletons and corpses wandered the outskirts of the village and were easily defeated.  \r\n\r\nBut the Scourge sensed the defenders\' tenacity, and responded in kind; soon after the first wave of attacks a second wave emerged.  Champion ghouls, servants of the ghoul lord Horgus, screamed down from the hills and clashed with beleaguered Darrowshire defenders.' WHERE `entry`=2379;
UPDATE `page_text` SET `text`='<HTML>\r\n<BODY>\r\n<H1 align=\"center\">\r\nNorthern Crystal Combinations\r\n</H1>\r\n<BR/>\r\n<P align=\"left\">There are two possible effects: one that will produce damage, and one that will negate damage. </P>\r\n<BR/>\r\n<P align=\"left\">CRYSTAL CHARGE: Requires red and yellow crystals. <BR/>This will produce a large explosion.</P>\r\n<BR/>\r\n<P align=\"left\">CRYSTAL RESTORE: Requires yellow and green crystals. <BR/>This will provide you with a healing aura.\r\n</P>\r\n</BODY>\r\n</HTML>' WHERE `entry`=1512;
UPDATE `page_text` SET `text`='Salutations. I\'ve at last found the time to look into that missive you found on the Scourge. Though it took some doing, I believe I have discovered a living relative of the deceased.$b$bMaxwell\'s sister, one Zarena Cromwind by name, runs a small weaponsmith shop out of Booty Bay. I\'m unsure how close she was to her brother, but if you find yourself passing through, you should arrange a meeting. Closure on these matters is precious and rare in this day and age.$b$b' WHERE `entry`=2889;
UPDATE `page_text` SET `text`='<HTML>\r\n<BODY>\r\n<H1 align=\"center\">\r\nEastern Crystal Combinations\r\n</H1>\r\n<BR/>\r\n<P align=\"left\">There are two possible effects: one provides bonus to spirit, and one that creates a damaging shield.</P>\r\n<BR/>\r\n<P align=\"left\">CRYSTAL FORCE: Requires blue and green crystals.<BR/>This will provide you with an increase in spirit.</P>\r\n<BR/>\r\n<P align=\"left\">CRYSTAL SPIRE: Requires blue and yellow crystals.<BR/>This will create a shield that does damage to attackers.\r\n</P>\r\n</BODY>\r\n</HTML>' WHERE `entry`=1515;
UPDATE `page_text` SET `text`='Dearest Amelia,$b$bTonight I have seen things that will haunt me to the end of time.$b$bStratholme is aflame... and we are responsible.$b$bOur Prince led us into the streets of the city tonight; he ordered us to break into the homes of the townspeople and... kill them in their sleep. They were plagued, claimed Lord Arthas, and had to be killed before they killed us.$b$bIt was a slaughter. Hundreds died silently to the swords of those sworn to protect them. I could stand it no longer; I fled.$b$bDeserter I may be, but I could not commit such atrocities. In every home I could not help but see your face, or those of our children, upon the victims as they died. If standing against that means being a traitor, then so be it.$b$bI hope to find my way back to you in time, but the roads are unsafe. Give our children my love in my absence.$b$bJames$b$b' WHERE `entry`=2882;
UPDATE `page_text` SET `text`='<HTML>\r\n<BODY>\r\n<H1 align=\"center\">\r\nEASTERN PYLON TABLE DIAGRAM\r\n</H1>\r\n<BR/>\r\n<IMG src=\"Interface\\Pictures\\11482_crystals_east\"/>\r\n</BODY>\r\n</HTML>' WHERE `entry`=1516;
UPDATE `page_text` SET `text`='Reuben,$b$bI write this letter knowing you may never see it; I simply can\'t remain idle, listening to the constant pounding against the Hearthglen walls. The undead are outside our village, unceasing in their assault, and we have been charged with defending the townsfolk until reinforcements arrive.$b$bMy leg was broken in the last charge, and so I sit, useless, with my sword at my side should there be a breach in our defenses. There is no idle banter... only the sounds of fighting and death. The air is thick with fear.$b$bPrince Arthas is here, fighting on the front lines with the men. Were he not present we would have fallen long ago. His love for this land and its people is infectious; I gladly serve under him, and will to the end of my days.$b$bThe fighting grows more intense; broken leg or not, I cannot sit here. Every sword is needed.  I hope these words find you in happier times.$b$bYour friend,$bLeagrem$b$b' WHERE `entry`=2880;
UPDATE `page_text` SET `text`='Nessa,\r\n\r\nIt is good to hear from you.\r\n\r\nThe collection of bones and scales  you sent me was incredible.  Never have I seen fish of that size off the mainland.  the fishers of Rut\'theran must pull in easily a ton of fish each day!\r\n\r\nI envy the size of their bounty, but I am a small bit troubled as well.  Could our new world tree make the fish grow to such a size?  If that is so, what other effects might it have?\r\n\r\nQuestions to ponder,\r\n-Laird' WHERE `entry`=2513;
UPDATE `page_text` SET `text`='The corrupted Captain Redpath then spread his evil taint among the defenders of Darrowshire, who betrayed their allies and slaughtered them.  They then turned on the town of Darrowshire and killed all who hid in their homes.\r\n\r\nThe remaining scourge army, along with the corrupted spirit of Captain Redpath, then left the ravaged village of Darrowshire and tore into Lordaeron, adding to the pain and death of the Second War.' WHERE `entry`=2382;
UPDATE `page_text` SET `text`='Unaware of Sargeras\' mission to undo their countless works, the Titans continued to move from world to world, shaping and ordering each planet as they saw fit. Along their journey they happened upon a small world that its inhabitants would later name Azeroth. ' WHERE `entry`=1787;
UPDATE `page_text` SET `text`='The Pantheon, disturbed by the Old Gods\' penchant for evil, waged war upon the elementals and their dark masters. The Old Gods\' armies were led by the most powerful elemental lieutenants: Ragnaros the Firelord, Therazane the Stonemother, Al\'Akir the Windlord, and Neptulon the Tidehunter. ' WHERE `entry`=1789;
UPDATE `page_text` SET `text`='Their chaotic forces raged across the face of the world and clashed with the colossal Titans. Though the elementals were powerful beyond mortal comprehension, their combined forces could not stop the mighty Titans. One by one, the elemental lords fell, and their forces dispersed. ' WHERE `entry`=1790;
UPDATE `page_text` SET `text`='The Titans empowered a number of races to help them fashion the world. To help them carve out the fathomless caverns beneath the earth, the Titans created the dwarf-like earthen from magical, living stone. To help them dredge out the seas and lift the land from the sea floor, the Titans created the immense but gentle sea giants. For many ages the Titans moved and shaped the earth, until at last there remained one perfect continent. ' WHERE `entry`=1792;
UPDATE `page_text` SET `text`='Chapter 3 - The Four Commanders\r\n \r\nIf you have been following the wisdom of this guide, then by now, two of Drek\'Thar\'s Commanders are dead. Good work, soldier! Their resolve is already weakening. You must now complete the dissemination of the chain of command by slaying the remaining two commanders.\r\n\r\nWith all four of the Commanders slain, the Frostwolf Legionnaires that guard Frostwolf Keep will be scattered - left without command. Ripe for the picking!\r\n' WHERE `entry`=2782;
UPDATE `page_text` SET `text`='At the continent\'s center, the Titans crafted a lake of scintillating energies. The lake, which they named the Well of Eternity, was to be the fount of life for the world. Its potent energies would nurture the bones of the world and empower life to take root in the land\'s rich soil. Over time, plants, trees, monsters, and creatures of every kind began to thrive on the primordial continent. ' WHERE `entry`=1793;
UPDATE `page_text` SET `text`='As twilight fell on the final day of their labors, the Titans named the continent Kalimdor: \"land of eternal starlight\". ' WHERE `entry`=1794;
UPDATE `page_text` SET `text`='Satisfied that the small world had been ordered and that their work was done, the Titans prepared to leave Azeroth. However, before they departed, they charged the greatest species of the world with the task of watching over Kalimdor, lest any force should threaten its perfect tranquility. In that age, there were many dragonflights. ' WHERE `entry`=1795;
UPDATE `page_text` SET `text`='Yet there were five flights that held dominion over their brethren. It was these five flights that the Titans chose to shepherd the budding world. The greatest members of the Pantheon imbued a portion of their power upon each of the flights\' leaders. These majestic dragons (as listed below) became known as the Great Aspects, or the Dragon Aspects. ' WHERE `entry`=1796;
UPDATE `page_text` SET `text`='Eonar also blessed Alexstrasza\'s younger sister, the lithe green dragon Ysera, with a portion of nature\'s influence. Ysera fell into an eternal trance, bound to the waking Dream of Creation. Known as the Dreamer, she would watch over the growing wilds of the world from her verdant realm, the Emerald Dream. ' WHERE `entry`=1799;
UPDATE `page_text` SET `text`='The Highborne\'s reckless use of magic sent ripples of energy spiraling out from the Well of Eternity and into the Great Dark Beyond. The streaming ripples of energy were felt by terrible alien minds. Sargeras - the Great Enemy of all life, the Destroyer of Worlds - felt the potent ripples and was drawn to their distant point of origin. ' WHERE `entry`=1803;
UPDATE `page_text` SET `text`='Spying the primordial world of Azeroth and sensing the limitless energies of the Well of Eternity, Sargeras was consumed by an insatiable hunger. The great dark god of the Nameless Void resolved to destroy the fledgling world and claim its energies as his own. ' WHERE `entry`=1804;
UPDATE `page_text` SET `text`='Sargeras gathered his vast Burning Legion and made his way towards the unsuspecting world of Azeroth. The Legion was comprised of a million screaming demons, all ripped from the far corners of the universe, and the demons hungered for conquest. Sargeras\' lieutenants, Archimonde the Defiler and Mannoroth the Destructor, prepared their infernal minions to strike. ' WHERE `entry`=1805;
UPDATE `page_text` SET `text`='Queen Azshara, overwhelmed by the terrible ecstasy of her magic, fell victim to Sargeras\' undeniable power and agreed to grant him entrance to her world. Even her Highborne servitors gave themselves over to magic\'s inevitable corruption and began to worship Sargeras as their god. To show their allegiance to the Legion, the Highborne aided their queen in opening a vast, swirling portal within the depths of the Well of Eternity. ' WHERE `entry`=1806;
UPDATE `page_text` SET `text`='It fell to Malfurion Stormrage to find help for his beleaguered people. Stormrage, whose own brother, Illidan, practiced the Highborne\'s magics, was incensed by the growing corruption amongst the upper class. Convincing Illidan to forsake his dangerous obsession, Malfurion set out to find Cenarius and muster a resistance force. ' WHERE `entry`=1809;
UPDATE `page_text` SET `text`='The beautiful young priestess, Tyrande, agreed to accompany the brothers in the name of Elune. Though Malfurion and Illidan shared a love for the idealistic priestess, Tyrande\'s heart belonged to Malfurion alone. Illidan resented his brother\'s budding romance with Tyrande, but knew that his heartache was nothing compared to the pain of his magical addiction. ' WHERE `entry`=1810;
UPDATE `page_text` SET `text`='Cenarius, calling on the spirits of the enchanted forests, rallied an army of ancient tree-men and led them against the Legion in a daring ground assault. As the night elves\' allies converged upon Azshara\'s temple and the Well of Eternity, all-out warfare erupted. Despite the strength of their newfound allies, Malfurion and his colleagues realized that the Legion could not be defeated by martial strength alone. ' WHERE `entry`=1813;
UPDATE `page_text` SET `text`='As the battle raged across the burning fields of Kalimdor, a terrible turn of events unfolded. The details of the event have been lost to time, but it is known that Neltharion, the Dragon Aspect of the Earth, went mad during a critical engagement against the Burning Legion. He began to split apart as flame and rage erupted from his dark hide. Renaming himself Deathwing, the burning dragon turned on his brethren and drove the five dragonflights from the field of battle. ' WHERE `entry`=1815;
UPDATE `page_text` SET `text`='Deathwing\'s sudden betrayal was so destructive that the five dragonflights never truly recovered. Wounded and shocked, Alexstrasza and the other noble dragons were forced to abandon their mortal allies. Malfurion and his companions, now hopelessly outnumbered, barely survived the ensuing onslaught. ' WHERE `entry`=1816;
UPDATE `page_text` SET `text`='Illidan, having survived the Sundering as well, had reached Hyjal summit long before Malfurion and the night elves. In his mad bid to maintain the flows of magic in the world, Illidan had poured his vials, which contained the precious waters from the Well of Eternity, into the mountain lake. ' WHERE `entry`=1832;
UPDATE `page_text` SET `text`='With Kel\'Thuzad\'s success in Lordaeron, the Lich King made the final preparations for his assault against human civilization. Placing his plague-energies into a number of portable artifacts called plague-cauldrons, Ner\'zhul ordered Kel\'Thuzad to transport the cauldrons to Lordaeron, where they would be hidden within various cult-controlled villages. ' WHERE `entry`=2054;
UPDATE `page_text` SET `text`='As the high elves crossed the rugged, mountainous lands of Lordaeron, their journey became more perilous. Since they were effectively cut off from the life-giving energies of the Well of Eternity, many of them fell ill from the frigid climate or died from starvation. The most disconcerting change, however, was the fact that they were no longer immortal or immune to the elements. ' WHERE `entry`=1856;
UPDATE `page_text` SET `text`='The Fate of Davil Lightforge\r\n\r\nDavil Lightforge died at the Battle of Darrowshire, but his bravery inspired the Alliance throughout the war.\r\n\r\nHis book, his paladin\'s libram, was recovered by Scarlet Crusade troops.  It now resides in the town hall of the Scarlet Crusade controlled Hearthglen, often read by crusaders eager to draw from Davil\'s strength.' WHERE `entry`=2385;
UPDATE `page_text` SET `text`='After many long years, the high elves finally found a land which was reminiscent of Kalimdor. Deep within the northern forests of the continent, they founded the kingdom of Quel\'Thalas and vowed to create a mighty empire which would dwarf that of their Kaldorei cousins. Unfortunately they soon learned that Quel\'Thalas was founded upon an ancient troll city that the trolls still held to be sacred. Almost immediately, the trolls began to attack the elven settlements en masse. ' WHERE `entry`=1859;
UPDATE `page_text` SET `text`='The Battle of Darrowshire\r\n\r\nThe Battle of Darrowshire took place in the middle of the Second War, when scourge forces rampaged across Lordaeron.  Darrowshire was cut off from the bulk of Alliance forces, but the town was bolstered by a company of troops, a contingent of paladins of the Silver Hand, and a staunch group of local militia led by Captain Joseph Redpath.' WHERE `entry`=2378;
UPDATE `page_text` SET `text`='The stubborn elves, unwilling to give up their new land, utilized the magics which they had gleaned from the Well of Eternity and kept the savage trolls at bay. Under Dath\'Remar\'s leadership, they were able to defeat the Amani warbands that outnumbered them ten to one. Some elves, wary of the Kaldorei\'s ancient warnings, felt that their use of magic might possibly draw the attention of the banished Burning Legion. ' WHERE `entry`=1860;
UPDATE `page_text` SET `text`='As time wore on, Quel\'Thalas became a shining monument to the high elves\' efforts and magical prowess. Its beauteous palaces were crafted in the same architectural style as the ancient halls of Kalimdor, yet they were interwoven with the natural topography of the land. Quel\'Thalas had become the shining jewel that the elves had longed to create. ' WHERE `entry`=1862;
UPDATE `page_text` SET `text`='For nearly four thousand years the high elves lived peacefully within the secluded safety of their kingdom. Nevertheless, the vindictive trolls were not so easily defeated. They plotted and schemed in the depths of the forests and waited for the numbers of their warbands to grow. Finally, a mighty troll army charged out from the shadowy forests and once again laid siege to the shining spires of Quel\'Thalas. ' WHERE `entry`=1864;
UPDATE `page_text` SET `text`='Over the course of six years, the cunning Arathi outmaneuvered and outfought the rival tribes. After every victory, the Arathi offered peace and equality to the conquered people; thus, they won the loyalty of those they had beaten. Eventually the Arathi tribe came to include many disparate tribes, and the ranks of its army grew vast. ' WHERE `entry`=1867;
UPDATE `page_text` SET `text`='The elves informed Thoradin that the troll armies were vast and that once the trolls had destroyed Quel\'Thalas, they would move on to attack the southlands. The desperate elves, in dire need of military aid, hastily agreed to teach certain select humans to wield magic in exchange for their help against the warbands. ' WHERE `entry`=1870;
UPDATE `page_text` SET `text`='The elves found that although humans were innately clumsy in their handling of magic, they possessed a startling natural affinity for it. One hundred men were taught the very basics of the elves\' magical secrets: no more than was absolutely necessary to combat the trolls. Convinced that their human students were ready to aid in the struggle, the elves left Strom and traveled north alongside the mighty armies of King Thoradin. ' WHERE `entry`=1872;
UPDATE `page_text` SET `text`='The united elf and human armies clashed against the overwhelming troll warbands at the foot of the Alterac Mountains. The battle lasted for many days, but the unflagging armies of Arathor never tired or gave an inch of ground before the troll onslaught. The elven lords deemed that the time had come to release the powers of their magic upon the enemy. ' WHERE `entry`=1873;
UPDATE `page_text` SET `text`='As the troll armies broke and attempted to flee, Thoradin\'s armies ran them down and slaughtered every last one of their soldiers. The trolls would never fully recover from their defeat, and history would never see the trolls rise as one nation again. Assured that Quel\'Thalas was saved from destruction, the elves made a pledge of loyalty and friendship to the nation of Arathor and to the bloodline of its king, Thoradin. Humans and elves would nurture peaceful relations for ages to come. \r\n' WHERE `entry`=1875;
UPDATE `page_text` SET `text`='With the absence of trolls in the northlands, the elves of Quel\'Thalas bent their efforts towards rebuilding their glorious homeland. The victorious armies of Arathor returned home to southlands of Strom. ' WHERE `entry`=1876;
UPDATE `page_text` SET `text`='The original hundred magi, who were tutored in the ways of magic by the elves, expanded their powers and studied the mystic disciplines of spell-weaving in much greater detail. These magi, initially chosen for their strong wills and noble spirits, had always practiced their magic with care and responsibility; however, they passed their secrets and powers onto a newer generation that had no concept of the rigors of war or the necessity for self-restraint. ' WHERE `entry`=1878;
UPDATE `page_text` SET `text`='These younger magicians began to practice magic for personal gain rather than out of any responsibility towards their fellows. ' WHERE `entry`=1879;
UPDATE `page_text` SET `text`='The second Arathorian city-state of Dalaran was founded in the lands north of Strom. Many fledgling wizards left the restraining confines of Strom behind and traveled to Dalaran, where they hoped to use their new powers with greater freedom. These magicians used their skills to build up the enchanted spires of Dalaran and reveled in the pursuit of their studies. ' WHERE `entry`=1881;
UPDATE `page_text` SET `text`='The sinister agents of the Burning Legion, who had been banished when the Well of Eternity collapsed, were lured back into the world by the heedless spellcasting of the magicians of Dalaran. Though these relatively weak demons did not appear in force, they did sew considerable confusion and chaos within the streets of Dalaran. ' WHERE `entry`=1883;
UPDATE `page_text` SET `text`='Upon hearing the Magocrats\' news of demonic activity in Dalaran, the elves quickly dispatched their mightiest wizards to the human lands. The elven wizards studied the energy currents in Dalaran and made detailed reports of all demonic activity that they beheld. They concluded that although there were only a few demons loose in the world, the Legion itself would remain a dire threat so long as humans continued to wield the forces of magic. ' WHERE `entry`=1886;
UPDATE `page_text` SET `text`='The Council of Silvermoon, which ruled over the elves of Quel\'Thalas, entered into a secret pact with the Magocrat lords of Dalaran. The elves told the Magocrats about the history of ancient Kalimdor and of the Burning Legion, a history which still threatened the world. They informed the humans that so long as they used magic, they would need to protect their citizenry from the malicious agents of the Legion. ' WHERE `entry`=1887;
UPDATE `page_text` SET `text`='The society held its secret meetings in the shadowed Tirisfal Glades, where the high elves had first settled in Lordaeron. Thus, they named the secret sect the Guardians of Tirisfal. The mortal champions who were chosen to be Guardians were imbued with incredible powers of both elven and human magic. Though there would only ever be one Guardian at a time, they held such vast power that they could single-handedly fight back the Legion\'s agents wherever they were found in the world. ' WHERE `entry`=1889;
UPDATE `page_text` SET `text`='As the generations passed, Guardians defended the masses of humanity from the invisible threat of the Burning Legion throughout the lands of Arathor and Quel\'Thalas. Arathor grew and prospered while the use of magic spread throughout the empire. Meanwhile, the Guardians kept careful watch for signs of demonic activity. ' WHERE `entry`=1891;
UPDATE `page_text` SET `text`='Strom continued to act as the central hub of Arathor, but as with Dalaran, many new city-states arose across the continent of Lordaeron. Gilneas, Alterac, and Kul Tiras were the first city-states to arise, and although they each had their own customs and commercial workings, they all held to the unifying authority of Strom. ' WHERE `entry`=1898;
UPDATE `page_text` SET `text`='Under the vigilant watch of the Order of Tirisfal, Dalaran became the chief center of learning for magicians throughout the land. The Magocrats who ruled Dalaran founded the Kirin Tor, a specialized sect that was charged with cataloguing and researching every spell, artifact, and magic item known to mankind at the time. ' WHERE `entry`=1899;
UPDATE `page_text` SET `text`='In time, the lords of Strom sought to move their estates to the lush northlands of Lordaeron and leave the arid lands of the south. The heirs of King Thoradin, the last descendants of the Arathi bloodline, argued that Strom should not be abandoned and thus incurred the displeasure of the greater citizenry, who were likewise eager to leave. ' WHERE `entry`=1902;
UPDATE `page_text` SET `text`='The lords of Strom, seeking to find purity and enlightenment in the untamed north, decided to leave their ancient city behind. Far to the north of Dalaran, the lords of Strom built a new city-state which they named Lordaeron. The entire continent would take its name from this city-state. Lordaeron became a mecca for religious travelers and all those who sought inner peace and security. ' WHERE `entry`=1903;
UPDATE `page_text` SET `text`='The descendents of the Arathi, left within the crumbling walls of ancient Strom, decided to travel south past the rocky mountains of Khaz Modan. Their journey finally ended after many long seasons, and they settled in the northern region of the continent they would name Azeroth. In a fertile valley they founded the kingdom of Stormwind, which quickly became a self-sufficient power in its own right. ' WHERE `entry`=1904;
UPDATE `page_text` SET `text`='As the politics and rivalries of the seven human nations waxed and waned, the line of Guardians kept its constant vigil against chaos. There were many Guardians over the years, but only one ever held the magical powers of Tirisfal at any given time. One of the last Guardians of the age distinguished herself as a mighty warrior against the shadow. ' WHERE `entry`=1906;
UPDATE `page_text` SET `text`='As her mastery over the cosmic power of Tirisfal grew, Aegwynn became aware of a number of powerful demons that stalked the icy northern continent of Northrend. Traveling to the distant north, Aegwynn tracked the demons into the mountains. There, she found that the demons were hunting one of the last surviving dragonflights and draining the ancient creatures of their innate magic. ' WHERE `entry`=1909;
UPDATE `page_text` SET `text`='The dwarves of Ironforge Mountain lived in peace for many long centuries. However, their society grew too large within the confines of their mountain cities. Though the mighty High King, Modimus Anvilmar, ruled over all dwarves with justice and wisdom, three powerful factions had arisen amongst the dwarven society. ' WHERE `entry`=1914;
UPDATE `page_text` SET `text`='The Bronzebeard clan, ruled by Thane Madoran Bronzebeard, held close ties to the High King and stood as the traditional defenders of Ironforge Mountain. The Wildhammer clan, ruled by Thane Khardros Wildhammer, inhabited the foothills and crags around the base of the mountain and sought to gain more control within the city. ' WHERE `entry`=1915;
UPDATE `page_text` SET `text`='Prosperity and the passing of years did little to ease the Dark Iron\'s rancor toward their cousins. Thaurissan and his sorceress wife, Modgud, launched a two-pronged assault against both Ironforge and Grim Batol. The Dark Irons were intent on claiming all of Khaz Modan for their own. ' WHERE `entry`=1919;
UPDATE `page_text` SET `text`='Ultimately, Hellscream redeemed his honor by helping Thrall defeat Mannoroth, the demon lord who first cursed the orcs with his bloodline of hate and rage. With Mannoroth\'s death, the orcs\' blood-curse was finally brought to an end. ' WHERE `entry`=2078;
UPDATE `page_text` SET `text`='As she confronted the enemy warriors, Modgud used her powers to strike fear into their hearts. Shadows moved at her command, and dark things crawled up from the depths of the earth to stalk the Wildhammers in their own halls. Eventually Modgud broke through the gates and laid siege to the fortress itself. The Wildhammers fought desperately, Khardros himself wading through the roiling masses to slay the sorceress queen. ' WHERE `entry`=1921;
UPDATE `page_text` SET `text`='With their queen lost, the Dark Irons fled before the fury of the Wildhammers. They raced south toward their king\'s stronghold, only to meet the armies of Ironforge, which had come to aid Grim Batol. Crushed between two armies, the remaining Dark Iron forces were utterly destroyed. ' WHERE `entry`=1922;
UPDATE `page_text` SET `text`='Epilogue\r\n\r\n\"Smother the heart of the artichoke with garlic butter and mayonnaise. Compliment the meal with an aged, heady ale.\"\r\n\r\nDrek\'Thar now stands alone, his two mutts at his side. Capture the Frostwolf Relief Hut to aid in your battle and destroy Drek\'Thar. When the General falls, this land will finally turn over to its rightful owner: The Stormpike.\r\n' WHERE `entry`=2784;
UPDATE `page_text` SET `text`='Ragnaros the Firelord, immortal lord of all fire elementals, had been banished by the Titans when the world was young. Now, freed by Thaurissan\'s call, Ragnaros erupted into being once again. Ragnaros\' apocalyptic rebirth into Azeroth shattered the Redridge Mountains and created a raging volcano at the center of the devastation. ' WHERE `entry`=1924;
UPDATE `page_text` SET `text`='The volcano, known as Blackrock Mountain, was bordered by the Searing Gorge to the north and the Burning Steppes to the south. Though Thaurissan was killed by the forces he had unleashed, his surviving brethren were ultimately enslaved by Ragnaros and his elementals. They remain within the depths of Blackrock to this day. ' WHERE `entry`=1925;
UPDATE `page_text` SET `text`='The two statues would stand guard over the pass into the southlands, which had become volcanic in the wake of Ragnaros\' scorching presence. They served as both a warning to all who would attack the dwarven kingdoms, and as a reminder of what price the Dark Irons paid for their crimes. ' WHERE `entry`=1930;
UPDATE `page_text` SET `text`='Around the time of Medivh\'s birth on Azeroth, Kil\'jaeden the Deceiver sat and brooded amongst his followers within the Twisting Nether. The cunning demonlord, under orders of his master, Sargeras, was plotting the Burning Legion\'s second invasion of Azeroth. ' WHERE `entry`=1942;
UPDATE `page_text` SET `text`='Dear Diary,\r\n\r\nToday, my arch-enemy, Narain Soothfancy, attempted to deceive me by sending cronies to fill his spot at the execution. HIS execution. Can you believe it?$B$BI had gone through all the trouble of devising this diabolical plan to lure him out of that damnable hut and he pulls this? Whatever... Too angry to keep writing. I\'ll be back later.' WHERE `entry`=2829;
UPDATE `page_text` SET `text`='The noble orc clans roamed the open prairies and hunted for sport, while the inquisitive draenei built crude cities within the world\'s towering cliffs and peaks. Kil\'jaeden knew that Draenor\'s denizens had great potential to serve the Burning Legion if they could be cultivated properly. ' WHERE `entry`=1945;
UPDATE `page_text` SET `text`='Of the two races, Kil\'jaeden saw that the warrior orcs were more susceptible to the Legion\'s corruption. He enthralled the elder orc shaman, Ner\'zhul, in much the same way that Sargeras brought Queen Azshara under his control in ages past. Using the cunning shaman as his conduit, the demon spread battle lust and savagery throughout the orc clans. ' WHERE `entry`=1946;
UPDATE `page_text` SET `text`='Lady Mara Fordragon\r\n\r\nHigh Clerist of Stormwind\r\n\r\nPatron of the Refugees who fled to Lordaeron after the First War.\r\n\r\nShe was the bright mother of our future. May she rest in the Light.\r\n' WHERE `entry`=2294;
UPDATE `page_text` SET `text`='After the exiled Frostwolves charged through the portal, only a few orc clans followed. These orcs quickly set up a base of operations within the Black Morass, a dark and swampy area far to the east of the kingdom of Stormwind. As the orcs began to branch out and explore the new lands, they came into immediate conflict with the human defenders of Stormwind. \r\n' WHERE `entry`=1965;
UPDATE `page_text` SET `text`='Though these skirmishes usually ended quickly, they did much to illustrate the weaknesses and strengths of both rival species. Llane and Lothar were never able to gather accurate data of the orcs\' numbers and could only guess at how great a force they would have to contend with. ' WHERE `entry`=1966;
UPDATE `page_text` SET `text`='Choosing to follow his instincts, Lothar stormed Medivh\'s tower-fortress of Karazhan with the help of the wizard\'s young apprentice, Khadgar. Khadgar and Lothar succeeded in vanquishing the possessed Guardian, whom they confirmed to be the source of the conflict. ' WHERE `entry`=1969;
UPDATE `page_text` SET `text`='Lord Lothar rallied the remnants of Azeroth\'s armies after their defeat at Stormwind Keep, and then launched a massive exodus across the sea to the northern kingdom of Lordaeron. Convinced that the Horde would overcome all of humanity if left unchecked, the leaders of the seven human nations met and agreed to unite in what would become known as the Alliance of Lordaeron. ' WHERE `entry`=1976;
UPDATE `page_text` SET `text`='Lord Lothar, seeing that the Horde was fracturing from within, gathered the last of his forces and pushed Doomhammer south, back into the shattered heartland of Stormwind. There, the Alliance forces trapped the retreating Horde within the volcanic fortress of Blackrock Spire. Though Lord Lothar fell in battle at the Spire\'s base, his lieutenant, Turalyon, rallied the Alliance forces at the eleventh hour and drove the Horde back into the abysmal Swamp of Sorrows. ' WHERE `entry`=1989;
UPDATE `page_text` SET `text`='Holding Ner\'zhul\'s spirit helpless in stasis, Kil\'jaeden gave him one last chance to serve the Legion or suffer eternal torment. Once again, Ner\'zhul recklessly agreed to the demon\'s pact. Ner\'zhul\'s spirit was placed within a specially crafted block of diamond-hard ice gathered from the far reaches of the Twisting Nether. ' WHERE `entry`=2005;
UPDATE `page_text` SET `text`='The Fate of Horgus the Ravager\r\n\r\nHorgus the Ravager fell at the Battle of Darrowshire.  But the evil within him was not fully spent.  The victorious Scourge forces removed his skull from the battlefield of Darrowshire, carrying it with them to sow dread among the living they faced.\r\n\r\nDays later, the company of Scourge who possessed the head were defeated by Silver Hand Paladins.  Horgus\' head was cast into Blackwood Lake.' WHERE `entry`=2383;
UPDATE `page_text` SET `text`='Though Ner\'zhul was agreeable and seemingly anxious to play his part, Kil\'jaeden remained skeptical of his pawn\'s loyalties. Keeping the Lich King bodiless and trapped within the crystal cask assured his good conduct for the short term, but the demon knew that he would need to keep a watchful eye on him. To this end, Kil\'jaeden called upon his elite demon guard, the vampiric dreadlords, to police Ner\'zhul and ensure that he accomplished his dread task. ' WHERE `entry`=2010;
UPDATE `page_text` SET `text`='The Fate of Marduk the Black\r\n\r\nMarduk survived the Second War, causing great death and suffering with his foul, rune-laden sword.  Although Marduk still lives, his sword was lost in a battle near Corin\'s Crossing.  A dwarf captain shattered the sword on his enchanted shield, forcing Marduk to flee the field and winning the day for the Alliance.\r\n\r\nMarduk\'s sword sank into the earth and corrupted it, eating a gorge into the land, now known as the Infectis Scar.' WHERE `entry`=2384;
UPDATE `page_text` SET `text`='In their fury, Alexstrasza\'s dragons tore Grim Batol apart and incinerated the greater bulk of the Dragonmaw clan. Nekros\' grand schemes of reunification came crashing down as the Alliance troops rounded up the remaining orc survivors and threw them into the waiting internment camps. The Dragonmaw clan\'s defeat signaled the end of the Horde, and the end of the orcs\' furious bloodlust. ' WHERE `entry`=2021;
UPDATE `page_text` SET `text`='Months passed, and more orc prisoners were rounded up and placed within the internment camps. As the camps began to overflow, the Alliance was forced to construct new camps in the plains south of the Alterac Mountains. To properly maintain and supply the growing number of camps, King Terenas levied a new tax on the Alliance nations. ' WHERE `entry`=2022;
UPDATE `page_text` SET `text`=' Though it was difficult to believe, the orcs - once held as the most aggressive race ever seen on Azeroth - had completely lost their will to fight. The strange lethargy confounded the Alliance leaders and continued to take its toll on the rapidly weakening orcs. ' WHERE `entry`=2025;
UPDATE `page_text` SET `text`='The Annals of Darrowshire\r\n\r\nDarrowshire, named from the Darrowmere Lake to its west, is a village tucked into the southern foothills of Lordaeron.  Known for humble yet hardworking residents, Darrowshire stayed in the background of Lordaeron history until the Second War.\r\n\r\nHeroes were made during that war.  And heroes were lost.' WHERE `entry`=2377;
UPDATE `page_text` SET `text`='Antonidas theorized that the orcs\' communal lethargy was not actually a disease, but a consequence of racial withdrawal from the volatile warlock magics that had made them fearsome, bloodlusted warriors. ' WHERE `entry`=2028;
UPDATE `page_text` SET `text`='Kel\'Thuzad returned to Lordaeron in disguise, and over the span of three years, he used his fortune and intellect to gather a clandestine brotherhood of like-minded men and women. The brotherhood, which he called the Cult of the Damned, promised its acolytes social equality and eternal life on Azeroth in exchange for their service and obedience to Ner\'zhul. ' WHERE `entry`=2052;
UPDATE `page_text` SET `text`='In the midst of this chaos, a lone, mysterious prophet appeared to lend the mortal races guidance. This prophet proved to be none other than Medivh, the last Guardian, miraculously returned from the Beyond to redeem himself for past sins. Medivh told the Horde and the Alliance of the dangers they faced and urged them to band together. ' WHERE `entry`=2074;
UPDATE `page_text` SET `text`='While Thrall was liberating his brethren in Lordaeron, Ner\'zhul continued to build up his power base in Northrend. A great citadel was erected above the Icecrown Glacier and manned by the growing legions of the dead. Yet as the Lich King extended his influence over the land, one shadowy empire stood against his power. ' WHERE `entry`=2039;
UPDATE `page_text` SET `text`='My Emily,$b$bA few short days ago, we broke camp in this Light-forsaken place, operating under the King\'s orders to return home. My heart was light despite my bleak surroundings, for I knew that after the frigid trek to the shore and long, grueling voyage, I would find solace in your arms.$b$bWe reached the shoreline today to find our ships, our means of return, nothing more than charred husks; we cannot leave, and have no choice but to press on into the heart of this abysmal wasteland.$b$bI have gone to the very end of the world to keep you safe, Emily... and now... I wish with all my being that I had remained in Lordaeron with you.$b$bThoughts of you fill my every waking moment. You are my warmth in this frozen land, beloved, and no one can take that from me.$b$bMaxwell\r\n' WHERE `entry`=2878;
UPDATE `page_text` SET `text`='Though the nerubians were immune to his plague, Ner\'zhul\'s growing necromantic powers allowed him to raise the spider-warriors\' corpses and bend them to his will. As a testament to their tenacity and fearlessness, Ner\'zhul adopted the nerubians\' distinctive architectural style for his own fortresses and structures. ' WHERE `entry`=2042;
UPDATE `page_text` SET `text`='Left to rule his kingdom unopposed, the Lich King began preparing for his true mission in the world. Reaching out into the human lands with his vast consciousness, the Lich King called out to any dark soul that would listen.... ' WHERE `entry`=2043;
UPDATE `page_text` SET `text`='There were a handful of powerful individuals scattered throughout the world who heard the Lich King\'s mental summons from Northrend. Most notable of them was the archmage of Dalaran, Kel\'Thuzad, who was one of senior members of the Kirin Tor, Dalaran\'s ruling council. He had been considered a maverick for years due to his insistence on studying the forbidden arts of necromancy. ' WHERE `entry`=2044;
UPDATE `page_text` SET `text`='The Fate of Joseph Redpath\r\n\r\nJoseph Redpath was killed during the Battle of Darrowshire.  His spirit was corrupted and took new shape, and this creature spread great evil in Lordaeron.\r\n\r\nAt Gahrron\'s Withering, east of Andorhal, the corrupted Redpath was finally defeated by Alliance forces.  His shield still rests near the barn of the plagued farmstead, and Scourge minions are still drawn to the memory of his evil.' WHERE `entry`=2386;
UPDATE `page_text` SET `text`='Nataka, all is well in Thousand Needles. The centaur annoyance is nothing more than that...occasionally attacking, nothing substantial as a real threat. However, there does seem to be some news of centaur clans uniting.$B$BWe always pondered the threat of a united ruthless race such as the centaur... I try not to dwell on such ideas, as you know... nothing could penetrate the pure hatred they have... even of each other.$B$B-Cliffwatcher Longhorn' WHERE `entry`=2271;
UPDATE `page_text` SET `text`='After long months of trekking through the harsh arctic wastelands, Kel\'Thuzad finally reached the dark glacier of Icecrown. He boldly approached Ner\'zhul\'s dark citadel and was shocked when the undead guardsmen silently let him pass as though he was expected. ' WHERE `entry`=2048;
UPDATE `page_text` SET `text`='The cultists under Kel\'Thuzad were eager to die and be raised again in their dark lord\'s service. They exulted in the prospect of immortality through undeath. As the plague spread, more and more feral zombies arose in the northlands. Kel\'Thuzad looked upon the Lich King\'s growing army and named it the Scourge, for soon it would march upon the gates of Lordaeron and scour humanity from the face of the world. ' WHERE `entry`=2057;
UPDATE `page_text` SET `text`='Arthas\' fear and resolve proved to be his ultimate undoing. He tracked the plague\'s source to Northrend, intending to end its threat forever. Instead, Prince Arthas eventually fell prey to the Lich King\'s tremendous power. Believing that it would save his people, Arthas took up the cursed runeblade, Frostmourne. ' WHERE `entry`=2066;
UPDATE `page_text` SET `text`='With no place left to go, Kael and his blood elves followed Lady Vashj to Outland to help contest the warden, Maiev, who had recaptured Illidan. With the combined naga and blood elf forces, they managed to defeat Maiev and free Illidan from her grasp. Based in Outland, Illidan gathered his forces for a second strike against the Lich King and his fortress of Icecrown. ' WHERE `entry`=2096;
UPDATE `page_text` SET `text`='Here lies Grommash Hellscream, Chieftain of the Warsong Clan\r\n\r\nIn many ways, the curse of our people began and ended with Grom.\r\nHis name meant \'giant\'s heart\' in our ancient tongue. He earned that \r\nname a hundred-fold as he stood alone before the demon Mannoroth \r\n- and won our freedom with his blood. \r\n\r\nLok\'Tar ogar, big brother. May the Warsong never fade. \r\n\r\n-Thrall, Warchief of the Horde \r\n' WHERE `entry`=2211;
UPDATE `page_text` SET `text`='Agasham,$b$bOur plans must be kept secret at all costs! It will be disasterous if the other tauren tribes discover our affiliation.$b$bSigned,$b$bHarbinger Elm' WHERE `entry`=2232;
UPDATE `page_text` SET `text`='King Llane I of the House of Wrynn\r\n\r\nLiege Lord of Stormwind \r\n\r\nDefender of Azeroth' WHERE `entry`=2292;
UPDATE `page_text` SET `text`='Commander of the Alliance Fleets\r\n\r\nFriend of Stormwind\r\n' WHERE `entry`=2293;
UPDATE `page_text` SET `text`='The Defenders weakened, but were relieved by paladins, disciples of the Silver Hand.  Their leader, Davil Crokford, was a native of Darrowshire.  He brought his followers to the village when he heard of the impending attack, and together with the defenders they held back the servants of Horgus.\r\n\r\nWhen Horgus himself entered the battle, he met with Davil.  For many minutes they fought and Davil eventually prevailed, but he suffered a mortal wound and died soon after defeating the ghoul lord.' WHERE `entry`=2380;
UPDATE `page_text` SET `text`='The battle continued, and Captain Redpath led his militia bravely.  And it might have been won, had the captain not been corrupted by the death knight Marduk the Black.\r\n\r\nIn the middle of the fray Marduk rode up to Redpath, and with black magic he tore loose Redpath\'s spirit, twisting it into an evil shadow of the brave captain.' WHERE `entry`=2381;
UPDATE `page_text` SET `text`='The Fate of Carlin Redpath\r\n\r\nBrother to Captain Joseph Redpath, Carlin fell during the battle of Darrowshire.  But although terribly wounded, he was not slain.\r\n\r\nDays after the battle, agents of the Argent Dawn found Carlin wandering, weak from thirst and fever, near Corin\'s Crossing.  They tended to his wounds and brought him to the Light\'s Hope Chapel.\r\n\r\nGrateful for their charity, Carlin joined the ranks of the Argent Dawn and now fights a battle of revenge against the Scourge.' WHERE `entry`=2391;
UPDATE `page_text` SET `text`='<The pages are covered in ancient elven runes.>\r\n\r\nThe pages herein contain memories of events that transpired in the collection and creation of the reagents required to craft greater arcanum.\r\n\r\nMay our enemies never gain access to these libram. \r\n\r\nMay I live to see the pallid light of the moon shine upon Quel\'Thalas once again.\r\n\r\nMay I die but for the grace of Kael\'thas.\r\n\r\nMay I kill for the glory of Illidan.\r\n\r\n-Master Kariel Winthalus' WHERE `entry`=2631;
UPDATE `page_text` SET `text`='<HTML>\r\n<BODY>\r\n<H1 align=\"center\">ALLIANCE MILITARY RANKS</H1><BR/>\r\n<P align=\"center\">OFFICERS</P><BR/>\r\n<P align=\"center\">Grand Marshal</P>\r\n<P align=\"center\">Field Marshal</P>\r\n<P align=\"center\">Marshal</P>\r\n<P align=\"center\">Commander</P>\r\n<P align=\"center\">Lieutenant Commander</P>\r\n<P align=\"center\">Knight-Champion</P>\r\n<P align=\"center\">Knight-Captain</P>\r\n<P align=\"center\">Knight-Lieutenant</P>\r\n<P align=\"center\">Knight</P><BR/>\r\n<P align=\"center\">ENLISTED</P><BR/>\r\n<P align=\"center\">Sergeant Major</P>\r\n<P align=\"center\">Master Sergeant</P>\r\n<P align=\"center\">Sergeant</P>\r\n<P align=\"center\">Corporal</P>\r\n<P align=\"center\">Private</P>\r\n</BODY>\r\n</HTML>' WHERE `entry`=2676;
UPDATE `page_text` SET `text`='Chapter 1 - The Front Line\r\n\r\nThe front lines of the Frostwolf defenses are comprised of Frostwolf Warriors. The warriors are deployed to the front lines from Captain Galvangar\'s fortress: Iceblood Garrison. The most efficient manner in which to take out this layer of the defenses is to destroy Iceblood Garrison.\r\n\r\nLay siege to the fortress and destroy Captain Galvangar. Once this is done, the front lines will crumble.\r\n' WHERE `entry`=2780;
UPDATE `page_text` SET `text`='Dear Diary,\r\n\r\nOk, I\'m good now. I beat one of my minions until he wept like a little girl.$B$BHrm... I feel sort of bad now. Wait a minute! Damnit, I\'m an EVIL genius! Evil, you know? I\'m so disappointed in myself. Be right back.' WHERE `entry`=2831;
UPDATE `page_text` SET `text`='Dear Diary,\r\n\r\nI must be getting old. I totally forgot that I was telling you about Narain and his deception. Anyhow, I was so angry when I saw a decoy disguised as Narain instead of Narain that I commanded Number Two to destroy the fool!$B$BI got in my flying machine and began tearing away at his precious, stupid, dumb-head book on Draconic. What a show-off? Who reads Draconic? I hate him so much!' WHERE `entry`=2833;
UPDATE `page_text` SET `text`='Samla,$b$bAs we follow our Lord Arthas north, ever north, my heart grows heavy.  While he once shined with the Light, I now sense a darkening of the young paladin\'s spirit.  His zeal is shadowed by a brooding, over some nightmare in his soul that I cannot divine...$b$bWe will soon make landfall in the frozen wastes.  Although many of his men grow sick from the chill and from battles against putrid beasts, Arthas tells us that what he seeks in the ice will turn the tide of battle.  But I took no comfort from his words, for after he said them... the grim smile planted on his curled lips chilled me deeper than any blizzard could.$b$bPray for us, Samla, and pray for our world,$b$bTorgal$b$b' WHERE `entry`=2883;
UPDATE `page_text` SET `text`='Hello, $n. As it turns out, I\'ve unearthed a bit of information from that note.$b$bOn James, I could find little, I fear. However, I did uncover a bit of family information on Amelia.$b$b While neither she nor her children survived the war, her brother did, a man named Alexander Calder; you can find him in the Forlorn Cavern within Ironforge, studying the dangerous magic of the Burning Legion.$b$bShe also had a cousin to which she was close, a woman now known as Deze Snowbane, who promotes the battle for the Arathi Basin within Orgrimmar.$b$bYou should visit one of them when next you\'re in the area. I\'m certain they\'ll be interested to hear of their lost Amelia, if nothing else.$b$b' WHERE `entry`=2885;
UPDATE `page_text` SET `text`='$n, I hope this letter finds you well. After some digging, I\'ve discovered some information on those who wrote that note you recovered.$b$bSamla\'s father leads the Forsaken and Trolls who make the pilgrimage to Thunder Bluff in the ways of his faith. His name is Miles Welsh, and you can find him with his fellow undead in the Pools of Vision.$b$bTorgal, meanwhile, is survived by his cousin, Elissa Dumas. She is a reclusive sort from what I\'ve come to understand; she spends her days in the Temple of the Moon in Darnassus.$b$bI urge you to visit whomever you can, $n. They may never have learned of Torgal or Samla\'s fate.$b$b' WHERE `entry`=2887;
UPDATE `page_text` SET `text`='I\'ve finally unearthed some information on the former soldier you fought. The trail was difficult to follow, as this particular family tree was not properly documented, but I\'ve found a blood relative at last.$b$bWould you believe Caretaker Alen at Light\'s Hope Chapel is, in fact, Christoph\'s son? It might ease his mind to hear of his father. If ever you find yourself in service to the Argent Dawn within the Plaguelands once more, please, speak with him. It would be a kindness.$b$b' WHERE `entry`=2890;

-- Missing npc texts.
REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES
(5222, 7911, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6220, 8806, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6739, 9135, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6774, 9152, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6776, 9154, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7231, 9936, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7475, 10340, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7671, 10540, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7913, 11083, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7938, 11116, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7972, 11163, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7973, 11164, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7974, 11165, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7975, 11166, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7976, 11167, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7977, 11168, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7979, 11169, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7982, 11172, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7983, 11173, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7987, 11179, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7990, 11182, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7993, 11185, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7996, 11188, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7999, 11197, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8002, 11200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8005, 11203, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8010, 11209, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8013, 11212, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8016, 11221, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8019, 11224, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8022, 11227, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8025, 11233, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8028, 11236, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8031, 11239, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8034, 11242, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8040, 11248, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8043, 11251, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8046, 11254, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8247, 11743, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8250, 11746, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8252, 11748, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8299, 11807, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8322, 11875, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8323, 11880, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8324, 11882, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8642, 12639, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8720, 13151, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8721, 13156, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Correct mistakes in existing npc texts.
REPLACE `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES
(1232, 100, 100, 0, 0, 0, 0, 0, 0, 3371, 3372, 0, 0, 0, 0, 0, 0),
(1259, 100, 0, 0, 0, 0, 0, 0, 0, 3412, 0, 0, 0, 0, 0, 0, 0),
(1301, 1, 0, 0, 0, 0, 0, 0, 0, 3459, 0, 0, 0, 0, 0, 0, 0),
(1834, 1, 0, 0, 0, 0, 0, 0, 0, 4267, 0, 0, 0, 0, 0, 0, 0),
(1835, 1, 0, 0, 0, 0, 0, 0, 0, 4269, 0, 0, 0, 0, 0, 0, 0),
(1836, 1, 0, 0, 0, 0, 0, 0, 0, 4271, 0, 0, 0, 0, 0, 0, 0),
(1837, 1, 0, 0, 0, 0, 0, 0, 0, 4273, 0, 0, 0, 0, 0, 0, 0),
(1838, 1, 0, 0, 0, 0, 0, 0, 0, 4275, 0, 0, 0, 0, 0, 0, 0),
(2280, 1, 0, 0, 0, 0, 0, 0, 0, 4629, 0, 0, 0, 0, 0, 0, 0),
(2434, 1, 0, 0, 0, 0, 0, 0, 0, 4722, 0, 0, 0, 0, 0, 0, 0),
(2568, 1, 0, 0, 0, 0, 0, 0, 0, 4825, 0, 0, 0, 0, 0, 0, 0),
(2570, 1, 0, 0, 0, 0, 0, 0, 0, 4828, 0, 0, 0, 0, 0, 0, 0),
(3046, 1, 0, 0, 0, 0, 0, 0, 0, 5385, 0, 0, 0, 0, 0, 0, 0),
(3307, 1, 0, 0, 0, 0, 0, 0, 0, 5580, 0, 0, 0, 0, 0, 0, 0),
(3308, 1, 0, 0, 0, 0, 0, 0, 0, 5582, 0, 0, 0, 0, 0, 0, 0),
(3309, 1, 0, 0, 0, 0, 0, 0, 0, 5584, 0, 0, 0, 0, 0, 0, 0),
(3310, 1, 0, 0, 0, 0, 0, 0, 0, 5586, 0, 0, 0, 0, 0, 0, 0),
(3542, 100, 0, 0, 0, 0, 0, 0, 0, 5901, 0, 0, 0, 0, 0, 0, 0),
(3981, 1, 0, 0, 0, 0, 0, 0, 0, 6521, 0, 0, 0, 0, 0, 0, 0),
(3998, 1, 0, 0, 0, 0, 0, 0, 0, 6550, 0, 0, 0, 0, 0, 0, 0),
(4035, 100, 0, 0, 0, 0, 0, 0, 0, 6602, 0, 0, 0, 0, 0, 0, 0),
(4069, 100, 0, 0, 0, 0, 0, 0, 0, 6700, 0, 0, 0, 0, 0, 0, 0),
(4070, 100, 0, 0, 0, 0, 0, 0, 0, 6705, 0, 0, 0, 0, 0, 0, 0),
(4072, 100, 0, 0, 0, 0, 0, 0, 0, 6718, 0, 0, 0, 0, 0, 0, 0),
(4280, 1, 1, 0, 0, 0, 0, 0, 0, 6969, 6970, 0, 0, 0, 0, 0, 0),
(4318, 1, 1, 0, 0, 0, 0, 0, 0, 7070, 7071, 0, 0, 0, 0, 0, 0),
(4329, 1, 1, 0, 0, 0, 0, 0, 0, 7098, 7099, 0, 0, 0, 0, 0, 0),
(4330, 1, 1, 0, 0, 0, 0, 0, 0, 7101, 7102, 0, 0, 0, 0, 0, 0),
(4331, 1, 1, 0, 0, 0, 0, 0, 0, 7104, 7105, 0, 0, 0, 0, 0, 0),
(4332, 1, 1, 0, 0, 0, 0, 0, 0, 7107, 7108, 0, 0, 0, 0, 0, 0),
(4333, 1, 1, 0, 0, 0, 0, 0, 0, 7110, 7111, 0, 0, 0, 0, 0, 0),
(4337, 1, 1, 0, 0, 0, 0, 0, 0, 7122, 7123, 0, 0, 0, 0, 0, 0),
(4439, 1, 0, 0, 0, 0, 0, 0, 0, 7163, 0, 0, 0, 0, 0, 0, 0),
(4447, 1, 1, 1, 1, 0, 0, 0, 0, 7183, 7185, 7186, 7187, 0, 0, 0, 0),
(4780, 1, 0, 0, 0, 0, 0, 0, 0, 7457, 0, 0, 0, 0, 0, 0, 0),
(4837, 1, 0, 0, 0, 0, 0, 0, 0, 7493, 0, 0, 0, 0, 0, 0, 0),
(4974, 1, 0, 0, 0, 0, 0, 0, 0, 7614, 0, 0, 0, 0, 0, 0, 0),
(4975, 1, 0, 0, 0, 0, 0, 0, 0, 7616, 0, 0, 0, 0, 0, 0, 0),
(4976, 1, 0, 0, 0, 0, 0, 0, 0, 7617, 0, 0, 0, 0, 0, 0, 0),
(4995, 1, 0, 0, 0, 0, 0, 0, 0, 7645, 0, 0, 0, 0, 0, 0, 0),
(5024, 1, 0, 0, 0, 0, 0, 0, 0, 7688, 0, 0, 0, 0, 0, 0, 0),
(5063, 1, 0, 0, 0, 0, 0, 0, 0, 7727, 0, 0, 0, 0, 0, 0, 0),
(5078, 1, 0, 0, 0, 0, 0, 0, 0, 7742, 0, 0, 0, 0, 0, 0, 0),
(5105, 1, 0, 0, 0, 0, 0, 0, 0, 7770, 0, 0, 0, 0, 0, 0, 0),
(5206, 1, 0, 0, 0, 0, 0, 0, 0, 7893, 0, 0, 0, 0, 0, 0, 0),
(5211, 1, 0, 0, 0, 0, 0, 0, 0, 7898, 0, 0, 0, 0, 0, 0, 0),
(5217, 1, 0, 0, 0, 0, 0, 0, 0, 7906, 0, 0, 0, 0, 0, 0, 0),
(5273, 1, 0, 0, 0, 0, 0, 0, 0, 7955, 0, 0, 0, 0, 0, 0, 0),
(5325, 1, 0, 0, 0, 0, 0, 0, 0, 7994, 0, 0, 0, 0, 0, 0, 0),
(5393, 1, 0, 0, 0, 0, 0, 0, 0, 8041, 0, 0, 0, 0, 0, 0, 0),
(5694, 1, 0, 0, 0, 0, 0, 0, 0, 8269, 0, 0, 0, 0, 0, 0, 0),
(5796, 1, 0, 0, 0, 0, 0, 0, 0, 8342, 0, 0, 0, 0, 0, 0, 0),
(5797, 1, 0, 0, 0, 0, 0, 0, 0, 8343, 0, 0, 0, 0, 0, 0, 0),
(5873, 1, 0, 0, 0, 0, 0, 0, 0, 8440, 0, 0, 0, 0, 0, 0, 0),
(5875, 1, 0, 0, 0, 0, 0, 0, 0, 8443, 0, 0, 0, 0, 0, 0, 0),
(5883, 1, 0, 0, 0, 0, 0, 0, 0, 8454, 0, 0, 0, 0, 0, 0, 0),
(5982, 1, 1, 0, 0, 0, 0, 0, 0, 8530, 8531, 0, 0, 0, 0, 0, 0),
(6073, 1, 0, 0, 0, 0, 0, 0, 0, 8802, 0, 0, 0, 0, 0, 0, 0),
(6217, 1, 0, 0, 0, 0, 0, 0, 0, 8803, 0, 0, 0, 0, 0, 0, 0),
(6218, 1, 0, 0, 0, 0, 0, 0, 0, 8804, 0, 0, 0, 0, 0, 0, 0),
(6219, 1, 0, 0, 0, 0, 0, 0, 0, 8805, 0, 0, 0, 0, 0, 0, 0),
(6657, 1, 1, 1, 0, 0, 0, 0, 0, 9077, 9078, 9079, 0, 0, 0, 0, 0),
(6735, 1, 0, 0, 0, 0, 0, 0, 0, 9132, 0, 0, 0, 0, 0, 0, 0),
(6736, 1, 0, 0, 0, 0, 0, 0, 0, 9155, 0, 0, 0, 0, 0, 0, 0),
(6775, 1, 0, 0, 0, 0, 0, 0, 0, 9153, 0, 0, 0, 0, 0, 0, 0),
(6877, 1, 0, 0, 0, 0, 0, 0, 0, 9350, 0, 0, 0, 0, 0, 0, 0),
(7209, 1, 0, 0, 0, 0, 0, 0, 0, 9923, 0, 0, 0, 0, 0, 0, 0),
(7221, 1, 0, 0, 0, 0, 0, 0, 0, 9943, 0, 0, 0, 0, 0, 0, 0),
(7223, 1, 0, 0, 0, 0, 0, 0, 0, 9946, 0, 0, 0, 0, 0, 0, 0),
(7225, 1, 0, 0, 0, 0, 0, 0, 0, 9949, 0, 0, 0, 0, 0, 0, 0),
(7226, 1, 0, 0, 0, 0, 0, 0, 0, 9950, 0, 0, 0, 0, 0, 0, 0),
(7366, 1, 1, 1, 1, 0, 0, 0, 0, 10093, 10094, 10095, 10096, 0, 0, 0, 0),
(7378, 1, 0, 0, 0, 0, 0, 0, 0, 10113, 0, 0, 0, 0, 0, 0, 0),
(7535, 1, 0, 0, 0, 0, 0, 0, 0, 10428, 0, 0, 0, 0, 0, 0, 0),
(7799, 1, 0, 0, 0, 0, 0, 0, 0, 10782, 0, 0, 0, 0, 0, 0, 0),
(8103, 1, 0, 0, 0, 0, 0, 0, 0, 11380, 0, 0, 0, 0, 0, 0, 0),
(8104, 1, 0, 0, 0, 0, 0, 0, 0, 11381, 0, 0, 0, 0, 0, 0, 0),
(8106, 1, 0, 0, 0, 0, 0, 0, 0, 11383, 0, 0, 0, 0, 0, 0, 0),
(8107, 1, 0, 0, 0, 0, 0, 0, 0, 11384, 0, 0, 0, 0, 0, 0, 0),
(8244, 1, 0, 0, 0, 0, 0, 0, 0, 11736, 0, 0, 0, 0, 0, 0, 0),
(8296, 1, 0, 0, 0, 0, 0, 0, 0, 11804, 0, 0, 0, 0, 0, 0, 0),
(8370, 1, 0, 0, 0, 0, 0, 0, 0, 11982, 0, 0, 0, 0, 0, 0, 0),
(8482, 1, 0, 0, 0, 0, 0, 0, 0, 12202, 0, 0, 0, 0, 0, 0, 0),
(8483, 1, 0, 0, 0, 0, 0, 0, 0, 12204, 0, 0, 0, 0, 0, 0, 0),
(8593, 1, 0, 0, 0, 0, 0, 0, 0, 12474, 0, 0, 0, 0, 0, 0, 0),
(8594, 1, 0, 0, 0, 0, 0, 0, 0, 12475, 0, 0, 0, 0, 0, 0, 0),
(8834, 1, 0, 0, 0, 0, 0, 0, 0, 13561, 0, 0, 0, 0, 0, 0, 0),
(9064, 1, 0, 0, 0, 0, 0, 0, 0, 14386, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
-- Dwarven Farmer (Hidden farm #1)
(285020, 12998, 0, 0, 0, -1853.19, -4122.06, 11.1314, 4.76928, 60, 60, 0, 2),
(285021, 12998, 0, 0, 0, -1853.49, -4091.65, 9.81663, 4.70644, 60, 60, 0, 0),
-- Ram (Hidden farm #1)
(285022, 2098, 0, 0, 0, -1813.51, -4155.14, 9.89494, 1.82635, 60, 60, 0, 0),
(285023, 2098, 0, 0, 0, -1818.03, -4142.99, 9.89494, 4.68913, 60, 60, 0, 0),
-- Cat (Hidden farm #1)
(285024, 6368, 0, 0, 0, -1855.72, -4117.62, 13.0457, 5.2373, 60, 60, 0, 0),
(285025, 6368, 0, 0, 0, -1839.99, -4245.72, 2.13572, 1.15007, 60, 60, 0, 0),
-- Rat (Hidden farm #1)
(285026, 4075, 0, 0, 0, -1818.5, -4149.38, 9.89524, 0.0426621, 60, 60, 5, 1),
(285027, 4075, 0, 0, 0, -1853.79, -4149.49, 9.74445, 5.99991, 60, 60, 5, 1),
(285028, 4075, 0, 0, 0, -1832.93, -4231.47, 2.13493, 4.15422, 60, 60, 5, 1),
(285029, 4075, 0, 0, 0, -1765.09, -4228.05, 2.06121, 3.92646, 60, 60, 5, 1),
(285030, 4075, 0, 0, 0, -1685.3, -4200.7, 1.99848, 0.324622, 60, 60, 5, 1),
(285031, 4075, 0, 0, 0, -1720.4, -4190.35, 1.99845, 2.78763, 60, 60, 5, 1),
(285032, 4075, 0, 0, 0, -1953.66, -4080.47, 2.03243, 1.65973, 60, 60, 5, 1),
(285033, 4075, 0, 0, 0, -1981, -4082.81, 2.06496, 2.00923, 60, 60, 5, 1),
(285034, 4075, 0, 0, 0, -1952.94, -4118.76, 2.0329, 5.26471, 60, 60, 5, 1),
(285035, 4075, 0, 0, 0, -1933.78, -4107.02, 2.0329, 5.249, 60, 60, 5, 1),
(285036, 4075, 0, 0, 0, -1898.76, -4155.48, 2.0329, 6.10665, 60, 60, 5, 1),
(285037, 4075, 0, 0, 0, -1773.96, -4198.48, 1.99868, 5.41943, 60, 60, 5, 1),
(285038, 4075, 0, 0, 0, -1748.44, -4205.78, 1.99868, 5.91973, 60, 60, 5, 1),
(285039, 4075, 0, 0, 0, -1702.71, -4252.72, 1.99827, 2.49775, 60, 60, 5, 1),
(285040, 4075, 0, 0, 0, -1728.17, -4279.38, 1.99826, 4.70708, 60, 60, 5, 1),
-- Ironforge Mountaineer (Hidden farm #2)
(285041, 727, 0, 0, 0, -3972.82, -1513.31, 169.195, 5.53077, 60, 60, 0, 0),
(285042, 727, 0, 0, 0, -3985.24, -1508.53, 168.705, 4.14848, 60, 60, 0, 0),
-- Dwarven Farmer (Hidden farm #2)
(285043, 12998, 0, 0, 0, -4029.86, -1453.53, 167.187, 4.37309, 60, 60, 5, 1),
(285044, 12998, 0, 0, 0, -4101.77, -1261.85, 149.042, 4.86947, 60, 60, 0, 0),
(285045, 12998, 0, 0, 0, -4074.56, -1256.74, 146.399, 0.106011, 60, 60, 0, 2),
(285046, 12998, 0, 0, 0, -4110.72, -1068.8, 168.909, 4.87338, 60, 60, 5, 1),
(285047, 12998, 0, 0, 0, -4147.28, -1106.97, 168.917, 0.341632, 60, 60, 0, 0),
-- Ram (Hidden farm #2)
(285048, 2098, 0, 0, 0, -4144.93, -1058.98, 167.925, 0.057233, 60, 60, 0, 0),
(285049, 2098, 0, 0, 0, -4131.62, -1063.01, 167.925, 4.41786, 60, 60, 0, 0),
-- Chicken (Hidden farm #2)
(285050, 620, 0, 0, 0, -4126.41, -1091.58, 168.916, 4.29377, 60, 60, 5, 1),
(285051, 620, 0, 0, 0, -4117.23, -1101.1, 168.953, 3.54764, 60, 60, 5, 1),
(285052, 620, 0, 0, 0, -4137.29, -1102.33, 168.916, 3.74399, 60, 60, 5, 1),
(285053, 620, 0, 0, 0, -4080.96, -1256.69, 146.684, 3.85709, 60, 60, 5, 1),
(285054, 620, 0, 0, 0, -4074.13, -1268.01, 146.158, 4.99592, 60, 60, 5, 1),
(285055, 620, 0, 0, 0, -4091.94, -1279.57, 146.18, 3.76912, 60, 60, 5, 1),
(285056, 620, 0, 0, 0, -4039.9, -1446.43, 166.2, 4.68177, 60, 60, 5, 1),
(285057, 620, 0, 0, 0, -4022.11, -1449.52, 165.607, 5.71378, 60, 60, 5, 1),
(285058, 620, 0, 0, 0, -4017.85, -1460.55, 168.343, 4.69512, 60, 60, 5, 1),
(285059, 620, 0, 0, 0, -4001.15, -1502.53, 169.703, 5.06818, 60, 60, 5, 1),
(285060, 620, 0, 0, 0, -3964.18, -1526.38, 169.163, 5.06818, 60, 60, 5, 1),
-- Mounted Ironforge Mountaineer (Hidden farm #2)
(285061, 12996, 0, 0, 0, -4025.61, -1404.07, 155.248, 3.81547, 60, 60, 0, 2),
-- Rabbit (Hidden farm #2)
(285062, 721, 0, 0, 0, -3971.98, -1494.18, 169.931, 2.12686, 60, 60, 5, 1),
(285063, 721, 0, 0, 0, -3994.42, -1376.7, 150.124, 1.10741, 60, 60, 5, 1),
(285064, 721, 0, 0, 0, -4026.06, -1270.89, 146.802, 1.82841, 60, 60, 5, 1),
(285065, 721, 0, 0, 0, -4096.43, -1088.23, 170.199, 1.84097, 60, 60, 5, 1),
(285066, 721, 0, 0, 0, -4166.11, -998.81, 168.036, 1.097012, 60, 60, 5, 1),
-- Cow (Hidden farm #2)
(285067, 2442, 0, 0, 0, -4053.71, -1187.58, 146.314, 4.69747, 60, 60, 5, 1),
(285068, 2442, 0, 0, 0, -4041.5, -1230.92, 146.314, 3.80212, 60, 60, 5, 1),
(285069, 2442, 0, 0, 0, -4055.91, -1247.15, 146.314, 4.19089, 60, 60, 5, 1);

REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`) VALUES
(285021, 0, 3),
(285024, 0, 1),
(285025, 0, 1);

REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`) VALUES
(285020, 1, -1851.5, -4161.39, 8.0422, 100, 5000),
(285020, 2, -1849.24, -4170.83, 6.40288, 0, 0),
(285020, 3, -1843.77, -4176.64, 5.19335, 0, 0),
(285020, 4, -1827.66, -4188.65, 3.6245, 0, 0),
(285020, 5, -1821.43, -4200.03, 3.37323, 100, 5000),

(285045, 1, -4056.62, -1257.13, 146.314, 0, 0),
(285045, 2, -4022.13, -1239.04, 146.314, 0, 0),
(285045, 3, -4027.52, -1197.61, 146.314, 0, 0),
(285045, 4, -4073.56, -1205.96, 146.314, 0, 0),
(285045, 5, -4074.82, -1234.27, 146.481, 0, 0),
(285045, 6, -4071.62, -1244.78, 146.406, 0, 0),
(285045, 7, -4073.64, -1253.11, 146.433, 0, 0),

(285061, 1, -4032.54, -1410.32, 156.721, 0, 0),
(285061, 2, -4074.89, -1407.43, 166.031, 0, 0),
(285061, 3, -4121.2, -1392.13, 186.617, 0, 0),
(285061, 4, -4139.65, -1392.91, 194.53, 0, 0),
(285061, 5, -4160.59, -1400.4, 197.085, 0, 0),
(285061, 6, -4139.07, -1393.15, 194.301, 0, 0),
(285061, 7, -4120.76, -1392.22, 186.412, 0, 0),
(285061, 8, -4074.23, -1407.58, 165.77, 0, 0),
(285061, 9, -4032.55, -1410.22, 156.712, 0, 0),
(285061, 10, -4020.63, -1397.18, 153.371, 0, 0),
(285061, 11, -4017.04, -1356.28, 148.046, 0, 0),
(285061, 12, -4009.14, -1314.06, 146.624, 0, 0),
(285061, 13, -4018.54, -1285.38, 146.625, 0, 0),
(285061, 14, -3993.26, -1242.82, 146.911, 0, 0),
(285061, 15, -3994.51, -1185.12, 154.931, 0, 0),
(285061, 16, -4020.88, -1159.39, 157.864, 0, 0),
(285061, 17, -4044.1, -1151.67, 160.279, 0, 0),
(285061, 18, -4067.39, -1109.54, 166.369, 0, 0),
(285061, 19, -4087.61, -1099.67, 168.504, 0, 0),
(285061, 20, -4128.91, -1098.02, 168.917, 0, 0),
(285061, 21, -4136.27, -1079.66, 168.917, 0, 0),
(285061, 22, -4128.58, -1098.3, 168.916, 0, 0),
(285061, 23, -4086.78, -1099.88, 168.434, 0, 0),
(285061, 24, -4066.85, -1110.06, 166.183, 0, 0),
(285061, 25, -4043.64, -1151.81, 160.212, 0, 0),
(285061, 26, -4020.62, -1159.42, 157.841, 0, 0),
(285061, 27, -3994.12, -1185.26, 154.956, 0, 0),
(285061, 28, -3992.99, -1243.2, 146.901, 0, 0),
(285061, 29, -4018.42, -1285.85, 146.623, 0, 0),
(285061, 30, -4008.84, -1314.12, 146.627, 0, 0),
(285061, 31, -4016.71, -1356.63, 148.065, 0, 0),
(285061, 32, -4020.15, -1397.47, 153.434, 0, 0);

-- Conditions to check if Feast gameobjects are spawned.
replace into `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (21145, 21, 21145, 30, 0, 0, 0);
replace into `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (21146, 21, 21146, 30, 0, 0, 0);
replace into `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (21147, 21, 21147, 30, 0, 0, 0);
replace into `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (21148, 21, 21148, 30, 0, 0, 0);
replace into `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (21149, -2, 21145, 21146, 21147, 21148, 0);

-- Add completion script for quest Feast at the Blue Recluse.
DELETE FROM `quest_end_scripts` WHERE `id`=1271;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1271, 0, 32, 21149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Angus Stern - Terminate Script if Feast Spawned'),
(1271, 1, 76, 21145, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9084.64, 830.321, 109.609, 0.541051, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Boar'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9069.08, 829.032, 109.426, 2.68781, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21146, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9074.48, 836.473, 109.429, 5.63741, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fish'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9087.68, 830.554, 116.726, 1.39626, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9075.43, 838.106, 109.469, 2.74016, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9094.81, 836.335, 116.708, 1.09956, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9093.54, 836.906, 116.729, 2.02458, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9072.99, 838.187, 109.431, 5.21854, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9085.21, 815.248, 116.722, 4.90438, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9072.33, 837.085, 109.424, 1.16937, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9087.12, 831.972, 116.775, 4.5204, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9059.74, 838.837, 110.217, 0.90757, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21146, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9070.34, 830.482, 109.438, 1.71042, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fish'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9057.81, 838.719, 110.234, 2.54818, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21147, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9071.5, 829.084, 109.455, 3.61284, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fruit'),
(1271, 1, 76, 21145, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9082.94, 825.944, 109.609, 3.54302, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Boar'),
(1271, 1, 76, 21147, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9081.27, 822.605, 109.609, 3.45576, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fruit'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9079.41, 828.787, 109.435, 1.0821, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21146, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9080.98, 821.016, 109.609, 5.3058, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fish'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9081.09, 828.564, 109.432, 1.64061, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21146, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9080.44, 819.65, 109.609, 5.51524, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fish'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9081.13, 830.215, 109.446, 2.26892, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21146, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9059.53, 839.946, 110.231, 2.00713, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fish'),
(1271, 1, 76, 21145, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9058.3, 837.403, 110.217, 5.044, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Boar'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9071.01, 828.135, 109.431, 5.98648, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21148, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9072.72, 829.445, 109.473, 5.61996, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Goblet'),
(1271, 1, 76, 21146, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9079.9, 818.185, 109.609, 5.11382, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fish'),
(1271, 1, 76, 21147, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -9083.82, 828.115, 109.609, 2.44346, 0, 'Feast at the Blue Recluse: Summon GameObject Feast Fruit'),
(1271, 1, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.453786, 0, 'Feast at the Blue Recluse: Angus Stern - Set Orientation'),
(1271, 1, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Angus Stern - Emote OneShotShout'),
(1271, 1, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Angus Stern - Remove Npc Flags'),
(1271, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1718, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Angus Stern - Say Text'),
(1271, 5, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5708, 0, 'Feast at the Blue Recluse: Angus Stern - Set Orientation'),
(1271, 5, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Angus Stern - Emote OneShotPoint'),
(1271, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1719, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Angus Stern - Say Text'),
(1271, 10, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.558505, 0, 'Feast at the Blue Recluse: Angus Stern - Set Orientation'),
(1271, 10, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Angus Stern - Add Npc Flags'),
(1271, 12, 35, 1, 0, 0, 0, 3628, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0.518691, 0, 'Feast at the Blue Recluse: Steven Lohan - Set Orientation'),
(1271, 12, 1, 21, 0, 0, 0, 3628, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Steven Lohan - Emote OneShotApplaud'),
(1271, 12, 1, 4, 0, 0, 0, 1311, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Joachim Brenlow - Emote OneShotCheer'),
(1271, 12, 0, 0, 0, 0, 0, 3628, 30, 8, 3, 1736, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Steven Lohan - Say Text'),
(1271, 14, 35, 1, 0, 0, 0, 3628, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0.401426, 0, 'Feast at the Blue Recluse: Steven Lohan - Set Orientation'),
(1271, 14, 1, 4, 0, 0, 0, 3628, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Steven Lohan - Emote OneShotCheer'),
(1271, 14, 0, 0, 0, 0, 0, 1311, 30, 8, 3, 1733, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Joachim Brenlow - Say Text'),
(1271, 17, 1, 10, 0, 0, 0, 1311, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Joachim Brenlow - Emote State'),
(1271, 20, 1, 0, 0, 0, 0, 1311, 30, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Feast at the Blue Recluse: Joachim Brenlow - Emote State');
UPDATE `quest_template` SET `CompleteScript`=1271 WHERE `entry`=1271;

update creature_template set speed_walk = 1, speed_run = 2.14286 where entry = 11583;

update broadcast_text set maletext = 'My mission is complete. I may have some spare supplies if you need any.' where id = 11821;
update creature_template set flags_extra=flags_extra|16777216 where entry = 15471;

-- rogues should have 100 thrown items at start
UPDATE `playercreateinfo_item` SET `amount` = 100 WHERE `class` = 4 AND `itemid` IN (2947, 3111);

-- Correct default faction for Plague Spreader to Undead, Scourge (21).
UPDATE `creature_template` SET `faction` = 21 WHERE `entry` = 604;

-- Plague Spreaders that spawn on STV bridge for Patrol Schedule quest end event are faction Villian (43) in sniff.
-- Private Merle should become faction Victim (99).
DELETE FROM `quest_end_scripts` WHERE `id`=330;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 0, 4, 147, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1422, 'Patrol Schedules: Corporal Sethman - Remove Quest Giver Flag');
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 1, 61, 330, 1800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1422, 'Patrol Schedules: Start Map Script');
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 1, 4, 46, 512, 1, 0, 1626, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1422, 'Patrol Schedules: Private Merle - Add Immune to NPC Flag');
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 1, 60, 3, 1, 0, 1, 1626, 0, 9, 2, 0, 1421, 0, 0, 0, 0, 0, 0, 1422, 'Patrol Schedules: Private Merle - Start Waypoints');
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 1, 22, 99, 1, 0, 0, 1626, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1422, 'Patrol Schedules: Private Merle - Set Faction');
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (330, 26, 4, 147, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Patrol Schedules: Corporal Sethman - Add Quest Giver Flag');
DELETE FROM `event_scripts` WHERE `id`=60401;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (60401, 0, 15, 26047, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plague Spreader - Cast Spell Birth');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (60401, 2, 22, 43, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plague Spreader - Set Faction (21)');
DELETE FROM `creature_movement_scripts` WHERE `id`=142102;
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (142102, 0, 10, 604, 10000, 0, 0, 0, 0, 0, 0, 0, 60401, 6, 4, -11293, -370.476, 64.4972, 3.08568, 0, 'Private Merle - Summon Creature (OOC Despawn 4000 ms)');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (142102, 0, 10, 604, 10000, 0, 0, 0, 0, 0, 0, 0, 60401, 6, 4, -11295.3, -359.83, 63.561, 4.18131, 0, 'Private Merle - Summon Creature (OOC Despawn 4000 ms)');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (142102, 0, 10, 604, 10000, 0, 0, 0, 0, 0, 0, 0, 60401, 6, 4, -11291, -364.689, 64.1733, 3.44304, 0, 'Private Merle - Summon Creature (OOC Despawn 4000 ms)');
REPLACE INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (142102, 0, 4, 46, 512, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Private Merle - Remove Immune to NPC Flag');

-- Events list for Thornling
DELETE FROM `creature_ai_events` WHERE `creature_id`=14362;
REPLACE INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1436201, 14362, 0, 11, 0, 100, 0, 0, 0, 0, 0, 1436201, 0, 0, 'Thornling - Set React State Passive and Cast Root Self on Spawn');
DELETE FROM `creature_ai_scripts` WHERE `id`=1436201;
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1436201, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thornling - Set React State');
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1436201, 0, 15, 23973, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thornling - Cast Spell Root Self');
REPLACE INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (1436201, 0, 39, 14362, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Thornling - Start Script');
DELETE FROM `event_scripts` WHERE `id`=14362;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (14362, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9374, 0, 0, 0, 0, 0, 0, 0, 1000, 'Thornling - Say Text');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (14362, 2, 15, 22788, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 'Thornling - Cast Spell Grow');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (14362, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9375, 0, 0, 0, 0, 0, 0, 0, 1000, 'Thornling - Say Text');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (14362, 4, 15, 22788, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 'Thornling - Cast Spell Grow');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (14362, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9376, 0, 0, 0, 0, 0, 0, 0, 1000, 'Thornling - Say Text');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (14362, 6, 15, 22788, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 'Thornling - Cast Spell Grow');
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (14362, 6, 15, 22781, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 'Thornling - Cast Spell Thornling');
UPDATE `creature_template` SET `ai_name` = 'EventAI' WHERE `entry` = 14362;

-- Don't remove Thornling aura on evade.
UPDATE `spell_template` SET `customFlags` = `customFlags` | 0x400 WHERE `entry`=22781;
-- Don't remove Grow aura on evade.
UPDATE `spell_template` SET `customFlags` = `customFlags` | 0x400 WHERE `entry`=22788;
-- Don't remove Root Self aura on evade.
UPDATE `spell_template` SET `customFlags` = `customFlags` | 0x400 WHERE `entry`=23973;

-- Fix completion text for quest 4297 (Food for Baby) in Hinterlands: add gender check for father/mother
UPDATE `quest_template` SET `OfferRewardText`="These'll do nicely, and if I'm not mistaken, your little egg's just about ready to hatch. How does it feel? You know, you about to be a $gfather:mother;? Haha, didn't think ya'd have to deal with such responsibility, now did ya?" WHERE `entry`=4297;
-- Fix completion text for quest 4298 (Becoming a Parent) in Hinterlands: add gender check for dadda/momma
UPDATE `quest_template` SET `OfferRewardText`="Here, take the egg... better you have it so it bonds to you and looks to you to be its $gdadda:momma;.$B$BCongrats, $N. You're a parent... kinda." WHERE `entry`=4298;

SET @magic_number = 70000;
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Who would have thought combining the usefulness of a telescope with a mining pick would be such a hit! I\'m sure a fine $r like you can see the appeal!$B$BIf you want one yourself, bring me an Ornate Spyglass and some Light Leather, let\'s say around... 10 pieces.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

SET @magic_number = 70001;
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Do you really think I\'m going to show my mining secrets to just anyone who wanders into town? Ha! Come back to me when people around here considers you a bit more friendlier.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

SET @magic_number = 70002;
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Hey $r, I see you have there one of my creations. Probably your best choice yet.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);

replace into creature_equip_template values (51601, 0, 2901, 1911, 0);

replace into creature_template (
entry, patch, display_id1, display_id2, display_id3, display_id4, name, subname, gossip_menu_id, level_min, level_max,
health_min, health_max, mana_min, mana_max, armor, faction, npc_flags, speed_walk, speed_run, scale, detection_range,
call_for_help_range, leash_range, rank, xp_multiplier, dmg_min, dmg_max, dmg_school, attack_power, dmg_multiplier,
base_attack_time, ranged_attack_time, unit_class, unit_flags, dynamic_flags, beast_family, trainer_type, trainer_spell,
trainer_class, trainer_race, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id,
pickpocket_loot_id, skinning_loot_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spell_id1,
spell_id2, spell_id3, spell_id4, spell_list_id, pet_spell_list_id, gold_min, gold_max, ai_name, movement_type,
inhabit_type, civilian, racial_leader, regeneration, equipment_id, trainer_id, vendor_id, mechanic_immune_mask,
school_immune_mask, flags_extra, script_name)
values
('51601', '0', '7112', '0', '0', '0', 'Traaz Ironfinger', 'Mining Engineer', '0', '42', '42',
'6594', '6594', '0', '0', '1072', '69', '1', '1', '1.14286', '1', '20',
'5', '0', '1', '1', '204', '312', '0', '241', '1',
'2000', '0', '1', '0', '0', '1', '0', '0',
'0', '0', '0', '0', '0', '7', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '1412', '2824', '', '0',
'3', '0', '0', '1', '51601', '0', '0', '0',
'0', '0', 'mining_enchanter');

-- Rush'n Attack guild NPCs

REPLACE INTO `creature_template` VALUES (51650, 0, 14759, 0, 0, 0, 'Volatala Zilmbu', 'Innkeeper', 342, 30, 30, 1605, 1605, 0, 0, 1200, 1625, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 4536, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 4537, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 4538, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 4539, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 4602, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 8953, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51650, 23002, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (51651, 6, 9286, 0, 0, 0, 'Sharpspin Earhole', 'Food & Drinks', 0, 30, 40, 1500, 3000, 0, 0, 7, 35, 4, 1.2, 1.14286, 1, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 50653, 0, 0, 524288, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 117, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 414, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 422, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 1707, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 2070, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 2287, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 3770, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 3771, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 3927, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 4540, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 4541, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 4542, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 4544, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 4599, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 4601, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 8932, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 8950, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51651, 8952, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (51652, 0, 10252, 0, 0, 0, 'Um\'bundi Sumobi', 'Blacksmithing Supplies', 0, 40, 40, 3900, 3900, 0, 0, 560, 474, 16391, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 5411, 0, 0, 0, 0, 10, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51652, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51652, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51652, 3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51652, 3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51652, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51652, 18567, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (51653, 0, 9768, 0, 0, 0, 'Nannosh Tralhtar', 'Fishing Trainer', 9158, 35, 35, 2016, 2016, 0, 0, 1373, 29, 19, 1, 1.14286, 0, 20, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 4608, 0, 0, 2, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 3332, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES (51653, 7733, 100, 0, 0, 5, 0, 5875);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`, `build_min`, `build_max`) VALUES (51653, 7734, 500, 356, 50, 0, 0, 5875);

REPLACE INTO `creature_template` VALUES (51654, 0, 4610, 0, 0, 0, 'Zazu', 'Fishing Supplies', 0, 14, 14, 594, 594, 0, 0, 20, 126, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 19, 0, 70, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 23.0384, 31.6778, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5942, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51654, 6256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51654, 6326, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51654, 6368, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51654, 6529, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51654, 6530, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51654, 6532, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (51655, 0, 597, 0, 0, 0, 'Zeemo', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 256, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` VALUES (51656, 0, 1369, 0, 0, 0, 'Rug', 'Alchemy Supplies', 0, 14, 14, 594, 594, 0, 0, 20, 126, 6, 1, 1.14286, 0, 20, 5, 0, 0, 1, 15, 19, 0, 70, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 23.0384, 31.6778, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 5942, 0, 0, 0, 0, 524298, '');

update creature_template set equipment_id = 0 where entry = 51656;

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51656, 3371, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51656, 3372, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51656, 5642, 1, 9000, 3, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51656, 8925, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51656, 18256, 0, 0, 0, 0);

REPLACE INTO `creature_template`  VALUES (51657, 0, 9563, 0, 0, 0, 'Ram', NULL, 0, 24, 24, 1172, 1172, 0, 0, 992, 35, 2, 1.05, 1.14286, 0.4, 20, 5, 0, 0, 1, 35, 43, 0, 104, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 37.3824, 51.4008, 100, 1, 0, 0, 0, 100006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

update item_template set spellId_1 = 18282, script_name = 'item_guild_tabard' where entry = '5976';

-- Adventure Guild NPCs:

REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES (112898, 0, 5, 180, 'Adventurer\'s Inn', 0, 0, 0.7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51660, 0, 5083, 0, 0, 0, 'Amro', '', 9458, 33, 33, 1846, 1846, 0, 0, 1200, 80, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 46, 58, 0, 132, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 48.7872, 67.0824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 6142, 0, 0, 0, 0, 524298, '');

update creature_template set equipment_id = 0 where entry = 51660;
update creature_template set npc_flags = 1 where entry = 51660;

SET @gossip_menu_id = 51660;
SET @magic_number = 60015; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Greetings! Amro de Lux, Hunter Extraordinaire, at your service.\n\nWhile the boss is running around the world doing more exciting work, someone needs to stay behind and handle the boring parts of the job.\n\nWhat is it that I do? I manage this whole operation, of course.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 51660;

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51661, 0, 9958, 0, 0, 0, 'Paws', '', 0, 60, 60, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 0.8, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51662, 0, 5034, 0, 0, 0, 'Ed "Maddog" McLoud', 'Innkeeper', 342, 30, 30, 1605, 1605, 0, 0, 1200, 12, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 100, 0, 0, 524298, '');

SET @gossip_menu_id = 51662;
SET @magic_number = 60016; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'Welcome, weary traveler!\n\nWhat will be your guilty pleasure this time? Drinking? Gossiping? Adventuring?\n\nWhats wrong?\n\nI\'m a mage and I serve drinks! Don\'t tell anyone, but it\'s the easiest way to make money that I\'ve ever heard of.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 51662;

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 4536, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 4537, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 4538, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 4539, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 4602, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 8953, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (51662, 23002, 0, 0, 0, 0);

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51663, 0, 14418, 0, 0, 0, 'Mojo Erisen', '', 9458, 33, 33, 1846, 1846, 0, 0, 1200, 80, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 46, 58, 0, 132, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 48.7872, 67.0824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 6142, 0, 0, 0, 0, 524298, '');

SET @gossip_menu_id = 51663;
SET @magic_number = 60017; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0');
replace into broadcast_text (ID, MaleText) values (@magic_number, 'What?\n\nOf course Mojo isnt my real name... Only the boss knows it.\n\nAnd there is good reason for that. Now cease your interrogations and desist somewhere else!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = 51663;
update creature_template set equipment_id = 0 where entry = 51663;
update creature_template set npc_flags = 1 where entry = 51663;

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51664, 0, 599, 0, 0, 0, 'Naire', '', 0, 60, 60, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 0.8, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51665, 0, 5585, 5555, 5556, 5586, 'Kolos', NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51666, 0, 5585, 5555, 5556, 5586, 'Hobi', NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51667, 0, 5585, 5555, 5556, 5586, 'Maya', NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

REPLACE INTO `creature_template` (`entry`, `patch`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `script_name`) VALUES (51668, 0, 5585, 5555, 5556, 5586, 'Cute', NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 2, '');

-- Populating areas:

delete from creature where id between 51650 and 51668;

REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51650, 1, 0, 0, 7551.73, -1524.02, 158.954, 3.48523, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51651, 1, 0, 0, 7512.87, -1529.68, 156.666, 2.24822, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51652, 1, 0, 5411, 7458.68, -1580.9, 177.659, 2.9393, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51653, 1, 0, 3332, 7431.65, -1512.87, 151.609, 5.00099, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51654, 1, 0, 5942, 7510.33, -1526.56, 156.741, 5.62062, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51655, 1, 0, 0, 7514.53, -1550.28, 156.145, 2.7223, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51656, 1, 0, 3348, 7499.12, -1527.14, 156.351, 0.900775, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51657, 1, 0, 0, 7512.91, -1539.72, 156.143, 3.63749, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51660, 0, 0, 0, -8854.23, 1076.53, 95.2576, 3.38899, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51661, 0, 0, 0, -8853.42, 1075.61, 95.2576, 3.38899, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51662, 0, 0, 0, -8857.58, 1076.79, 95.2061, 0.318087, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51663, 0, 0, 6142, -8868.8, 1083.23, 102.455, 0.322015, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51664, 0, 0, 0, -8867.67, 1084.92, 102.455, 0.236606, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51665, 0, 0, 0, -8864.32, 1070.69, 102.455, 0.276787, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51666, 0, 0, 0, -8855.32, 1086.54, 95.2099, 3.69563, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51667, 0, 0, 0, -8841.52, 1092.43, 95.2072, 1.67244, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10);
REPLACE INTO `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`)VALUES (51668, 0, 0, 0, -8873.05, 1088.43, 91.9111, 3.04689, 25, 25, 5, 0, 100, 0, 0, 1, 0, 0, 0, 10);

-- New shop items:

-- Summon: Barber

set @entry = 50600;
set @class = 15;
set @subclass = 0;
set @name = 'Summon: Barber';
set @description = 'Summons your personal barber Sniptip, for when you need a quick style change.';
set @display = 9825;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 28505;
set @charges = 0;
set @cooldown = 1000;
set @script = '';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Summon: Surgeon

set @entry = 50601;
set @class = 15;
set @subclass = 0;
set @name = 'Summon: Surgeon';
set @description = 'Summon Sharpshear, your own private surgeon. List of services include scar removal, broken nose fix and others.';
set @display = 22464;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 28505;
set @charges = 0;
set @cooldown = 1000;
set @script = '';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Summon: Auctioneer

set @entry = 50602;
set @class = 15;
set @subclass = 0;
set @name = 'Summon: Auctioneer';
set @description = 'Summon your local Goblin entrepreneur. Buy, sell, bid — he’s got the best deals anywhere!';
set @display = 7260;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 28505;
set @charges = 0;
set @cooldown = 1000;
set @script = '';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Race Change Token: Human

set @entry = 50603;
set @class = 15;
set @subclass = 0;
set @name = 'Race Change Token: Human';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_racechange';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Race Change Token: Gnome

set @entry = 50604;
set @class = 15;
set @subclass = 0;
set @name = 'Race Change Token: Gnome';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_racechange';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Race Change Token: Dwarf

set @entry = 50605;
set @class = 15;
set @subclass = 0;
set @name = 'Race Change Token: Dwarf';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_racechange';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Race Change Token: Night Elf

set @entry = 50606;
set @class = 15;
set @subclass = 0;
set @name = 'Race Change Token: Night Elf';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_racechange';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Race Change Token: Orc

set @entry = 50607;
set @class = 15;
set @subclass = 0;
set @name = 'Race Change Token: Orc';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_racechange';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Race Change Token: Troll

set @entry = 50608;
set @class = 15;
set @subclass = 0;
set @name = 'Race Change Token: Troll';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_racechange';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Race Change Token: Tauren

set @entry = 50609;
set @class = 15;
set @subclass = 0;
set @name = 'Race Change Token: Tauren';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_racechange';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Race Change Token: Undead

set @entry = 50610;
set @class = 15;
set @subclass = 0;
set @name = 'Race Change Token: Undead';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_racechange';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Character: Change Gender

set @entry = 50611;
set @class = 15;
set @subclass = 0;
set @name = 'Character: Change Gender';
set @description = 'Right click to use.';
set @display = 30658;
set @quality = 1;
set @bonding = 1;
set @stackable = 20;
set @spell = 1575;
set @charges = -1;
set @cooldown = 1000;
set @script = 'shop_changegender';

replace into item_template (entry, class, subclass, name, description, displayid, quality, bonding, stackable, spellid_1, spellcharges_1, spellcooldown_1, scriptname) values (@entry, @class, @subclass, @name, @description, @display, @quality, @bonding, @stackable, @spell, @charges, @cooldown, @script);

-- Misc. SQL:

replace into broadcast_text (ID, MaleText) values (51670, 'Hair to cut, coins to count.\nThe busy life of a goblin.');
replace into npc_text (ID, BroadcastTextID0) values (51670, 51670);

replace into broadcast_text (ID, MaleText) values (51671, 'Can’t get no love with that face?\n\nI’ve got what you need.');
replace into npc_text (ID, BroadcastTextID0) values (51671, 51671);


replace into creature_template values 

(51680, 0, 0, 0, 7993, 0, 0, 0, 'Drezbit', NULL, 0, 50, 50, 3517, 3517, 2103, 2103, 2999, 855, 855, 4096, 1.1, 1.14286, 0, 0, 72, 93, 0, 226, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 66.44, 91.355, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, ''),

(51681, 0, 0, 0, 7909, 0, 0, 0, 'Sniptip', NULL, 0, 1, 1, 300, 400, 0, 0, 20, 35, 35, 1, 1, 1.14286, 1, 0, 2, 2, 0, 44, 1, 1400, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 'npc_barber'),

(51682, 0, 0, 0, 7212, 0, 0, 0, 'Sharpshear', NULL, 0, 1, 1, 300, 400, 0, 0, 20, 35, 35, 1, 1, 1.14286, 1, 0, 2, 2, 0, 44, 1, 1400, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 'npc_surgeon');

replace into custom_pet_entry_relation (item_entry, creature_entry) values (50602, 51680);
replace into custom_pet_entry_relation (item_entry, creature_entry) values (50600, 51681);
replace into custom_pet_entry_relation (item_entry, creature_entry) values (50601, 51682);

UPDATE `broadcast_text` SET `MaleText`='Thank you for your continued support.' WHERE (`ID`='90001');


