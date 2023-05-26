-- NPCS FOR VAGRANT CAMP:
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20403, 0, 0, 0, 0),
(20404, 0, 0, 0, 0);

REPLACE INTO creature_template VALUES
(61534, 1713, 0, 0, 0, 0, 'Councilor Ravencrest', NULL, 0, 42, 42, 2059, 2059, 0, 0, 3568, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 67, 82, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 78, 107, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61535, 3281, 0, 0, 0, 0, 'Camp Leader Gethenor', NULL, 0, 42, 42, 2059, 2059, 0, 0, 3568, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 67, 82, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 78, 107, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61536, 1696, 0, 0, 0, 0, 'Camp Chef Velden', 'Meat Vendor', 0, 40, 40, 1752, 1752, 0, 0, 1890, 84, 7, 1, 1.14286, 1, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 8, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 97, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61537, 1508, 0, 0, 0, 0, '\'Quaking\' Kevin', NULL, 0, 40, 40, 1752, 1752, 0, 0, 1890, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 8, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 75, 97, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61538, 3553, 3554, 0, 0, 0, 'Vagrant Camp Refugee', NULL, 0, 38, 38, 1599, 1599, 0, 0, 1780, 84, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61539, 3664, 0, 0, 0, 0, 'Clerk Ebonmere', NULL, 0, 38, 38, 1599, 1599, 0, 0, 1780, 84, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 66, 91, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61540, 20404, 0, 0, 0, 0, 'Corporal Ranworth', NULL, 0, 50, 50, 2990, 2990, 0, 0, 2958, 84, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61541, 20403, 0, 0, 0, 0, 'Brigade Footman', 'Gilneas Brigade', 0, 55, 55, 7842, 7842, 0, 0, 4500, 84, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 310, 400, 0, 248, 1, 2000, 2000, 1, 268439552, 0, 0, 0, 0, 0, 0, 58.872, 80.949, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20401; set @weapon_1 = 2496; set @weapon_2 = 61241; set @weapon_3 = 0; set @creature = 61541;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20400; set @weapon_1 = 1412; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61540;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20399; set @weapon_1 = 0; set @weapon_2 = 12863; set @weapon_3 = 0; set @creature = 61539;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20398; set @weapon_1 = 2092; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61538;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20397; set @weapon_1 = 2827; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61536;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20396; set @weapon_1 = 15231; set @weapon_2 = 15113; set @weapon_3 = 0; set @creature = 61535;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20395; set @weapon_1 = 60198; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61534;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41490; set @magic_number = 61540;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We once served Gilneas with great pride. It is an odd feeling to be fighting against the powers that hold it hostage.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41489; set @magic_number = 61539;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Ravenshire. We are accommodating to the plight of those affected by the tyranny of Greymane.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41488; set @magic_number = 61537;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Did you hear that?!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41487; set @magic_number = 61536;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It takes a lot of thinking to make a limited amount of food last for a large group of people.$B$BSawdust can be used to thicken or increase portions of food.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41486; set @magic_number = 61535;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I expected Gilneas to be a safe haven for us refugees. I never imagined it would be as bad as Silvepine Forest.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41485; set @magic_number = 61534;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Remember to be careful walking these roads. Dark times have arrived in Gilneas, and only through vigilance can it be restored.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Vendor list: Camp Chef Velden.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 1, 117, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 2, 2287, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 3, 3770, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 4, 3771, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 5, 4599, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61536, 6, 8952, 0, 0, 0, 0);

-- Npc Frell Rosewick set scale to 1.
update creature_template set scale = 1 where entry = 61381;
-- Change NPC ID 61533 to have a scale of 2.
update creature_template set scale = 2 where entry = 61533;
-- NPC Hailey Everton change faction to 84.
update creature_template set faction = 84 where entry = 61280;
-- NPC Sergeant Arbington (Entry 61265) add subname <Gilneas Brigade>
update creature_template set subname = 'Gilneas Brigade' where entry = 61265;
