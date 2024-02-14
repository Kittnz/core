update item_template set spellid_1 = 15464, stat_value1 = 22, stat_value2 = 10, stat_type2 = 3, stat_value3 = 9, stat_type3 = 6 where entry = 81355; 

-- Fallen Crusader Legguards 
-- 17 str -> 22 str, added 10 agi, removed 28 dmg to undead, added 1 hit
-- 28 dmg to undead is a flat increase not like attack power so its impact is too big and not a single item can come close to its dps vs undead

-- Fix chaining on Captain Grayson vs Cookie quest, and remove redundant quest objectives
UPDATE quest_template SET NextQuestInChain = 40396 WHERE entry = 40395;
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount = 0 WHERE entry = 40396;
