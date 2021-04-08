
replace into `item_template` values (81228, 0, 0, 0, 'Skin Change Token: Tauren Spirit Walker', '', 30658, 2, 0, 1, 0, 0, 0, -1, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');
update item_template set quality = 1 where entry = 81228;
update item_template set name = 'Skin Change Token: Human Death Knight', allowable_race = 1 where entry = 81210;
update item_template set name = 'Skin Change Token: Human Scholomance Student', allowable_race = 1 where entry = 50106;

replace into `item_template` values (81229, 0, 0, 0, 'Skin Change Token: Dwarf Death Knight', '', 30658, 2, 0, 1, 0, 0, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');
update item_template set quality = 1 where entry = 81229;

update item_template set quality = 3, max_count = 1 where entry in (12325, 12326, 12327, 8630, 12302, 12303);

replace into `item_template` values (81230, 0, 0, 0, 'Skin Change Token: Gnome Scholomance Student', '', 30658, 2, 0, 1, 0, 0, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');
update item_template set quality = 1, allowable_race = 64 where entry = 81230;

update item_template set display_id = 17607 where entry = 18768;
update item_template set display_id = 17606 where entry = 12303;
update item_template set display_id = 17606 where entry = 80446;
update item_template set display_id = 17606 where entry = 18902;

update item_template set name = 'Black Zulian Panther', description = 'The jungle trolls have long coveted panther fangs, using them for rituals or as ingredients in mojos.', max_count = 1, spellid_1 = 10787 where entry = 12303;

REPLACE INTO `item_template` VALUES (81231, 10, 15, 0, 'Tamed Rak\'Shiri', 'Taming this savage breed requires patience, strength, and a large supply of fake mice and twine.', 23606, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46208, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

REPLACE INTO `item_template` VALUES (81232, 10, 15, 0, 'Azure Frostsaber', 'The lack of spots or stripes marks this beast as a descendant of the most ancient frostsaber line.', 23606, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46207, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update item_template set name = 'White Stallion', description = 'The powerful and unyielding white stallion features heavily in the myths of ancient human tribes.', max_count = 1 where entry = 12353;
update item_template set name = 'Armored Alliance Steed', max_count = 1, quality = 4 where entry = 80449;
update item_template set name = 'Armored Black Deathcharger', description = 'When fallen heroes are raised into undeath, so too are their horses.', max_count = 1 where entry = 23193;
update item_template set name = 'Nightmare Shadowrunner', description = 'A nightmarish steed of hardened steel and vengeful spirits, this companion will follow you to the depths of the Molten Core and back without complaint.',  max_count = 1 where entry = 50407;

update item_template set name = 'Armored Brewfest Ram', description = 'Dwarves attribute this breed\'s even temperament to rigorous training, but other races argue that a daily diet of strong ale has something to do with it.', max_count = 1, quality = 4 where entry = 80443;

REPLACE INTO `item_template` VALUES (81233, 10, 15, 0, 'Armored Ironforge Ram', 'Wildhammer Fact Checker claims that this specific breed was the first type of ram domesticated by the dwarves when they settled in Dun Morogh.', 17343, 4, 64, 1, 3500000, 0, 0, -1, 589, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45032, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 47, required_reputation_rank = 7 where entry = 81233;

REPLACE INTO `item_template` VALUES (81234, 10, 15, 0, 'Brewfest Ram', 'Brewers retired this mount from active advertising service after complaints that the beasts were "too temperamental" to control in major cities.', 17343, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45034, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update item_template set name = 'Ancient Quel\'dorei Steed', description = 'Comes from a lineage of fine horses that once grazed near the shores of the Well of Eternity.', max_count = 1, quality = 3, spellid_1 = 46445 where entry = 50399;

delete from item_template where entry in (875, 80439, 80440, 8583, 2415, 50400, 14062);

update item_template set name = 'Armored Stormwind Warhorse' where entry = 81225;

update item_template set name = 'Armored Red Deathcharger', description = 'When fallen heroes are raised into undeath, so too are their horses.' where entry = 18248;
update item_template set name = 'Armored Green Deathcharger', description = 'When fallen heroes are raised into undeath, so too are their horses.' where entry = 13334;
update item_template set name = 'Armored Purple Deathcharger', description = 'When fallen heroes are raised into undeath, so too are their horses.' where entry = 18791;

update item_template set name = 'Blue Skeletal Horse', description = 'The Forsaken believe that without a purpose, even beasts of burden suffer in undeath.' where entry = 13332;
update item_template set name = 'Brown Skeletal Horse', description = 'The Forsaken believe that without a purpose, even beasts of burden suffer in undeath.' where entry = 13333;
update item_template set name = 'Red Skeletal Horse', description = 'The Forsaken believe that without a purpose, even beasts of burden suffer in undeath.' where entry = 13331;

update creature_template set subname = 'War Mount Quartermaster' where entry = 12796;

REPLACE INTO `item_template` VALUES (81235, 10, 15, 0, 'Armored Crimson Deathcharger', 'Some horses merely adopt the dark. This horse was born in it.', 17786, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45042, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update item_template set name = 'Rivendare\'s Deathcharger', description = 'When Baron Rivendare became a champion of the Scourge, he condemned his favorite horse to join him in undeath.', quality = 4 where entry = 13335;

update item_template set name = 'Armored Brown Steed', description = 'A veteran of some of the toughest battles fought by the Argent Crusade.' where entry = 18777;
update item_template set name = 'Armored White Steed', description = 'A veteran of some of the toughest battles fought by the Argent Crusade.' where entry = 18778;
update item_template set name = 'Armored Golden Steed', description = 'Prized by horse breeders for their discipline and steadfastness.' where entry = 18776;

REPLACE INTO `item_template` VALUES (12354, 10, 15, 0, 'Palomino', 'Human nobles have long favored this majestic breed for its beautiful golden coat and flowing white mane.', 13108, 3, 64, 1, 100000, 0, 0, -1, 589, 40, 40, 762, 75, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16082, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set name = 'Pinto', description = 'Its calm temperament makes it ideal to train young children in horseback riding.' where entry = 2414;
update item_template set name = 'Chestnut Mare', description = 'Sturdy and steady.' where entry = 5655;
update item_template set name = 'Brown Horse', description = 'A favorite among Stormwind\'s guards thanks to its patience and stamina.' where entry = 5656;
update item_template set name = 'Black Stallion', description = 'Rumored to be favored by SI:7 for night missions due to its dark coat.' where entry = 1460;

update item_template set name = 'Armored Black War Steed', description = 'Trained to withstand brutal hand-to-hand combat in the fiercest battlefields.' where entry = 18241;

REPLACE INTO `item_template` VALUES (12353, 10, 15, 0, 'White Stallion', 'The powerful and unyielding white stallion features heavily in the myths of ancient human tribes.', 13108, 3, 64, 1, 100000, 0, 0, -1, 589, 40, 40, 762, 75, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16083, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `item_template` VALUES (81236, 10, 15, 0, 'Armored Grey Steed', 'A veteran of some of the toughest battles fought by the Argent Crusade.', 13108, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45040, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update item_template set name = 'Armored Dark Rider\'s Steed', max_count = 1 where entry = 81090;

update item_template set name = 'Zebra', description = 'It has stripes!', max_count = 1, display_id = 22037 where entry = 50426;

REPLACE INTO `item_template` VALUES (50400, 10, 15, 0, 'Barrens Zhevra', 'Zhevras are rarely used as mounts in Azeroth due to their stubborn nature and tendency to bite.', 36688, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46453, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update item_template set name = 'Armored White Kodo', description = 'An alpha member of the herd, this kodo is a prime example of the mighty creatures which thunder through the Northern Barrens.' where entry = 18793;
update item_template set name = 'Armored Grey Kodo', description = 'An alpha member of the herd, this kodo is a prime example of the mighty creatures which thunder through the Northern Barrens.' where entry = 18795;
update item_template set name = 'Armored Brown Kodo', description = 'An alpha member of the herd, this kodo is a prime example of the mighty creatures which thunder through the Northern Barrens.' where entry = 18794;

update item_template set name = 'Brown Kodo', description = 'The kodo is the backbone of our people. Wherever the Horde goes - in trade, settlement, or war - there you will find the mighty kodo.' where entry = 15290;
update item_template set name = 'Brown Kodo', description = 'The kodo is the backbone of our people. Wherever the Horde goes - in trade, settlement, or war - there you will find the mighty kodo.' where entry = 15277;

update item_template set name = 'Ancient Teal Kodo', description = 'The kodo is the backbone of our people. Wherever the Horde goes - in trade, settlement, or war - there you will find the mighty kodo.' where entry = 15293;

REPLACE INTO `item_template` VALUES (15292, 10, 15, 0, 'Ancient Green Kodo', 'An alpha member of the herd, this kodo is a prime example of the mighty creatures which thunder through Desolace.', 29449, 3, 64, 1, 1000000, 0, 0, -1, -1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18991, 0, 0, 0, 0, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

delete from npc_vendor where item in (15293, 15292);

update item_template set name = 'Armored Thunder Bluff Kodo' where entry = 81198;
update item_template set name = 'Armored Brewfest Kodo' where entry = 80455;

update item_template set spellid_1 = 46483 where entry = 51421;
update item_template set spellid_1 = 46459, description = 'Carries all your worldly possessions, there and back.' where entry = 50007;
update item_template set spellid_1 = 46457 where entry = 50005;
update item_template set spellid_1 = 46472 where entry = 50602;
update item_template set spellid_1 = 46460 where entry = 50009;
update item_template set spellid_1 = 46002 where entry = 51715;
update item_template set spellid_1 = 46466 where entry = 50085;

delete from custom_pet_entry_relation where item_entry in (51421, 50007, 50005, 50602, 50009, 50085);

REPLACE INTO `creature_template` VALUES (81102, 0, 18542, 0, 0, 0, 'Chieftain\'s Kodo', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `item_template` VALUES (81237, 10, 15, 0, 'Chieftain\'s Kodo', 'This Kodo with a Ceremonial Attire is usually reserved for Clan Chieftains, but after the Tauren joined the Horde, they have been made available to Champions of Thunderbluff.', 29448, 4, 64, 1, 3500000, 0, 0, -1, 434, 40, 60, 762, 150, 0, 0, 0, 81, 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18363, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into custom_mount_entry_relation values (81237, 81102);

update item_template set name = 'Armored Black War Wolf', description = 'Prized by Orgrimmar guards for their keen sense of smell.' where entry = 18245;
update item_template set name = 'Armored Black War Kodo', description = 'Bred for their aggressive, unpredictable demeanor by the Kor\'kron stablemasters, the Black War Kodos\' trumpeting call signifies that blood will soon be shed.' where entry = 18247;

update item_template set name = 'Armored Black War Raptor', description = 'Bred from the same vicious line of raptors which sired Ohgan and brought victory to the Gurubashi Empire.' where entry = 18246;

update item_template set name = 'Monster - Mace1H, Korth\'azz', description = '' where entry = 22724;

delete from npc_vendor where item in (12330, 12351, 8586, 13317);

update item_template set name = 'Armored Brown Wolf', description = 'The wolves of the Horde are befriended, not domesticated.' where entry = 18796;
update item_template set name = 'Armored Gray Wolf', description = 'The wolves of the Horde are befriended, not domesticated.' where entry = 18798;
update item_template set name = 'Armored Timber Wolf', description = 'The wolves of the Horde are befriended, not domesticated.' where entry = 18797;

update item_template set name = 'Brown Wolf', description = 'Can howl loudly enough to be heard for miles.' where entry = 5668;
update item_template set name = 'Dire Wolf', description = 'Can howl loudly enough to be heard for miles.' where entry = 5665;
update item_template set name = 'Timber Wolf', description = 'Can howl loudly enough to be heard for miles.' where entry = 1132;

update item_template set name = 'Frostwolf Howler', description = 'Raised in the Alterac Mountains by the Frostwolf Clan.' where entry = 19029;
update item_template set name = 'Winter Wolf', description = 'Ancient furbolg legends claim that wolves born with a white coat are blessed by Azeroth\'s two moons.' where entry = 1133;

update item_template set name = 'Ancient Black Wolf', description = 'Once thought to be nearly extinct, this wolf can still occasionally be seen in the company of a few Horde veterans.' where entry = 1041;
update item_template set name = 'Armored Horde Wolf', description = 'If asked to fetch, will most likely bring you back the head of a small mammal or humanoid.' where entry = 80447;

delete from item_template where entry in (12330, 5663, 1133, 80448, 8586, 13317, 8590, 80436);

REPLACE INTO `item_template` VALUES (5663, 10, 15, 0, 'Ancient Red Wolf', 'Almost none remain in the whole of Azeroth; only the most experienced will have seen one.', 16208, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 579, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

REPLACE INTO `item_template` VALUES (12351, 10, 15, 0, 'Ancient Arctic Wolf', 'Ancient furbolg legends claim that wolves born with a white coat are blessed by Azeroth\'s two moons.', 16208, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16081, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

REPLACE INTO `item_template` VALUES (51249, 0, 15, 0, 'Snowball', 'Happy New Year!', 16207, 3, 0, 1, 0, 0, 0, -1, -1, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 581, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set name = 'Armored Darkspear Raptor' where entry = 81182;
update item_template set name = 'Armored Blue Raptor', description = 'Longtime allies of the trolls, these jungle hunters form a special bond with their masters. They become steed, guardian, and friend.' where entry = 18788;
update item_template set name = 'Armored Olive Raptor', description = 'Longtime allies of the trolls, these jungle hunters form a special bond with their masters. They become steed, guardian, and friend.' where entry = 18789;
update item_template set name = 'Armored Orange Raptor', description = 'Longtime allies of the trolls, these jungle hunters form a special bond with their masters. They become steed, guardian, and friend.' where entry = 18790;

update item_template set name = 'Turquoise Raptor', description = 'Bred from the fiercest stock anywhere and guaranteed not to bite (much).' where entry = 8591;
update item_template set name = 'Emerald Raptor', description = 'Bred from the fiercest stock anywhere and guaranteed not to bite (much).' where entry = 8588;
update item_template set name = 'Violet Raptor', description = 'Bred from the fiercest stock anywhere and guaranteed not to bite (much).' where entry = 8592;

update item_template set name = 'Armored Razzashi Raptor', description = 'The only known Razzashi Raptors were said to have been in the custody of Bloodlord Mandokir in Zul\'Gurub. This species of raptor has not been seen in many years.' where entry = 19872;

update item_template set name = 'Armored Violet Raptor', description = 'Longtime allies of the trolls, these jungle hunters form a special bond with their masters. They become steed, guardian, and friend.', max_count = 1 where entry = 50402;
update item_template set name = 'Armored Red Raptor', description = 'Longtime allies of the trolls, these jungle hunters form a special bond with their masters. They become steed, guardian, and friend.', max_count = 1 where entry = 50403;
update item_template set name = 'Armored Ivory Raptor', description = 'Longtime allies of the trolls, these jungle hunters form a special bond with their masters. They become steed, guardian, and friend.', max_count = 1 where entry = 50401;
update item_template set name = 'Armored Obsidian Raptor', description = 'Longtime allies of the trolls, these jungle hunters form a special bond with their masters. They become steed, guardian, and friend.', max_count = 1 where entry = 50404;

update item_template set name = 'Black Bear', description = 'He\'s big, he\'s ready for battle, and he\'s a bear. What more could you want in a mount?' where entry = 80433;
update item_template set name = 'Brown Bear', description = 'He\'s big, he\'s ready for battle, and he\'s a bear. What more could you want in a mount?' where entry = 80438;
update item_template set name = 'Armored Brown Bear', description = 'The Amani trolls decorate these ferocious mounts in magic amulets and ceremonial masks as a way to venerate the bear god Nalorakk.' where entry = 81226;

update item_template set name = 'Armored Black Bear', description = 'This ursine mount\'s swiftness is enhanced by its heavy armor.' where entry = 81154;
update item_template set name = 'Armored Purple Bear', description = 'This ursine mount\'s swiftness is enhanced by its heavy armor.' where entry = 81153;
update item_template set name = 'Armored Red Bear', description = 'This ursine mount\'s swiftness is enhanced by its heavy armor.' where entry = 81155;
update item_template set name = 'Armored White Bear', description = 'This ursine mount\'s swiftness is enhanced by its heavy armor.' where entry = 81158;

update item_template set description = 'What a cute little fluff!' where entry = 81207;

-- Make mounts into its own category:

update item_template set class = 15, subclass = 4 where entry in (23720, 50071,
50072,
50073,
50076,
50074,
81100,
81120,
81121,
12325,
12326,
8630,
12302,
12303,
18768,
80430,
12353,
80449,
23193,
50407,
80443,
15293,
80455,
1041,
12351,
80447,
8590,
50404,
50401,
50402,
50403,
81091,
81153,
81154,
81155,
81158,
13325,
81190,
81191,
15292,
81227,
80431,
81231,
50075,
81102,
18796,
18798, 
18797,
5668,
5665, 
1132,
81234,
13328,
18786,
18787,
18785,
13329,
5873
); -- Shop items
update item_template set class = 15, subclass = 4 where required_skill = 762;
update item_template set class = 15, subclass = 4 where name like '%Armored%';
update item_template set class = 15, subclass = 4 where name like '%Mechaspider%';
update item_template set class = 15, subclass = 4 where name like '%Steed%';
update item_template set class = 15, subclass = 4 where name like '%Leopard%';

-- todo: continue, fetch the rest.

delete from item_template where entry in (5875, 5874, 80456, 80442, 80444);
update item_template set class = 15, subclass = 0 where entry = 21222;
update item_template set class = 1, subclass = 0 where entry = 932;
delete from item_template where entry = 81225 and patch = 0;
update item_template set display_id = 13108 where entry = 81225;

delete from npc_vendor where item in (13328, 13327, 13326);

update item_template set name = 'Ancient Black Ram', description = 'I\'ve not seen this breed in in ages, but when they\'re ram tough they stick around. -Veron Amberstill.', required_skill = 0, required_level = 1, allowable_race = -1, quality = 3 where entry = 13328;

update item_template set name = 'Armored Brown Ram', description = 'The Barak Tor\'ol ram\'s thick bony skull and massive horns make it the ideal mount for charging through groups of armored enemies.' where entry = 18786;
update item_template set name = 'Armored Gray Ram', description = 'The Barak Tor\'ol ram\'s thick bony skull and massive horns make it the ideal mount for charging through groups of armored enemies.' where entry = 18787;
update item_template set name = 'Armored White Ram', description = 'The Barak Tor\'ol ram\'s thick bony skull and massive horns make it the ideal mount for charging through groups of armored enemies.' where entry = 18785;

update item_template set description = 'Male rams will often smash their thick skulls against each other for hours to impress a female. In that way, they\'re very similar to dwarves.' where entry in (5872, 13329, 5864, 5873);
update item_template set description = 'We have made a lot of improvements, but they are still based on the Mekkatorque designs.' where entry in (18772, 18773, 18774, 5873);
update item_template set description = 'The terradynamic exo-plotters are conjoined by hydraulic imaging to the equilibrium enhancers...' where entry in (8595, 13321, 8563);
update item_template set description = 'Forced to recall the model after numerous complaints of an "uncontrollable throttle", Gnomish engineers now refer to a proto-type blunder as a "model B".' where entry = 13326;
update item_template set description = 'This historic piece of gnomish engineering was forced into retirement due to its extremely "touchy" gyroscometer.' where entry = 13327;
update item_template set description = 'It\'s green.' where entry = 13325;

update item_template set name = 'Armored Green Mechanostrider' where entry = 18772;
update item_template set name = 'Armored White Mechanostrider' where entry = 18773;
update item_template set name = 'Armored Yellow Mechanostrider' where entry = 18774;

REPLACE INTO `creature_template` VALUES (90977, 0, 18510, 0, 0, 0, 'Turbo-Charged Flying Machine', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `item_template` VALUES (81238, 10, 15, 4, 'Turbo-Charged Flying Machine', 'Only the most talented engineers have the courage and the mental stamina to create a flying machine that boasts stability and safety. Turbo-charging one is just crazy!', 21807, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46225, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

replace into custom_mount_entry_relation values (81238, 90977);

REPLACE INTO `creature_template` VALUES (90978, 0, 18523, 0, 0, 0, 'Happy Whimsyshire Cloud', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `item_template` VALUES (81239, 10, 15, 4, 'Happy Whimsyshire Cloud', 'The fluffiest little cloud in Azeroth.', 60887, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46225, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);
update item_template set allowable_race = 64 where entry = 81239;
replace into custom_mount_entry_relation values (81239, 90978);

REPLACE INTO `creature_template` VALUES (90979, 0, 18524, 0, 0, 0, 'Sad Whimsyshire Cloud', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `item_template` VALUES (81240, 10, 15, 4, 'Sad Whimsyshire Cloud', 'Now the sun is in the sky, and for no reason why, the sad cloud is crying itself away.', 60890, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46225, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);
update item_template set allowable_race = 64 where entry = 81240;
replace into custom_mount_entry_relation values (81240, 90979);

-- Fix Torta sell_price fuckups

update item_template set sell_price =        200 where entry = 50016;
update item_template set sell_price =        935 where entry = 51219;
update item_template set sell_price =       2300 where entry = 51300;
update item_template set sell_price =       1000 where entry = 51301;
update item_template set sell_price =      15471 where entry = 51752;
update item_template set sell_price =       9871 where entry = 51753;
update item_template set sell_price =       7461 where entry = 51754;
update item_template set sell_price =      13572 where entry = 51755;
update item_template set sell_price =       9835 where entry = 51757;
update item_template set sell_price =       1986 where entry = 51805;
update item_template set sell_price =        850 where entry = 51812;
update item_template set sell_price =        425 where entry = 51818;
update item_template set sell_price =        136 where entry = 51819;
update item_template set sell_price =         75 where entry = 51821;
update item_template set sell_price =        212 where entry = 51824;
update item_template set sell_price =        368 where entry = 51825;
update item_template set sell_price =         14 where entry = 51827;
update item_template set sell_price =         22 where entry = 51829;
update item_template set sell_price =       2700 where entry = 51842;
update item_template set sell_price =       2400 where entry = 51843;
update item_template set sell_price =       2600 where entry = 51844;
update item_template set sell_price =        412 where entry = 51850;
update item_template set sell_price =        923 where entry = 51851;
update item_template set sell_price =       1500 where entry = 80400;
update item_template set sell_price =       1207 where entry = 80700;
update item_template set sell_price =        560 where entry = 80701;
update item_template set sell_price =        359 where entry = 80702;
update item_template set sell_price =        311 where entry = 80703;
update item_template set sell_price =        622 where entry = 80704;
update item_template set sell_price =       1264 where entry = 80705;
update item_template set sell_price =        611 where entry = 80706;
update item_template set sell_price =        754 where entry = 80707;
update item_template set sell_price =        905 where entry = 80708;
update item_template set sell_price =       2381 where entry = 80709;
update item_template set sell_price =        687 where entry = 80711;
update item_template set sell_price =        927 where entry = 80712;
update item_template set sell_price =       1134 where entry = 80713;
update item_template set sell_price =        867 where entry = 80714;
update item_template set sell_price =        782 where entry = 80715;
update item_template set sell_price =       4465 where entry = 80716;
update item_template set sell_price =       1614 where entry = 80717;
update item_template set sell_price =       1821 where entry = 80718;
update item_template set sell_price =       1672 where entry = 80719;
update item_template set sell_price =       1270 where entry = 80720;
update item_template set sell_price =        751 where entry = 80721;
update item_template set sell_price =       1962 where entry = 80722;
update item_template set sell_price =       2596 where entry = 80723;
update item_template set sell_price =       1472 where entry = 80724;
update item_template set sell_price =        874 where entry = 80725;
update item_template set sell_price =       1359 where entry = 80726;
update item_template set sell_price =       2347 where entry = 80727;
update item_template set sell_price =       2582 where entry = 80728;
update item_template set sell_price =       1272 where entry = 80729;
update item_template set sell_price =       1293 where entry = 80730;
update item_template set sell_price =       2954 where entry = 80731;
update item_template set sell_price =       1497 where entry = 80732;
update item_template set sell_price =       7864 where entry = 80733;
update item_template set sell_price =       4787 where entry = 80734;
update item_template set sell_price =       1243 where entry = 80735;
update item_template set sell_price =       3765 where entry = 80736;
update item_template set sell_price =       3391 where entry = 80737;
update item_template set sell_price =       2581 where entry = 80738;
update item_template set sell_price =       7753 where entry = 80739;
update item_template set sell_price =       6984 where entry = 80740;
update item_template set sell_price =       2067 where entry = 80741;
update item_template set sell_price =       2475 where entry = 80742;
update item_template set sell_price =       1543 where entry = 80743;
update item_template set sell_price =      14472 where entry = 80744;
update item_template set sell_price =      12270 where entry = 80745;
update item_template set sell_price =      12836 where entry = 80746;
update item_template set sell_price =       5762 where entry = 80747;
update item_template set sell_price =       2675 where entry = 80786;
update item_template set sell_price =       2687 where entry = 80787;
update item_template set sell_price =       1874 where entry = 80789;
update item_template set sell_price =       3512 where entry = 80790;
update item_template set sell_price =       3342 where entry = 80791;
update item_template set sell_price =        956 where entry = 80802;
update item_template set sell_price =       1179 where entry = 80803;
update item_template set sell_price =       3276 where entry = 80804;

-- Fix remaining items with wrong buy and/or sell prices.

update item_template set buy_price = (sell_price * 4) where buy_price = 0 and sell_price > 0 and entry > 50000;
update item_template set sell_price = (buy_price / 4) where sell_price > (buy_price / 4) and buy_price > 0 and entry > 50000;

-- Fix more mounts:

update item_template set name = 'Black Stallion', description = 'Rumored to be favored by SI:7 for night missions due to its dark coat.' where entry = 2411;

update item_template set class = 15, subclass = 4 where entry in (5663, 81232);
delete from item_template where entry = 50419;

update item_template set name = 'Cenarion Hippogryph' where entry = 81121;
update item_template set spellid_1 = 46451 where entry = 81120;
update item_template set spellid_1 = 46444 where entry = 81102;

update creature_template set name = 'Barrens Zhevra', display_id1 = 18243 where entry = 50091;

REPLACE INTO `item_template` VALUES (81241, 10, 15, 4, 'Armored Orgrimmar Wolf', 'The wolves of the Horde are befriended, not domesticated.', 36431, 4, 64, 1, 3500000, 0, 0, -1, 434, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45038, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 76, required_reputation_rank = 7 where entry = 81241;

update item_template set name = 'Bronze Drake', description = 'Lost time is never found again. Oh, never mind I found it...', required_reputation_faction = 910, spellid_1 = 46212, required_reputation_rank = 7, buy_price = 25000000, display_id = 30794 where entry = 51252;

update creature_template set name = 'Nozari', display_id1 = 18033 where entry = 80943;

delete from custom_mount_entry_relation where item_entry = 51252;

REPLACE INTO `creature_template` VALUES (90980, 0, 18432, 0, 0, 0, 'Zulian Panther', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

UPDATE `spell_template` SET `effectMiscValue1`='90980' WHERE (`entry`='10787') AND (`build`='5875');

REPLACE INTO `item_template` VALUES (81242, 10, 15, 4, 'Viridian Hippogryph', 'Ancient mounts of the Highborne, now left to run wild, they can rarely be found due to their latent magical powers.', 19570, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46451, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

REPLACE INTO `creature_template` VALUES (90981, 0, 18298, 0, 0, 0, 'Zulian Panther', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

replace into custom_mount_entry_relation values (81242, 90981);

REPLACE INTO `creature_template` VALUES (90982, 0, 19032, 0, 0, 0, 'Kudryavka Noumi', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update creature_ai_events set event_chance = 15 where id in (1510601, 1510501, 1499001, 1510301, 1510201, 1499101, 1624101, 1625501);

REPLACE INTO `creature_template` VALUES (90983, 0, 100, 0, 0, 0, 'Aneka Konko', '', 0, 14, 14, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(81243, 15, 2, 'Gryphon Hatchling', 'A gift from the Wildhammer dwarves to the heroes of the Alliance, these hatchlings are descendants of the same gryphons ridden by Falstad and his entourage into Grim Batol.', 1294, 3, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
(51583, 6852, 0, 0, 'Beaky', '', '1', '1', '64', '64', '35', '', 0.3);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
(81243, 51583);

update item_template set inventory_type = 7 where entry = 51763;

REPLACE INTO `creature_template` VALUES (80309, 0, 18311, 0, 0, 0, 'Black Pounder', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_template` VALUES (80310, 0, 18312, 0, 0, 0, 'Blue Pounder', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_template` VALUES (80311, 0, 18313, 0, 0, 0, 'Green Pounder', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_template` VALUES (80319, 0, 18314, 0, 0, 0, 'Red Pounder', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` VALUES (80312, 0, 18530, 0, 0, 0, 'Armored Ebon Deathcharger', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_template` VALUES (80313, 0, 18531, 0, 0, 0, 'Armored Crimson Deathcharger', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_template` VALUES (80314, 0, 18532, 0, 0, 0, 'Armored Emerald Deathcharger', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_template` VALUES (18533, 0, 18533, 0, 0, 0, 'Armored Ivory Deathcharger', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

update item_template set name = 'Armored Vermilion Deathcharger' where entry = 81235;

replace into custom_mount_entry_relation (item_entry, creature_entry) values (81245, 80313);
replace into custom_mount_entry_relation (item_entry, creature_entry) values (81246, 80314);
replace into custom_mount_entry_relation (item_entry, creature_entry) values (81253, 80319);

REPLACE INTO `item_template` VALUES (81244, 10, 15, 4, 'Armored Ebon Deathcharger', 'Some horses merely adopt the dark. This horse was born in it.', 17786, 4, 64, 1, 3500000, 0, 0, -1, 434, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46514, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 68, required_reputation_rank = 7 where entry = 81244;

REPLACE INTO `item_template` VALUES (81246, 10, 15, 4, 'Armored Emerald Deathcharger', 'Some horses merely adopt the dark. This horse was born in it.', 17786, 4, 64, 1, 3500000, 0, 0, -1, 434, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46516, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 68, required_reputation_rank = 7 where entry = 81246;

REPLACE INTO `item_template` VALUES (81247, 10, 15, 4, 'Armored Ivory Deathcharger', 'Some horses merely adopt the dark. This horse was born in it.', 17786, 4, 64, 1, 3500000, 0, 0, -1, 434, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46517, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 68, required_reputation_rank = 7 where entry = 81247;

REPLACE INTO `item_template` VALUES (81245, 10, 15, 4, 'Armored Crimson Deathcharger', 'Some horses merely adopt the dark. This horse was born in it.', 17786, 4, 64, 1, 3500000, 0, 0, -1, 434, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46515, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update item_template set required_reputation_faction = 68, required_reputation_rank = 7 where entry = 81245;

REPLACE INTO `item_template` VALUES (81250, 10, 15, 4, 'Reinforced Black Pounder', '', 7841, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46510, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);
REPLACE INTO `item_template` VALUES (81251, 10, 15, 4, 'Reinforced Blue Pounder', '', 7841, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46511, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);
REPLACE INTO `item_template` VALUES (81252, 10, 15, 4, 'Reinforced Green Pounder', '', 7841, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46512, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);
REPLACE INTO `item_template` VALUES (81253, 10, 15, 4, 'Reinforced Red Pounder', '', 7841, 3, 80, 1, 100000, 0, 0, -1, -1, 40, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46513, 0, 0, 0, -1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, NULL);

update quest_template set requiredraces = 589 where entry in (256, 1016, 5713, 1582);

-- Some new quests:

REPLACE INTO `creature_template` VALUES (80938, 0, 4, 0, 0, 0, 'Quest 80395 Trigger', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_template` VALUES (3000284, 0, 0, 26165, 'Mysterious Glittering Object', 0, 32, 1, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_kheyna_wormhole');

update creature_template set npc_flags = 7 where entry = 3658;
update creature_template set npc_flags = 2 where entry = 81041;

set @quest_entry = 80395;
set @quest_zone = 17;
set @title = 'A Glittering Opportunity';
set @description = 'Hey, $r! In addition to the usual weapons in my stock, I have an opportunity for you.\n\nWhile I was doing my run from Ratchet to the Crossroads I saw a weird light on the mountain just south of Ratchet. There seems to be a ramp up just outside Ratchet, some lions call the thing home though, so be careful.\n\nNow I don\'t know what it is, but you adventurin\' types like to dive right in when it comes to dangerous situations right? It could be some HUGE deal like a demon cult or whatever for all I know and them doing nasty stuff to Ratchet would be very bad for MY business. Consider whatever spoils you find as payment.';
set @objective = 'Investigate the mountain south of Ratchet.';
set @completetext = 'Oh you\'re an adventurer that has come to investigate the lights aren\'t you?\n\nDon\'t worry, I was merely experimenting with an advanced Arcane Wormhole Generator and it is of no danger to anyone! Fear not, my experiment will be of use to everyone if they succeed.\n\nOn the other hand, I have a task for you...';
set @incompletetext = 'Greetings! Who are you?';
set @faction_id = 470;
set @faction_count = 25;
set @xp_or_money = 700;
set @reward_money = 0; 
set @quest_level = 13;
set @min_level = 13;
set @questgiver_id = 3658;
set @quest_finisher = 81041;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 0;
set @RewChoiceItemId1 = 0; 
set @RewChoiceItemId2 = 0; 
set @RewChoiceItemId3 = 0;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 0;
set @RewChoiceItemCount2 = 0;
set @RewChoiceItemCount3 = 0;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 80938;
set @creature_to_kill_2 = 0; 
set @creature_to_kill_3 = 0;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 1;
set @creature_to_kill_2_count = 0;
set @creature_to_kill_3_count = 0;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 0; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 0;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;
replace into quest_template values 
(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest,
ObjectiveText1 = 'Investigate the mountain south of Ratchet'
where entry = @quest_entry;	

set @quest_entry = 80396;
set @quest_zone = 17;
set @title = 'A Bloody Good Deed';
set @description = 'I am Kheyna Spinpistol, mechanic, medic and the end of all evildoers!\n\nI am currently tracking a dangerous foe who will cause the deaths of an unknown number of people. I will ask for your help in dealing with it later… Maybe!\n\nFor now, I have a task for you, one that will have quite the generous reward! The nearby Kolkar tribe is preparing for a raid on the Crossroads, one that will lead to the deaths of countless innocents! I know because I\'ve used one of my tools and you could say I "snuck" up in their tent and heard their Khan order it.\n\nThis can be avoided however! You\'ll save many lives if you go down there and put an end to them all! It\'ll be fun… I hope!\n\nThey\'re all around the Oasis to the west! Once you\'re done come back to me, if I am not here simply touch the crystal again, I will know someone is here for me!';
set @objective = 'Kill 6 Kolkar Bloodchargers, 4 Kolkar Pack Runners and  4 Kolkar Marauders. Use the crystal to summon Kheyna Spinpistol again.';
set @completetext = 'Wonderful! I wonder what feelings you had while their blood was painting you red, or what came into your mind as you heard them scream in pain and probably beg for mercy.\n\nI wish I could have been there to see it for myself. However, know that thanks to this violence many lives were changed.\n\nNow of course I\'ll make sure to reward you… Hmm, let\'s see… Yes this will be something you can either use or sell!\n\nI\'ll make sure to tell others of your deeds! Hopefully we\'ll meet again. Bye for now!';
set @incompletetext = 'Well, did you do it?';
set @faction_id = 470;
set @faction_count = 250;
set @xp_or_money = 980;
set @reward_money = 61; 
set @quest_level = 13;
set @min_level = 13;
set @questgiver_id = 81041;
set @quest_finisher = 81041;
set @nextquest = 0;
set @nextquestinchain = 0;
set @prevquest = 80395;
set @RewChoiceItemId1 = 51793; 
set @RewChoiceItemId2 = 51794; 
set @RewChoiceItemId3 = 51792;
set @RewChoiceItemId4 = 0; 
set @RewChoiceItemCount1 = 1;
set @RewChoiceItemCount2 = 1;
set @RewChoiceItemCount3 = 1;
set @RewChoiceItemCount4 = 0;
set @reward_item_1 = 0;
set @reward_item_2 = 0; 
set @reward_item_3 = 0;
set @reward_item_4 = 0;
set @reward_item_1_count = 0;
set @reward_item_2_count = 0;
set @reward_item_3_count = 0;
set @reward_item_4_count = 0;
set @creature_to_kill_1 = 3397;
set @creature_to_kill_2 = 3274; 
set @creature_to_kill_3 = 3275;
set @creature_to_kill_4 = 0;
set @creature_to_kill_1_count = 6;
set @creature_to_kill_2_count = 6;
set @creature_to_kill_3_count = 6;
set @creature_to_kill_4_count = 0;
set @required_item_1 = 0; 
set @required_item_2 = 0;
set @required_item_3 = 0;
set @required_item_4 = 0;
set @required_item_1_count = 0;
set @required_item_2_count = 0;
set @required_item_3_count = 0;
set @required_item_4_count = 0;
replace into quest_template values 
(@quest_entry, '0', '2', @quest_zone, @min_level,  '0', @quest_level, '0', '0', '0', '0', '0', '0', '0', '0', '0','0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @title, @description, @objective, @completetext, @incompletetext, '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', @faction_id, '0', '0', '0', '0', @faction_count, '0', '0', '0', '0', '0', @xp_or_money, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0', 0, 0);
replace into creature_questrelation (id, quest, patch_min, patch_max) values (@questgiver_id, @quest_entry,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (@quest_finisher, @quest_entry,'0','10');
update quest_template set 
rewitemid1 = @reward_item_1, rewitemcount1 = @reward_item_1_count,
rewitemid2 = @reward_item_2, rewitemcount2 = @reward_item_2_count,
rewitemid3 = @reward_item_3, rewitemcount3 = @reward_item_3_count,
rewitemid4 = @reward_item_4, rewitemcount4 = @reward_item_4_count,
RewChoiceItemId1 = @RewChoiceItemId1, RewChoiceItemCount1 = @RewChoiceItemCount1,
RewChoiceItemId2 = @RewChoiceItemId2, RewChoiceItemCount2 = @RewChoiceItemCount2,
RewChoiceItemId3 = @RewChoiceItemId3, RewChoiceItemCount3 = @RewChoiceItemCount3,
RewChoiceItemId4 = @RewChoiceItemId4, RewChoiceItemCount4 = @RewChoiceItemCount4,
ReqCreatureOrGOId1 = @creature_to_kill_1, ReqCreatureOrGOCount1 = @creature_to_kill_1_count,
ReqCreatureOrGOId2 = @creature_to_kill_2, ReqCreatureOrGOCount2 = @creature_to_kill_2_count,
ReqCreatureOrGOId3 = @creature_to_kill_3, ReqCreatureOrGOCount3 = @creature_to_kill_3_count,
ReqCreatureOrGOId4 = @creature_to_kill_4, ReqCreatureOrGOCount4 = @creature_to_kill_4_count,
reqitemid1 = @required_item_1, reqitemcount1 = @required_item_1_count,
reqitemid2 = @required_item_2, reqitemcount2 = @required_item_2_count,
reqitemid3 = @required_item_3, reqitemcount3 = @required_item_3_count,
reqitemid4 = @required_item_4, reqitemcount4 = @required_item_4_count,
nextquestid = @nextquest, RewOrReqMoney = @reward_money, 
nextquestinchain = @nextquestinchain, prevquestid = @prevquest
where entry = @quest_entry;	

-- Misc. DB fixes:

update item_template set bonding = 1, spellid_1 = 28505, display_id = 19529 where entry = 80878;
update creature_template set scale = 0.5 where entry = 80920;
replace into custom_pet_entry_relation values (80878, 80920);

REPLACE INTO `item_template` VALUES (81254, 0, 15, 0, 'Water Waveling', 'This Elemental has been formed personally by Duke Hydraxis as thanks for your help in fighting the Sulfuran Firelords.', 13689, 1, 0, 1, 6000, 1500, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 893, 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28505, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `creature_template` VALUES (90985, 0, 525, 0, 0, 0, 'Water Waveling', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
update creature_template set scale = 0.4 where entry = 90985;
replace into custom_pet_entry_relation values (81254, 90985);

update item_template set required_reputation_faction = 749, required_reputation_rank = 7 where entry = 81254;

UPDATE `item_template` SET `spellid_2`='15464', `spelltrigger_2`='1' WHERE (`entry`='81223') AND (`patch`='0');
UPDATE `item_template` SET `stat_type1`='7' WHERE (`entry`='81223') AND (`patch`='0');

REPLACE INTO `item_template` VALUES (81255, 0, 0, 0, 'Skin Change Token: Dreadskull Clan I', '', 30658, 1, 0, 1, 0, 0, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');

REPLACE INTO `item_template` VALUES (81256, 0, 0, 0, 'Skin Change Token: Dreadskull Clan II', '', 30658, 1, 0, 1, 0, 0, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');

update item_template set allowable_race = 2 where entry = 81255;
update item_template set allowable_race = 2 where entry = 81256;

replace into item_template values
 ('81257', '0', '15', '', 'Basic Guide on Necromancy', '101 Ways to Raise a Skeleton.', '8092', '3', '0', '1', '0', '1845', '23', '-1', '-1', '30',
 '25', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '8853', '0', '0', '0', '900000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL); 

replace into creature_model_info values (18499, 5875, 2, 2, 0, 0, 0);

-- New Molten Core Trash Drops
replace into item_template values
 ('81260', '0', '2', '0', 'Lavashard Axe', '', '19224', '4', '65536', '1', '87144', '21786', '13', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '79', '147', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '105', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81261', '0', '4', '1', 'Boots of Blistering Flames', '', '17227', '4', '0', '1', '25987', '6497', '8', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '16', '7', '16',
 '6', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '69', '0', '0', '0',
 '0', '0', '0', '9296', '1', '0', '0', '-1', '0', '-1', '9416', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '1', '0', '0', '50', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81262', '0', '4', '4', 'Core Forged Helmet', '', '16119', '4', '0', '1', '26165', '6541', '1', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '34', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '600', '0', '14', '0',
 '0', '10', '0', '9343', '1', '0', '0', '-1', '0', '-1', '13384', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '100', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81263', '0', '4', '0', 'Lost Dark Iron Chain', 'The initials T.S. are etched on a chain link.', '18172', '4', '65536', '1', '49364', '12341', '2', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '16', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0', '0', '0',
 '0', '0', '0', '13387', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
  replace into item_template values
 ('81264', '0', '4', '3', 'Shoulderpads of True Flight', '', '26164', '4', '0', '1', '40804', '10201', '3', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '18', '5', '9',
 '7', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '413', '0', '0', '0',
 '0', '0', '0', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '85', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81265', '0', '4', '2', 'Ashskin Belt', '', '19019', '4', '0', '1', '21983', '5496', '6', '-1', '-1', '65',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '10', '3', '10',
 '7', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '111', '0', '10', '0',
 '0', '5', '0', '0', '0', '0', '0', '-1', '0', '-1', '46040', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '1', '0', '0', '40', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);
 -- Lavashard Axe Loottables
 replace into creature_loot_template values (11668, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12099, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11666, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11667, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11661, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11664, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11663, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11662, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12119, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11665, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12076, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12100, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12101, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11659, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11658, 81260, 0.2, 13, 1, 1, 0, 0, 10);
 -- Boots of Blistering Flames Loottables
 replace into creature_loot_template values (11668, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12099, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11666, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11667, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11661, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11664, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11663, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11662, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12119, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11665, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12076, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12100, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12101, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11659, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11658, 81261, 0.2, 13, 1, 1, 0, 0, 10);
 -- Core Forged Helmet Loottables
 replace into creature_loot_template values (11668, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12099, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11666, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11667, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11661, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11664, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11663, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11662, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12119, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11665, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12076, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12100, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12101, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11659, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11658, 81262, 0.2, 13, 1, 1, 0, 0, 10);
 -- Lost Dark Iron Chain Loottables
 replace into creature_loot_template values (11668, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12099, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11666, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11667, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11661, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11664, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11663, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11662, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12119, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11665, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12076, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12100, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12101, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11659, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11658, 81263, 0.2, 13, 1, 1, 0, 0, 10);
 -- Shoulderpads of True Flight Loottables
 replace into creature_loot_template values (11668, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12099, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11666, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11667, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11661, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11664, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11663, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11662, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12119, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11665, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12076, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12100, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (12101, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11659, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (11658, 81265, 0.2, 13, 1, 1, 0, 0, 10);
 -- New Rare Mob Items
 replace into item_template values
 ('81266', '0', '2', '7', 'Demonic Scimatar', '', '32314', '3', '0', '1', '5934', '1484', '21', '-1', '-1', '29',
 '24', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '4', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2500', '0',
 '0', '33', '59', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '9139', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '1', '3', '0', '0', '90', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81267', '0', '4', '2', 'Flameskin Gloves', '', '19005', '2', '0', '1', '956', '239', '10', '-1', '-1', '29',
 '24', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '6', '2', '7', '5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '57', '0', '0', '0',
 '0', '0', '0', '7711', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '30', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81268', '0', '4', '0', 'Orb of the Hellcaller', '', '23727', '3', '0', '1', '4973', '1243', '12', '-1', '-1', '29',
 '24', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '4629', '0', '0', '0', '3600000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81269', '0', '4', '0', 'Araga\'s Tail', '', '1503', '2', '0', '1', '3374', '844', '12', '-1', '-1', '37',
 '32', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);
 replace into item_template values
 ('81270', '0', '4', '1', 'Araga\'s Pelt', '', '32371', '2', '0', '1', '2806', '702', '16', '-1', '-1', '37',
 '32', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '8', '1', '0', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0',
 '0', '1', NULL);
 -- Loottables
 replace into creature_loot_template values (3773, 81266, 15, 6, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (3773, 81267, 75, 6, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (3773, 81268, 10, 6, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (14222, 81269, 30, 4, 1, 1, 0, 0, 10);
 replace into creature_loot_template values (14222, 81270, 70, 4, 1, 1, 0, 0, 10);
 -- Siege Bomber Fix
 update item_template set spelltrigger_1 = 0 where entry = 51759;
 
 replace into item_template values
 ('81271', '0', '4', '1', 'Acolyte\'s Visage', '', '50150', '2', '0', '1', '51287', '16543', '1', '-1', '16', '35',
 '30', '0', '0', '0', '0', '0', '68', '6', '0', '1', '0', '5', '8', '6', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('81272', '0', '4', '2', 'Dreadguard\'s Shawl', '', '50152', '2', '0', '1', '54165', '19013', '1', '-1', '16', '35',
 '30', '0', '0', '0', '0', '0', '68', '6', '0', '1', '0', '4', '8', '7', '3',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '79', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
 
 update item_template set display_id = 60954, name = 'Over-Engineered Riffle', description = 'Failure to operate within strict safety guidelines may result in... double death? Turbo death? Aliveness?' where entry = 51794;
 update item_template set display_id = 37046, name = 'Void-Linked Robe', description = 'This robe has runes you\'ve never seen before enblazoned on it, and the way it is woven is almost as if it from another world!' where entry = 51792;
 update item_template set display_id = 60958, name = 'Void-Linked Blade', description = 'This crystalline blade pulsates with energy, you\'ve never seen anything like it before.' where entry = 51793;