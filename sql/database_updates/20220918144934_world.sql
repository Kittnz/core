-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2143
update quest_template set type = 81 where entry = 40396;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2144
update creature_template set fire_res = 0, holy_res = 0, nature_res = 0, frost_res = 0, shadow_res = 0, arcane_res = 0 where entry = 157;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2148
update item_template set buy_price = 20581, sell_price = 5145 where entry = 51756;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2141
update quest_template set details = 'With Quel\'Dorei ascension in the Alliance, I do not doubt that it is only a matter of time before we rise to our former glory. But as my people celebrate, I must keep track of the problems that remain.\n\nFor years my people relied on the magic of the great fount called Sunwell. Its destruction made us realize how dependent we became on its magic.\n\nWithout it, we were vulnerable to succumbing to magic addiction. Miraculously the rangers who were hunting Dra\'lox with you stumbled upon a mystical pool of water whose effects mimic Sunwell, if only a little.\n\nIf this is true, this could be our salvation. I need you to travel to Darnassus and ask Ashylah Starcaller if those waters can be procured for the Quel\'Dorei.' where entry = 40380;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2140
update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where id = 2261;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2136
update quest_template set type = 1 where entry = 60135;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2135
update gameobject_loot_template set chanceorquestchance = -100 where entry = 1000395 and item = 51870;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2146
update gameobject set spawntimesecsmin = 150, spawntimesecsmax = 150 where id in (104564, 104575, 104574, 104569);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2138
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2137
update quest_template set type = 0 where entry = 40226;
update quest_template set type = 0 where entry = 40203;

-- Random stuff:
UPDATE creature_template SET scale = 1.0 WHERE entry = 80965;

UPDATE spell_template SET reagent5 = 0, reagentCount5 = 0 WHERE entry = 47033;
-- Natural Materials should have elite mark because it requres to kill two elites in Feralas. Also if you read  comment from 2005 year [https://classic.wowhead.com/quest=3128/natural-materials#comments] you will find that it was "elite" before these trees became non-elite. So, please ass elite mark to quest or make [https://database.turtle-wow.org/?npc=7584] as usual mob like in modern vanilla classic. 
update quest_template set type = 1, requiredraces = 434 where entry = 3128;

-- make Rune of the Guard Captain https://database.turtle-wow.org/?item=19120 a unique item and for horde only 
-- Make  Rune of the Wildhammer Clan  https://database.turtle-wow.org/?item=51755 a unique item and for alliance only 
-- Change https://database.turtle-wow.org/?search=Stormpike+Insignia  Stormpike Insignia to be alliance only
-- Change https://database.turtle-wow.org/?search=frostwolf+ins  Frostwolf Insignia to be horde only
update item_template set max_count = 1, allowable_race = 434 where entry = 19120;
update item_template set max_count = 1, allowable_race = 589 where entry = 51755;
update item_template set allowable_race = 589 where name like '%Stormpike Insignia%';
update item_template set allowable_race = 434 where name like '%Frostwolf Insignia%';

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1937
delete from creature_loot_template where item = 10781;
delete from reference_loot_template where item = 10781;

-- Add 30 sec use cooldown to https://database.turtle-wow.org/?item=60099 to avoid double click consuming batteries 
update item_template set spellcooldown_1 = 30 where entry = 60099;
update item_template set stackable = 10 where entry = 60098;

-- Caravan Kodo still has the 10 minute cooldown, although it was reverted on other utility pets: https://database.turtle-wow.org/?spell=46483
UPDATE spell_mod SET StartRecoveryTime = 0 WHERE Id = 46483;

-- Duplicate
delete from item_template where entry = 91762;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2149
update creature_template set display_id1 = 2735 where entry = 12924;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2043
UPDATE creature_template SET mechanic_immune_mask = 16384, school_immune_mask = 16 WHERE entry = 60829;