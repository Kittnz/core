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

-- item 61014 (Shard of Eternity) has a broken display ID

UPDATE `item_template` SET `display_id` = 25055 WHERE `entry` = 61014;

-- Drifting Avatar of Sand, edited immunity mask.

UPDATE `creature_template` SET `mechanic_immune_mask` = 646676319 WHERE `entry` = 61316;

-- https://database.turtle-wow.org/?npc=60697 has no loot table or skinning table.  (I'm going to ignore it being on the Murloc faction for now...)
-- The 2 instances of Soothound are also not linked to one another or the Hateforge Watchers at the base of the Hateforge Quarry entrance ramp.

UPDATE `creature_template` SET `skinning_loot_id` = 100003 WHERE `entry` = 60697;
UPDATE `creature_template` SET `faction` = 89 WHERE `entry` = 60697;

-- item 61556 needs to have 50% droprate from npc 61339, 61340, 61341, 61338 

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

(61339, 61556, 50, 6, 1, 1, 0),
(61340, 61556, 50, 6, 1, 1, 0),
(61341, 61556, 50, 6, 1, 1, 0),
(61338, 61556, 50, 6, 1, 1, 0);

-- Link the following GUIDS together: 2570707, 2570709, 2570894, 2570895

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2570709, 2570707, 3);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2570894, 2570707, 3);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (2570895, 2570707, 3);
