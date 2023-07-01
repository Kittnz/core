UPDATE spell_template SET description = '' WHERE entry = 47297;
UPDATE spell_template SET name = 'Agitating Poison', description = '' WHERE entry = 47312;
UPDATE spell_template SET name = 'Agitating Poison' WHERE entry = 45611;
UPDATE spell_template SET nameSubtext = '', description = '' WHERE entry = 47274;
UPDATE spell_template SET nameSubtext = '' WHERE entry = 45605;
UPDATE spell_template SET description = '' WHERE entry = 47298;

-- Trainer's ability description text for the ability Detection should now show the proper information.
-- Trainer's ability description text for the ability Agitating Poison should now show the proper information.
-- Agitating Poison I is now named Agitating Poison like other rogue spells where only one ability exists. 
-- Trainer's ability description text for the ability Deadly Throw should now show the proper information.
-- Deadly Throw no longer shows a rank like other rogue spells where only one ability exists.