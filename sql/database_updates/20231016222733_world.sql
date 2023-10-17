-- Fix faction locking of Gadgetzan egg quests
UPDATE quest_template SET RequiredRaces = 0, RewRepValue1 = 0, RewRepValue2 = 0 WHERE entry IN (2741, 2747, 2748, 2749, 2750);

-- Fix incorrect item requirements for Ornate Bloodstone Dagger Plans quest
UPDATE quest_template SET ReqItemId1 = 61794 WHERE entry = 41119;
