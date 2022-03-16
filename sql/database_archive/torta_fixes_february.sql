-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1143
update item_template set flags = 2048 where entry = 9234;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1138
update quest_template set objectives = 'Gather 10 Deeptide Bracelets from Deeptide Naga for Explorer Fangosh in Maul\'ogg Refuge.' where entry = 40275;
update quest_template set objectives = 'Gather a Gold Bar for Blazno Blastpipe on Gillijim\'s Isle.' where entry = 40190;

delete from item_template where entry = 50611;

-- Slow & Steady glyph fix:
update item_template set duration = 300, extra_flags = 2 where entry = 51230;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1146
delete from creature_questrelation where quest = 3803 and id = 3516;
delete from creature_involvedrelation where quest = 3803 and id = 3516;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1154
update item_template set bonding = 2 where entry = 83414;

-- Fix Tranquil Mechanical Yeti:
update item_template set spellid_1 = 46498 where entry = 21277;
replace into companion_spells values (21277, 26010); 

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1196
-- You should not be able to interact with Franclorn Forgewright alive:
update creature_template set type_flags = 2, npc_flags = 3 where entry = 8888;
update creature_template_addon set auras = "10848 9617 9036" where entry = 8888;

-- Revert non-functional phasing field:
ALTER TABLE creature_template DROP IF EXISTS phase_quest_action;
ALTER TABLE gameobject_template DROP IF EXISTS phase_quest_action;

update quest_template set objectives = 'Gather 2 Automaton Legs, 2 Automaton arms, and an Automaton Head from the Bael Modan Digsite.' where entry = 40130;