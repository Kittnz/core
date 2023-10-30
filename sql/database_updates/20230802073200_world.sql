UPDATE quest_template SET NextQuestInChain = 0 WHERE entry IN (40474, 40476);
UPDATE quest_template SET MinLevel = 15 WHERE entry = 40477;

UPDATE quest_template SET RewXP = 0, RewMoneyMaxLevel = 0, RewOrReqMoney = 0 WHERE entry = 41021;

UPDATE quest_template SET Type = 1 WHERE entry = 40945;
