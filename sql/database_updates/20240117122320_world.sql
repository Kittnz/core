-- 6-slot vendor bags missing from Blackstone Island #5970.
delete from npc_vendor where entry = 61743 and item = 4497;
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61743, 0, 4496, 0, 0, 0, 0);
