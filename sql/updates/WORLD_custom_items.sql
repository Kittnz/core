
-- ### Any custom item on Turtle WoW should remain in 50000-51000 entry range. 
-- ### If you insert something in the middle I will find you and hurt you.

-- 50000 [Character Name Change]
replace into item_template (entry, name, description, quality, spellid_1, display_id, spellcharges_1, script_name) values
(50000, 'Character Name Change', 'Right click to use. You will be requested to choose a new name on your next login.', 1, 1575, 30658, -1, 'character_rename');
-- 50001 [Gnomish Plastic Surgery Tools]
replace into item_template (entry, name, display_id, description, quality) values
(50001, 'Gnomish Plastic Surgery Tools', 7064, 'Type: .skin <the name of the character you want to look like>. It should be a character of the same race.', 1);
-- 50002 [Gnomish Plastic Surgery Tools]
replace into item_template (entry, name, display_id, description, quality) values
(50002, 'Gnomish Plastic Surgery Tools', 7064, 'Type: .race <the name of the character you want to look like>. It should be a character of the same faction.', 1);
-- 50003 [Loremaster's Backpack]
replace into item_template (entry, class, name, display_id, quality, buy_count, buy_price, inventory_type, item_level, stackable, container_slots, bonding, material) values
(50003, 1, 'Loremaster\'s Backpack', 6430, 1, 1, 320000, 18, 60, 1, 28, 1, 8);
-- 50004 [Portable Black Hole]
replace into item_template (entry, class, name, display_id, quality, buy_count, buy_price, inventory_type, item_level, stackable, container_slots, bonding, material) values
(50004, 1, 'Portable Black Hole', 19502, 2, 1, 320000, 18, 60, 1, 36, 1, 8);
-- 50005 [Field Repair Bot 75B]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50005, 15, 2, 'Field Repair Bot 75B', 'Unfolds into a Field Repair Bot that can repair damaged items and purchase unwanted goods', 19503, 1, 1, 28505);
-- 50006 [Mini Krampus]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50006, 15, 2, 'Mini Krampus', 'Be careful, he will steal your children!', 7999, 1, 1, 28505);
-- 50007 [Forworn Mule]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50007, 15, 2, 'Forworn Mule', 'Carries all your worldly possessions, there and back. Just don\'t do anything P.E.T.A would disapprove of.', 13108, 1, 1, 28505);
-- 50008 [Twink's Insignia]
replace into item_template (entry, class, name, display_id, quality, buy_count, max_count, stackable, bonding, description) values
(50008, 15, 'Twink\'s Insignia', 17776, 6, 1, 1, 1, 1, 'This rune prevents the owner from gaining experience.');
-- 50009 [Mechanical Auctioneer]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50009, 15, 2, 'Mechanical Auctioneer', 'Right click to summon C.L.U.C.K.', 8931, 1, 1, 28505);
-- 50010 [Loremaster's Glyph]
replace into item_template (entry, class, name, display_id, flags, quality, buy_count, max_count, stackable, bonding, description, bag_family) values
(50010, 13, 'Loremaster\'s Glyph', 22377, 32, 6, 1, 1, 1, 1, 'This item is a reminder of your hardcore adventure.', 9);
-- 50011 [MOLL-E, Remote Mail Terminal]
replace into item_template (entry, name, description, quality, spellid_1, display_id, spellcharges_1, script_name, spellcooldown_1) values
(50011, 'MOLL-E, Remote Mail Terminal', 'Mobile Oversized Letter and Literary Extractor. Use it to create a portable mailbox for 5 min.', 1, 18282, 3020, 0, 'remote_mail_terminal', 1500000);
-- 50012 [Diplomatic Declaration]
replace into item_template (entry, display_id, quality, name, description, class, subclass, max_count, bonding) values
(50012, 16065, 6, 'Diplomatic Declaration', 'As a diplomat, you have proved to be aware of the real issues. You now know how to speak with the other faction and are allowed to trade and group with them.', 15, 0, 1, 1);
-- 50013 [Bone Golem]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50013, 15, 2, 'Bone Golem', 'Bone golems are deadly undead constructs made entirely of bones and fueled by ichor of Undeath.', 13806, 1, 1, 28505);
-- 50014 [Blitzen]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50014, 15, 2, 'Blitzen', 'Happy Winter Veil 2018!', 8119, 1, 1, 28505);
-- 50015 [Bloody Coin]
replace into item_template (entry, class, subclass, name, description, display_id, quality, stackable, bonding) values
(50015, 15, 0, 'Bloody Coin', 'Local currency used in some bloody events.', 32277, 1, 200, 1);
-- 50016 [Portable Meeting Stone]
replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, script_name, bonding) values
(50016, 'Portable Meeting Stone', 'Use it to meet new friends.', '33543', '1', '7077', '3600000', 'portable_meeting_stone', '1');
-- 50017 [Highborne Soul Mirror]
replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, script_name) values
(50017, 'Highborne Soul Mirror', 'Before the Great Sundering, the Highborne were known among the night elves for their arrogance, avarice and outlandish clothing...', 14007, 1, 31726, 3600000, 'highborne_soul_mirror');
-- 50018 [Turtle Traveller's Bag]
replace into item_template (entry, class, name, display_id, quality, buy_count, buy_price, inventory_type, item_level, stackable, container_slots, bonding, material) values
(50018, 1, 'Turtle Traveller\'s Bag', 6430, 1, 1, 320000, 18, 60, 1, 20, 1, 8);
-- 50019 [Moonkin Egg]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50019, 15, 2, 'Moonkin Egg', 'Moonkins are blessed by Elune and spread nature\'s grace wherever they travel. The festive fowls are always in the mood for a dance.', 18050, 1, 1, 28505);
-- 50020 [Magic Muffin]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1, buy_count, sell_price, script_name) values
(50020, 0, 5, 'Magic Muffin', 'Be careful, if you grow, you may not fit in your clothes.', 6343, 1, 1, 8213, 1000, 150, 35, 'item_alice_wonderland_scale');
-- 50021 [Strange Bottle]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1, buy_count, sell_price, script_name) values
(50021, 0, 5, 'Strange Bottle', 'You will feel a bit small...', 2357, 1, 1, 16589, 1000, 150, 35, 'item_alice_wonderland_scale');
-- 50022 [Dressing Box: Midsummer Priestess]
replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50022, 15, 'Dressing Box: Midsummer Priestess', 35406, 1, 1, 4, 'Warm yourself and the others.'); 
-- 50023 [Dressing Box: Demon Hunter]
replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50023, 15, 'Dressing Box: Demon Hunter', 35406, 1, 1, 4, 'The Demon Hunters’ apparent blindness belies their true powers of perception. They rely on magically augmented sight spectral sight to detect enemies, even those that hide behind obstacles.'); 
-- 50024 [Dressing Box: Invisible Suit]
replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50024, 15, 'Dressing Box: Invisible Suit', 35406, 1, 1, 4, 'What\'s happens in Goldhire\'s Tavern, stays in Goldshire\'s Tavern.'); 
-- 50025 [Dressing Box: Sally Whitemane]
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
-- 50044 [Keepers of Time Tabard]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50044, 'Keepers of Time Tabard', 19, 22370, 1, 1);
-- 50045 [Keepers of Time Vest]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50045, 'Keepers of Time Vest', 4, 22370, 1, 1);
-- 50046 [Vestment of Summer]
replace into item_template (entry, name, description, inventory_type, display_id, quality, bonding, script_name, spellid_1, spellcooldown_1) values
(50046, 'Vestment of Summer', 'You feel the need to dance.', 5, 26131, 1, 1, 'item_summer_vestment', 11542, 1000);
-- 50047 [Sandals of Summer]
replace into item_template (entry, name, description, inventory_type, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(50047, 'Sandals of Summer', 'Be careful with the ground if you tap them.', 8, 28088, 1, 1, 24207, 1000);
-- 50048 [Right Juggling Torch]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50048, 'Right Juggling Torch', 21, 12236, 1, 1);
-- 50049 [Left Juggling Torch]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50049, 'Right Juggling Torch', 23, 12236, 1, 1);
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
-- 50056 [Allliance Protector's Scroll]
replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, script_name, bonding) values
(50056, 'Alliance Protector\'s Scroll', 'Teleports you to your capital city.', '6270', '1', '7794', '3600000', 'city_protector_scroll', '1');
-- 50057 [Horde Protector's Scroll]
replace into item_template (entry, name, description, display_id, quality, spellid_1, spellcooldown_1, script_name, bonding) values
(50057, 'Horde Protector\'s Scroll', 'Teleports you to your capital city.', '1096', '1', '7794', '3600000', 'city_protector_scroll', '1');
-- 50058 [Black Piglet]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50058, 15, 2, 'Black Piglet', 'He loves to play in the mud! Then he likes to give you a hug!', 7287, 1, 1, 28505);
-- 50059 [Green Winter Vest]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50059, 'Green Winter Vest', 5, 33581, 1, 1);
-- 50060 [Green Winter Pants]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50060, 'Green Winter Pants', 7, 33582, 1, 1);
-- 50061 [Red Winter Vest]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50061, 'Green Winter Vest', 5, 34088, 1, 1);
-- 50062 [Half-Eaten Mutton Chop]
replace into item_template (entry, class, subclass, name, display_id, Quality, Flags, Buy_Count, Inventory_Type, bonding, delay, dmg_min1, dmg_max1, Item_Level, Material, sheath) values
(50062, 2, 14, 'Half-Eaten Mutton Chop', 1950, 1, 0, 1, 13, 0, 1800, 5, 8, 8, 2, 3);
-- 50063 [Intact Human Head]
replace into item_template (entry, class, subclass, name, display_id, Quality, Flags, Buy_Count, Buy_Price, Sell_Price, Item_Level, stackable, bonding, Material) values
(50063, 12, 0, 'Intact Human Head', 32965, 1, 0, 1, 0, 0, 0, 1, 4, -1),
-- 50064 [Intact Orc Head]
(50064, 12, 0, 'Intact Orc Head', 32969, 1, 0, 1, 0, 0, 0, 1, 4, -1);
-- 50065 [Anatomy Class Notes]
replace into item_template (entry, class, subclass, name, display_id, Quality, Flags, Buy_Count, stackable, bonding, Material, Page_Text) values
(50065, 15, 0, 'Anatomy Class Notes', 8628, 1, 16384, 1, 1, 1, -1, 50065);
replace into page_text (entry, text) values
(50065, 'The Professor told me that he has taught other people to disguise themselves. He has not told me where they are but he has given me a list indicating what their disguises are, I must go and look for them in the places where they have been able to infiltrate and they may want to teach me too.$B$B· Defias Footpad$B· Dark Iron Dwarf$B· Southsea Pirate$B· Dalaran Wizard$B· Stonesplinter Trogg$B· Syndicate Highwayman');
-- 50066 - 50083 [CUSTOM PET AND MOUNT ITEMS]
replace into item_template (entry, class, Flags, Buy_Count, Buy_Price, Sell_Price, name, description, display_id, Quality, Inventory_Type, Item_Level, Required_Level, Required_Skill, Required_Skill_Rank, spellid_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, bonding, max_count, stackable) values
(50066, 15, 0, 1, 0, 0, 'Steel Mechanostrider', '', 17785, 3, 0, 40, 40, 762, 75, 15781, 1, 330, 3000, 1, 0, 1),
(50067, 15, 0, 1, 0, 0, 'Albino Snake', '', 11889, 1, 0, 0, 0, 0, 0, 10713, 1, 0, 1500, 1, 1, 1),
(50068, 15, 0, 1, 0, 0, 'Green Water Snake', '', 11889, 1, 0, 0, 0, 0, 0, 10718, 1, 0, 1500, 1, 1, 1),
(50069, 15, 0, 1, 0, 0, 'Scarlet Snake', '', 11889, 1, 0, 0, 0, 0, 0, 10720, 1, 0, 1500, 1, 1, 1),
(50070, 15, 0, 1, 0, 0, 'Ancient Bronze Pocketwatch', 'If you shake it, a naughty timeless visitor will come to see you.', 2820, 3, 0, 0, 0, 0, 0, 10699, 1, 0, 1500, 1, 1, 1),
(50071, 15, 0, 1, 0, 0, 'Ivory Tallstrider', '', 1294, 3, 0, 0, 0, 0, 0, 8396, 1, 330, 3000, 1, 0, 1),
(50072, 15, 0, 1, 0, 0, 'Brown Tallstrider', '', 1294, 3, 0, 0, 0, 0, 0, 10800, 1, 330, 3000, 1, 0, 1),
(50073, 15, 0, 1, 0, 0, 'Gray Tallstrider', '', 1294, 3, 0, 0, 0, 0, 0, 10801, 1, 330, 3000, 1, 0, 1),
(50074, 15, 0, 1, 0, 0, 'Swift Lovebird', '', 1294, 3, 0, 0, 0, 0, 0, 10802, 1, 330, 3000, 1, 0, 1),
(50075, 15, 0, 1, 0, 0, 'Darkmoon Strider', '', 1294, 3, 0, 0, 0, 0, 0, 10803, 1, 330, 3000, 1, 0, 1),
(50076, 15, 0, 1, 0, 0, 'Turquoise Tallstrider', '', 1294, 1, 0, 0, 0, 0, 0, 10804, 1, 330, 3000, 1, 0, 1),
(50077, 15, 0, 1, 0, 0, 'Faeling Egg', 'Found in the distant lands of Hyjal.', 18048, 2, 0, 0, 0, 0, 0, 10700, -1, 0, -1, 1, 1, 1),
(50078, 15, 0, 1, 0, 0, 'Dart Frog Box', '', 7913, 1, 0, 0, 0, 0, 0, 10701, -1, 0, -1, 1, 1, 1),
(50079, 15, 0, 1, 0, 0, 'Island Frog Box', '', 7913, 1, 0, 0, 0, 0, 0, 10702, -1, 0, -1, 1, 1, 1),
(50080, 15, 0, 1, 0, 0, 'Eagle Owl', '', 33540, 1, 0, 0, 0, 0, 0, 10705, -1, 0, -1, 1, 1, 1),
(50081, 15, 0, 1, 0, 0, 'Cottontail Rabbit Crate', '', 7913, 1, 0, 0, 0, 0, 0, 10710, -1, 0, -1, 1, 1, 1),
(50082, 15, 0, 1, 0, 0, 'Snowy Owl', '', 33540, 1, 0, 0, 0, 0, 0, 10708, -1, 0, -1, 1, 1, 1),
(50083, 15, 0, 1, 0, 0, 'Ancient Arcane Dust', 'It slips between your fingers, but if you manage to put it together you may receive the visit of some little creature thirsty for magic.', 20614, 3, 0, 0, 0, 0, 0, 10696, -1, 0, -1, 1, 1, 1);
-- 50084 [Kirin Tor Familiar]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50084, 15, 2, 'Kirin Tor Familiar', 'Who knew he was so into books?', 20614, 1, 1, 28505);
-- 50085 [Frostwolf Ghostpup]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50085, 15, 2, 'Frostwolf Ghostpup', 'The little wolf told to stay. Watching, waiting, for vacant prey. Too proud to leave, she slipped away. Unburdened now, forever free to play.', 31475, 1, 1, 28505);
-- 50086 [Stromgarde Tabard]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description) values
(50086, 'Stromgarde Tabard', 19, 36468, 1, 1, '');
-- 50087 [Tabard of Kul'Tiras]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description) values
(50087, 'Tabard of Kul\'Tiras', 19, 7683, 1, 1, '');
-- 50088 [Theramore Tabard]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description) values
(50088, 'Theramore Tabard', 19, 7690, 1, 1, '');
-- 50089 [Tabard of the Kirin Tor]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description) values
(50089, 'Tabard of the Kirin Tor', 19, 10643, 1, 1, '');
-- 50090 [Tabard of Stormwind]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description) values
(50090, 'Tabard of Stormwind', 19, 12806, 1, 1, '');
-- 50091 [Scholomance Tabard]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description) values
(50091, 'Scholomance Tabard', 19, 24344, 1, 1, '');
-- 50092 [Tabard of Scarlet Preacher]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description) values
(50092, 'Tabard of Scarlet Preacher', 19, 23951, 1, 1, '');
-- 50093 [Tabard of Scarlet Archmage]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding, description) values
(50093, 'Tabard of Scarlet Archmage', 19, 23954, 1, 1, '');
-- 50094 [Sword of a Thousand Truths]
replace into item_template (entry, class, subclass, display_id, inventory_type, name, quality, description, required_level, bonding, dmg_min1, dmg_max1, spellid_1, spellcooldown_1, script_name) value 
(50094, 2, 7, 36377, 21, 'Sword of a Thousand Truths', 5, 'It was foretold, that one day, heroes who could wield the sword might reveal themselves.', 60, 1, 170, 190, 6755, 50600, 'sword_of_truth');
-- 50095 [Scholomance Academy Hood]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50095, 'Scholomance Academy Hood', 1, 16824, 1, 1);
-- 50096 [Scholomance Academy Vest]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50096, 'Scholomance Academy Vest', 5, 8720, 1, 1);
-- 50097 [Scholomance Academy Gloves]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50097, 'Scholomance Academy Gloves', 10, 16642, 1, 1);
-- 50098 [Scholomance Academy Boots]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50098, 'Scholomance Academy Boots', 8, 21154, 1, 1);
-- 50099 [Scholomance Academy Shoulders]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50099, 'Scholomance Academy Shoulders', 3, 18865, 1, 1);
-- 50100 [Scholomance Academy Pants]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50100, 'Scholomance Academy Pants', 7, 14989, 1, 1);
-- 50101 [Dressing Box: Scholomance Student]
replace into item_template (entry, class, name, display_id, quality, bonding, flags, description) values
(50101, 15, 'Dressing Box: Scholomance Student', 35406, 1, 1, 4, 'If you haven\'t come to study, I\'ll use you to teach a lesson.'); 
-- 50102 [Scholomance Academy Belt]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50102, 'Scholomance Academy Belt', 6, 32289, 1, 1);
-- 50103 [Scholomance Academy Robe]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50103, 'Scholomance Academy Robe', 20, 16643, 1, 1);
-- 50103 [Scholomance Academy Staff]
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values
(50104, 'Scholomance Academy Staff', 17, 35563, 1, 1);
-- 50105 [Sally Whitemane's Makeup Kit]
replace into item_template (entry, name, description, quality, spellid_1, display_id, script_name, allowable_race, bonding) values
(50105, 'Sally Whitemane\'s Makeup Kit', '', 2, 1575, 14006, 'makeup_red', 1, 1);
-- 50106 [Jandis Barov's Makeup Kit]
replace into item_template (entry, name, description, quality, spellid_1, display_id, script_name, allowable_race, bonding) values
(50106, 'Jandis Barov\'s Makeup Kit', '', 2, 1575, 16028, 'makeup_black', 1, 1);
-- 50107-50171 [Hair Dye Items]
replace into item_template (entry, name, description, quality, spellid_1, display_id, script_name, buy_price, spellcharges_1, allowable_race, bonding) values
(50107, 'Night Elf Hair Dye: Grass Green', '', 2, 1575, 33449, 'hairdye', 250000, -1, 8, 1),
(50108, 'Night Elf Hair Dye: Green', '', 2, 1575, 33449, 'hairdye', 250000, -1, 8, 1),
(50109, 'Night Elf Hair Dye: Dark Green', '', 2, 1575, 33449, 'hairdye', 250000, -1, 8, 1),
(50110, 'Night Elf Hair Dye: Aquamarine', '', 2, 1575, 33449, 'hairdye', 250000, -1, 8, 1),
(50111, 'Night Elf Hair Dye: White', '', 2, 1575, 33449, 'hairdye', 250000, -1, 8, 1),
(50112, 'Night Elf Hair Dye: Blue', '', 2, 1575, 33449, 'hairdye', 250000, -1, 8, 1),
(50113, 'Night Elf Hair Dye: Dark Blue', '', 2, 1575, 33449, 'hairdye', 250000, -1, 8, 1),
(50114, 'Night Elf Hair Dye: Purple', '', 2, 1575, 33449, 'hairdye', 250000, -1, 8, 1),

(50115, 'Human Hair Dye: Black', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),
(50116, 'Human Hair Dye: Crushed Garnet', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),
(50117, 'Human Hair Dye: Havana Brown', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),
(50118, 'Human Hair Dye: Copper Shimmer', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),
(50119, 'Human Hair Dye: Reddish Blonde', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),
(50120, 'Human Hair Dye: Sunflower Blonde', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),
(50121, 'Human Hair Dye: Beeline Honey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),
(50123, 'Human Hair Dye: Dark Ash Grey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),
(50124, 'Human Hair Dye: Light Ash Grey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 1, 1),

(50125, 'Gnomish Hair Dye: Black', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),
(50126, 'Gnomish Hair Dye: Chocolate Brown', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),
(50127, 'Gnomish Hair Dye: Ash Blonde', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),
(50128, 'Gnomish Hair Dye: Diamond Blonde', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),
(50129, 'Gnomish Hair Dye: Dream Purple', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),
(50130, 'Gnomish Hair Dye: Ruby Fusion', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),
(50131, 'Gnomish Hair Dye: Steel Blue', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),
(50132, 'Gnomish Hair Dye: Pure Green', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),
(50133, 'Gnomish Hair Dye: Shining Pink', '', 2, 1575, 33449, 'hairdye', 250000, -1, 64, 1),

(50134, 'Dwarven Hair Dye: Copper Shimmer', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
(50135, 'Dwarven Hair Dye: Reddish Blonde', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
(50136, 'Dwarven Hair Dye: Dark Orange', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
(50137, 'Dwarven Hair Dye: Ash Blonde', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
(50138, 'Dwarven Hair Dye: Light Auburn', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
(50139, 'Dwarven Hair Dye: Black', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
(50140, 'Dwarven Hair Dye: Caramel', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
(50141, 'Dwarven Hair Dye: Light Ash Grey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
(50142, 'Dwarven Hair Dye: Dark Ash Grey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 4, 1),
	
(50143, 'Troll Hair Dye: Purple', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50144, 'Troll Hair Dye: Red', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50145, 'Troll Hair Dye: Orange', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50146, 'Troll Hair Dye: Yellow', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50147, 'Troll Hair Dye: Grass Green', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50148, 'Troll Hair Dye: Mint Blue', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50149, 'Troll Hair Dye: Light Blue', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50150, 'Troll Hair Dye: Dark Blue', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50151, 'Troll Hair Dye: Ash Grey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),
(50152, 'Troll Hair Dye: Snow White', '', 2, 1575, 33449, 'hairdye', 250000, -1, 128, 1),

(50153, 'Orcish Hair Dye: Blue Black', '', 2, 1575, 33449, 'hairdye', 250000, -1, 2, 1),
(50154, 'Orcish Hair Dye: Oak Brown', '', 2, 1575, 33449, 'hairdye', 250000, -1, 2, 1),
(50155, 'Orcish Hair Dye: Dark Purple', '', 2, 1575, 33449, 'hairdye', 250000, -1, 2, 1),
(50156, 'Orcish Hair Dye: Lilac Violet', '', 2, 1575, 33449, 'hairdye', 250000, -1, 2, 1),
(50157, 'Orcish Hair Dye: Rich Purple', '', 2, 1575, 33449, 'hairdye', 250000, -1, 2, 1),
(50158, 'Orcish Hair Dye: Black', '', 2, 1575, 33449, 'hairdye', 250000, -1, 2, 1),
(50159, 'Orcish Hair Dye: Dark Ash Grey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 2, 1),
(50160, 'Orcish Hair Dye: Light Ash Grey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 2, 1),
	
(50161, 'Undead Hair Dye: Lime Green', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50162, 'Undead Hair Dye: Ash Rose', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50163, 'Undead Hair Dye: Mud Brown', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50164, 'Undead Hair Dye: Green Blonde', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50165, 'Undead Hair Dye: Ash Blonde', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50166, 'Undead Hair Dye: Mint Blue', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50167, 'Undead Hair Dye: Mud Green', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50168, 'Undead Hair Dye: Light Ash Grey', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50169, 'Undead Hair Dye: Light Teal', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50170, 'Undead Hair Dye: Dirty Purple', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1),
(50171, 'Undead Hair Dye: Ash Black', '', 2, 1575, 33449, 'hairdye', 250000, -1, 16, 1);

-- 50200 [Darkmoon Steam Tonk]
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1) values
(50200, 15, 2, 'Darkmoon Steam Tonk', '', 4233, 1, 1, 28505);
-- 50201 [Expired Winter Veil Party Invitation]
replace into item_template (entry, class, subclass, name, description, display_id, quality, stackable, bonding) values
(50201, 15, 0, 'Expired Winter Veil Party Invitation', 'Happy New 2019 Year!', 1301, 0, 200, 1);

-- ### item_loot_template:
delete from item_loot_template where entry in (50050, 50051, 50052, 50053, 50054, 500055, 50022, 50023, 50024, 50025, 50101);
replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid) values

-- Dressing Boxes:

-- 50022 [Dressing Box: Midsummer Priestess] loot:
(50022, 23323, 100, 1),(50022, 23324, 100, 2),(50022, 50046, 100, 3),(50022, 50047, 100, 4),(50022, 50048, 100, 5),(50022, 50049, 100, 6),
-- 50023 [Dressing Box: Demon Hunter] loot:
(50023, 50028, 100, 1),(50023, 50029, 100, 2),(50023, 50030, 100, 3),(50023, 50031, 100, 4),(50023, 50032, 100, 5),(50023, 50033, 100, 6),(50023, 50034, 100, 7),(50023, 50035, 100, 8),
-- 50024 [Dressing Box: Invisible Suit] loot:
(50024, 50026, 100, 1),(50024, 50027, 100, 2),
-- 50025 [Dressing Box: Sally Whitemane] loot:
(50025, 50036, 100, 1),(50025, 50037, 100, 2),(50025, 50038, 100, 3),(50025, 50039, 100, 4),(50025, 50040, 100, 5),(50025, 50041, 100, 6),(50025, 50042, 100, 7),(50025, 50043, 100, 8), (50025, 50105, 100, 9),
-- 50101 [Dressing Box: Scholomance Student]
(50101, 50091, 100, 1),(50101, 50095, 100, 2),(50101, 50096, 100, 3),(50101, 50097, 100, 4),(50101, 50098, 100, 5),(50101, 50099, 100, 6),(50101, 50100, 100, 7),(50101, 50102, 100, 8),(50101, 50103, 100, 9),(50101, 3427, 100, 10), (50101, 50104, 100, 11), (50101, 50106, 100, 12);

replace into item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) values

-- Hardcore Rewards:

-- 50050 [Turtle WoW Box (lvl 10)] loot:
(50050, 18967, 100, 1, 1, 1), -- 18954 [Turtle Egg (Olive)]
(50050, 1470,  100, 2, 1, 1), -- 1470  [Murloc Skin Bag]
(50050, 859,   100, 3, 1, 1), -- 859   [Fine Cloth Shirt]
(50050, 50048, 100, 4, 1, 1), -- 50048 [Right Juggling Torch]
-- 50051 [Turtle WoW Box (lvl 20)] loot:
(50051, 50058, 100, 2, 1, 1), -- 50058 [Black Piglet]
(50051, 50021, 100, 3, 10, 10), -- 50021 [Strange Bottle]
-- 50052 [Turtle WoW Box (lvl 30)] loot:
(50052, 50062, 100, 1, 1, 1), -- 50062 [Half-Eaten Mutton Chop]
(50052, 23716, 100, 2, 1, 1), -- 23716 [Carved Ogre Idol]
(50052, 50020, 100, 3, 10, 10), -- 50020 [Magic Muffin]
-- 50053 [Turtle WoW Box (lvl 40)] loot:
(50053, 50018, 100, 1, 1, 1), --  1470 [Turtle Traveller's Bag]
(50053, 50017, 100, 2, 1,1 ), -- 50017 [Highborne Soul Mirror]
-- 50054 [Turtle WoW Box (lvl 50)] loot:
(50054, 23714, 100, 1, 1, 1), -- 23714 [Perpetual Purple Firework]
(50054, 23578, 100, 2, 20, 20), -- 23578 [Diet McWeaksause]
(50054, 23579, 100, 3, 20, 20), -- 23579 [Diet McWeaksause Classic]
-- 50055 [Turtle WoW Box (lvl 60)] loot:
(50055, 19160, 100, 1, 1, 1), -- 19160 [Hardcore Master's Tabard]
(50055, 50075, 100, 2, 1, 1), -- 50074 [Darkmoon Strider]
(50055, 50094, 100, 3, 1, 1); -- 50094 [Sword of a Thousand Truths]

