-- Fix auto-complete quests in Tel'Abim https://github.com/slowtorta/turtlewow-bug-tracker/issues/3353
UPDATE quest_template SET Method = 0 WHERE entry IN (40739, 40740);


