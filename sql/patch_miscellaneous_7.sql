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
