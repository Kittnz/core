-- Removed Khazgrims items from DM loottable
DELETE FROM creature_loot_template WHERE item in (70050, 70051, 70052, 70053, 70054, 70055, 70056, 70057, 70058, 70059, 70060, 70061, 70062, 70063, 70064);

-- -- Crown of Sacrifice fix (Dragunovi)
UPDATE item_template SET stat_type1 = 5, stat_value1 = 15, stat_type2 = 7, stat_value2 = 16, spellid_1 = 18030, spelltrigger_1 = 1, spellid_2 = 21361, spelltrigger_2 = 1, arcane_res = 0, shadow_res = 0, armor = 660, item_level = 65, required_level = 60, name = 'Crown of Eternal Sacrifice' WHERE entry = 70057;
REPLACE INTO creature_loot_template VALUES (91917, 70057, 15, 1, 1, 1, 0);

-- Lowered Dropchance of items from Corpsemuncher
UPDATE creature_loot_template SET ChanceOrQuestChance = 15 WHERE item IN (83459, 83460, 83461, 83462, 83463);