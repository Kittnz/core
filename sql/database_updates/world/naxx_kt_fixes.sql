-- # Unstoppable Abomination should be stunnable
-- # https://youtu.be/uZaLaStUcm4?t=105
-- # original mask = 1019952754
-- # updated mask = 1019950706
UPDATE creature_template SET mechanic_immune_mask = 1019950706 WHERE entry = 16428;

-- # Soldier of the Frozen Wastes https://database.turtle-wow.org/?npc=16427
-- # all classic videos show they have 2000 hp, might be an estimate but 
-- # you can see how fast they die and for the 120 skeletons in the fight it makes
-- # a huge difference
-- # https://wowpedia.fandom.com/wiki/Kel%27Thuzad_(Classic) - also 2000 hp
-- # https://www.youtube.com/watch?v=-EXHZtNc1hE&t=98s&ab_channel=mess110
-- # https://youtu.be/RIUxAjEzm04?t=1510
-- # https://youtu.be/imBrk_9geEA?t=44
-- # https://youtu.be/BM8jZSiLwDc?t=91
UPDATE creature_template SET health_min = 2000, health_max = 2000 WHERE entry = 16427;