-- Spell "Curse of the Plague Rat" deleted from NPC "Groveweald Warrior":
REPLACE INTO creature_spells VALUES (180019, 'The Crescent Grove: Groveweald Warrior', 16431, 100, 0, 0, 0, 4, 6, 6, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15232, 100, 1, 0, 0, 12, 1, 1, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
update creature_template set spell_list_id = 180019 where entry = 92100;
-- XYZ for GO "food crate" updated:
update gameobject set position_x = -334.396, position_y = 0.519818, position_z = 55.9874 where guid = 20881;