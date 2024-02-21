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
UPDATE item_tempalte SET Stackable = 250 WHERE entry = 61199;
