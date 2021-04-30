
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
	set @description = 'Hey, $r! In addition to the usual weapons in my stock, I have an opportunity for you.\n\nWhile I was doing my run from Ratchet to the Crossroads I saw a weird light on the mountain just south of Ratchet. There seems to be a ramp up just outside Ratchet, some raptors call the thing home though, so be careful.\n\nNow I don\'t know what it is, but you adventurin\' types like to dive right in when it comes to dangerous situations right? It could be some HUGE deal like a demon cult or whatever for all I know and them doing nasty stuff to Ratchet would be very bad for MY business. Consider whatever spoils you find as payment.';
	set @objective = 'Investigate the mountain south of Ratchet.';
	set @completetext = 'Oh you\'re an adventurer that has come to investigate the lights aren\'t you? Don\'t worry, I was merely experimenting with a special matter transmitter and it is of no danger to anyone!\n\nFear not, my experiment will be of use to everyone once it succeeds! On the other hand, I have a task for you if you wish to keep this area safer!';
	set @incompletetext = 'Oh my, greetings! Who are you? ';
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
	set @description = 'I am Kheyna Spinpistol. Mechanist, medic, and among other things.\n\nI am currently tracking a dangerous foe who threaten the lives of an untold number of innocents. I may ask for your help in dealing with this later…\n\nFor now, I have a task for you, one that will have quite the generous reward! The nearby Kolkar tribe is preparing for a raid on the Crossroads. I know this because I\'ve used one of my tools, and you could say I "sneaked" into their tent and heard their Khan ordering it. This can be avoided however. You\'ll save many lives if you go down there and put an end to them all.\n\nThey\'re all around the Oasis to the west. Once you\'re done come back to me. If I am not here simply touch the crystal again, I will know someone is waiting for me. Now get out there and KILL them all!';
	set @objective = 'Kill 6 Kolkar Bloodchargers, 4 Kolkar Pack Runners and  4 Kolkar Marauders. Use the crystal to summon Kheyna Spinpistol again.';
	set @completetext = 'Wonderful. I wonder what it felt like to have their blood splatter all over you, or what came into your mind as you heard them scream in pain and fall like the vermin they are.\n\nI wish I could have been there to see it for myself, heh. However, know that thanks to this violence many lives were saved. Now of course I\'ll be sure to reward you… Hmm, let\'s see… Yes, this will be something you can either use or sell for compensation.\n\nI\'ll make sure to tell others of your deeds. Hopefully we\'ll meet again, $n.';
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
	set @RewChoiceItemId1 = 51792;
	set @RewChoiceItemId2 = 0;
	set @RewChoiceItemId3 = 0;
	set @RewChoiceItemId4 = 0; 
	set @RewChoiceItemCount1 = 1;
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

	REPLACE INTO `item_template` VALUES (81254, 0, 15, 0, 'Water Waveling', 'This Elemental has been formed personally by Duke Hydraxis as thanks for your help in fighting the Sulfuran Firelords.', 33283, 1, 0, 1, 6000, 1500, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 893, 7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28505, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

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
	 ('81257', '0', '15', '0', 'Basic Guide on Necromancy', '101 Ways to Raise a Skeleton.', '8092', '3', '0', '1', '0', '1845', '23', '-1', '-1', '30',
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
	 
	 update item_template set display_id = 60954, name = 'Otherworldly Riffle', description = 'Failure to operate within strict safety guidelines may result in... double death? Turbo death? Aliveness?' where entry = 51794;
	 update item_template set display_id = 37046, name = 'Otherworldly Robe', description = 'This robe has runes you\'ve never seen before enblazoned on it, and the way it is woven is almost as if it from another world!' where entry = 51792;
	 update item_template set display_id = 60958, name = 'Otherworldly Blade', description = 'This crystalline blade pulsates with energy, you\'ve never seen anything like it before.' where entry = 51793;
	  
	replace into item_template values
	 ('81275', '0', '12', '0', 'Intact Pounder Mainframe', '', '20625', '2', '0', '1', '0', '0', '0', '-1', '-1', '20',
	 '30', '202', '125', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '80398', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	replace into creature_loot_template values (6229, 81275, 0.8, 13, 1, 1, 0, 0, 10);
	 
	set @quest_entry = 80398;
	set @quest_zone = 721;
	set @title = 'A Pounding Brain';
	set @description = 'You find out that the Pounder\'s Mainframe is surprisingly intact. This could be valuable!\n\nTake it to an expert of Gnomish Engineering who might be able to do something with it.';
	set @objective = 'Find Someone who can figure out what to do with the Mainframe.';
	set @completetext = 'Is that an actual intact Pounder Mainframe?! Where did you get this?\n\nThe possibilities with this are endless! Tell you what, if you allow me to copy the data from this mainframe then I will help you build a Pounder of your own!';
	set @incompletetext = 'Hello there, $r, are you here for one of my inventions?';
	set @faction_id = 21;
	set @faction_count = 150;
	set @xp_or_money = 980;
	set @reward_money = 2500; 
	set @quest_level = 30;
	set @min_level = 30;
	set @questgiver_id = 0;
	set @quest_finisher = 7406;
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
	set @creature_to_kill_1 = 0;
	set @creature_to_kill_2 = 0; 
	set @creature_to_kill_3 = 0;
	set @creature_to_kill_4 = 0;
	set @creature_to_kill_1_count = 0;
	set @creature_to_kill_2_count = 0;
	set @creature_to_kill_3_count = 0;
	set @creature_to_kill_4_count = 0;
	set @required_item_1 = 81275; 
	set @required_item_2 = 0;
	set @required_item_3 = 0;
	set @required_item_4 = 0;
	set @required_item_1_count = 1;
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

	update item_template set required_skill = 0, required_skill_rank = 0 where entry in (81250, 81251, 81252, 81253);

	-- After April 9th:

	update item_template set stat_type1 = 7, stat_type2 = 3, stat_value2 = 7, spellid_2 = 0 where entry = 81223;
	update creature_template set name = "Dronormu", display_id1 = 18120 where entry = 80943;
	update quest_template set requiredraces = 434 where entry = 80390;
	update quest_template set details = 'Pal, $N, back so soon? Eh, we’re pals, right?\n\nWhy did Amri Demondeal come looking for you? Why won\'t you tell me? Do you also do the spooky demon stuff like she does? With, like, green fire and all that?\n\nGuess I’ll see, won\'t I? Here, this is for you from her. I hope she never speaks to me again!', requestitemstext = 'Hurry up, we ain\'t got all day' where entry = 80119;
	replace into creature_model_info values (19032, 5875, 2, 2, 0, 0, 0);

	-- For April's 14 update:

	replace into creature_loot_template values (11668, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (12099, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (11666, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (11667, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (11661, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (11664, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (11663, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (11662, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (12119, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (11665, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (12076, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (12100, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	replace into creature_loot_template values (12101, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (11659, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 replace into creature_loot_template values (11658, 81264, 0.2, 13, 1, 1, 0, 0, 10);
	 
	 update item_template set spellid_3 = 7597, spelltrigger_3 = 1 where entry = 81265;
	 update item_template set display_id = 16539, name = "Demonic Scimitar" where entry = 81266;
	 update item_template set script_name = 'item_illusion', description = 'This disguise will work until logout.', max_count = 1, display_id = 36521 where name like '%Illusion:%';
	 update item_template set script_name = 'item_illusion' where script_name = 'item_player_engie';
	 update item_template set script_name = 'item_illusion' where script_name = 'item_player_zeaus';
	 update item_template set name = 'Illusion: Dryad' where entry = 50408;
	 
	 REPLACE INTO `item_template` VALUES (8635, 10, 15, 4, 'Ancient Nightsaber', 'The lack of spots or stripes marks this beast as a descendant of the most ancient frostsaber line.', 17606, 3, 64, 1, 1000000, 0, 0, -1, -1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16055, 0, 0, 0, 1, 330, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

	update item_template set bonding = 1 where entry = 51740;

	update gameobject_template set type = 1, data4 = 0 where entry = 3000284;

	replace into item_template values
	 ('81276', '0', '2', '7', 'Monster - Item, Sword - Kheyna', '', '50189', '0', '0', '1', '1', '1', '13', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);

	update creature_template set equipment_id = 81041 where entry = 81041;

	replace into creature_equip_template (entry, patch, equipentry1) values (81041, 0, 81276);

	update quest_template set entry = 60117, patch = 0 where entry = 60115 and patch = 1;
	update creature_involvedrelation set quest = 60117 where id = 1652 and quest = 60115;
	update creature_questrelation set quest = 60117 where id = 6741 and quest = 60115;

	-- Reputation Reward Wand Fixes.
	update item_template set range_mod = 100 where entry = 80645;
	update item_template set range_mod = 100 where entry = 80644;
	update item_template set range_mod = 100 where entry = 80545;
	update item_template set range_mod = 100 where entry = 80544;

	-- Reputation Reward Nerfs and fix.
	update item_template set spellid_2 = 0 where entry = 80607;
	update item_template set spellid_2 = 0 where entry = 80507;
	update item_template set spellid_1 = 14248 where entry = 80515;
	update item_template set spellid_1 = 14248 where entry = 80615;
	update item_template set description = '' where entry = 80544;

	-- Fix for Vile Sting sheathing
	update item_template set sheath = 3 where entry = 80649;

	update item_template set disenchant_id = 1 where entry = 6243;

	update item_template set spellid_1 = 10577 where entry = 80806;
	update item_template set spellid_3 = 0,  spellid_4 = 0 where entry = 51784;

	-- Zalazane’s Apprentice

	replace into item_template values
	 ('59990', '0', '12', '0', 'Shabby Letter', 'A slightly torn and dirty letter.', '8927', '1', '65536', '1', '0', '0', '0', '-1', '-1', '0',
	 '6', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '80399', '0', '7', '1', '0', '0', '0', '0', '0', '0', '16384', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('59994', '0', '4', '0', 'Brawler\'s Ring', '', '24087', '2', '0', '1', '820', '205', '11', '-1', '-1', '11',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '1', '7', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('59993', '0', '4', '0', 'Weak Voodoo Ring', '', '9833', '2', '0', '1', '820', '205', '11', '-1', '-1', '12',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '6', '2',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0',
	 '0', '1', NULL);
	 
	replace into item_template values
	 ('59995', '0', '12', '0', 'Makasgar\'s Head', '', '10546', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into item_template values
	 ('59996', '0', '12', '0', 'Zalazane\'s Mojo', '', '1275', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (3188, 80399, '0','10');
	 
	replace into creature_loot_template values (3207, 59990, 20, 5, 1, 1, 0, 0, 10); 
	replace into creature_loot_template values (3206, 59990, 15, 5, 1, 1, 0, 0, 10); 
	replace into creature_loot_template values (13157, 59995, -100, 5, 1, 1, 0, 0, 10); 
	replace into creature_loot_template values (13157, 59996, -100, 6, 1, 1, 0, 0, 10); 
	  
	replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80399,14,8,6,0,0,'Zalazane\'s Apprentice','That foolish mongrel Makasgar decided he no longer needs the aid of his master and has grown beyond my teachings.\n\n...\n\nThat mojo was required for a powerful ritual to help us take over the Sen’jin Village and later the whole of Durotar.\n\nGo do your master’s bidding and bring me his head!','After reading the letter you decide to find Zalazane’s former apprentice by yourself and spare him of his head.\n\nTaking his head and Zalazane’s mojo back to Master Gadrin in Sen’jin Village will earn you a reward.','What do you have there, $N?','Zalazane’s mojo and his apprentice’s head. A job well-done mon.\n\nHere, old Gadrin has a reward for you. Just pick which one you want.',59996,1,59995,1,0,0,0,0,'','','','',0,0,0,510,510,250,76,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,59993,1,59994,1,0,0,0,0);

	update creature_template set level_min = 9, level_max = 10 where entry = 13157;

	-- Re-assemble! 

	replace into item_template values
	 ('59997', '0', '12', '0', 'Dwarven Writings', 'These pages bear no meaning to you and while there\'s a text, it looks indecipherable.', '7694', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into creature_loot_template values (2893, 59997, -70, 5, 1, 1, 0, 0, 10); 
	 replace into creature_loot_template values (2894, 59997, -70, 5, 1, 1, 0, 0, 10); 
	 
	replace into creature_questrelation (id, quest, patch_min, patch_max) values (81060, 80400,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (81060, 80400,'0','10');

	replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80400,3,40,36,0,0,'Re-assembler!','<Mumbling under his nose, the dwarf looks disturbed, angry and frustrated.>\n\nBlast \'em all buggers to pieces.. Oh, hallo there. Perfect timing, my friend! Sure as hell I\'d have ya hand roit \'ere and now!\n\nSo, listen up, my friend. I\'ve had me book written recently and was about tae get me sum ingredients I needed fer mah new invention so I had tae leave me camp and waddayaknow?!\n\nBlasted troggs came over and only the Titans know what these rottin\' basterds were lookin\' for at me camp!\n\nAlas, me book got ripped to pieces it seems and judging by what\'s left of it all 25 pages of perfectly written patterns and schematics were lost.\n\nAll I need is them pages gathered and to get me book reassembled in no time… Blast \'em, scorch \'em, shoot \'em, slice and chop \'em… up to yar liking, lad!\n\nAll I care is me book returned and them blasted troggs suffer in the process. They be brainless as ghouls, alas, just like ghouls they tend to run in packs... just be careful and don\'t let \'em git ya!','Find stolen Dwarven Writings and return it to Prospector Brotalus.','Wrecking me camp, stealin\' me belongings, eatin\' me supplies and even settin\' my camp ablaze is nowhere near as horrible a crime compared to stealing me book!\n\nMake \'em suffer more than a gryphon forced to walk!','Oh, you’re back already? Why, you’re a quick one. Great job!',59997,25,0,0,0,0,0,0,'','','','',0,0,11900,2980,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

	-- Misc. DB fixes:

	update item_template set spellid_1 = 26142, stat_value1 = 10, stat_value2 = 10 where entry = 51738;

	-- To Build a Pounder 

	replace into item_template values
	 ('81280', '0', '12', '0', 'Thorium Tuned Servo', '', '7839', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into creature_loot_template values (4295, 81280, -10, 5, 1, 1, 0, 0, 10); 
	 
	 replace into item_template values
	 ('81281', '0', '12', '0', 'Perfect Golem Core', '', '23727', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into creature_loot_template values (8983, 81281, -100, 5, 1, 1, 0, 0, 10); 
	 
	 replace into item_template values
	 ('81282', '0', '12', '0', 'Adamantite Rod', '', '37054', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 replace into creature_loot_template values (11120, 81282, -100, 5, 1, 1, 0, 0, 10); 

	replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80398,80401,33,60,30,0,0,'To Build a Pounder','Unfortunately, building a Pounder isn\'t easy. I will supply most of the components, but I will need you to get me some special things. It is up to you how you go about acquiring them.\n\nI need the following:\n\nA thorium tuned servo for the chassis. I only know of one, and it\'s been locked up by those Scarlet fanatics. I think the armory is where they store objects they consider heretical. Go get it for me!\n\nIn addition to that, I also need a perfect core for the Pounder. The Dark Iron golems in the Blackrock Depths make a good source. Golem Lord Argelmach probably has one.\n\nThe last component I need is a high quality adamantite rod used for the endoskeleton. I believe Stratholme\'s forges used to make such rods in the past. I do not know the state of the city, but I believe the rods may still survive there.','Acquire Thorium Tuned Servo from the Scarlet Monastery\'s Armory, obtain the Perfect Golem Core in the Blackrocks Depths from Golem Lord Argelmach, find the Adamantite Rod in Stratholme. Return to Oglethorpe Obnoticus.','Welcome back! How did it go? Did you get the items yet?','That\'s all the components! Wonderful!\n\nWhile you were gone, I\'ve been busy engineering your Pounder. All that\'s left is to apply the components you\'ve brought and to paint it.\n\nI didn\'t do the paint job yet so you could pick a color!',81280,1,81281,1,81282,1,0,0,'','','','',0,0,10000,0,21,250,0,0,0,0,0,0,0,0,70,0,0,0,0,0,0,0,0,81253,1,81252,1,81251,1,81250,1);

	replace into creature_questrelation (id, quest, patch_min, patch_max) values (7406, 80401,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (7406, 80401,'0','10');

	-- Misc. DB fixes:

	update quest_template set title = 'A Gizmo a Day...' where entry = 80386;
	update creature_template set name = 'Abigale Rowe' where entry = 81045;

	-- New Naxxramas compation:

	REPLACE INTO `item_template` VALUES (81283, 0, 15, 0, 'Mr. Bigglesworth', 'Upon exiting the freezing necropolis of Naxxramas, Mr. Bigglesworth promptly found a warm spot in the sun to take a long nap in.', 32746, 1, 0, 1, 6000, 1500, 0, -1, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28505, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

	update item_template set quality = 3 where entry = 81283;

	REPLACE INTO `creature_template` VALUES (90986, 0, 16622, 0, 0, 0, 'Mr. Bigglesworth', '', 0, 1, 1, 64, 64, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');
	update creature_template set scale = 0.6 where entry = 90986;
	replace into custom_pet_entry_relation values (81283, 90986);

	replace into creature_loot_template values (15990, 81283, 100, 6, 1, 1, 0, 0, 10); 

	-- Correct companions class / subclass:

	update item_template set class = 15, subclass = 2, quality = 1, item_level = 1 where entry in 
	(
	81243,
	22781,
	81207,
	50006,
	50013,
	50014,
	50019,
	50058,
	50084,
	50200,
	50202,
	51002,
	51003,
	51007,
	51220,
	51240,
	51221,
	51251,
	51260,
	51259,
	51261,
	51433,
	80878,
	51700,
	51739,
	51857,
	51858,
	51891,
	50600,
	50601,
	81150,
	81151,
	81152,
	81159,
	81183,
	81254,
	81283,
	11903, 
	8489,
	13584,
	13583,
	20371, 
	23713,
	19055, 
	50013, 
	50019, 
	50083,
	50084, 
	22781,
	50085, 
	51007, 
	81150, 
	81151,
	81207,
	80003,
	81058,
	80878,
	51739,
	80007,
	80000, 
	80001,
	80410,
	81283,
	50077,
	22780,
	19054,
	50070,
	11903,
	8485,
	8486,
	8487,
	8488,
	8489,
	8491,
	8490,
	50067,
	10360,
	10361,
	10392,
	50068, 
	50069,
	10393,
	50078,
	50079,
	11026,
	11027,
	19450,
	8499,
	8498,
	81159,
	10822,
	80006,
	11023,
	21168,
	11110,
	50081,
	50080,
	80002,
	8500,
	8501,
	21308,
	50082,
	22235,
	10398,
	23712,
	8496,
	8492,
	8494, 
	8495,
	12264,
	21301,
	21305
	);

	update item_template set subclass = 2, quality = 1, item_level = 1 where spellid_1 in (select entry from spell_template where description1 like 'Right Click to summon%') and class = 15 and subclass != 2;

	update item_template set name = 'Olive Snapjaw' where entry = 18967;
	update item_template set name = 'Loggerhead Snapjaw' where entry = 18964;
	update item_template set name = 'Hawksbill Snapjaw' where entry = 18965;
	update item_template set name = 'Albino Snapjaw' where entry = 18963;

	update item_template set name = 'Corrupted Kitten' where entry = 11903;
	update item_template set name = 'White Kitten', description = 'The queen had three kittens. The first gave her a juicy rat. The second, a tasty hare. And the white, her favorite, presented the head of her rival.' where entry = 8489;
	update item_template set name = 'Orange Tabby', description = 'The last person who tried to housebreak this cat quickly learned that a soiled rug is better than a shredded everything-else.' where entry = 8487;
	update item_template set name = 'Black Tabby', description = 'Old Alterac saying: \'A cat has nine lives, but needs only one.\'' where entry = 8491;
	update item_template set name = 'Bombay', description = 'Donni Anthania plans to have a bombay buried with her when she dies. A wise adventurer can put its talents to much better use.' where entry = 8485;
	update item_template set name = 'Cornish Rex', description = 'Donni Anthania invites these cats to her tea parties. But she doesn\'t serve their favorite drink: the tears of their enemies.' where entry = 8486;
	update item_template set name = 'Siamese' where entry = 8490;
	update item_template set name = 'Silver Tabby', description = 'Sleeping is this cat\'s second favorite activity. The first is yawning.' where entry = 8488;

	update item_template set description = 'The brown snake is native to Horde-controlled territories. It seems unremarkable until its victims are within range.' where entry = 10361;
	update item_template set description = 'Xan\'tish fearlessly tracks, captures, and trains these noble snakes so they will aid their comrades in battle.' where entry = 10360;
	update item_template set description = 'The crimson snake is favored among the Darkspear trolls for not only its vicious nature, but also its steadfast loyalty.' where entry = 10392;
	update item_template set description = 'A favored companion of Kirin Tor magi, this reptile makes one wonder whether it\'s truly a snake or something else altogether.' where entry = 50067;
	update item_template set description = 'The legendary ale frog was believed to be extinct until the strange brews at the Darkmoon Faire brought them out of hiding.' where entry = 19450;
	update item_template set description = 'It thinks you taste like chicken too.' where entry = 11023;
	update item_template set name = 'Undercity Cockroach', description = 'The cockroach is usually an impulse buy. Its owners have a hard time parting with it even after numerous attempts.' where entry = 10393;
	update item_template set description = 'AND THE HEAVENS SHALL TREMBLE, AND MAN SHALL WEEP, AND THE END OF DAYS SHALL--wait, why are you so tall?' where entry = 13584;
	update item_template set description = 'These off-season allies work tirelessly to prepare for the Feast of Winter Veil, and would appreciate not being disturbed the rest of the year.' where entry = 21301;
	update item_template set description = 'During the majestic Winter Veil celebration, these faithful companions spread joy throughout the land. The rest of the year, they are busy.' where entry = 21305;
	update item_template set description = 'This pint-sized panda cub is highly sought after by adventurers around Azeroth - despite its narcoleptic nature.' where entry = 13583;
	update item_template set description = 'Many assume \'Wiggles\' refers to the motion of this pig\'s posterior. They discover the true meaning when they see their own entrails.' where entry = 23007;
	update item_template set description = 'A complex system of burrows protects the prairie dog from its neighbors\' massive hooves.' where entry = 10394;
	update item_template set description = 'These adorable critters love snuggling with their owners after a long day of brutal, bloody battle.' where entry = 11474;
	update item_template set description = 'Would rather not spend any more time inside a wrapped holiday gift box.' where entry = 21308;
	update item_template set description = 'After a harpy incursion in Feralas, several hippogryph nesting grounds were attacked. Hundreds of hatchlings were orphaned, and they have been entrusted to the care of the druids on Sardor Isle.' where entry = 23713;
	update item_template set description = 'Not to worry; the combat mechanisms and homing logic have been disabled on this unit, I think. (Oglethorpe Obnoticus)' where entry = 10398;
	update item_template set description = 'Said to bring good fortune when spotted in autumn. Known to hide from unfamiliar creatures.' where entry = 19054;
	update item_template set description = 'A small, fierce member of the Zerg swarm, the zergling is not to be trifled with. Very dangerous in high numbers.' where entry = 13582;

	update item_template set class = 4, subclass = 0 where entry in (51857, 51240);

	update item_template set class = 15, subclass = 4 where entry = 21044;

	delete from creature_loot_template where item = 21308;
	delete from item_template where entry = 80441;

	-- New hardcore box:

	replace into `item_template` values (80189, 0, 15, 0, 'Lockbox of the Immortal Soul', '', 16028, 1, 4, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

	replace into `item_loot_template` (`entry`, `item`, `chanceorquestchance`, `groupid`, `mincountorref`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) values (80189, 80187, 100, 1, 1, 1, 0, 0, 10), (80189, 80692, 100, 2, 1, 1, 0, 0, 10);

	-- Misc. DB updates (post April 27):

	update item_template set name = 'Murky', description = 'A small, fierce member of the Zerg swarm, the zergling is not to be trifled with. Very dangerous in high numbers.' where entry = 20371;
	update item_template set name = 'Westfall Chicken', description = 'Don\'t call this bird chicken unless you want egg on your face.' where entry = 11110;
	update item_template set name = 'Dart Frog', description = 'Ouch!' where entry = 50078;
	update item_template set name = 'Bronze Whelpling', display_id = 20655, description = 'The Bronze Whelpling was lost in time until an unusual event allowed her to escape.' where entry = 50070;
	update item_template set name = 'Azure Whelpling', display_id = 31434, description = 'Like other members of the blue dragonflight, these whimsical little critters display an affinity to arcane magic.' where entry = 50083;
	update item_template set name = 'Crimson Whelpling', display_id = 31434, description = 'Hailing from the Wetlands, this young dragon is just learning how to hunt, breathe fire, and go on cute destructive rampages.' where entry = 8499;
	update item_template set name = 'Emerald Whelpling', display_id = 31434, description = 'Once bred and raised by the green dragon Itharius, this unique breed of dragon has settled in the jungles of Feralas.' where entry = 8498;
	update item_template set name = 'Peddlefeet', description = 'The power of love can be a dangerous thing, especially when wielded by an airborne, ill-tempered goblin.' where entry = 22235;
	update item_template set name = 'Terky', description = 'Terky is as shy as she is adorable, preferring the company of close friends over new ones.' where entry = 22780;
	update item_template set name = 'Wood Frog', description = 'Vendors at the Darkmoon Faire offer strange and exotic wonders. They also sell wood frogs.' where entry = 11027;
	update item_template set name = 'Leatherback Snapjaw', description = 'Turtles are feared by the naga, who consider them bad luck and give them a wide berth on the shores of Azshara.' where entry = 18966;
	update item_template set description = 'Turtles are feared by the naga, who consider them bad luck and give them a wide berth on the shores of Azshara.' where entry = 18964;
	update item_template set description = 'Turtles are feared by the naga, who consider them bad luck and give them a wide berth on the shores of Azshara.' where entry = 18967;
	update item_template set description = 'Turtles are feared by the naga, who consider them bad luck and give them a wide berth on the shores of Azshara.' where entry = 12264;
	update item_template set description = 'Turtles are feared by the naga, who consider them bad luck and give them a wide berth on the shores of Azshara.' where entry = 18963;
	update item_template set name = 'Island Frog', description = 'Quack!' where entry = 50079;
	update item_template set name = 'Moonkin Hatchling' where entry = 50019;
	update item_template set name = 'Murki', description = 'Murki is one of the world\'s rarest species of murloc.' where entry = 20651;
	update item_template set name = 'Cockatiel', description = 'Some say this clever bird can be taught to speak--but it\'s smart enough to keep its beak shut.' where entry = 8496;
	update item_template set name = 'Green Wing Macaw', description = 'Favored pet of the Defias pirates, this colorful bird is handy for remembering passwords, grocery lists, and cracker recipes.' where entry = 8492;
	update item_template set name = 'Hyacinth Macaw', description = 'The jungle trolls train these birds to mimic calls for help in order to lure unsuspecting travelers into traps.' where entry = 8494;
	update item_template set name = 'Senegal', description = 'Favored pet of the goblins of Booty Bay, this colorful bird is renowned for its ability to count coins, tally budgets, and lie about contracts.' where entry = 8495;
	update item_template set name = 'Scarlet Snake', description = 'Brave assassins sometimes capture these critters to use their highly toxic venom to poison weapons.' where entry = 50069;
	update item_template set name = 'Tiny Snowman', description = 'He loves to dance and wave and play with you! He melts after Winter Veil, but don\'t worry; he\'ll be back again someday!' where entry = 21309;

	update item_template set name = 'Gurky', description = 'Gurky is a born performer, though she remains elusive, making public appearances only on the rarest of occasions.' where entry = 22114;
	update item_template set name = 'Poley', description = 'This cub shares many traits with its relatives, but it\'s in a league of its own with its singing ability.' where entry = 22781;
	update item_template set name = 'Snowshoe', description = 'If you go chasing snowshoe rabbits, you know you\'re going to fall.' where entry = 8497;
	update item_template set name = 'Smolderweb Hatchling' where entry = 12529;
	update item_template set name = 'Sprite Darter Hatchling' where entry = 11474;
	update item_template set name = 'Tiny Red Dragon' where entry = 14756;
	update item_template set name = 'Tiny Green Dragon', description = 'Legends say that these vibrant emerald beings bring good fortune and safe travels to their owners.' where entry = 19055;
	update item_template set name = 'Whiskers the Rat', description = 'A clever tactician, Whiskers will feign death to fool predators and bill collectors.' where entry = 23015;
	update item_template set name = 'Worg Pup', description = 'Worgs are the favored companions of orcs and are fiercely loyal on the battlefield.' where entry = 12264;
	update item_template set name = 'Blitzen', description = 'Happy Winter Veil!' where entry = 50014;
	update item_template set name = 'Cottontail Rabbit', description = 'Mountain cottontails can leap up a steep incline with speed you would not believe.' where entry = 50081;
	update item_template set name = 'Dark Whelpling', display_id = 31434, description = 'Hopes that someday it can grow up to destroy villages, just like mommy.' where entry = 10822;
	update item_template set name = 'Darkmoon Tonk', description = 'A favorite of children across Azeroth, this tough little toy can withstand even the most aggressive imagination.' where entry = 50200;
	update item_template set name = 'Eagle Owl', description = 'Many owls nest high in the stone structures of Darnassus, hunting any pests that enter the night elves\' city.' where entry = 50080;
	update item_template set name = 'Great Horned Owl', description = 'Night elf children are given an owl feather on their first birthday as a token of good luck.' where entry = 8500;
	update item_template set name = 'Green Steam Tonk', description = 'A favorite of children across Azeroth, this tough little toy can withstand even the most aggressive imagination.' where entry = 51002;
	update item_template set name = 'Water Snake', description = 'Brought to Orgrimmar aboard merchant ships, these short-lived reptiles are considered pests by the city\'s residents.' where entry = 50068;
	update item_template set name = 'Hawk Owl', description = 'This dark-feathered bird of prey is often seen as a harbinger of doom amongst the druids of Teldrassil.' where entry = 8501;
	update item_template set description = 'These spiders are immensily cunning yet loyal to their brood. Handle with care and no pest will ever disturb your sound sleep.' where entry = 12529;
	update item_template set description = 'Turtles are feared by the naga, who consider them bad luck and give them a wide berth on the shores of Azshara.' where entry = 18965;
	update item_template set description = 'Adorable little sheep.' where entry = 51221;
	update item_template set description = 'Winterspring\'s furbolg prize the brilliant white feathers of these majestic creatures for ritual purposes.' where entry = 50082;
	update item_template set description = 'Known for its blue eyes. Also considered a delicacy by giant murlocs.' where entry = 8490;
	update item_template set name = 'Tirisfal Bat', description = 'This foreboding creature stalks the night skies of the Eastern Plaguelands, feeding on carrion.' where entry = 51858;
	update item_template set description = 'In older age, these little terrors eat everything they want to and are prey to almost no other species.' where entry = 81152;
	update item_template set name = 'Speedy',  description = 'Slow and steady wins the race.' where entry = 23712;
	update item_template set name = 'White Tiger Cub',  description = 'The thick snow near Dun Morogh acts as camouflage for snow cubs learning to hunt.' where entry = 23002;
	update item_template set name = 'Tree Frog',  description = 'Known for their powerful legs and keen eyesight.' where entry = 11026;
	update item_template set name = 'Armored Alliance Steed',  description = 'Armored to withstand collisions in battle.' where entry = 80449;
	update item_template set description = 'Although many varieties of Qiraji Battle Tank can still be found in the ruins of Ahn\'Qiraj today, the darkest of the species were only seen on the day the Scarab gong was rung.' where entry = 21176;
	update item_template set description = 'Although many varieties of Qiraji Battle Tank can still be found in the ruins of Ahn\'Qiraj today, the darkest of the species were only seen on the day the Scarab gong was rung.' where entry = 80457;
	update item_template set name = 'Black-Footed Fox' where entry = 80003;

	delete from item_template where entry = 81058;
	update item_template set class = 4, subclass = 0 where entry = 20769;
	update item_template set class = 4, subclass = 0 where entry = 18598;
	update item_template set class = 4, subclass = 0 where entry = 18597;

	-- Post April 28th:

	replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80403,15,35,30,0,0,'The Zeppelin Crash','Not long ago, a goblin zeppelin crashed to the east. A representative of the Steamwheedle Cartel passed through here a few days ago.\n\nShe was looking for information about the zeppelin\'s cargo and its pilot, Beezil, but none of us really got a good look at the crash. I doubt she\'ll be able to clean up after the wreck by herself, much less recover whatever cargo the vessel might have carried.\n\nIf you have time, you may want to check up on her out at Beezil\'s Wreck, due east of here, near the mountains.','Speak with Moxie Steelgrille at Beezil\'s Wreck.','How can I be sure that I can trust you?','I suppose I can use the help. There\'s not much here a $c would be interested in, anyway.',0,0,0,0,0,0,0,0,'','','','',0,0,0,810,1001,150,169,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

	replace into creature_questrelation (id, quest, patch_min, patch_max) values (80932, 80403,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (81250, 80403,'0','10');


	REPLACE INTO `creature_template` VALUES (81250, 0, 18555, 0, 0, 0, 'Moxie Steelgrille', NULL, 0, 35, 43, 1471, 2471, 0, 0, 1890, 1682, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7564, 0, 0, 0, 0, 10, '');

	replace into creature_model_info values (18555, 5875, 2, 2, 0, 0, 0);

	update creature_template set npc_flags = 2 where entry in (81250, 80932);

	replace into item_template values
	 ('81284', '0', '12', '0', 'Zeppelin Cargo', 'It seems to have survived the crash intact... mostly.', '8928', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
	 update item_template set stackable = 10 where entry = 81284;
	 
	 replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80405,80404,15,35,30,0,0,'Delivery for Drazzit','Drazzit will expect to hear something from me soon, but I don\'t think the site is secure enough for me to leave.\n\nIf you have time, would you be willing to take some of the salvaged cargo down to him at Mudsprocket?','Take the Zeppelin Cargo to Drazzit Dripvalve at Mudsprocket.','Yes?','<Drazzit accepts the cargo from you.>\n\nI\'m so hungry, I could eat a dragon! Thank goodness Moxie finally got some of that cargo down here. We\'ve been reduced to playing dice against the ogre for whatever he\'s managed to kill on his hunting trips!',81284,1,0,0,0,0,0,0,'','','','',81284,1,0,980,1001,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

	replace into creature_questrelation (id, quest, patch_min, patch_max) values (81250, 80404,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (80932, 80404,'0','10');

	replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80403,80405,15,35,30,0,0,'Secure the Cargo!','This zeppelin was carrying six months\' worth of supplies to us at Mudsprocket! Sure, they\'ve been able to barter for some of what they need, but they won\'t hold out forever.\n\nI\'ve been sent out here to recover what I can of the cargo, but the wreckage is scattered all over the marsh in this area. I\'m sure a lot of the cargo didn\'t survive the crash, but are you willing to help me recover what we can?','Moxie Steelgrille at Beezil\'s Wreck wants you to recover 8 pieces of Zeppelin Cargo.','<Moxie looks frantic with worry.>\n\nDid the cargo survive? Did you find any of it?','Wow! You certainly found a lot more than I expected would be out there. I\'m not sure how much Drazzit thought we were going to find out here, but he\'s going to have to be happy with this for now.',81284,8,0,0,0,0,0,0,'','','','',0,0,15000,1980,1001,250,169,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

	replace into creature_questrelation (id, quest, patch_min, patch_max) values (81250, 80405,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (81250, 80405,'0','10');

	replace into gameobject_template values 
	(3000245, 0, 3, 336, 'Zeppelin Cargo', 0, 0, 1, 57, 3000245, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

	replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`)  values (3000245, 81284, -100, 1, 1, 1, 0, 0, 10);

	REPLACE INTO `gameobject_template` VALUES (3000246, 0, 0, 26165, 'Mysterious Glittering Object', 0, 32, 1, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_kheyna_wormhole');

	REPLACE INTO `creature_template` VALUES (81252, 0, 4, 0, 0, 0, 'Quest 80407 Trigger', '', 0, 1, 1, 644, 644, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, '');

	replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80396,80407,440,46,40,0,0,'A Letter From a Friend','Hey!\n\nYou\'re $N, right? I received a letter from a certain Kheyna Spinpistol. She paid me handsomely to direct you to a crashed gnomish rocket car north west of town.\n\nShe said you\'ll know what to do when you find \'it\' .','Investigate the crashed Gnomish rocket car northwest of Gadgetzan.','Yes?','Hello again, $N! I see that Reas succeeded in her task.\n\nGood, good! I have need of your aid again! ',0,0,0,0,0,0,0,0,'Investigate the crashed gnomish rocket car','','','',0,0,0,910,369,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

	update quest_template set reqcreatureorgoid1 = 81252, reqcreatureorgocount1 = 1  where entry = 80407;

	replace into creature_questrelation (id, quest, patch_min, patch_max) values (51266, 80407,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (81041, 80407,'0','10');

	replace into item_template values
	 ('80880', '0', '12', '0', 'Winterspring Tea Leave', '', '34954', '1', '0', '1', '0', '0', '0', '-1', '-1', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL); 
	 
	replace into creature_loot_template values (7453, 80880, -100, 5, 1, 1, 0, 0, 10); 
	replace into creature_loot_template values (7452, 80880, -100, 5, 1, 1, 0, 0, 10); 
	replace into creature_loot_template values (7454, 80880, -100, 5, 1, 1, 0, 0, 10); 
	 
	replace into creature_questrelation (id, quest, patch_min, patch_max) values (11556, 80369,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (11556, 80369,'0','10');

	replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (8469,80369,618,60,60,0,1,'A Warm Feeling','Ah, I see you\'ve returned once more $N, very well I may have another task for you.\n\nFar to the south lies a coven of most feral creatures called the Owlbeasts. This place, known as Owl Wing Thicket, is also famous for being the place of growth for a very peculiar herb.\n\nBring me about a dozen of these plants. The Owlbeasts should carry it on them as a snack.','Collect 10 Winterspring Tea Leaves.','Has your hunt gone well?','Ah, excellent. Give me but a moment to concoct a brew. Give it a taste.',80880,5,0,0,0,0,0,0,'','','','',0,0,0,0,576,100,0,0,0,0,0,0,0,0,0,15723,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

	UPDATE `quest_template` SET `QuestFlags`='256' WHERE (`entry`='80369') AND (`patch`='0');
	UPDATE `quest_template` SET `IncompleteEmote`='1', `CompleteEmote`='1', `OfferRewardEmote1`='1' WHERE (`entry`='80369') AND (`patch`='0');

	replace into broadcast_text (ID, FemaleText) values (70003, 'Oh, a true traveler, good to see you!');
	replace into broadcast_text (ID, FemaleText) values (70004, 'Oh my, we have a visitor here!$B$B<Dinka ponders>$B$BSadly my magic only works on those who''ve travelled enough, come back once you''ve seen enough world.');
	replace into broadcast_text (ID, FemaleText) values (70005, 'Here, here, slow down, there''s no rush, I''m not going anywhere.');

	-- Post April 29th:

	replace into item_template values
	 ('81285', '0', '12', '0', 'Barrel of Oil', 'Full of Dustwallow Marsh mud.', '40136', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80352,15,60,30,0,1,'Money Down The Drain','They had one job, $N, one!\n\nI asked those fools to be careful while transporting the oil and look at what they did. They probably had the mindless ogre on the ship\'s wheel.\n\nPlease sweety, do me a favour will you?\n\nGet as much oil as you can from the barrels, we need it for our machinery to work. This swamp isn\'t at all forgiving, we need to defend ourselves, you know.\n\nAnyway good luck comes with good coin so as soon as you have it come back.','Bring 5 Barrels of Oil to Vixie Dampknob in Mudsprocket.','Any luck finding the oil?','$N, you\'re a doll! This is great, I can\'t thank you enough.\n\nIf you get any more you know where to find me.',81285,5,0,0,0,0,0,0,'','','','',0,0,1000,910,1001,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

	replace into creature_questrelation (id, quest, patch_min, patch_max) values (81258, 80352,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (81258, 80352,'0','10');

	REPLACE INTO `creature_template` VALUES (81258, 0, 11389, 0, 0, 0, 'Vixie Dampknob', NULL, 0, 35, 43, 1471, 2471, 0, 0, 1890, 1682, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7564, 0, 0, 0, 0, 10, '');

	update creature_template set npc_flags = 2 where entry in (81258);

	replace into gameobject_template values 
	(3000248, 0, 3, 32882, 'Barrel of Oil', 0, 0, 1, 57, 3000248, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

	replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`)  values (3000248, 81285, -100, 1, 1, 1, 0, 0, 10);

	replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80353,15,60,30,0,1,'Unclear Instructions','Who would have imagined that asking an ogre to chop some wood, would have ultimately ended up with him forgetting to pick it up?\n\nNumbskull brute started cutting and cutting but when he came back he didn\'t bring any of it back with him!\n\nI would go pick it up myself but I am busy with uh... stuff. So why don\'t you do it?\n\nPeople around here respect working folk and you will get paid what the action is worth, bub.\n\nGo pickup a few bundles.','Gather 10 bundles of freshly cut wood to Qik Peddlechin in Mudsprocket.','Can you believe it? He went back to cutting!\n\nPlease tell me you got a few back.','Ah yes, that\'s absolutely great bub. Just toss them right there, here\'s the pay.\n\nThere\'s always work for you here if you need it.',81286,10,0,0,0,0,0,0,'','','','',0,0,1000,910,1001,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

	replace into item_template values
	 ('81286', '0', '12', '0', 'Freshly Cut Wood', '', '929', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);

	replace into creature_questrelation (id, quest, patch_min, patch_max) values (81259, 80353,'0','10'); 
	replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (81259, 80353,'0','10');

	replace into gameobject_template values 
	(3000247, 0, 3, 24459, 'Freshly Cut Wood', 0, 0, 1, 57, 3000247, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

	replace into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`)  values (3000247, 81286, -100, 1, 1, 1, 0, 0, 10);

	REPLACE INTO `creature_template` VALUES (81259, 0, 13346, 0, 0, 0, 'Qik Peddlechin', NULL, 0, 35, 43, 1471, 2471, 0, 0, 1890, 1682, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7564, 0, 0, 0, 0, 10, '');

	REPLACE INTO `creature_template` VALUES (81260, 0, 18062, 0, 0, 0, 'Bulum', NULL, 0, 35, 43, 1471, 2471, 0, 0, 1890, 1682, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7564, 0, 0, 0, 0, 10, '');

	update creature_template set equipment_id = 842 where entry = 81260;
	update creature_template set npc_flags = 2 where entry in (81259);
	update creature_template set npc_flags = 0 where entry in (81260);

	 update item_template set display_id = 60954, name = 'Over-Engineered Riffle', description = 'Failure to operate within strict safety guidelines may result in... double death? Turbo death? Aliveness?' where entry = 51794;
	 update item_template set display_id = 37046, name = 'Void-Linked Robe', description = 'This robe has runes you\'ve never seen before enblazoned on it, and the way it is woven is almost as if it from another world!' where entry = 51792;
	 update item_template set display_id = 60958, name = 'Void-Linked Blade', description = 'This crystalline blade pulsates with energy, you\'ve never seen anything like it before.' where entry = 51793;

	replace into item_template values
	 ('81287', '0', '12', '0', 'Smooth Orge Brain', '', '10923', '1', '0', '1', '0', '0', '0', '-1', '-1', '1',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
	 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
	 '-1', '4', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
	 '0', '1', NULL);
	 
replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80407,80408,440,46,40,0,0,'A Slaughter for Brains','My search for my nemesis continues, but as that search continues, so too does the work that needs to be done. I have needs of brains! I am currently researching an amazingly innovative technology, but it needs to be perfected for all races.\n\nI need more samples and I know exactly where to get them! Far south and slightly east of Gadgetzan you will find a set of Troll ruins known as the Eastmoon Ruins! There are Ogres there. Tear them apart violently! They\'re going to attack the water reserves of Tanaris and cause a lot of people to die from thirst.\n\nWater is already expensive, but if the reserves are destroyed by those brutes, the price will skyrocket and most people won\'t be able to afford water. Let\'s avoid that. Kill them all. Once you have them, take the brains to Reas and then come back to the crystal.','Violently retrieve 12 Smooth Orge Brains from the Dunemaul Ogres at the Eastmoon Ruins and then deliver them to Reas.','Yes?','You really got 12 brains?! Sick! Well, money is money.',81287,12,0,0,0,0,0,0,'','','','',0,0,25000,2910,369,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (81041, 80408,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (51266, 80408,'0','10');

replace into creature_loot_template values (5475, 81287, -100, 5, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (5473, 81287, -100, 5, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (5474, 81287, -100, 5, 1, 1, 0, 0, 10); 
replace into creature_loot_template values (5472, 81287, -100, 5, 1, 1, 0, 0, 10); 

update item_template set dmg_min1 = 40, dmg_max1 = 76 where entry = 51794;
	
replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80408,80409,440,46,40,0,0,'Return to Kheyna','I will deal with these as instructed. You better go back to whoever sent you.','Return to the crystal and speak to Kheyna Spinpistol.',' Hello, $N!','The person you\'ve been helping has been working to change history. Not only that, but the crystal you\'ve been using is no simple invention, it is a time crystal, and it has been somehow corrupted and twisted!\n\nI first took notice of this in when time was altered in the Barrens and I intended to observe, but now? I can\'t ignore this. I\'ll be taking this corrupt time crystal and I will find that gnome and take her into custody.\n\nI will do my best to investigate this entire affair and I may ask for your help later. Do not work for her anymore or I\'ll have to punish you.  Also I found this in a crate by the crystal, it was supposed to be your reward I guess. Normally I\'d confiscate it, but I\'ll look the other way if you help me capture her the next time she shows up.',0,0,0,0,0,0,0,0,'','','','',0,0,0,910,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,51793,1,51794,1,0,0,0,0);
	
replace into creature_questrelation (id, quest, patch_min, patch_max) values (51266, 80409,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (10667, 80409,'0','10');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80409,80410,139,60,60,0,0,'A Timely Situation','Excuse me, $N. I received a peculiar message from the Cenarion Circle recently, but it wasn\'t addressed to me, it was addressed to you.\n\n<Rayne hands you a letter, as you open it, the letter only contains a few words and no signature: "It is time. Meet me inside the inn of Andorhal on the second floor.">','Go to the Andorhal Inn and seek out whoever sent the letter.','There you are, $N! You\'re late! Or early. Well, it doesn\'t matter, at least you came.','Remember back in Tanaris when I told you I\'d call for you when the time came? Well, that time has come. I\'ve found her!',0,0,0,0,0,0,0,0,'','','','',0,0,2500,0,910,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest, patch_min, patch_max) values (16135, 80410,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (10667, 80410,'0','10');

update item_template set dmg_min1 = 46, dmg_max1 = 84 where entry = 51753;

-- TODO:

-- <Once you use the crystal Kheyna appears and an event plays>
-- Kheyna: <name>, you're early! What fortune! I believe I've finally tracked-
-- Chromie appears
-- Chromie: I've found you villain! There is no escape!
-- Two bronze Drakonids appear behind Kheyna
-- Kheyna: No wait! Listen to me! I am here to hunt a larger threat and she's on the way. I'm not the one you should be after!
-- In that moment a massive Infinite Dragon called Antnormi appears, the two Drakonids attack her but are instantly killed.
-- Chromie: What is that?!
-- Kheyna: It's her who I've been hunting! Her name is Antnormi. We're not ready yet to face her, but we've got no choice!
-- Chromie: Adventurer, I'll weaken it, but you must finish her.
-- Kheyna: I'll help you! Let's KILL!

-- <A battle begins here, you'll fight Antnormi alongside Chromie and Kheyna, once you get her to 90% Antnormi speaks>
-- Antnormi: Enough of this! I have no time for insects like you. The master's plan is almost complete and my diversion was a success!
-- <Antnormi teleports away, Chromie turns towards Kheyna>
-- Chromie: We have much to talk about Kheyna. Adventurer, return to Andorhal and speak to me.

replace into item_template values
 ('81288', '0', '2', '7', 'Mechanist\'s Bonechopper Replica', '', '50189', '3', '0', '1', '54632', '13658', '13', '-1', '-1', '63',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '5', '3', '5',
 '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2600', '0',
 '0', '76', '139', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '16433', '2', '0', '15', '480', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '3', '0', '0', '90', '0', '0', '0', '0', '48', '0', '0', '0',
 '0', '1', NULL);
 
replace into creature_questrelation (id, quest, patch_min, patch_max) values (10667, 80411,'0','10'); 
replace into creature_involvedrelation (id, quest, patch_min, patch_max) values (10667, 80411,'0','10');
 
replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, objectivetext1, objectivetext2, objectivetext3, objectivetext4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80410,80411,0,0,0,0,0,'An Infinite Hunt','I have been hunting her for a while now, but she is extremely elusive!\n\nEvery time we get close, she escapes. However, she intends to contact you again. This time we\'ll set a trap. Go to Seradane, avoid the Emerald Portal and proceed to the largest temple.\n\nYou\'ll find another of her corrupted time crystals. Use it and summon her. Then I will appear and we will defeat her together!','Go to Seradane\'s Temple and defeat Antnormi, return to Chromi in Andoral.','There you are. I have been given much to ponder on.','It seems that this mysterious dragon seeks to corrupt the timeways. I have my disagreements with Kheyna over her disruptive actions, but I\'ve put them aside now because of this greater threat. It seems that this dragon she was hunting has caused a major disruption at a specific point in time.\n\nShe also mentioned a master so there may be more of them. I hope I can count on you when the time comes. For now, we will do our best to keep things stable as we figure out how to move ahead from here. Kheyna will cooperate with us under strict supervision. Her fate will be decided after this is dealt with.\n\nWe have prepared this replica sword as your reward. ',0,0,0,0,0,0,0,0,'','','','',0,0,20000,0,910,250,0,0,0,0,0,0,0,0,0,81288,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
 
update quest_template set reqcreatureorgoid1 = 81265, reqcreatureorgocount1 = 1 where entry = 80411;

REPLACE INTO `creature_template` VALUES (81265, 0, 6373, 0, 0, 0, 'Antnormi', NULL, 0, 59, 59, 8958, 8958, 0, 0, 3489, 32, 0, 1, 1.14286, 0, 20, 5, 0, 2, 1, 372, 479, 0, 268, 1, 1158, 1274, 1, 0, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 2, 0, 10202, 0, 10202, 0, 0, 0, 295, 0, 0, 0, 0, 0, 0, 102020, 0, 715, 938, '', 0, 3, 0, 0, 3, 0, 0, 0, 16, 64, 0, '');

