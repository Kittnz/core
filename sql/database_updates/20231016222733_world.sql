-- Fix faction locking of Gadgetzan egg quests
UPDATE quest_template SET RequiredRaces = 0, RewRepFaction1 = 0, RewRepFaction2 = 0, RewRepValue1 = 0, RewRepValue2 = 0 WHERE entry BETWEEN 2747 AND 2750;
