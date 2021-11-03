-- Gnome hunters are missing the gnome racial passive Arcane Resistance.
replace into playercreateinfo_spell values (7, 3, 20592, 0, 5875, 'Arcane Resistance');
-- Quest Mastering the Arcane not available for trolls.
update quest_template set requiredraces = 434 where entry in (80311, 80312);