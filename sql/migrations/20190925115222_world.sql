replace into migrations values (20190925115222);

-- New non-cmbat pet, Autumn Blossom Sapling:
replace into item_template (entry, class, subclass, name, description, display_id, quality, bonding, spellid_1, spellcooldown_1) values
(51007, 15, 2, 'Teldrassil Sproutling', 'What a happy little tree!', 9659, 2, 1, 28505, 1500);
replace into creature_template (entry, display_id1, display_id2, display_id3, name, subname, level_min, level_max, health_min, health_max, faction, script_name, scale) values
('50538', '9590', '9591', '9592', 'Teldrassil Sproutling', '', '1', '1', '64', '64', '35', '', 0.4);
replace into custom_pet_entry_relation (item_entry, creature_entry) values 
('51007', '50538');
-- Fixed "CLUCK!" quest, the egg position is incorrect tho, should be redone via quest_end script:
update quest_template set RewSpell = 0 where entry = 3861;
update quest_template set RewSpellCast = 13563 where entry = 3861;
-- Daisy "Hot Pants""
replace into item_template (entry, name, inventory_type, display_id, quality, bonding) values (51009, 'Daisy Dukes #teamhotpants', 6, 12044, 2, 1);
-- Adjusting weather "chances" a bit:
replace into game_weather (zone, spring_rain_chance, spring_snow_chance, spring_storm_chance, summer_rain_chance, summer_snow_chance, summer_storm_chance, fall_rain_chance, fall_snow_chance, fall_storm_chance, winter_rain_chance, winter_snow_chance, winter_storm_chance) values 
(3, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 15),
(45, 10, 0, 0, 15, 0, 0, 23, 0, 0, 23, 0, 0),
(3358, 5, 0, 0, 10, 0, 0, 10, 0, 0, 10, 0, 0),
(148, 10, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0),
(85, 10, 0, 0, 15, 0, 0, 20, 0, 0, 20, 0, 0),
(405, 10, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0),
(41, 5, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0),
(15, 10, 0, 0, 20, 0, 0, 25, 0, 0, 25, 0, 0),
(10, 15, 0, 0, 15, 0, 0, 20, 0, 0, 15, 0, 0),
(139, 10, 0, 0, 15, 0, 0, 15, 0, 0, 10, 0, 0),
(28, 10, 0, 0, 15, 0, 0, 15, 0, 0, 10, 0, 0),
(2017, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0),
(12, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0),
(357, 15, 0, 0, 15, 0, 0, 15, 0, 0, 5, 0, 0),
(267, 15, 0, 0, 10, 0, 0, 15, 0, 0, 15, 0, 0),
(47, 10, 0, 0, 10, 0, 0, 15, 0, 0, 10, 0, 0),
(38, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0),
(215, 15, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0),
(44, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0),
(33, 10, 0, 0, 25, 0, 0, 25, 0, 0, 10, 0, 0),
(141, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0),
(796, 5, 0, 0, 10, 0, 0, 25, 0, 0, 5, 0, 0),
(490, 15, 0, 0, 10, 0, 0, 20, 0, 0, 15, 0, 0),
(11, 25, 0, 0, 15, 0, 0, 25, 0, 0, 15, 0, 0),
(36, 0, 20, 0, 0, 20, 0, 0, 25, 0, 0, 30, 0),
(1, 0, 25, 0, 0, 15, 0, 0, 40, 0, 0, 40, 0),
(618, 0, 25, 0, 0, 20, 0, 0, 20, 0, 0, 25, 0),
(2597, 0, 15, 0, 0, 15, 0, 0, 20, 0, 0, 25, 0),
(1377, 0, 0, 20, 0, 0, 25, 0, 0, 20, 0, 0, 15),
(3429, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 20),
(3428, 0, 0, 20, 0, 0, 20, 0, 0, 20, 0, 0, 20),
(440, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15),
(1977, 15, 0, 0, 5, 0, 0, 15, 0, 0, 15, 0, 0),
(876, 25, 25, 25, 25, 25, 25, 25, 25, 25, 10, 25, 25),
(1519, 10, 0, 0, 10, 0, 0, 10, 0, 15, 0, 15, 0),
(1637, 15, 0, 0, 0, 0, 0, 10, 0, 5, 0, 15, 15),
(1657, 15, 0, 0, 0, 0, 0, 10, 0, 5, 0, 15, 15),
(1638, 15, 0, 0, 0, 0, 0, 10, 0, 5, 0, 15, 15);
