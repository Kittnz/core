-- The Key to Karazhan I
UPDATE quest_template SET NextQuestInChain = 40818, NextQuestId = 0, PrevQuestId = 0 WHERE entry = 40817;
-- The Key to Karazhan II
UPDATE quest_template SET NextQuestInChain = 0, NextQuestId = 0, PrevQuestId = 40817 WHERE entry = 40818;

-- The Key to Karazhan III (A)
UPDATE quest_template SET NextQuestInChain = 40820, NextQuestId = 0, PrevQuestId = 40818 WHERE entry = 40819;
-- The Key to Karazhan IV (A)
UPDATE quest_template SET NextQuestInChain = 40821, NextQuestId = 0, PrevQuestId = 40819 WHERE entry = 40820;
-- The Key to Karazhan V (A)
UPDATE quest_template SET NextQuestInChain = 40825, NextQuestId = 0, PrevQuestId = 40820 WHERE entry = 40821;

-- The Key to Karazhan III (H)
UPDATE quest_template SET NextQuestInChain = 40823, NextQuestId = 0, PrevQuestId = 40818 WHERE entry = 40822;
-- The Key to Karazhan IV (H)
UPDATE quest_template SET NextQuestInChain = 40824, NextQuestId = 0, PrevQuestId = 40822 WHERE entry = 40823;
-- The Key to Karazhan V (H)
UPDATE quest_template SET NextQuestInChain = 40825, NextQuestId = 0, PrevQuestId = 40823 WHERE entry = 40824;

-- The Key to Karazhan VI
UPDATE quest_template SET NextQuestInChain = 40826, NextQuestId = 0, PrevQuestId = 0 WHERE entry = 40825;
-- The Key to Karazhan VII
UPDATE quest_template SET NextQuestInChain = 40827, NextQuestId = 0, PrevQuestId = 40825 WHERE entry = 40826;
-- The Key to Karazhan VIII
UPDATE quest_template SET NextQuestInChain = 40828, NextQuestId = 0, PrevQuestId = 40826 WHERE entry = 40827;
-- The Key to Karazhan IX
UPDATE quest_template SET NextQuestInChain = 40829, NextQuestId = 0, PrevQuestId = 40827 WHERE entry = 40828;
-- The Key to Karazhan X
UPDATE quest_template SET NextQuestInChain = 0, NextQuestId = 0, PrevQuestId = 40828 WHERE entry = 40829;

-- Set the following npc entries to scale 1, they are currently TINY.
update creature_template set scale = 1 where entry in (61393,61395,61396,61400);
-- Change display ID of item entry 61236 to 1317.
update item_template set display_id = 1317 where entry = 61236;
