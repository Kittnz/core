-- Misc. DB fixes:

delete from playercreateinfo_spell where race = 9 and class = 3;
replace into playercreateinfo_spell values (9, 3, 266, 0, 5875, 'Guns');