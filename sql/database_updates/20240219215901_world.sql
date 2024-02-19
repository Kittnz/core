-- New companions:
-- Item ID range: 36500+100
-- Creature ID range: 36500+100
-- Spell ID range: 36500+100

SET @pet_npc_entry = 36500;
SET @pet_item_entry = 36500;
SET @pet_spell_entry = 36500;
SET @pet_skilline_entry = 36545;

SET @pet_name = 'Sunfire Fox';
SET @pet_desc = 'The Sunfire Fox glows with golden fur, bringing warmth wherever it wanders.';
SET @pet_scale = 0.5;
SET @pet_model = 19106;
SET @pet_item_icon = 40126;
SET @pet_spell_icon = 2037;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);


