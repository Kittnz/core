-- add the following greeting text to https://database.turtle-wow.org/?npc=60917.
set @gossip_menu_id = 41415; set @magic_number = 60917;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My kingdom has crumbled to dust, my subjects long gone, and my memories fading. But yet, I remain here, a haunting reminder of the greatness that once was. What brings you to my forgotten realm?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
