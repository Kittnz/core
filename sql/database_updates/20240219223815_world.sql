-- make spell "Remove Insignia" have a big range, and ignore LoS
-- that way, it will not be interrupted, if player release corpse
UPDATE `spell_template` SET `rangeIndex` = '13' WHERE (`entry` = '22027');
UPDATE `spell_template` SET `attributesEx2` = '4' WHERE (`entry` = '22027');

-- Fix Into the Dream chaining
UPDATE quest_template SET NextQuestInChain = 40958 WHERE entry = 40957;
UPDATE quest_template SET NextQuestInChain = 40959 WHERE entry = 40958;
UPDATE quest_template SET NextQuestInChain = 40960 WHERE entry = 40959;
UPDATE quest_template SET NextQuestInChain = 40961 WHERE entry = 40960;
UPDATE quest_template SET NextQuestInChain = 40962 WHERE entry = 40961;
