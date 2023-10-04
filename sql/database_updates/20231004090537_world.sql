-- Fix Equip effects on Finkle's Lava Dredger reading as Chance On Hit and Use
UPDATE item_template SET spelltrigger_1 = 1, spelltrigger_2 = 1 WHERE entry = 18803;
