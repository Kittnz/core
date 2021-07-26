-- current quest 9378 has Race mask 255 (Human, Orc, Dwarf, Nightelf, Undead, Tauren, Gnome, Troll)
-- making it not work for HE/Gobos
-- this fix will make new players attunement work, not old ones, not yet anyway

update quest_template set RequiredRaces = 0 where entry = 9378;
