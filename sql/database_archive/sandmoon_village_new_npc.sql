-- SANDMOON VILLAGE NPCS FOR PTR:
-- Champion Taza'go, Faction 83,  display ID 18808, level 50 elite, weapon 1 : 5289, quest/greeting flags, humanoid, greeting :"So, you be from the Horde, yes? \n\n My name be Taza'go, I once fought beneath Ukorz Sandscalp as his champion, but those times be long passed mon.\n\n The Sandfury be scattered, and disillusioned. Others left before, and after we did, it not be long until Zul'Farrak is left an abandoned ruin for everything evil, and cursed that took place in that city.\n\n Perhaps you can help us, for we need it."
-- Ekka, display ID 18809, Faction 83, level 42, no weapon, quest/greeting flags, humanoid, greeting : "Don't be scared, Viceclaw don't be pinchin' nobody I don't tell em too!"
-- Hingozu <Specialty Leather Armor>, display ID 18810, Faction 83, level 45, weapon : 2092, vendor/greeting flags/repair, humanoid, greeting : "Hey mon, we don't get many visitors in this village. I work on the leather here, you looking for anything specific?"
-- Seer Maz'ek, display ID 18811 , Faction 83, level 48, no weapon, quest/greeting flags, humanoid, greeting : "The ancestors be upset with our actions in the old city. I seek guidance for how to gain redemption, and to lead us to a new destiny, away from the taint of Sandfury evil."
-- Tinubi, display ID 18812, Faction 83, level 43, weapon1 : 37, quest/greeting flags, humanoid, greeting : "Welcome to Sandmoon Village, this place is lead by Taza'go, he is leader here, one I would trust to follow to the ends of this earth mon. \n\n If anyone can restore our lost honor, it be him."
-- Yaz'rik, display ID 18813, Faction 83, level 48, weapon1 : 12249, quest/greeting flags, humanoid, greeting : "Be careful in Tanaris, it is a harsh place for outsiders, void of water. \n\n The sun itself has withered away the strongest of our kind, don't think yourself immortal to the heat."
-- Viceclaw, display ID 2488, Faction 83 scale 1.8, level 45, no weapon, no flags, BEAST 
-- Rename NPC Hateforge Fireblade (60725), to Twilight Fireblade
-- Rename NPC Hateforge Shadowcaller (60726) to Twilight Shadowcaller

update creature_template set name = 'Twilight Shadowcaller' where entry = 60726;
update creature_template set name = 'Twilight Fireblade' where entry = 60725;

REPLACE INTO creature_template VALUES
(60749, 18808, 0, 0, 0, 'Champion Taza\'go', NULL, 0, 50, 50, 3643, 3643, 0, 0, 3272, 83, 3, 1, 1.14286, 0, 20, 5, 40, 1, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60750, 18809, 0, 0, 0, 'Ekka', NULL, 0, 42, 42, 1981, 1981, 0, 0, 2246, 83, 3, 1, 1.14286, 0, 18, 5, 40, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60751, 18810, 0, 0, 0, 'Hingozu', 'Specialty Leather Armor', 0, 45, 45, 2200, 2200, 0, 0, 2600, 83, 16389, 1, 1.14286, 1, 18, 5, 40, 0, 1, 78, 95, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 119, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60752, 18811, 0, 0, 0, 'Seer Maz\'ek', NULL, 0, 48, 48, 2800, 2800, 0, 0, 2386, 83, 3, 1, 1.14286, 0, 18, 5, 40, 0, 1, 77, 96, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 1500, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60753, 18812, 0, 0, 0, 'Tinubi', NULL, 0, 43, 43, 1981, 1981, 0, 0, 2246, 83, 3, 1, 1.14286, 0, 18, 5, 40, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 103, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60754, 18813, 0, 0, 0, 'Yaz\'rik', NULL, 0, 48, 48, 2800, 2800, 0, 0, 2386, 83, 3, 1, 1.14286, 0, 18, 5, 40, 0, 1, 77, 96, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 1500, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60755, 2488, 0, 0, 0, 'Viceclaw', NULL, 0, 45, 45, 2200, 2200, 0, 0, 2600, 83, 0, 1, 1.14286, 1.8, 18, 5, 40, 0, 1, 78, 95, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 119, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20097; set @weapon_1 = 12249; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60754;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20096; set @weapon_1 = 37; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60753;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20095; set @weapon_1 = 2092; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60751;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20094; set @weapon_1 = 5289; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60749;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41109; set @magic_number = 60754;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Be careful in Tanaris, it is a harsh place for outsiders, void of water.\n\nThe sun itself has withered away the strongest of our kind, don\'t think yourself immortal to the heat.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41108; set @magic_number = 60753;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to Sandmoon Village, this place is lead by Taza\'go, he is leader here, one I would trust to follow to the ends of this earth mon.\n\nIf anyone can restore our lost honor, it be him.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41107; set @magic_number = 60752;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The ancestors be upset with our actions in the old city. I seek guidance for how to gain redemption, and to lead us to a new destiny, away from the taint of Sandfury evil.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41106; set @magic_number = 60751;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hey mon, we don\'t get many visitors in this village. I work on the leather here, you looking for anything specific?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41105; set @magic_number = 60750;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Don\'t be scared, Viceclaw don\'t be pinchin\' nobody I don\'t tell em too!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41104; set @magic_number = 60749;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'So, you be from the Horde, yes?\n\nMy name be Taza\'go, I once fought beneath Ukorz Sandscalp as his champion, but those times be long passed mon.\n\nThe Sandfury be scattered, and disillusioned. Others left before, and after we did, it not be long until Zul\'Farrak is left an abandoned ruin for everything evil, and cursed that took place in that city.\n\nPerhaps you can help us, for we need it.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES
(60751, 851, 0, 0, 0, 0),
(60751, 852, 0, 0, 0, 0),
(60751, 853, 0, 0, 0, 0),
(60751, 854, 0, 0, 0, 0),
(60751, 922, 0, 0, 0, 0),
(60751, 923, 0, 0, 0, 0),
(60751, 924, 0, 0, 0, 0),
(60751, 925, 0, 0, 0, 0),
(60751, 926, 0, 0, 0, 0),
(60751, 927, 0, 0, 0, 0),
(60751, 928, 0, 0, 0, 0),
(60751, 1196, 0, 0, 0, 0),
(60751, 1197, 0, 0, 0, 0),
(60751, 1198, 0, 0, 0, 0),
(60751, 2024, 0, 0, 0, 0),
(60751, 2025, 0, 0, 0, 0),
(60751, 2026, 0, 0, 0, 0),
(60751, 2027, 0, 0, 0, 0),
(60751, 2028, 0, 0, 0, 0),
(60751, 2029, 0, 0, 0, 0),
(60751, 2030, 0, 0, 0, 0),
(60751, 2207, 0, 0, 0, 0),
(60751, 2208, 0, 0, 0, 0),
(60751, 2209, 0, 0, 0, 0),
(60751, 2507, 0, 0, 0, 0),
(60751, 2512, 0, 0, 0, 0),
(60751, 2515, 0, 0, 0, 0),
(60751, 3026, 0, 0, 0, 0),
(60751, 5439, 0, 0, 0, 0),
(60751, 11362, 0, 0, 0, 0),
(60751, 15903, 0, 0, 0, 0),
(60751, 15904, 0, 0, 0, 0),
(60751, 15905, 0, 0, 0, 0),
(60751, 15906, 0, 0, 0, 0),
(60751, 15907, 0, 0, 0, 0),
(60751, 15909, 0, 0, 0, 0);

REPLACE INTO creature_display_info_addon VALUES
(18808, 0, 0, 0, 0),
(18809, 0, 0, 0, 0),
(18810, 0, 0, 0, 0),
(18811, 0, 0, 0, 0),
(18812, 0, 0, 0, 0),
(18813, 0, 0, 0, 0);
