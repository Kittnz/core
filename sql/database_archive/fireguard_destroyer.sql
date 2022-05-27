-- Fireguard Destroyer is using wrong spell id for Fireball Volley.
UPDATE creature_spells SET spellId_1=15285 WHERE entry=89110 && spellId_1=11989;