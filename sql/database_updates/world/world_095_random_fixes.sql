update quest_template set requiredraces = 434 where entry = 70052;

UPDATE item_template SET description='' WHERE entry=51220;
UPDATE item_template SET duration='0' WHERE entry=51220;

update item_template set name = 'Slayer\'s Slippers' where entry = 14756;

delete from quest_template where entry = 2770 and patch = 0;

update creature_loot_template set chanceorquestchance = -100 where item = 70035;
update item_template set max_count = 1 where entry = 70035;

replace into npc_vendor values (50053, 80653, 0, 0, 0, 0);

delete from creature_loot_template where item = 51868;
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (524, 51868, -100, 6, 1);

update quest_template set questlevel = 8, minlevel = 5 where entry = 811;
update quest_template set questlevel = 10, minlevel = 5 where entry = 820;