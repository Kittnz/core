-- Fix chaining of Ashenvale Druids vs Sentinels quests
UPDATE quest_template SET NextQuestInChain = 40802 WHERE entry = 40801;
UPDATE quest_template SET NextQuestInChain = 40803 WHERE entry = 40802;
UPDATE quest_template SET NextQuestInChain = 40804 WHERE entry = 40803;
UPDATE quest_template SET NextQuestInChain = 40805 WHERE entry = 40804;
UPDATE quest_template SET NextQuestInChain = 40806 WHERE entry = 40805;

UPDATE quest_template SET NextQuestInChain = 40808 WHERE entry = 40807;
UPDATE quest_template SET NextQuestInChain = 40809 WHERE entry = 40808;
UPDATE quest_template SET NextQuestInChain = 40810 WHERE entry = 40809;
UPDATE quest_template SET NextQuestInChain = 40811 WHERE entry = 40810;
UPDATE quest_template SET NextQuestInChain = 40812 WHERE entry = 40811;

-- Fix chaining of Gurky baby Murloc pet quests
UPDATE quest_template SET NextQuestInChain = 40541 WHERE entry = 40540;
-- Alliance
UPDATE quest_template SET NextQuestInChain = 40545 WHERE entry = 40542;
UPDATE quest_template SET NextQuestInChain = 40546 WHERE entry = 40545;
-- Horde
UPDATE quest_template SET NextQuestInChain = 40544 WHERE entry = 40543;
UPDATE quest_template SET NextQuestInChain = 40547 WHERE entry = 40544;
