update creature_template set speed_walk = 1 where entry = 80506;
update creature_template set equipment_id = 0, name = '\'Sly\' Duncan' where entry = 92022;

replace into npc_vendor values (92022, 4604, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4605, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4606, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4607, 0, 0, 0, 0);
replace into npc_vendor values (92022, 4608, 0, 0, 0, 0);
replace into npc_vendor values (92022, 8948, 0, 0, 0, 0); 
 
set @equip_template = 56020; set @weapon_1 = 15269; set @weapon_2 = 0; set @creature = 91968;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

update creature_template set display_id1 = 2437 where entry = 91961;
update creature_template set display_id1 = 2437 where entry = 91960;

replace into creature_template values 
(92130, 0, 6825, 0, 0, 0, 'Speaker Gnarr', '', 0, 32, 32, 1221, 1221, 2000, 2000, 1200, 11, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 46, 58, 0, 132, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 48.7872, 67.0824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 3, 1070, 0, 0, 0, 0, 524298, 0, ''),
(92131, 0, 6825, 0, 0, 0, 'Speaker Ragnaf', '', 0, 32, 32, 1221, 1221, 2000, 2000, 1200, 11, 2, 1, 1.14286, 0, 20, 5, 0, 0, 1, 46, 58, 0, 132, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 48.7872, 67.0824, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0, 3, 1070, 0, 0, 0, 0, 524298, 0, ''),
(92132, 0, 1896, 0, 0, 0, 'Swordsman Daelus', '', 0, 35, 35, 2440, 2440, 0, 0, 1373, 11, 2, 1, 1.14286, 0, 20, 5, 0, 1, 1, 160, 205, 0, 138, 1, 1500, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 42.588, 58.5585, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 1, 0, 3, 234, 0, 0, 0, 0, 524298, 0, ''),
(92133, 0, 6989, 0, 0, 0, 'Inuvias Brightlance', '', 0, 40, 40, 10668, 10668, 1000, 1000, 1964, 87, 0, 1.05, 1.14286, 0, 20, 5, 0, 1, 1, 215, 276, 0, 156, 1, 1316, 2000, 1, 32832, 0, 0, 0, 0, 0, 0, 47.4944, 65.3048, 100, 7, 0, 2597, 2597, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 25970, 0, 533, 700, '', 0, 3, 0, 0, 3, 2597, 0, 0, 0, 0, 0, 0, '');

update creature_template set faction = 82, equipment_id = 0, npc_flags = 2 where entry = 92130;
update creature_template set faction = 35, equipment_id = 0, npc_flags = 3 where entry = 92131;
update creature_template set faction = 35, equipment_id = 0, npc_flags = 3 where entry = 92132;
update creature_template set faction = 35, equipment_id = 0, npc_flags = 3 where entry = 92133;

set @gossip_menu_id = 60180; set @magic_number = 92132; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am bound to my duty.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60181; set @magic_number = 92133; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The world has changed a lot, and it seems so very different from when I left it.\n\nSomething lingers within the air, but I cannot see it, there is something amiss, but my thoughts are muddled, and almost lost to themselves.\n\nI can see you though, you are in a place that I once called home, that many of my people called home, lost to the ages of time.\n\nI don\'t know why I am here again, but you will aid me.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @equip_template = 56021; set @weapon_1 = 15211; set @weapon_2 = 80543; set @creature = 92132;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56022; set @weapon_1 = 12421; set @weapon_2 = 80543; set @creature = 92133;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0); 
update creature_template set equipment_id = @equip_template where entry = @creature;

replace into creature_template_addon values (92132, 0, 0, 0, 0, 0, 0, 0, 9617);
replace into creature_template_addon values (92133, 0, 0, 0, 0, 0, 0, 0, 9617);