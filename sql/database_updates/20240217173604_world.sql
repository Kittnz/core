-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/6230
-- Reagents & Poisons vendors on AV selling Crippling poison II now.
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (5139 , 0, 3776, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (10364, 0, 3776, 0, 0, 0, 0);
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/6199
-- Item "Tome of Portals: Theramore" can be obtained.
update creature_loot_template set groupid = 1 where item = 30593 and entry in (61192,61193,61194,61195,61196,61197,61198,61199,61200,61205,61206,61207,61209,61210,61211);
update reference_loot_template set groupid = 1 where entry = 30593;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/6211
-- Item "Ironbark Branch" is off-hand now.
update item_template set class = 4, sunclass = 0, sheath = 7 where entry = 80828;