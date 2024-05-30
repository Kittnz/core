-- https://turtle-wow.org/bug-report?id=6407 Forlorn summit scourgestones dropping correctly now.
update creature_loot_template set condition_id = 17 where item = 12840 and entry in (61766,61767,61769);
