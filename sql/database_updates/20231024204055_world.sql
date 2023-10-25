UPDATE quest_template SET RewItemId1 = 61199 WHERE RewItemId1 = 61198 AND entry IN(40893,40894,40870,41018,41021,41019,40871,40891);
UPDATE quest_template SET RewItemId2 = 61199 WHERE RewItemId2 = 61198 AND entry IN(40893,40894,40870,41018,41021,41019,40871,40891);
UPDATE quest_template SET RewItemId3 = 61199 WHERE RewItemId3 = 61198 AND entry IN(40893,40894,40870,41018,41021,41019,40871,40891);
UPDATE quest_template SET RewItemId4 = 61199 WHERE RewItemId4 = 61198 AND entry IN(40893,40894,40870,41018,41021,41019,40871,40891);

UPDATE creature_loot_template SET ChanceOrQuestChance = ABS(ChanceOrQuestChance) WHERE ChanceOrQuestChance < 0 AND item IN (61409,61442,61706,61711,61712);


UPDATE creature_loot_template SET ChanceOrQuestChance = 50 WHERE item = 61707 AND entry IN(61359,61358,61356,61357,61367);

UPDATE creature_loot_template SET ChanceOrQuestChance = 15 WHERE item = 61198 AND entry IN (61359,61358,61356,61357,61367);
UPDATE creature_loot_template SET ChanceOrQuestChance = 100 WHERE item = 61706 AND entry IN (61352, 61353);
UPDATE creature_loot_template SET ChanceOrQuestChance = 30 WHERE item = 61706 AND entry IN (61349,61350,61354,61338,61339,61340,61341);
UPDATE creature_loot_template SET ChanceOrQuestChance = 20 WHERE item = 61198 AND entry IN (60742,60743,60744,60745,60746,61212);


UPDATE creature_loot_template SET ChanceOrQuestChance = 80 WHERE item = 20381 AND entry IN (60747, 60748);
UPDATE creature_loot_template SET minCountOrRef = 5, maxcount = 12 WHERE item = 61198 AND entry IN (60747, 60748);