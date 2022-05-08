-- NPCs Theramore Alliance quests:
-- Colonel Breen, display ID 18802, faction 150, greetings/quest flags, greeting text: "Welcome to Theramore, make yourself at ease, I am Colonel Breen, and I lead many of the operations here within the city.\n\n We are always looking for a pair of brave hands, perhaps you can assist.", weapon1:1194, humanoid
-- Old Bryan, display ID 18803, faction 150, greeting/quest flags, greeting text: "Someones gotta keep this lighthouse running, and I suppose that someone is me.\n\n I got a lot of work to do, you need anything?" no weapons, humanoid
-- Captain Wallace Cross, display ID 18804, faction 150, greeting/quest flags, greeting text: "It's dangerous out here, no doubt about that! Especially with all of the wildlife lurking around." , weapon 15211 , humanoid
-- Captain Harker, display ID 18805, faction 150, greeting/quest flags, greeting text : "We have a lot of work to do here on the frontier, so unless you're here to help, please do let me work.", weapon 15259, humanoid
-- Magus Halister, display ID 18806, faction 150, 5000 mana, greeting/quest flags, greeting text: "We have all sorts of books stored, chaptering much of the things we have come across within Kalimdor. If you're seeking some rare knowledge, you've certainly come to the right place.", weapon 13750 , humanoid
-- Sergeant Terresa, display ID 18807, faction 150, greeting/quest flags, greeting text: "The shores have been growing more concerning as of late, let us pray that things will not escalate further.", weapon 10761 , humanoid
-- Dockmaster Lorman, display ID 191, faction 150, greeting/quest flags, greeting text: "The docks are my domain, if you have anything that needs to be sent, or delivered, let me know.", humanoid

REPLACE INTO creature_template VALUES
(60727, 18802, 0, 0, 0, 'Colonel Breen', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 150, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60728, 18803, 0, 0, 0, 'Old Bryan', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 150, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60729, 18804, 0, 0, 0, 'Captain Wallace Cross', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 150, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60730, 18805, 0, 0, 0, 'Captain Harker', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 150, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60731, 18806, 0, 0, 0, 'Magus Halister', NULL, 0, 55, 55, 3643, 3643, 5000, 5000, 3272, 150, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60732, 18807, 0, 0, 0, 'Sergeant Terresa', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 150, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60733, 191, 0, 0, 0, 'Dockmaster Lorman', NULL, 0, 55, 55, 3643, 3643, 0, 0, 3272, 150, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20090; set @weapon_1 = 10761; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60732;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20089; set @weapon_1 = 13750; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60731;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20088; set @weapon_1 = 15259; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60730;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20087; set @weapon_1 = 15211; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60729;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20086; set @weapon_1 = 1194; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60727;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41103; set @magic_number = 60733;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The docks are my domain, if you have anything that needs to be sent, or delivered, let me know.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41102; set @magic_number = 60732;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The shores have been growing more concerning as of late, let us pray that things will not escalate further.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41101; set @magic_number = 60731;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We have all sorts of books stored, chaptering much of the things we have come across within Kalimdor. If you\'re seeking some rare knowledge, you\'ve certainly come to the right place.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41100; set @magic_number = 60730;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We have a lot of work to do here on the frontier, so unless you\'re here to help, please do let me work.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41099; set @magic_number = 60729;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It\'s dangerous out here, no doubt about that! Especially with all of the wildlife lurking around.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41098; set @magic_number = 60728;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Someones gotta keep this lighthouse running, and I suppose that someone is me.\n\nI got a lot of work to do, you need anything?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41097; set @magic_number = 60727;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Theramore, make yourself at ease, I am Colonel Breen, and I lead many of the operations here within the city.\n\nWe are always looking for a pair of brave hands, perhaps you can assist.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO creature_display_info_addon VALUES
(18802, 0, 0, 0, 0),
(18803, 0, 0, 0, 0),
(18804, 0, 0, 0, 0),
(18805, 0, 0, 0, 0),
(18806, 0, 0, 0, 0),
(18807, 0, 0, 0, 0);