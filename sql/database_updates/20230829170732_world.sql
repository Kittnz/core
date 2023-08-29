-- Change NPC ID 16184 to be able to enter and swim in water, it currently sits at the shore if the target is in a body of water, allowing the players to abuse him.
update creature_template set inhabit_type = 3 where entry = 16184;
-- NPC ID 61556 (Larannikus) should be immune to slow, root, stun, sleep, charm and fear.
update creature_template set mechanic_immune_mask = 2641 where entry = 61556;
-- NPC ID 61556 (Larannikus) should cast Spell ID 3391 every 12 seconds, remove Spell ID 26050 cast script from him.
update creature_spells set spellId_1 = 3391, delayRepeatMin_1 = 12, delayRepeatMax_1 = 12 where entry = 180208;
