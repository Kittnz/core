-- Fix Patch of Elemental Water pools. You cannot have spawns spread accross different maps be in the same pool!!!
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`) VALUES (42905, 2, 'Patch of Elemental Water Kalimdor', 0, 0);
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`, `flags`, `instance`) VALUES (42906, 2, 'Patch of Elemental Water Eastern Kingdoms', 0, 0);
DELETE FROM `pool_gameobject_template` WHERE `id`=180753;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (3998315, 42905, 0, 'Patch of Elemental Water Kalimdor', 0);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (3998316, 42905, 0, 'Patch of Elemental Water Kalimdor', 0);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (3998317, 42905, 0, 'Patch of Elemental Water Kalimdor', 0);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (3998318, 42905, 0, 'Patch of Elemental Water Kalimdor', 0);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (3998319, 42905, 0, 'Patch of Elemental Water Kalimdor', 0);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (3998320, 42905, 0, 'Patch of Elemental Water Kalimdor', 0);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (5012932, 42906, 0, 'Patch of Elemental Water Eastern Kingdoms', 0);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (5012934, 42906, 0, 'Patch of Elemental Water Eastern Kingdoms', 0);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`, `flags`) VALUES (5012926, 42906, 0, 'Patch of Elemental Water Eastern Kingdoms', 0);
