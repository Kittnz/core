-- Add trick or treat option to Rosarth Valebright.
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES 
(41483, 0, 0, 'Trick or Treat!', 10693, 1, 1, -1, 0, 342, 0, 0, NULL, 0, 164),
(41483, 1, 5, 'Make this inn my home.', 2822, 8, 128, 0, 0, 0, 0, 0, '', 0, 0),
(41483, 2, 0, 'What can I do at an inn?', 4308, 1, 1, 1221, 0, 0, 0, 0, '', 0, 0),
(41483, 3, 1, 'I want to browse your goods.', 3370, 3, 4, 0, 0, 0, 0, 0, '', 0, 0);
