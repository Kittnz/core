-- NPC ID 61964 should cast Spell ID 21971 instead of its current spell, and cast it on a random target first 4 seconds into the fight then every 12-16 seconds.
update creature_spells set spellId_1 = 21971, delayInitialMax_1 = 4, delayRepeatMax_1 = 16 where entry = 180302;
