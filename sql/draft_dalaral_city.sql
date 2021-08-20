replace into creature_template values 
(91350, 0, 3718, 3719, 0, 0, 'Magus Bromley', 'Kirin Tor', 0, 50, 50, 2953, 2992, 5553, 5680, 742, 76, 0, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 52, 0, 138, 1, 2000, 2000, 8, 32768, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 2358, 2358, 0, 0, 0, 0, 50, 0, 0, 20815, 16, 1645, 0, 23580, 0, 47, 67, 'EventAI', 1, 3, 0, 0, 3, 2358, 0, 0, 0, 0, 0, '');

update creature_template set faction = 1914 where entry = 91350;

set @gossip_menu_id = 60109; set @magic_number = 91350; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Dalaran may have been shattered but we still do our work for the greater knowledge of magic.'); replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
