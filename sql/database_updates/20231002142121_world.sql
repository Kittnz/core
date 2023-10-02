-- Replace Spell ID 25515 with Spell ID 56 on Creature _Template IDs 61074 and 61080.
update creature_spells set spellid_1 = 56 where entry in (180075,180077);
