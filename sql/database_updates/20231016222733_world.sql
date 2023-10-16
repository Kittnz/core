-- Fix faction locking of Gadgetzan egg quests
UPDATE quest_template SET RequiredRaces = 0, RewRepValue1 = 0, RewRepValue2 = 0 WHERE entry IN (2741, 2747, 2748, 279, 2750);
