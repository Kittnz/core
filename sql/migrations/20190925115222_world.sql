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
