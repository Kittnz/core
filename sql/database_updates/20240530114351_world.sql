-- https://turtle-wow.org/bug-report?id=6407 Forlorn summit scourgestones dropping correctly now.
update creature_loot_template set condition_id = 17 where item = 12840 and entry in (61766,61767,61769);
-- https://turtle-wow.org/bug-report?id=7341 NPCs Wavecrest Siren, Wavecrest Tidefinder ,Spitefin Wavecreaper ,Spitefin Tidehunter have money loot now.
update creature_template set gold_min = 126, gold_max = 170 where entry = 61131;
update creature_template set gold_min = 126, gold_max = 170 where entry = 61130;
update creature_template set gold_min = 126, gold_max = 170 where entry = 61087;
update creature_template set gold_min = 126, gold_max = 170 where entry = 61086;
update creature_template set gold_min = 126, gold_max = 170 where entry = 61085;
update creature_template set gold_min = 126, gold_max = 170 where entry = 61083;
