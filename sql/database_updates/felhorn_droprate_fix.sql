REPLACE INTO creature_loot_template VALUES 
(7106, 60295, -16, 0, 1, 1, 0),
(7110, 60295, -14, 0, 1, 1, 0),
(60461, 60295, -21, 0, 1, 1, 0);

UPDATE creature_loot_template SET ChanceOrQuestChance = -11 WHERE entry = 7105 AND item = 60295;
UPDATE creature_loot_template SET ChanceOrQuestChance = -15 WHERE entry = 7107 AND item = 60295;
UPDATE creature_loot_template SET ChanceOrQuestChance = -15 WHERE entry = 7108 AND item = 60295;
UPDATE creature_loot_template SET ChanceOrQuestChance = -13 WHERE entry = 7109 AND item = 60295;
UPDATE creature_loot_template SET ChanceOrQuestChance = -16 WHERE entry = 7111 AND item = 60295;
