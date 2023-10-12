UPDATE item_template SET Name = 'Tome of Teleportation: Stonard' WHERE entry = 92003;
UPDATE item_template SET Name = 'Tome of Teleportation: Theramore' WHERE entry = 92001;

-- Fix missing quest relations on NPC Mystic Guay'Jin
REPLACE INTO creature_questrelation VALUES (80801, 80313);

-- Improve grammar of Burning Hatred / Parity with Engulfing Shadows
UPDATE spell_template SET Description = 'Chance on landing a damaging spell to deal 250 Fire damage while sacrificing 250 health.' WHERE entry = 48003;
