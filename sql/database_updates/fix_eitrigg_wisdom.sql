INSERT INTO `gossip_menu` VALUES 
(2901, 3573, 0),
(2902, 3580, 0),
(2903, 3579, 0),
(2904, 3578, 0),
(2905, 3577, 0),
(2906, 3576, 0),
(2907, 3575, 0),
(2908, 3574, 0);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4941, 9, 4941, 1, 0, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `action_script_id`, `condition_id`) VALUES 
(2901, 0, 0, 'Hello, Eitrigg. I bring news from Blackrock Spire.', 5990, 1, 1, 2908, 0, 0, 0, NULL, 0, 0, 4941),
(2902, 0, 0, 'As you wish, Eitrigg.', 6004, 1, 1, -1, 0, 0, 0, NULL, 0, 2902, 0),
(2903, 0, 0, 'Perhaps there exists a way?', 6002, 1, 1, 2902, 0, 0, 0, NULL, 0, 0, 0),
(2904, 0, 0, 'Ah, so that is how they pushed the Dark Iron to the lower parts of the Spire.', 6000, 1, 1, 2903, 0, 0, 0, NULL, 0, 0, 0),
(2905, 0, 0, 'I will take you up on that offer, Eitrigg.', 5998, 1, 1, 2904, 0, 0, 0, NULL, 0, 0, 0),
(2906, 0, 0, 'Hearthglen?? But...\n', 5996, 1, 1, 2905, 0, 0, 0, NULL, 0, 0, 0),
(2907, 0, 0, 'What do you mean?', 5994, 1, 1, 2906, 0, 0, 0, NULL, 0, 0, 0),
(2908, 0, 0, 'There is only one Warchief, Eitrigg!', 5992, 1, 1, 2907, 0, 0, 0, NULL, 0, 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=2902;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (2902, 0, 7, 4941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Complete Quest Eitrigg\'s Wisdom');
UPDATE `creature_template` SET `gossip_menu_id`=2901, `script_name`='' WHERE `entry`=3144;