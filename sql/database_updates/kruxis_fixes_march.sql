-- Tinyfin thing from discord
REPLACE INTO creature_involvedrelation VALUES (3978, 40115);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1179
UPDATE item_template SET item_level = 5 WHERE entry = 60112;

-- Fix for Coun
UPDATE creature_template SET name = '*' WHERE entry = 7;

-- make Shades of Jin'do undead instead of beasts / Xerron
update creature_template set type = 6 where entry = 14986;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1205
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id = 9318;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1193
UPDATE quest_template SET Details = 'Lapidis was always an interesting, if strange man, at the time we hadn\'t considered his refusal to our curiosity as something potentially bad. But hearing of what he has done upon Lapidis Isle has certainly shifted my opinion.\n\n<Ansirem Runeweaver studies the Shimmering Brass Key>. It would appear that this key still has lingering of magic upon it. It is possible to reconstruct the enchantment, but may take considerable power and regeants to do so. If the key is to work upon the lock as suggested, it will need to be both attuned, and enchanted to the magic that once powered it.\n\nIt is within my power to enchant this key with the same magic that once powered it. The coast of Feralas is covered in water elementals. Bring me a Pure Aqua Orb from one of them, it should be sufficient and powerful enough to mimic the magic of the key.' WHERE entry = 40165;
