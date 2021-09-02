update item_template set display_id = 23292 where entry = 60127;

set @gossip_menu_id = 60115; set @magic_number = 2543; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am Ansirem Runeweaver, the one in charge of our external affairs.\n\nThe Kirin Tor has survived the onslaught of the demons and are currently rebuilding Dalaran.\n\nI am afraid I cannot let you within our shield of protection, nor offer you shelter aside from the ruins nearby.\n\n Perhaps you have come for a different reason?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;