UPDATE gameobject_loot_template SET ChanceOrQuestChance = 13.2 WHERE item = 12363 AND entry = 17241;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 0.55 WHERE item = 12363 AND ChanceOrQuestChance = 0.2;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 2.5  WHERE item = 12363 AND ChanceOrQuestChance = 1;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 5 WHERE item = 12363 AND (ChanceOrQuestChance = 2 OR ChanceOrQuestChance = 3);


UPDATE gameobject_loot_template SET ChanceOrQuestChance = 1 WHERE item = 13468 AND ChanceOrQuestChance = 0.5;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 2 WHERE item = 13468 AND ChanceOrQuestChance = 1;