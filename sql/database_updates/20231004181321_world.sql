-- Reduce respawn timer temporarily to 1 minute or 30 seconds to eleviate stress from attunement

-- Vilemusk Felsworn 
-- Vilemusk Hellcaller 
-- Vilemusk Shadowstalker

-- All hard bottlenecks atm for attunement chain

UPDATE `creature` SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 120 WHERE `id` in (61339,61340,61341);

-- Greymane plate items may not be dropping 

-- https://database.turtle-wow.org/?item=61376
-- https://database.turtle-wow.org/?item=61377
-- https://database.turtle-wow.org/?item=61378
-- https://database.turtle-wow.org/?item=61379

-- If they are not dropping please add them as a droppable item on their own loot table with a drop % of 0.05 to the following mobs

-- https://database.turtle-wow.org/?npc=61364
-- https://database.turtle-wow.org/?npc=61391
-- https://database.turtle-wow.org/?npc=61388
-- https://database.turtle-wow.org/?npc=61389
-- https://database.turtle-wow.org/?npc=61417
-- https://database.turtle-wow.org/?npc=61365

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

(61364, 61376, 0.05, 2, 1, 1, 0),
(61364, 61377, 0.05, 2, 1, 1, 0),
(61364, 61378, 0.05, 2, 1, 1, 0),
(61364, 61379, 0.05, 2, 1, 1, 0),

(61391, 61376, 0.05, 2, 1, 1, 0),
(61391, 61377, 0.05, 2, 1, 1, 0),
(61391, 61378, 0.05, 2, 1, 1, 0),
(61391, 61379, 0.05, 2, 1, 1, 0),

(61388, 61376, 0.05, 2, 1, 1, 0),
(61388, 61377, 0.05, 2, 1, 1, 0),
(61388, 61378, 0.05, 2, 1, 1, 0),
(61388, 61379, 0.05, 2, 1, 1, 0),

(61389, 61376, 0.05, 2, 1, 1, 0),
(61389, 61377, 0.05, 2, 1, 1, 0),
(61389, 61378, 0.05, 2, 1, 1, 0),
(61389, 61379, 0.05, 2, 1, 1, 0),

(61417, 61376, 0.05, 2, 1, 1, 0),
(61417, 61377, 0.05, 2, 1, 1, 0),
(61417, 61378, 0.05, 2, 1, 1, 0),
(61417, 61379, 0.05, 2, 1, 1, 0),

(61365, 61376, 0.05, 2, 1, 1, 0),
(61365, 61377, 0.05, 2, 1, 1, 0),
(61365, 61378, 0.05, 2, 1, 1, 0),
(61365, 61379, 0.05, 2, 1, 1, 0);