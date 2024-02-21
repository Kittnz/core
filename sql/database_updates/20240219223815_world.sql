-- make spell "Remove Insignia" have a big range, and ignore LoS
-- that way, it will not be interrupted, if player release corpse
UPDATE `spell_template` SET `rangeIndex` = '13' WHERE (`entry` = '22027');
UPDATE `spell_template` SET `attributesEx2` = '4' WHERE (`entry` = '22027');

-- Add quest chaining to Into the Dream
UPDATE quest_template SET NextQuestInChain = 40958 WHERE entry = 40957;
UPDATE quest_template SET NextQuestInChain = 40959 WHERE entry = 40958;
UPDATE quest_template SET NextQuestInChain = 40960 WHERE entry = 40959;
UPDATE quest_template SET NextQuestInChain = 40961 WHERE entry = 40960;
UPDATE quest_template SET NextQuestInChain = 40962 WHERE entry = 40961;

-- Add quest chaining to Hyjal Runestone chain
UPDATE quest_template SET NextQuestInChain = 40985 WHERE entry = 40984;
UPDATE quest_template SET NextQuestInChain = 40986 WHERE entry = 40985;
UPDATE quest_template SET NextQuestInChain = 40987 WHERE entry = 40986;
UPDATE quest_template SET NextQuestInChain = 40988 WHERE entry = 40987;
UPDATE quest_template SET NextQuestInChain = 40989 WHERE entry = 40988;
UPDATE quest_template SET NextQuestInChain = 40990 WHERE entry = 40989;

-- Add quest chaining to Manifestations of Nightmare chain
UPDATE quest_template SET NextQuestInChain = 41025 WHERE entry = 41024;
UPDATE quest_template SET NextQuestInChain = 41026 WHERE entry = 41025;

-- Raise stack size of Bright Dream Shards to 250
UPDATE item_template SET Stackable = 250 WHERE entry = 61199;

-- Change repeatables to non-accept type
UPDATE quest_template SET RequestItemsText = Details WHERE entry IN (40813, 40814, 40815, 40816, 40894, 40973, 41007, 41018, 41019, 41021, 41055, 41068, 41069, 41128) AND Details IS NOT NULL;
UPDATE quest_template SET Method = 0, Objectives = '', Details = NULL WHERE entry IN (40813, 40814, 40815, 40816, 40894, 40973, 41007, 41018, 41019, 41021, 41055, 41068, 41069, 41128);

-- Place class masks on Mastery of the Bow quest
UPDATE quest_template SET RequiredClasses = 13 WHERE entry = 40913;

-- Make Hyjal turn-in recipe BoP
UPDATE item_template SET Bonding = 1 WHERE entry = 61179;

-- Place profession requirements on Hyjal recipe turn-ins
UPDATE quest_template SET RequiredSkill = 164 WHERE entry IN (40888, 40889, 40890, 41111); -- blacksmith
UPDATE quest_template SET RequiredSkill = 165 WHERE entry IN (40875, 40895, 40897, 40898, 40899); -- leatherworking
UPDATE quest_template SET RequiredSkill = 171 WHERE entry IN (40873, 40874); -- alchemy
UPDATE quest_template SET RequiredSkill = 186 WHERE entry = 40886; -- mining
UPDATE quest_template SET RequiredSkill = 197 WHERE entry IN (40900, 40902, 40903, 40904); -- tailoring
UPDATE quest_template SET RequiredSkill = 333 WHERE entry IN (40883, 40884); -- enchanting
