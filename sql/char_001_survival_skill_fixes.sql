-- Add Speedy for players who still do not have it.
replace into character_spell (guid, spell) select guid, 28738 from characters;
-- Add correct profession spell to players who already have Survival skill.
replace into character_spell (guid, spell) select guid, 46053 from character_skills where skill = 142;