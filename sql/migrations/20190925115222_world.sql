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
-- Adjusting Children's Week timing:
update game_event set occurence=10080, length=10081 where entry=10;
-- Mod. quest textes:
update quest_template set details = 'Ey, kid! Yes, you! I see you\'re an adventuring type and ready to jump into any fray if only there\'s one to jump into, right? Just as I thought. What? Of course there\'s a reward involved, how else could it be around here? It\'s a Mirage Raceway after all!\n\nWhat to do? Oh, that\'s so simple, I\'m sure that even a gnome would manage to test our jolly vehicle on the sustain for … errh, durability conditions! Yes! So, if you\'re ready to earn some coins and crack some scorpids flat then you\'re at the right spot, kid! What helmet? Instruction? Bah! Who needs\'em anyway?!\n\nYes, you might want to talk to our charming Dolores to register for the test race, $N.\n\nLet\'s blast it!' where entry = 50310;
update quest_template set details = 'I am sure that you\'re very well aware of the fact about us, gnomes, we\'re the best inventors. Assuming you\'re striving to improve your skills and knowledge you will eventually be considered to study from us. Obviously, no gnome is that stupid to decline this intriguing and exciting partnership, alas it might be costly sometimes.\n\nSpeaking shorter; we need someone to compliment our natural resourcefulness of brain activity with their muscle and durability!\n\nIf you successfully ride this awesome masterpiece of gnomish engineering any other dimwit goblin would simply call a race car then you will be granted an opportunity to represent our bright society of inventors even further in Mirage Races!\n\nCool, right?\n\nWell, here\'s the instructions we\'ve specifically designed for other races for better understanding and comprehension.\n\nYes, you might want to talk to our charming Dolores to register for the test race, $N.\n\nGood luck, sentient one!' where entry = 50312;
-- Place creatures in the world:
delete from creature where id in (50537, 50534, 50535, 50533, 50530, 50521, 50522, 4507);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (4507, 1, 0, 4507, -6197.65, -3901.92, -60.2418, 0.0178976, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50521, 1, 0, 0, -6218.1, -3954.83, -58.2914, 0.479733, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50522, 1, 0, 0, -6228.78, -3869.77, -57.5069, 0.164787, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50530, 0, 0, 0, -8845.51, 595.031, 93.3977, 2.4987, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50533, 1, 0, 4507, -6254.59, -4011.57, -58.7491, 6.15185, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50534, 1, 0, 0, -6151.3, -3925.89, -58.7505, 1.57775, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50535, 1, 0, 0, -6191.22, -3876.85, -58.7517, 4.66123, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
replace into creature (id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, deathstate, movementtype, spawnflags, visibilitymod, patch_min, patch_max) values (50537, 1, 0, 0, -6105.78, -3875.83, -58.7563, 2.26232, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);
-- Lower XP for Mirage Raceway quests:
update quest_template set rewmoneymaxlevel='500' where entry in (50310, 50311, 50312, 50313, 50315);
-- Set correct ZoneID for Mirage Raceway quests:
update quest_template set zoneorsort='2240' where entry in (50310, 50311, 50312, 50313, 50315);

