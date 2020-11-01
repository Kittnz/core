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
SET @magic_number = 60010; 
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