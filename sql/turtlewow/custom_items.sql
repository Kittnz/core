
-- ### Any custom item on Turtle WoW should remain in 50000-51000 entry range. 
-- ### If you insert something in the middle I will find you and hurt you.

-- 50000 [Character Name Change]
-- 50001 [Gnomish Plastic Surgery Tools]
-- 50002 [Gnomish Plastic Surgery Tools]
-- 50003 [Loremaster's Backpack]
-- 50004 [Portable Black Hole]
-- 50005 [Field Repair Bot 75B]
-- 50006 [Mini Krampus]
-- 50007 [Forworn Mule]
-- 50008 [Twink's Insignia]
-- 50009 [H.A.R.V.E.Y.]
-- 50010 [Loremaster's Glyph]
-- 50011 [MOLL-E (Portable Mailbox)]
-- 50012 [Diplomatic Declaration]
-- 50013 [Bone Golem]
-- 50014 [Blitzen]
-- 50015 [Bloody Coin]
-- 50016 [Portable Meeting Stone]
-- 50017 [Highborne Soul Mirror]
-- 50018 [Loramus Thalipedes Blindfold]
-- 50019 [Moonkin Egg]
-- 50020 [Magic Muffin]
-- 50021 [Strange Bottle]
-- 50022 [Dressing Box: Midsummer Priestess]
-- 50023 [Dressing Box: Demon Hunter]
-- 50024 [Dressing Box: Invisible Suit]
-- 50025 [Dressing Box: Sally Whitemane]
-- 50026 [Invisible Pants]
-- 50027 [Invisible Shirt]
-- 50028 [Loramus Thalipedes' Blindfold]
-- 50029 [Cursed Vision of Sargeras]
-- 50030 [Demon Hunter Right Glaive]
-- 50031 [Demon Hunter Left Glaive]
-- 50032 [Demon Hunter Sandals]
-- 50033 [Demon Hunter Kilt]
-- 50034 [Demon Hunter Harness]
-- 50035 [Demon Hunter Bracers]
-- 50036 [High Inquisitor's Chapeau]
-- 50037 [High Inquisitor's Chest]
-- 50038 [High Inquisitor's Tabard]
-- 50039 [High Inquisitor's Boots]
-- 50040 [High Inquisitor's Shoulders]
-- 50041 [High Inquisitor's Pants]
-- 50042 [High Inquisitor's Gloves]
-- 50043 [High Inquisitor's Staff]
-- 50044 [Amber Filigreed Tabard]
-- 50045 [Amber Filigreed Shirt]
-- 50046 [Vestment of Summer]
-- 50047 [Sandals of Summer]
-- 50048 [Right Juggling Torch]
-- 50049 [Left Juggling Torch]
-- 50050 [Turtle WoW Box (lvl 10)]
-- 50051 [Turtle WoW Box (lvl 20)]
-- 50052 [Turtle WoW Box (lvl 30)]
-- 50053 [Turtle WoW Box (lvl 40)]
-- 50054 [Turtle WoW Box (lvl 50)]
-- 50055 [Turtle WoW Box (lvl 60)]
-- 50056 [Allliance Protector's Scroll]
-- 50057 [Horde Protector's Scroll]

-- 50000 [Character Name Change]:

replace into item_template (entry, name, description, quality, spellid_1, display_id, spellcharges_1, script_name) values
(50000, 'Character Name Change', 'Right click to use. You will be requested to choose a new name on your next login.', 1, 1575, 30658, -1, 'character_rename');

-- 50001 [Gnomish Plastic Surgery Tools]:

replace into item_template (entry, name, display_id, description, quality) values
(50001, 'Gnomish Plastic Surgery Tools', 7064, 'Type: .skin <the name of the character you want to look like>. It should be a character of the same race.', 1);

-- 50002 [Gnomish Plastic Surgery Tools]:

replace into item_template (entry, name, display_id, description, quality) values
(50002, 'Gnomish Plastic Surgery Tools', 7064, 'Type: .race <the name of the character you want to look like>. It should be a character of the same faction.', 1);

-- 50003 [Loremaster's Backpack]:

replace into item_template (entry, class, name, display_id, quality, buy_count, buy_price, inventory_type, item_level, stackable, container_slots, bonding, material) values
(50003, 1, 'Loremaster\'s Backpack', 6430, 1, 1, 320000, 18, 60, 1, 28, 1, 8);

-- 50004 [Portable Black Hole]:

replace into item_template (entry, class, name, display_id, quality, buy_count, buy_price, inventory_type, item_level, stackable, container_slots, bonding, material) values
(50004, 1, 'Portable Black Hole', 19502, 2, 1, 320000, 18, 60, 1, 36, 1, 8);

-- 50006 [Mini Krampus]:

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(50006, 15, 2, 'Mini Krampus', 'Be careful, he will steal your children!', 7999, 1, 1, 28505, 1500);

-- 50008 [Twink's Insignia]:

replace into item_template (entry, class, name, display_id, quality, buy_count, max_count, stackable, bonding, description) values
(50008, 15, 'Twink\'s Insignia', 17776, 6, 1, 1, 1, 1, 'This rune prevents the owner from gaining experience.');

-- 50010 [Loremaster's Glyph]:

replace into item_template (entry, class, name, display_id, flags, quality, buy_count, max_count, stackable, bonding, description, bag_family) values
(50010, 13, 'Loremaster\'s Glyph', 22377, 32, 6, 1, 1, 1, 1, 'This item is a reminder of your hardcore adventure.', 9);

-- 50012 [Diplomatic Declaration]:

replace into item_template (entry, display_id, quality, name, description, class, subclass, max_count, bonding) values
(50012, 16065, 6, 'Diplomatic Declaration', 'As a diplomat, you have proved to be aware of the real issues. You now know how to speak with the other faction and are allowed to trade and group with them.', 15, 0, 1, 1);

-- 50013 [Bone Golem]:

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(50013, 15, 2, 'Bone Golem', 'Bone golems are deadly undead constructs made entirely of bones and fueled by ichor of Undeath.', 13806, 1, 1, 28505, 1500);

-- 50014 [Blitzen]:

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(50014, 15, 2, 'Blitzen', 'Happy Winter Veil 2018!', 8119, 1, 1, 28505, 1500);

-- 50015 [Bloody Coin]:

replace into item_template (entry, class, subclass, name, description, display_id, quality, stackable, bonding) values
(50015, 15, 0, 'Bloody Coin', 'Local currency used in some bloody events.', 32277, 1, 200, 1);

-- 50016 [Portable Meeting Stone]:

replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, script_name, bonding) values
(50016, 'Portable Meeting Stone', 'Use it to meet new friends.', '33543', '1', '7077', '3600000', '', '1');

-- 50017 [Highborne Soul Mirror]:

replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, script_name) values
(50017, 'Highborne Soul Mirror', 'Before the Great Sundering, the Highborne were known among the night elves for their arrogance, avarice and outlandish clothing. It was said that nothing was so pleasing to the gaze of the Highborne as themselves. These mirrors were created so that elven ladies could see their colorful garments in three full dimensions, yet the reflection often exaggerated the already depraved visage of the viewer.', '14007', '1', '31726', '3600000', 'highborne_soul_mirror');

-- 50018 [Loramus Thalipedes Blindfold]:

replace into item_template (entry, name, display_id, quality, buy_count, inventory_type, stackable, bonding) values
(50018, 'Loramus Thalipedes Blindfold', 5878, 1, 1, 1, 1, 1);

-- 50019 [Moonkin Egg]:

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(50019, 15, 2, 'Moonkin Egg', 'Moonkins are blessed by Elune and spread nature\'s grace wherever they travel. The festive fowls are always in the mood for a dance.', 18050, 1, 1, 28505, 1500);

-- 50020 [Magic Muffin]:

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1, buy_count, sell_price, script_name) values
(50020, 0, 5, 'Magic Muffin', 'Be careful, if you grow, you may not fit in your clothes.', 6343, 1, 1, 8213, 1000, 150, 35, 'item_alice_wonderland_scale');

-- 50021 [Strange Bottle]:

replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1, buy_count, sell_price, script_name) values
(50021, 0, 5, 'Strange Bottle', 'You will feel a bit small...', 2357, 1, 1, 16589, 1000, 150, 35, 'item_alice_wonderland_scale');

-- 50022 [Dressing Box: Midsummer Priestess]:

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50022, 15, 'Dressing Box: Midsummer Priestess', 35406, 1, 1, 4, 'Warm yourself and the others.'); 

-- 50023 [Dressing Box: Demon Hunter]:

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50023, 15, 'Dressing Box: Demon Hunter', 35406, 1, 1, 4, 'The Demon Hunters’ apparent blindness belies their true powers of perception. They rely on magically augmented sight spectral sight to detect enemies, even those that hide behind obstacles.'); 

-- 50024 [Dressing Box: Invisible Suit]:

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50024, 15, 'Dressing Box: Invisible Suit', 35406, 1, 1, 4, 'What\'s happens in Goldhire\'s Tavern, stays in Goldshire\'s Tavern.'); 

-- 50025 [Dressing Box: Sally Whitemane]:

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50025, 15, 'Dressing Box: Sally Whitemane', 35406, 1, 1, 4, 'Join us, take up the path of vengeance!'); 

-- 50026 [Invisible Pants]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50026, 'Invisible Pants', 7, 396, 1, 1);

-- 50027 [Invisible Shirt]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50027, 'Invisible Shirt', 5, 383, 1, 1);

-- 50028 [Loramus Thalipedes' Blindfold]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50028, 'Loramus Thalipedes\' Blindfold', 1, 5878, 1, 1);

-- 50029 [Cursed Vision of Sargeras]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50029, 'Cursed Vision of Sargeras', 1, 17867, 1, 1);

-- 50030 [Demon Hunter Right Glaive]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50030, 'Demon Hunter Right Glaive', 21, 22672, 1, 1);

-- 50031 [Demon Hunter Left Glaive]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50031, 'Demon Hunter Left Glaive', 23, 22695, 1, 1);

-- 50032 [Demon Hunter Sandals]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50032, 'Demon Hunter Sandals', 8, 16855, 1, 1);

-- 50033 [Demon Hunter Kilt]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50033, 'Demon Hunter Kilt', 7, 28287, 1, 1);

-- 50034 [Demon Hunter Harness]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50034, 'Demon Hunter Harness', 5, 12370, 1, 1);

-- 50035 [Demon Hunter Bracers]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50035, 'Demon Hunter Bracers', 9, 35091, 1, 1);

-- 50036 [High Inquisitor's Chapeau]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50036, 'High Inquisitor\'s Chapeau', 1, 15991, 1, 1);

-- 50037 [High Inquisitor's Chest]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50037, 'High Inquisitor\'s Chest', 5, 18839, 1, 1);

-- 50038 [High Inquisitor's Tabard]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50038, 'High Inquisitor\'s Tabard', 19, 30640, 1, 1);

-- 50039 [High Inquisitor's Boots]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50039, 'High Inquisitor\'s Boots', 8, 24054, 1, 1);

-- 50040 [High Inquisitor's Shoulders]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50040, 'High Inquisitor\'s Shoulders', 3, 13672, 1, 1);

-- 50041 [High Inquisitor's Pants]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50041, 'High Inquisitor\'s Pants', 7, 24895, 1, 1);

-- 50042 [High Inquisitor's Gloves]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50042, 'High Inquisitor\'s Gloves', 10, 18853, 1, 1);

-- 50043 [High Inquisitor's Staff]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50043, 'High Inquisitor\'s Tabard', 17, 20257, 1, 1);

-- 50044 [Amber Filigreed Tabard]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50044, 'Amber Filigreed Tabard', 19, 22370, 1, 1);

-- 50045 [Amber Filigreed Shirt]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50045, 'Amber Filigreed Shirt', 4, 22370, 1, 1);


-- 50046 [Vestment of Summer]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50046, 'Vestment of Summer', 5, 26131, 1, 1);

-- 50047 [Sandals of Summer]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50047, 'Sandals of Summer', 8, 28088, 1, 1);

-- 50048 [Right Juggling Torch]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50048, 'Right Juggling Torch', 21, 12236, 1, 1);

-- 50049 [Left Juggling Torch]

replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50049, 'Right Juggling Torch', 23, 12236, 1, 1);

-- 50056 [Allliance Protector's Scroll] 

replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, script_name, bonding) values
(50056, 'Alliance Protector\'s Scroll', 'Teleports you to your capital city.', '6270', '1', '7794', '3600000', '', '1');

-- 50057 [Horde Protector's Scroll] 

replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, script_name, bonding) values
(50057, 'Horde Protector\'s Scroll', 'Teleports you to your capital city.', '1096', '1', '7794', '3600000', '', '1');

-- 50050 [Turtle WoW Box (lvl 10)]

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50050, 15, 'Turtle WoW Box', 18499, 1, 1, 4, 'Take it slow! Level 10 hardcore reward.'); 

-- 50051 [Turtle WoW Box (lvl 20)]

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50051, 15, 'Turtle WoW Box', 18499, 1, 1, 4, 'Take it slow! Level 20 hardcore reward.'); 

-- 50052 [Turtle WoW Box (lvl 30)]

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50052, 15, 'Turtle WoW Box', 18499, 1, 1, 4, 'Take it slow! Level 30 hardcore reward.'); 

-- 50053 [Turtle WoW Box (lvl 40)]

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50053, 15, 'Turtle WoW Box', 18499, 1, 1, 4, 'Take it slow! Level 40 hardcore reward.'); 

-- 50054 [Turtle WoW Box (lvl 50)]

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50054, 15, 'Turtle WoW Box', 18499, 1, 1, 4, 'Take it slow! Level 50 hardcore reward.'); 

-- 50055 [Turtle WoW Box (lvl 60)]

replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50055, 15, 'Turtle WoW Box', 18499, 1, 1, 4, 'Take it slow! Level 60 hardcore reward.'); 

-- ### item_loot content:

-- 50022 [Dressing Box: Midsummer Priestess] loot:

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid) values
(50022, 23323, 100, 1),(50022, 23324, 100, 2),(50022, 50046, 100, 3),(50022, 50047, 100, 4),(50022, 50048, 100, 5),(50022, 50049, 100, 6);

-- 50022 [Dressing Box: Demon Hunter] loot:

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid) values
(50023, 50028, 100, 1),(50023, 50029, 100, 2),(50023, 50030, 100, 3),(50023, 50031, 100, 4),(50023, 50032, 100, 5),(50023, 50033, 100, 6),(50023, 50034, 100, 7),(50023, 50035, 100, 8);

-- 50024 [Dressing Box: Invisible Suit] loot:

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid) values
(50024, 50026, 100, 1),(50024, 50027, 100, 2);

-- 50025 [Dressing Box: Sally Whitemane] loot:

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid) values
(50025, 50036, 100, 1),(50025, 50037, 100, 2),(50025, 50038, 100, 3),(50025, 50039, 100, 4),(50025, 50040, 100, 5),(50025, 50041, 100, 6),(50025, 50042, 100, 7),(50025, 50043, 100, 8);

-- 50050 [Turtle WoW Box (lvl 10)] loot:
-- 50051 [Turtle WoW Box (lvl 20)] loot:
-- 50052 [Turtle WoW Box (lvl 30)] loot:
-- 50053 [Turtle WoW Box (lvl 40)] loot:
-- 50054 [Turtle WoW Box (lvl 50)] loot:
-- 50055 [Turtle WoW Box (lvl 60)] loot:


