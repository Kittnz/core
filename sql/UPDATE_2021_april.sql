
replace into `item_template` values (81228, 0, 0, 0, 'Skin Change Token: Tauren Spirit Walker', '', 30658, 2, 0, 1, 0, 0, 0, -1, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');
update item_template set quality = 1 where entry = 81228;
update item_template set name = 'Skin Change Token: Human Death Knight', allowable_race = 1 where entry = 81210;
update item_template set name = 'Skin Change Token: Human Scholomance Student', allowable_race = 1 where entry = 50106;

replace into `item_template` values (81229, 0, 0, 0, 'Skin Change Token: Dwarf Death Knight', '', 30658, 2, 0, 1, 0, 0, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');
update item_template set quality = 1 where entry = 81229;

update item_template set quality = 3, max_count = 1 where entry in (12325, 12326, 12327, 8630, 12302, 12303);

replace into `item_template` values (81230, 0, 0, 0, 'Skin Change Token: Gnome Scholomance Student', '', 30658, 2, 0, 1, 0, 0, 0, -1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12244, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_skin_change');
update item_template set quality = 1 where entry = 81230;

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

REPLACE INTO `item_template` VALUES (81233, 10, 15, 0, 'Armored Ironforge Ram', 'Wildhammer Fact Checker claims that this specific breed was the first type of ram domesticated by the dwarves when they settled in Dun Morogh.', 17343, 4, 64, 1, 1000000, 0, 0, -1, 589, 60, 60, 762, 150, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45032, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

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
