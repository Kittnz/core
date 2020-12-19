update gameobject_template set displayid = 29624, size = 0.8 where entry = 3000220;
delete from gameobject where guid = 4004347;
update gameobject_template set displayid = 22748, size = 1 where entry = 3000204;

update item_template set spellid_1 = 46033 where entry = 80878;

-- Revantusk Trolls Armor Quartermaster

REPLACE INTO `creature_template` VALUES (80915, 0, 14768, 0, 0, 0, 'Tan\'Pogo', 'Revantusk Trolls Armor Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 1494, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

-- Goblin racials:

REPLACE INTO `playercreateinfo_spell` VALUES

(9, 1, 46015, 0, 5875, 'Chemical Superfreak'),
(9, 3, 46015, 0, 5875, 'Chemical Superfreak'),
(9, 4, 46015, 0, 5875, 'Chemical Superfreak'),
(9, 8, 46015, 0, 5875, 'Chemical Superfreak'),
(9, 9, 46015, 0, 5875, 'Chemical Superfreak'),

(9, 1, 46016, 0, 5875, 'Prospecting'),
(9, 3, 46016, 0, 5875, 'Prospecting'),
(9, 4, 46016, 0, 5875, 'Prospecting'),
(9, 8, 46016, 0, 5875, 'Prospecting'),
(9, 9, 46016, 0, 5875, 'Prospecting'),

(9, 1, 46017, 0, 5875, 'Aggressive Negotiations'),
(9, 3, 46017, 0, 5875, 'Aggressive Negotiations'),
(9, 4, 46017, 0, 5875, 'Aggressive Negotiations'),
(9, 8, 46017, 0, 5875, 'Aggressive Negotiations'),
(9, 9, 46017, 0, 5875, 'Aggressive Negotiations'),

(9, 1, 46018, 0, 5875, 'Exit Strategy'),
(9, 3, 46018, 0, 5875, 'Exit Strategy'),
(9, 4, 46018, 0, 5875, 'Exit Strategy'),
(9, 8, 46018, 0, 5875, 'Exit Strategy'),
(9, 9, 46018, 0, 5875, 'Exit Strategy');

-- High Els racials: 

REPLACE INTO `playercreateinfo_spell` VALUES

(10, 1, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 2, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 3, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 4, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 5, 46022, 0, 5875, 'Enchanting Specialization'),
(10, 8, 46022, 0, 5875, 'Enchanting Specialization'),

(10, 1, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 2, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 3, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 4, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 5, 46021, 0, 5875, 'Enchanting Specialization'),
(10, 8, 46021, 0, 5875, 'Enchanting Specialization');