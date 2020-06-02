
-- Objects

replace into gameobject_template values 

(3000000, 0, 3, 2971, 'Arcane Crystal', 0, 0, 0.7, 57, 3000000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000001, 0, 1, 2770, 'Portal to Alah\'Thalas', 35, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_alahthalas'),
(3000002, 0, 1, 6696,  'Portal to Alah\'Thalas', 35, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_portal_alahthalas'),
(3000003, 0, 3, 2652, 'Arcane Artefact', 0, 0, 0.7, 57, 3000003, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Arcane Crystal Loot

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES 
(3000000, 80000, 80, 1, 1, 1, 0, 0, 10),
(3000000, 80002, 20, 1, 1, 1, 0, 0, 10);

-- Arcane Atrefact Loot

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES 
(3000003, 80001, 80, 1, 1, 1, 0, 0, 10),
(3000003, 80003, 20, 1, 1, 1, 0, 0, 10);


