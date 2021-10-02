-- Maul'ogg Enforcer , display ID 10704 , scale 1.35 , weapon 7230 , faction 29, level 55
-- Blatarg , display ID 10704, scale 1.4 ,weapon1 :13820 weapon2 1906 , faction 29, level 52, greeting text: "Little one here to help? You sure you can help?"
-- Garto'ogg <General Supplies> , display ID 3193, level 52 , scale 1.2, faction 29 , greeting text : "Need food? Need stuff? I got stuff, can you afford stuff?" , SELLS GENERAL GOODS
-- Jarg'ukk <Armorsmith> , display ID 655, level 50 , scale 1.35, weapon 1389, faction 29, greeting text : "You need armor? Armor good for out in the wild, weapons good to, but me no make weapons! Let me see what I can make for small thing like you." , sells mail armor up to level 55
-- Enforcer Zulrokk , display ID 10704, scale 1.35, weapon 7230, faction 29, level 56, greeting text : "You not cause problem for Maul'ogg! Maul'ogg have enough problem."
-- Lord Cruk'Zogg <Lord of Maul'ogg> , display ID 11571, scale 1.5, weapon 5318, level 60 elite, greeting text : "The Maul'ogg has seen many hardships, and fought many battles on this island. We were once part of the great Gor'dosh tribe that spanned both islands. Now we have been having a hard time with even survival since the loss of the Maul'ogg Post, and the Tangled Wood.\n\n With the help of the Horde, perhaps we can rule over Giljim once again. First there are many enemies to deal with, and many scores to settle, perhaps you are here to help us?
-- Ambassador Rotog, display ID 4514, level 48 , no weapons, faction 29, greeting text : "The Horde establishes ties across Azeroth, hopefully to shift the balance of power in our favor." 
-- Explorer Fangosh, display ID 14415, level 50 weapon 1 7941, weapon 2 : 2081 , faction 29, greeting text: "Without explorers like you and me, the world would have many unknown places."
-- Thrak the Cook <Food and Drink> , display ID 655, level 44, scale 1.35 weapon 1 2196 , faction 29, SELLS FOOD AND DRINK
-- Haz'gorg the Great Seer, display ID 11539, level 53 elite scale 1.35 , no weapons, faction 29, greeting text : "It takes a lot of wisdom to see what is yet to be seen, I have predicted the fall of the Maul'ogg, and warned my people to take refuge here. There is still plenty that needs to be done in order to save the tribe. Lord Cruk'Zogg will lead our people to ruin without outside help.. Perhaps you are the one I saw in trepid dreams." 
-- Seer Jalokk , display ID 3193, scale 1.35, level 50, weapon 1 : 35, faction 29 , greeting text : "Haz'gorg has many great visions, he can see the future!"
-- Seer Borgorr , display ID 3193, scale 1.35, level 50, weapon 1 :35, faction 29 , greeting text : "Do not disturb the Great Seer if it is not required, he might be having a vision."
-- Flaz Fusemix , display ID 7182 , scale 1, level 46, faction 1682, no weapons, greeting text : "Ugh.. Stuck in this jungle, with ogres and trolls, can you imagine?... Well I'm imagining BIG right now pal."
-- Yeggle Powderscrew, display ID 7193, scale 1, level 47, faction 1682, no weapons, greeting text : "Look at that, you're not an ogre! I'm in need of some help kid, think you can be of assistance?"
-- Windo , display ID 4074, scale 1, level 49, faction 29, weapon 1 : 7326, 
-- Jubo, display ID 9261, scale 1, level 51, faction 29, no weapons, greeting text : "The Razzari are slipping into madness. They murder those they deem as traitors, and they ally themselves with the Hazzuri who practice once forbidden dark magics."
-- Blazno Blastpipe, display ID 7183, level 48 , faction 1682, no weapons, greeting text : "I was lucky to survive that wreck, only to be trapped in this wasteland." , quest giver flags
-- Yei'zo , display ID 4082, level 50, faction 29, no weapon, quest giver

replace into creature_template values
(92175, 7, 10704, 0, 0, 0, 'Maul\'ogg Enforcer', '', 0, 55, 55, 2614, 2614, 0, 0, 4500, 29, 2, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 362, 440, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 258.261, 360.038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92176, 7, 10704, 0, 0, 0, 'Blatarg', '', 0, 52, 52, 2500, 2500, 0, 0, 4400, 29, 3, 1, 1.14286, 1.4, 20, 5, 0, 0, 1, 362, 440, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 258.261, 360.038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92177, 7, 3193, 0, 0, 0, 'Garto\'ogg', 'General Supplies', 0, 52, 52, 2500, 2500, 0, 0, 4400, 29, 7, 1, 1.14286, 1.2, 20, 5, 0, 0, 1, 362, 440, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 258.261, 360.038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92178, 0, 655, 0, 0, 0, 'Jarg\'ukk', 'Armorsmith', 0, 50, 50, 2768, 2768, 0, 0, 3000, 29, 7, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 85, 109, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92179, 7, 10704, 0, 0, 0, 'Enforcer Zulrokk', '', 0, 56, 56, 2614, 2614, 0, 0, 4500, 29, 3, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 362, 440, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 258.261, 360.038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92180, 1, 11571, 0, 0, 0, 'Lord Cruk\'Zogg', 'Lord of Maul\'ogg', 0, 60, 60, 48832, 48832, 0, 0, 3791, 29, 3, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 528, 681, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.016, 85.272, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92181, 0, 4514, 0, 0, 0, 'Ambassador Rotog', '', 0, 48, 48, 2487, 2487, 0, 0, 2246, 29, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 76, 98, 0, 212, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.6944, 87.5798, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92182, 0, 14415, 0, 0, 0, 'Explorer Fangosh', '', 0, 50, 50, 2768, 2768, 0, 0, 3000, 29, 7, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 85, 109, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92183, 0, 655, 0, 0, 0, 'Thrak the Cook', 'Food and Drink', 0, 44, 44, 2138, 2138, 0, 0, 2463, 29, 7, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 68, 88, 0, 194, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.7904, 83.5868, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92184, 0, 11539, 0, 0, 0, 'Haz\'gorg the Great Seer', '', 0, 53, 53, 7848, 7848, 0, 0, 2544, 29, 3, 1, 1.14286, 1.35, 20, 5, 0, 1, 1, 344, 444, 0, 238, 1, 1600, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.3256, 81.5727, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92185, 0, 3193, 0, 0, 0, 'Seer Jalokk', '', 0, 50, 50, 2768, 2768, 0, 0, 3000, 29, 7, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 85, 109, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92186, 0, 3193, 0, 0, 0, 'Seer Borgorr', '', 0, 50, 50, 2768, 2768, 0, 0, 3000, 29, 7, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 85, 109, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92187, 0, 7182, 0, 0, 0, 'Flaz Fusemix', '', 0, 46, 46, 2487, 2487, 0, 0, 2246, 1682, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 76, 98, 0, 212, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.6944, 87.5798, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92188, 0, 7193, 0, 0, 0, 'Yeggle Powderscrew', '', 0, 47, 47, 2487, 2487, 0, 0, 2246, 1682, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 76, 98, 0, 212, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.6944, 87.5798, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92189, 0, 4074, 0, 0, 0, 'Windo', '', 0, 49, 49, 2672, 2672, 0, 0, 2916, 29, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 81, 105, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 65.5424, 90.1208, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92190, 0, 9261, 0, 0, 0, 'Jubo', '', 0, 51, 51, 2850, 2850, 0, 0, 3000, 29, 7, 1, 1.14286, 1, 20, 5, 0, 0, 1, 85, 109, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92191, 0, 7183, 0, 0, 0, 'Blazno Blastpipe', '', 0, 48, 48, 2487, 2487, 0, 0, 2246, 1682, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 76, 98, 0, 212, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.6944, 87.5798, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92192, 0, 4082, 0, 0, 0, 'Yei\'zo', '', 0, 50, 50, 2768, 2768, 0, 0, 3000, 29, 3, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 85, 109, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 56057; set @weapon_1 = 7230; set @weapon_2 = 0; set @creature = 92175;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56058; set @weapon_1 = 13820; set @weapon_2 = 1906; set @creature = 92176;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56059; set @weapon_1 = 1389; set @weapon_2 = 0; set @creature = 92178;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56060; set @weapon_1 = 7230; set @weapon_2 = 0; set @creature = 92179;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56061; set @weapon_1 = 5318; set @weapon_2 = 0; set @creature = 92180;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56062; set @weapon_1 = 7941; set @weapon_2 = 2081; set @creature = 92182;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56063; set @weapon_1 = 2196; set @weapon_2 = 0; set @creature = 92183;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56064; set @weapon_1 = 35; set @weapon_2 = 0; set @creature = 92185;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56065; set @weapon_1 = 35; set @weapon_2 = 0; set @creature = 92186;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56066; set @weapon_1 = 7326; set @weapon_2 = 0; set @creature = 92189;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 60188; set @magic_number = 92176;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Little one here to help? You sure you can help?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60189; set @magic_number = 92177;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Need food? Need stuff? I got stuff, can you afford stuff?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60190; set @magic_number = 92178;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You need armor? Armor good for out in the wild, weapons good to, but me no make weapons! Let me see what I can make for small thing like you.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60191; set @magic_number = 92179;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'You not cause problem for Maul\'ogg! Maul\'ogg have enough problem.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60192; set @magic_number = 92180;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Maul\'ogg has seen many hardships, and fought many battles on this island. We were once part of the great Gor\'dosh tribe that spanned both islands. Now we have been having a hard time with even survival since the loss of the Maul\'ogg Post, and the Tangled Wood.\n\nWith the help of the Horde, perhaps we can rule over Giljim once again. First there are many enemies to deal with, and many scores to settle, perhaps you are here to help us?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60193; set @magic_number = 92181;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Horde establishes ties across Azeroth, hopefully to shift the balance of power in our favor.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60194; set @magic_number = 92182;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Without explorers like you and me, the world would have many unknown places.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60195; set @magic_number = 92184;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It takes a lot of wisdom to see what is yet to be seen, I have predicted the fall of the Maul\'ogg, and warned my people to take refuge here. There is still plenty that needs to be done in order to save the tribe. Lord Cruk\'Zogg will lead our people to ruin without outside help... Perhaps you are the one I saw in trepid dreams.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60196; set @magic_number = 92185;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Haz\'gorg has many great visions, he can see the future!'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60197; set @magic_number = 92186;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Do not disturb the Great Seer if it is not required, he might be having a vision.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60198; set @magic_number = 92187;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ugh... Stuck in this jungle, with ogres and trolls, can you imagine?... Well I\'m imagining BIG right now pal.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60199; set @magic_number = 92188;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Look at that, you\'re not an ogre! I\'m in need of some help kid, think you can be of assistance?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60200; set @magic_number = 92190;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Razzari are slipping into madness. They murder those they deem as traitors, and they ally themselves with the Hazzuri who practice once forbidden dark magics.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60201; set @magic_number = 92191;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I was lucky to survive that wreck, only to be trapped in this wasteland.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into npc_vendor values
-- Garto'ogg <General Supplies>
(92177, 117, 0, 0, 0, 0),
(92177, 159, 0, 0, 0, 0),
(92177, 1179, 0, 0, 0, 0),
(92177, 1205, 0, 0, 0, 0),
(92177, 1645, 0, 0, 0, 0),
(92177, 1708, 0, 0, 0, 0),
(92177, 2287, 0, 0, 0, 0),
(92177, 2515, 0, 0, 0, 0),
(92177, 2519, 0, 0, 0, 0),
(92177, 3030, 0, 0, 0, 0),
(92177, 3033, 0, 0, 0, 0),
(92177, 3770, 0, 0, 0, 0),
(92177, 3771, 0, 0, 0, 0),
(92177, 4470, 0, 0, 0, 0),
(92177, 4471, 0, 0, 0, 0),
(92177, 4497, 0, 0, 0, 0),
(92177, 4498, 0, 0, 0, 0),
(92177, 4599, 0, 0, 0, 0),
(92177, 8766, 0, 0, 0, 0),
(92177, 8952, 0, 0, 0, 0),
(92177, 11284, 0, 0, 0, 0),
(92177, 11285, 0, 0, 0, 0),
(92177, 15758, 0, 0, 0, 0),
-- Jarg'ukk <Armorsmith>
(92178, 2423, 0, 0, 0, 0),
(92178, 2424, 0, 0, 0, 0),
(92178, 2425, 0, 0, 0, 0),
(92178, 2426, 0, 0, 0, 0),
(92178, 2427, 0, 0, 0, 0),
(92178, 2428, 0, 0, 0, 0),
(92178, 3894, 0, 0, 0, 0),
(92178, 3891, 0, 0, 0, 0),
(92178, 2417, 0, 0, 0, 0),
(92178, 2422, 0, 0, 0, 0),
(92178, 2419, 0, 0, 0, 0),
(92178, 2420, 0, 0, 0, 0),
(92178, 2421, 0, 0, 0, 0),
(92178, 2418, 0, 0, 0, 0),
(92178, 1846, 0, 0, 0, 0),
(92178, 1845, 0, 0, 0, 0),
(92178, 847, 0, 0, 0, 0),
(92178, 848, 0, 0, 0, 0),
(92178, 849, 0, 0, 0, 0),
(92178, 850, 0, 0, 0, 0),
-- Thrak the Cook <Food and Drink>
(92183, 8950, 0, 0, 0, 0),
(92183, 4601, 0, 0, 0, 0),
(92183, 4544, 0, 0, 0, 0),
(92183, 4542, 0, 0, 0, 0),
(92183, 4541, 0, 0, 0, 0),
(92183, 4540, 0, 0, 0, 0),
(92183, 2595, 0, 0, 0, 0),
(92183, 2594, 0, 0, 0, 0),
(92183, 2596, 0, 0, 0, 0),
(92183, 2593, 0, 0, 0, 0),
(92183, 2723, 0, 0, 0, 0),
(92183, 8766, 0, 0, 0, 0),
(92183, 1645, 0, 0, 0, 0),
(92183, 1708, 0, 0, 0, 0),
(92183, 1205, 0, 0, 0, 0),
(92183, 1179, 0, 0, 0, 0),
(92183, 159, 0, 0, 0, 0),
(92183, 4595, 0, 0, 0, 0),
(92183, 4600, 0, 0, 0, 0),
(92183, 6651, 0, 0, 0, 0);

-- Bloodfist Grunt, display ID 14718, level 55 , weapon1 15862 , weapon2 : 2081 , faction 29
-- Grunt Har'gak , display ID 4547, level 55, weapon1 : с , faction 29, greeting text : "Blood and Thunder, Bloodfist Point is a new expedition into Azshara, have you been sent to aid?"
-- Otor Nar'gakk <Trade Supplies> , display ID 1314, level 45, no weapon , faction 29
-- Katokar Bladewind , display ID 4515, level 58, weapon 1 : 3366 , faction 29 , greeting text : "Walk softly, like a calm leaf to the winds of fate. It is never a good idea to let yourself fade away, each moment we have can be used to improve, and hone our skills. Should you even waste but a moment, it could be the different between life, and death on the battlefield.
-- Yharg'osh <Far Seer>, display ID 1368, level 57, weapon1 : 15444 , faction 29, greeting text : "I have been tasked as the Far Seer of this expedition. It is my duty to keep sight within the distance, and warn us of impending danger. I am also here to serve as a representative of Thrall upon the field."
-- Battlebreaker <Warrior Trainer> , display ID 3858, weapon1 15862 , weapon 2 : 15543 , faction 29
-- Talom Stridecloud, display ID 3914, level 50, no weapon , faction 29, greeting text : "Somethings seems amiss within these lands, as if the ground and the earth itself cries of a great misery being done. You can feel this, cant you."
-- Bhatra <General Goods>, display ID 4356, level 50, no weapon , faction 29, sells general goods
-- Brutan Palehoof , display ID 3448 , level 52, no weapon , faction 29, greeting text : "Earth Mother bless you $R, both on the field of battle, and at peace."
-- Nulda <Leather Armor Merchant>, display ID 1312, level 52, no weapon, sells leather armor, and repairs , faction 29

replace into creature_template values
(92193, 0, 14718, 0, 0, 0, 'Bloodfist Grunt', '', 0, 55, 55, 5228, 5228, 0, 0, 4500, 29, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 344, 375, 0, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 739, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92194, 0, 4547, 0, 0, 0, 'Grunt Har\'gak', '', 0, 55, 55, 5228, 5228, 0, 0, 4500, 29, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 344, 375, 0, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 739, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92195, 0, 1314, 0, 0, 0, 'Otor Nar\'gakk', 'Trade Supplies', 0, 45, 45, 2138, 2138, 0, 0, 2463, 29, 7, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 68, 88, 0, 194, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 60.7904, 83.5868, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92196, 0, 4515, 0, 0, 0, 'Katokar Bladewind', '', 0, 58, 58, 5228, 5228, 0, 0, 4500, 29, 3, 1, 1.14286, 1.35, 20, 5, 0, 0, 1, 106, 136, 0, 262, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.9872, 100.357, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92197, 0, 1368, 0, 0, 0, 'Yharg\'osh', 'Far Seer', 0, 57, 57, 3758, 3758, 0, 0, 3326, 29, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 102, 131, 0, 258, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 72.2304, 99.3168, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92198, 0, 3858, 0, 0, 0, 'Battlebreaker', 'Warrior Trainer', 0, 55, 55, 4120, 4120, 0, 0, 5500, 29, 16, 1, 1.14286, 0, 20, 5, 0, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 1, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92199, 0, 3914, 0, 0, 0, 'Talom Stridecloud', '', 0, 50, 50, 2768, 2768, 0, 0, 3000, 29, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 85, 109, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92200, 0, 4356, 0, 0, 0, 'Bhatra', 'General Goods', 0, 50, 50, 2768, 2768, 0, 0, 3000, 29, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 85, 109, 0, 216, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92201, 7, 3448, 0, 0, 0, 'Brutan Palehoof', '', 0, 52, 52, 2500, 2500, 0, 0, 4400, 29, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 362, 440, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 258.261, 360.038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92202, 7, 1312, 0, 0, 0, 'Nulda', 'Leather Armor Merchant', 0, 52, 52, 2500, 2500, 0, 0, 4400, 29, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 362, 440, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 258.261, 360.038, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 56067; set @weapon_1 = 15862; set @weapon_2 = 2081; set @creature = 92193;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56068; set @weapon_1 = 3366; set @weapon_2 = 0; set @creature = 92196;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56069; set @weapon_1 = 15444; set @weapon_2 = 0; set @creature = 92197;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 56070; set @weapon_1 = 15862; set @weapon_2 = 15543; set @creature = 92198;
replace into creature_equip_template values (@equip_template, 0, @weapon_1, @weapon_2, 0);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 60202; set @magic_number = 92194;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Blood and Thunder, Bloodfist Point is a new expedition into Azshara, have you been sent to aid?'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60203; set @magic_number = 92196;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Walk softly, like a calm leaf to the winds of fate. It is never a good idea to let yourself fade away, each moment we have can be used to improve, and hone our skills. Should you even waste but a moment, it could be the different between life, and death on the battlefield.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60204; set @magic_number = 92197;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have been tasked as the Far Seer of this expedition. It is my duty to keep sight within the distance, and warn us of impending danger. I am also here to serve as a representative of Thrall upon the field.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60205; set @magic_number = 92199;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Somethings seems amiss within these lands, as if the ground and the earth itself cries of a great misery being done. You can feel this, cant you.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 60206; set @magic_number = 92201;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Earth Mother bless you $R, both on the field of battle, and at peace.'); 
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number); 
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

replace into npc_vendor values
-- Otor Nar'gakk <Trade Supplies>
(92195, 2320, 0, 0, 0, 0),
(92195, 2321, 0, 0, 0, 0),
(92195, 2325, 0, 0, 0, 0),
(92195, 2604, 0, 0, 0, 0),
(92195, 2678, 0, 0, 0, 0),
(92195, 2692, 0, 0, 0, 0),
(92195, 2880, 0, 0, 0, 0),
(92195, 2901, 0, 0, 0, 0),
(92195, 2928, 0, 0, 0, 0),
(92195, 3371, 0, 0, 0, 0),
(92195, 3372, 0, 0, 0, 0),
(92195, 3466, 0, 0, 0, 0),
(92195, 3713, 0, 0, 0, 0),
(92195, 3857, 0, 0, 0, 0),
(92195, 4289, 0, 0, 0, 0),
(92195, 4291, 0, 0, 0, 0),
(92195, 4340, 0, 0, 0, 0),
(92195, 4341, 0, 0, 0, 0),
(92195, 4342, 0, 0, 0, 0),
(92195, 4399, 0, 0, 0, 0),
(92195, 4400, 0, 0, 0, 0),
(92195, 5956, 0, 0, 0, 0),
(92195, 6217, 0, 0, 0, 0),
(92195, 6256, 0, 0, 0, 0),
(92195, 6530, 0, 0, 0, 0),
(92195, 6532, 0, 0, 0, 0),
(92195, 7005, 0, 0, 0, 0),
(92195, 8343, 0, 0, 0, 0),
(92195, 8925, 0, 0, 0, 0),
(92195, 14341, 0, 0, 0, 0),
(92195, 15735, 0, 0, 0, 0),
(92195, 18256, 0, 0, 0, 0),
(92195, 3777, 0, 0, 0, 0),
(92195, 6183, 0, 0, 0, 0),
-- Bhatra <General Goods>
(92200, 117, 0, 0, 0, 0),
(92200, 159, 0, 0, 0, 0),
(92200, 1179, 0, 0, 0, 0),
(92200, 1205, 0, 0, 0, 0),
(92200, 1645, 0, 0, 0, 0),
(92200, 1708, 0, 0, 0, 0),
(92200, 2287, 0, 0, 0, 0),
(92200, 2515, 0, 0, 0, 0),
(92200, 2519, 0, 0, 0, 0),
(92200, 3030, 0, 0, 0, 0),
(92200, 3033, 0, 0, 0, 0),
(92200, 3770, 0, 0, 0, 0),
(92200, 3771, 0, 0, 0, 0),
(92200, 4470, 0, 0, 0, 0),
(92200, 4471, 0, 0, 0, 0),
(92200, 4497, 0, 0, 0, 0),
(92200, 4498, 0, 0, 0, 0),
(92200, 4599, 0, 0, 0, 0),
(92200, 8766, 0, 0, 0, 0),
(92200, 8952, 0, 0, 0, 0),
(92200, 11284, 0, 0, 0, 0),
(92200, 11285, 0, 0, 0, 0),
(92200, 15758, 0, 0, 0, 0),
-- Nulda <Leather Armor Merchant>
(92202, 236, 0, 0, 0, 0),
(92202, 237, 0, 0, 0, 0),
(92202, 238, 0, 0, 0, 0),
(92202, 239, 0, 0, 0, 0),
(92202, 1849, 0, 0, 0, 0),
(92202, 1850, 0, 0, 0, 0),
(92202, 2141, 0, 0, 0, 0),
(92202, 2142, 0, 0, 0, 0),
(92202, 2143, 0, 0, 0, 0),
(92202, 2144, 0, 0, 0, 0),
(92202, 2145, 0, 0, 0, 0),
(92202, 2146, 0, 0, 0, 0);

-- Tanglemoss , display ID 2024 , scale 2.2, level 53 ELITE, 50 nature resistance, faction 16
-- Ruins Creeper , display ID 631, scale 1.5, level 50-52, 25 nature resistance, faction 16

replace into creature_template values
(92202, 0, 2024, 0, 0, 0, 'Tanglemoss', '', 0, 53, 53, 7359, 7359, 0, 0, 3163, 16, 0, 1, 1.14286, 2.2, 20, 5, 0, 1, 1, 344, 444, 0, 238, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.3256, 81.5727, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 737, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(92203, 0, 631, 0, 0, 0, 'Ruins Creeper', '', 0, 50, 52, 6750, 7115, 0, 0, 3174, 16, 0, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 375, 462, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 59.3256, 81.5727, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 394, 519, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');