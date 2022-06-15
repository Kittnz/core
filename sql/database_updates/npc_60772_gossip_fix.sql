set @gossip_menu_id = 41120; set @magic_number = 60772;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am Councillor to Karfang, I advise him on all matters. Both internal and foreign.\n\nPerhaps you bring news from beyond this charred valley?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;