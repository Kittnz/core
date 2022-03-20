-- Albino Snapjaw
replace into creature_loot_template values (3461, 18963, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18963, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18963, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18963, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18963, 2, 6, 1, 1, 0);  -- Snapjaw
-- Hawksbill Snapjaw
replace into creature_loot_template values (3461, 18965, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18965, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18965, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18965, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18965, 2, 6, 1, 1, 0);  -- Snapjaw
-- Leatherback Snapjaw
replace into creature_loot_template values (3461, 18966, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18966, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18966, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18966, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18966, 2, 6, 1, 1, 0);  -- Snapjaw
-- Loggerhead Snapjaw
replace into creature_loot_template values (3461, 18964, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18964, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18964, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18964, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18964, 2, 6, 1, 1, 0);  -- Snapjaw
-- Loggerhead Snapjaw
replace into creature_loot_template values (3461, 18967, 2, 6, 1, 1, 0);  -- Oasis Snapjaw
replace into creature_loot_template values (13599, 18967, 2, 6, 1, 1, 0); -- Mudrock Snapjaw
replace into creature_loot_template values (4400, 18967, 2, 6, 1, 1, 0);  -- Aku'mai Snapjaw
replace into creature_loot_template values (4825, 18967, 2, 6, 1, 1, 0);  -- Stolid Snapjaw
replace into creature_loot_template values (2408, 18967, 2, 6, 1, 1, 0);  -- Snapjaw
-- Water Snake
update item_template set name = 'Green Water Snake', description = 'Brought to Sparkwater Port aboard merchant ships, these short-lived reptiles are considered pests by the port\'s residents.', buy_price = 6000, sell_price = 1500, required_reputation_faction = 1001, required_reputation_rank = 4 where entry = 50068;
replace into npc_vendor (entry, item) values (80961, 50068); -- Vanessa Clang <Durotar Labor Union Quartermaster>
-- Scarlet Snake
replace into creature_loot_template values (3807, 50069, 2, 6, 1, 1, 0); -- Forsaken Assassin
replace into creature_loot_template values (2246, 50069, 2, 6, 1, 1, 0); -- Syndicate Assassin
replace into creature_loot_template values (5623, 50069, 2, 6, 1, 1, 0); -- Wastewander Assassin
-- Gilnean Raven
update creature_template set display_id1 = 18746 where entry = 89000;
replace into creature_display_info_addon values (18746,0,0,0,0);
-- Dart Frog
update item_template set buy_price = 36000, sell_price = 5500, name = 'Dart Frog', description = 'Toads and frogs are fast friends of trolls, perfect for poisons.' where entry = 50078;
replace into npc_vendor (entry, item) values (91402, 50078); -- Jinz'ah <Voodoo Hexxer>
replace into npc_vendor (entry, item) values (91402, 50078); -- Jinz'ah <Voodoo Hexxer>
replace into npc_vendor (entry, item) values (91865, 50078); -- Primalist Bin'doga <Reagents>
replace into npc_vendor (entry, item) values (3490,  50078);  -- Hula'mahi <Reagents and Herbs>
-- Tirisfal Bat:
update creature_template set display_id1 = 4732, name = 'Tirisfal Batling' where entry = 51585;
replace into creature_loot_template values (1554, 51858, 1, 6, 1, 1, 0); -- Vampiric Duskbat
-- Darters:
update item_template set name = 'Brightwing', description = 'Hello, friend! Brightwing likes it when you visit!' where entry = 50077;
update item_template set name = 'Spectral Faeling' where entry = 81151;
update creature_template set scale = 0.7 where entry = 9662;
-- 
update item_template set name = 'Dalaran Cloud Familiar', description = 'A mage from Dalaran always seem so serious, until their messages are delivered by these emotive familiars.' where entry = 81207;
update creature_template set name = 'Dalaran Cloud Familiar' where entry = 81031;

-- Viridian Hippogryph
update item_template set spellid_1 = 46499 where entry = 81242;
replace into mount_spells values (81242, 46523);

-- Create a new mount Lovely Pink Pony  summon creature 50593.
-- Create a new mount Lovely Pink Furline summon creature 50594. 
replace into creature_template values 
(50593, 18771, 0, 0, 0, 'Lovely Pink Pony', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(50594, 18772, 0, 0, 0, 'Lovely Pink Furline', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

update item_template set spellid_1 = 46499 where entry = 83475;
update item_template set spellid_1 = 46499 where entry = 83476;
replace into mount_spells values (83475, 46521);
replace into mount_spells values (83476, 46522);

replace into item_template values (83475, 15, 4, 'Lovely Pink Pony', '', 13108, 3, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, '');
replace into item_template values (83476, 15, 4, 'Lovely Pink Furline', '', 23606, 3, 80, 1, 0, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46499, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, '');
