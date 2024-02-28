-- Added the following items:
-- 55155 (jewelers kit)
-- 55245 (polishing oil)
-- 55246 (shimmering oil)
-- 55247 (gemstone oil)
-- 40082 (Schematic: jewelry lens)

-- to the following vendors sell list: 61922, 61920, 61926.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 55155, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 55245, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 55246, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 55247, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 40082, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 55155, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 55245, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 55246, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 55247, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 40082, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 55155, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 55245, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 55246, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 55247, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 40082, 0, 0, 0, 0);
-- Item 40084, add item to the vendor list of npc Ranik (Entry 3499) with a limited stock of 3 that restocks every 2hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (3499, 40084, 3, 7200, 0, 0);
-- item 40084, add item to the vendor list of npc Kersok Prond (Entry 1456), with a limited stock of 3 that restocks every 2 hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (1456, 40084, 3, 7200, 0, 0);
-- item 40084, add item to the vendor list of npc Christoph Jeffcoat (Entry 2393), with a limited stock of 3 that restocks every 2 hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (2393, 40084, 3, 7200, 0, 0);
-- item 40084, add item to the vendor list of npc Zixil (Entry 3537), with a limited stock of 3 that restocks every 2 hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (3537, 40084, 3, 7200, 0, 0);
-- item 40084, add item to the vendor list of npc Kersok Prond (Entry 1456), with a limited stock of 3 that restocks every 2 hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (1456, 40084, 3, 7200, 0, 0);
-- Item 40083, set to limited stock of 2 on npc Gonzo Snaphands with a restock every 2 hrs (He already sells this item).
update npc_vendor set maxcount = 2, incrtime = 7200 where entry = 61914 and item = 40083;
