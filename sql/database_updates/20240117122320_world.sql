-- 6-slot vendor bags missing from Blackstone Island #5970.
delete from npc_vendor where entry = 61743 and item = 4497;
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61743, 0, 4496, 0, 0, 0, 0);
-- Forsaken's riding for goblins works. #5933
delete from conditions where condition_entry = 4127;
replace INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (4127, 14, 434, 0, 0, 0, 0);