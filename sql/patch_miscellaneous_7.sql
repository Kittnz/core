update creature_template set rank = 0 where entry = 91969;
update creature_template set rank = 0 where entry = 91970;
update creature_template set rank = 0 where entry = 91971;
update creature_template set display_id1 = 17875, display_id2 = 0, display_id3 = 0 where entry = 91975;
update creature_template set npc_flags = 2 where entry = 91980;
update creature_template set npc_flags = 2 where entry = 91981;
update creature_template set npc_flags = 2 where entry = 91978;
update creature_template set npc_flags = 2 where entry = 91979;
update creature_template set unit_flags = 0, faction = 16 where entry = 91958;

set @equip_template = 55158; set @weapon_1 = 2092; set @weapon_2 = 0; set @creature = 91773;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

update creature_template set name = 'Wallowfin Murloc' where entry = 91857;

delete from page_text where entry = 50504;
replace into page_text (entry, text, next_page) value (50504,'Recon over Azshara 22.03 04:22-05:55\n\nRecon over Winterspring 01.04 14:33-15:03\n\nRecon over Blue Dragons in Azshara 06.04 15:22-15:51\n\nRecon over Icepoint Rock north of Winterspring 07.04 05:22-09:31',3456); 
replace into page_text (entry, text, next_page) value (3456,'Transfering supplies to Icepoint Rock 09.04 05:31-10:50\n\n13.04 05:12-09:20 Established base at Icepoint Rock north of Winterspring\n\nRecon over Winterspring 18.04 20:03-22:14\n\nFlight to Icepoint Rock 03.05 06:04-',0); 

-- Duchess Grelda (91711)
-- Greetings Line: Go on, I'm listening.
-- Aggro Line: Sadly, you came all this way only to die.
--------------------------------------------------------
-- Duke Nargelas (91712)
-- Greetings Line: This better not be a waste of time.
-- Aggro Line: Get your filthy hands off of me!
--------------------------------------------------------
-- Apothecary Volgrin (91713)
-- Greetings Line: Are you here to assist me $c?
--------------------------------------------------------
-- Norga (91720)
-- Greetings Line: What can Norga do for you $r?
--------------------------------------------------------
-- Bounty Hunter Knox (91749)
-- Greetings Line: Make it quick $c, I'm rather busy.
--------------------------------------------------------
-- Gorck (91973)
-- Greetings Line: Strenght and Honor $r, what do you need?
--------------------------------------------------------
-- Apothecary Villa (91750)
-- Greetings Line: Have you come to serve the Dark Lady?

-- TODO ASSIGN CORRECT FLAGS.

set @gossip_menu_id = 60130; set @magic_number = 91711; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Go on, I\'m listening.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60131; set @magic_number = 91712; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This better not be a waste of time.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60132; set @magic_number = 91713; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Are you here to assist me, $c?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60133; set @magic_number = 91720; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What can Norga do for you, $r?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60134; set @magic_number = 91749; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Make it quick, $c, I\'m rather busy.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60135; set @magic_number = 91973; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Strenght and Honor $r, what do you need?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60136; set @magic_number = 91750; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Have you come to serve the Dark Lady?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

