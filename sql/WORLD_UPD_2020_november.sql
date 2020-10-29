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

