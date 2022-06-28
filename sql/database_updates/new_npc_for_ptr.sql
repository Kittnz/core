-- name = 'Recluta', subname = 'Conquistadores', level = 40, display_id1 = 6944, display_id2 = 796, display_id3 = 6946, display_id4 = 6948, equipment_id = 1563
-- name = 'Xoro III', subname = 'Conquistadores', level = 50, display_id1 = 4657, equipment_id = 2546. Apply aura 9617 to him to have him appear ghostly. Make him have the following dialog: "Saludos camarada. Me alegra ver a alguien con tanta energia y ganas como tu. Alguna vez estube vivo como tu, ahora no soy mas que escombros y no se como sigo aquí. Tengo la sensacion que he reencarnado varias veces en este mundo.\n\nRecuerdos borrosos vienen a mi… ¿un cofre? Cuidado! Esta lleno de trampas, es un suicidio!… me ahogo, creo que en la proxima vida aprendere a nadar… uff no se que ha sido eso pero lo recuerdo y me da escalofrios aunque ahora soy un espiritu. Mejor ten eso en cuenta."
-- Farad Wrightsow, display ID 18913, level 25, faction 11, weapon 1 :3902, humanoid , quest/greeting flags, greeting text : "Get out of my shack."
-- Foreman Tanoth <Kirin Tor> , display ID 18914, level 50, faction 76, weapon1 :9488, humanoid , quest/greeting flags, greeting text : "Watch yourself, the Garrison Armory has been over run."
-- Hansu Go'sha , display ID 18915, level 42, faction 35, weapon1 : 19014, undead, quest/greeting flags, greeting text : "The howling winds of Tanaris whisper things to me, and I can not speak back... Strange it is to be lost like this." (HANSU GOSHA MUST HAVE THE GHOST EFFECT)
-- Soja , display ID 18916, level 44, faction 83, weapon1 :12943, humanoid, quest/greeting flags, greeting text : "Make yourself welcome here, there be a lot to do!"
-- Maltimor Gartside, display ID 18917, faction 11, weapon1 : 9513, humanoid, quest/greeting flags, greeting text : "Westfall. Once, land of prosperity. Now, nothing more than a wasteland."
-- Gazzirik, display ID 7182, faction 35, weapon1 : 3198, humanoid, quest/greeting flags, greeting text : "I'm busy, pal."
REPLACE INTO creature_template VALUES
(60854, 18913, 0, 0, 0, 'Farad Wrightsow', '', 0, 25, 25, 712, 712, 0, 0, 1009, 11, 3, 1, 1.14286, 0, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60855, 18914, 0, 0, 0, 'Foreman Tanoth', 'Kirin Tor', 0, 50, 50, 2990, 2990, 0, 0, 2958, 76, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60856, 18915, 0, 0, 0, 'Hansu Go\'sha', '', 0, 42, 42, 1981, 1981, 0, 0, 2246, 35, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60857, 18916, 0, 0, 0, 'Soja', '', 0, 44, 44, 2159, 2159, 0, 0, 3568, 83, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 67, 82, 0, 182, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60858, 18917, 0, 0, 0, 'Maltimor Gartside', '', 0, 25, 25, 712, 712, 0, 0, 1009, 11, 3, 1, 1.14286, 0, 18, 5, 40, 0, 1, 31, 40, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 38.72, 53.24, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60859, 7182, 0, 0, 0, 'Gazzirik', '', 0, 42, 42, 1981, 1981, 0, 0, 2246, 35, 3, 1, 1.14286, 0, 18, 5, 0, 0, 1, 64, 79, 0, 172, 1, 2000, 2000, 1, 768, 0, 0, 0, 0, 0, 0, 58.7664, 80.8038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60860, 4657, 0, 0, 0, 'Xoro III', 'Conquistadores', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 2546, 0, 0, 0, 0, 0, 0, ''),
(60861, 6944, 796, 6946, 6948, 'Recluta', 'Conquistadores', 0, 40, 40, 2628, 2628, 0, 0, 1964, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 57, 70, 0, 156, 1, 1600, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 1563, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20145; set @weapon_1 = 3198; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60859;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20144; set @weapon_1 = 9513; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60858;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20143; set @weapon_1 = 12943; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60857;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20142; set @weapon_1 = 19014; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60856;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20141; set @weapon_1 = 9488; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60855;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20140; set @weapon_1 = 3902; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60854;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41166; set @magic_number = 60860;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, '"Saludos camarada. Me alegra ver a alguien con tanta energia y ganas como tu. Alguna vez estube vivo como tu, ahora no soy mas que escombros y no se como sigo aquí. Tengo la sensacion que he reencarnado varias veces en este mundo.\n\nRecuerdos borrosos vienen a mi... ¿un cofre? Cuidado! Esta lleno de trampas, es un suicidio!... me ahogo, creo que en la proxima vida aprendere a nadar... uff no se que ha sido eso pero lo recuerdo y me da escalofrios aunque ahora soy un espiritu. Mejor ten eso en cuenta.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41163; set @magic_number = 60859;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I\'m busy, pal.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41162; set @magic_number = 60858;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Westfall. Once, land of prosperity. Now, nothing more than a wasteland.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41161; set @magic_number = 60857;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Make yourself welcome here, there be a lot to do!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41160; set @magic_number = 60856;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The howling winds of Tanaris whisper things to me, and I can not speak back... Strange it is to be lost like this.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41159; set @magic_number = 60855;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Watch yourself, the Garrison Armory has been over run.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41158; set @magic_number = 60854;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Get out of my shack.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO creature_template_addon VALUES
(60856, 0, 0, 0, 0, 0, 0, 9617),
(60860, 0, 0, 0, 0, 0, 0, 9617);