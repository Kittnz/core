set @gossip_menu_id = 41165; set @magic_number = 8934;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (30022, 'The times are tough, but there\'s always opportunity for business.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, 30022);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
update creature_template set npc_flags = 7 where entry = @magic_number;

set @gossip_menu_id = 41164; set @magic_number = 3091;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (30021, 'Take a look upon my wares. I am the best tailor in this lightforsaken town.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, 30021);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
update creature_template set npc_flags = 7 where entry = @magic_number;