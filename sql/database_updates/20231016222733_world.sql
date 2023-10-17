-- Fix faction locking of Gadgetzan egg quests
UPDATE quest_template SET RequiredRaces = 0, RewRepValue1 = 0, RewRepValue2 = 0 WHERE entry IN (2741, 2747, 2748, 2749, 2750);

-- Fix incorrect item requirements for Ornate Bloodstone Dagger Plans quest
UPDATE quest_template SET ReqItemId1 = 61794 WHERE entry = 41119;

-- Fix name typo of Alchemist Stone recipe
UPDATE item_template SET Name = 'Recipe: Alchemist''s Stone' WHERE entry = 13517;

-- Fix missing prerequisite for Azuregos's Magical Ledger
UPDATE quest_template SET PrevQuestId = 8555 WHERE entry = 8575;

-- Various fixes for Chocolate Fish quest
UPDATE quest_template SET RewXP = 1550, RewMoneyMaxLevel = 9300, NextQuestInChain = 40999 WHERE entry = 40998;
UPDATE quest_template SET RewXP = 5150, RewMoneyMaxLevel = 30900, NextQuestInChain = 41000 WHERE entry = 40999;
UPDATE quest_template SET RewXP = 5320, RewMoneyMaxLevel = 31920, NextQuestInChain = 41001 WHERE entry = 41000;
UPDATE quest_template SET RewXP = 1550, RewMoneyMaxLevel = 9300, NextQuestInChain = 41002 WHERE entry = 41001;
UPDATE quest_template SET RewXP = 1550, RewMoneyMaxLevel = 9300, NextQuestInChain = 41003 WHERE entry = 41002;
UPDATE quest_template SET RewXP = 2680, RewMoneyMaxLevel = 16080, NextQuestInChain = 41004 WHERE entry = 41003;
UPDATE quest_template SET RewXP = 3150, RewMoneyMaxLevel = 18900 WHERE entry = 41004;
UPDATE quest_template SET Type = 62 WHERE entry IN (40998, 41001, 41002, 41003, 41004);

-- Fix faction requirement of The Black Waltz quest
UPDATE quest_template SET RequiredRaces = 589 WHERE entry = 40908;
