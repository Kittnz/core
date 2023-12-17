-- Fix Goblin Warrior and Hunter starting weapon skills
DELETE FROM playercreateinfo_spell WHERE race = 9 AND class = 1 AND spell IN (196, 197, 199, 202);
REPLACE INTO playercreateinfo_spell VALUES (9, 1, 1180, 'Daggers');

DELETE FROM playercreateinfo_spell WHERE race = 9 AND class = 3 AND spell IN (196, 264);
REPLACE INTO playercreateinfo_spell VALUES (9, 3, 1180, 'Daggers');
REPLACE INTO playercreateinfo_spell VALUES (9, 3, 266, 'Guns');
