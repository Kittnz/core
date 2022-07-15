-- Set coin to Uncommon
UPDATE item_template SET quality = 2 WHERE entry = 51217;

-- Added coins to lootpool
REPLACE INTO creature_loot_template VALUES
(1853, 51217, 80, 2, 1, 1, 0),
(9019, 51217, 80, 2, 1, 1, 0),
(10440, 51217, 80, 2, 1, 1, 0),
(10813, 51217, 80, 2, 1, 1, 0),
(11486, 51217, 80, 2, 1, 1, 0),
(11492, 51217, 80, 2, 1, 1, 0),
(11501, 51217, 80, 2, 1, 1, 0),
(60737, 51217, 80, 3, 1, 1, 0),
(91928, 51217, 80, 7, 2, 2, 0),
(65125, 51217, 80, 7, 2, 2, 0),
(9568, 51217, 80, 7, 2, 2, 0),
(10363, 51217, 80, 2, 3, 3, 0);

-- Added coin to lootpool
REPLACE INTO gameobject_loot_template VALUES (2010867, 51217, 80, 3, 1, 1, 0);