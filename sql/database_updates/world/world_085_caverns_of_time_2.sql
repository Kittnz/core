
-- Value updates
UPDATE creature_template SET health_min = health_min + 6000, health_max = health_max + 6000 WHERE entry IN (65100, 65101, 65102);
UPDATE creature_template SET dmg_min = dmg_min + 300, dmg_max = dmg_max + 300 WHERE entry IN (65100, 65101, 65102);
UPDATE creature_template SET health_min = health_min + 2000, health_max = health_max + 2000 WHERE entry = 65103;