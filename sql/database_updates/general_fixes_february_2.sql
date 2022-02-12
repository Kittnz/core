-- Spell "Curse of the Plague Rat" deleted from NPC "Groveweald Warrior":
REPLACE INTO creature_spells VALUES (180019, 'The Crescent Grove: Groveweald Warrior', 16431, 100, 0, 0, 0, 4, 6, 6, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15232, 100, 1, 0, 0, 12, 1, 1, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
update creature_template set spell_list_id = 180019 where entry = 92100;
-- XYZ for GO "food crate" updated:
update gameobject set position_x = -334.396, position_y = 0.519818, position_z = 55.9874 where guid = 20881;
-- Quest "The Completed Orb of Dar'Orahil" have truely prequest alredy:
update quest_template set prevquestid = 4976 where entry = 4964;
-- Frostly's memorial:
REPLACE INTO gameobject_template VALUES (2010797, 9, 25251, 'Frostly', 0, 0, 1, 50525, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');
REPLACE INTO page_text VALUES (50525, 'In good memory of Frostly, a champion of the Horde, a raider, and a friend. He will forever be remembered within our hearts.', 0);
-- New NPCs for others guilds:
REPLACE INTO gameobject_template VALUES (2010796, 9, 25251, 'Frostly', 0, 0, 1, 50526, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '');
REPLACE INTO page_text VALUES (50526, 'The Tree of Lashes is covered in countless wounds of varied age. Some still drip with sap, while others are faint, ghostly scars. One name is torn into the tree\'s flesh, and bleeds still: "Ariele."', 0);

REPLACE INTO creature_template VALUES
(60661, 7046, 0, 0, 0, 'Lefwen The Protector', 'Macrochelys', 0, 35, 35, 1342, 1342, 0, 0, 1373, 290, 1, 1, 1.14286, 1.35, 18, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(60662, 2620, 0, 0, 0, 'Bannermaster Shonte Daud', 'Blacktooth Grin', 0, 50, 50, 2990, 2990, 0, 0, 4400, 290, 1, 1, 1.14286, 0, 18, 5, 0, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, ''),
(60663, 499, 0, 0, 0, 'Grin Harold', 'Unhappy Prisoner', 0, 5, 5, 102, 102, 0, 0, 147, 290, 16388, 1, 1.14286, 0, 18, 5, 0, 0, 1, 7, 10, 0, 54, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 13.4464, 18.4888, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 795, 0, 0, 0, 0, 0, 0, 1, ''),
(60664, 6044, 6042, 9856, 9861, 'Blacktooth Grunt', 'Blacktooth Grin', 0, 40, 40, 3048, 3048, 0, 0, 1200, 85, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 355, 390, 0, 156, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 9043, 0, 0, 0, 0, 0, 0, 1, ''),
(60665, 6043, 0, 0, 0, 'Raider Vilefeast', 'Blacktooth Grin', 0, 55, 55, 3398, 3398, 0, 0, 3299, 85, 0, 1, 1.14286, 0, 18, 5, 0, 0, 1, 402, 443, 0, 254, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 1775, 0, 0, 0, 0, 0, 0, 1, '');

set @gossip_menu_id = 41090; set @magic_number = 60661;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome Friend!\n\nThis sacred place is home to the Macrochelys of Azeroth, defenders of horde and alliance, elemental executioners, dragon hunters, and god slayers.\n\nThis is our home and home is where the heart is.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41091; set @magic_number = 60662;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What? You don\'t know these black banners? Even I feared the Teeth when I was alive! The Grin serves the true Warchief, Blackhand. He sent us to open a new front against Stormwind. Boss Ruag knows that every blade, even the Dark Horde’s, is needed in the Swamp. The Peacechief’s pride may trump all in Durotar, but you’re in Azeroth’s armpit now, git. And we’re meaner than the mire. Just don’t mention us when you head home, eh?\n\n<He seems now to be speaking to himself.>\n\nThey just won’t let me die…');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

REPLACE INTO npc_vendor VALUES (60663, 159, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 1179, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 1205, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 1645, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 1708, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 2515, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 2519, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 2946, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 3030, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 3033, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 3107, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 3108, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 3131, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 3135, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 3137, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4470, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4471, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4497, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4498, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4604, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4605, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4606, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4607, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 4608, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 6183, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 8766, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 8948, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 11284, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 11285, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 15326, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 15327, 0, 0, 0, 0);
REPLACE INTO npc_vendor VALUES (60663, 16110, 0, 0, 0, 0);
-- Quest "Grand Herbal Theft" fixed objetives:
update quest_template set objetives = 'Find Shagu\'s Satchel of Mixed Herbs and take it back to Shagu in Bloodhoof Village.' where entry = 40002;