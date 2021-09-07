-- Fix custom loot tables:
update creature_loot_template set patch_max = 10 where patch_max = 0;