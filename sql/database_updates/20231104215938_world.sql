-- Assign gossip menu to Highlord Bolvar Fordragon.
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (61482, 'Anduin might be just a boy now, but he will be a great leader one day. His heart is pure and filled with light. With his father missing, it falls to me to tutor him and rule the kingdom until he is of age.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (61482, 61482, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (61482, 61482, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (61482, 0, 0, 'I need the response from Stormwind.', 0, 1, 1, -1, 0, 6148201, 0, 0, NULL, 0, 83026);
DELETE FROM `gossip_scripts` WHERE `id`=6148201;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6148201, 0, 0, 17, 83016, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Create Item Sealed Response from Stormwind');
UPDATE `creature_template` SET `gossip_menu_id`=61482 WHERE `entry`=1748;

-- Assign gossip menu to King Magni Bronzebeard.
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (61481, 'Within me is the earth itself. We are one. I am of it and it of me. I listen for the mountain\'s reply.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (61481, 61481, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (61481, 61481, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (61481, 0, 0, 'I need the response from Ironforge.', 0, 1, 1, -1, 0, 6148101, 0, 0, NULL, 0, 83027);
DELETE FROM `gossip_scripts` WHERE `id`=6148101;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6148101, 0, 0, 17, 83017, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'King Magni Bronzebeard - Create Item Sealed Response from Ironforge');
UPDATE `creature_template` SET `gossip_menu_id`=61481 WHERE `entry`=2784;

-- Assign gossip menu to High Tinker Mekkatorque.
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (41449, 0, 0, 'I need the response from Gnomeregan.', 0, 1, 1, -1, 0, 4144901, 0, 0, NULL, 0, 83029);
DELETE FROM `gossip_scripts` WHERE `id`=4144901;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(4144901, 0, 0, 17, 83019, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Tinker Mekkatorque - Create Item Sealed Response from Gnomeregan');

-- Assign gossip menu to Tyrande Whisperwind.
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (61480, 'When I first became the Night Warrior, it was with full knowledge that I might very well sacrifice my life to attain justice for the kaldorei. Such is often the fate of those who channel Elune\'s unmitigated fury.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (61480, 61480, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (61480, 61480, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (61480, 0, 0, 'I need the response from Darnassus.', 0, 1, 1, -1, 0, 6148001, 0, 0, NULL, 0, 83028);
DELETE FROM `gossip_scripts` WHERE `id`=6148001;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6148001, 0, 0, 17, 83018, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tyrande Whisperwind - Create Item Sealed Response from Darnassus');
UPDATE `creature_template` SET `gossip_menu_id`=61480 WHERE `entry`=7999;

-- 83015:  Not (Target Has Done Quest 40371)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83015, 8, 40371, 0, 0, 0, 1);
-- 83016: Target Has Done Quest 40372
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83016, 8, 40372, 0, 0, 0, 0);
-- 83017: Target Has Done Quest 40373
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83017, 8, 40373, 0, 0, 0, 0);
-- 83018: Target Has Done Quest 40375
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83018, 8, 40375, 0, 0, 0, 0);
-- 83019: Target Has Done Quest 40374
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83019, 8, 40374, 0, 0, 0, 0);
-- 83026: (83015:  Not (Target Has Done Quest 40371)) And (83016: Target Has Done Quest 40372)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83026, -1, 83015, 83016, 0, 0, 0);
-- 83027: (83015:  Not (Target Has Done Quest 40371)) And (83017: Target Has Done Quest 40373)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83027, -1, 83015, 83017, 0, 0, 0);
-- 83028: (83015:  Not (Target Has Done Quest 40371)) And (83018: Target Has Done Quest 40375)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83028, -1, 83015, 83018, 0, 0, 0);
-- 83029: (83015:  Not (Target Has Done Quest 40371)) And (83019: Target Has Done Quest 40374)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (83029, -1, 83015, 83019, 0, 0, 0);
