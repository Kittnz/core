-- Misc. DB fixes:

delete from playercreateinfo_spell where race = 9 and class = 3;
replace into playercreateinfo_spell values (9, 3, 266, 0, 5875, 'Guns');

replace into broadcast_text (ID, MaleText) values (80601, 'Hey, if you aren\'t spending coins, you might as well get out. You\'re bothering my real customers.');
