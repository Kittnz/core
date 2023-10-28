UPDATE quest_template SET Objectives = 'Wait until Grimshade performs the ritual of divination.' WHERE entry = 2992;

UPDATE quest_template SET MinLevel = 1 WHERE entry IN (41107, 41108, 41109, 41118, 41119, 41123, 41129, 80738, 80739);

UPDATE quest_template SET ExclusiveGroup = 0 WHERE entry IN (40878, 40879);
