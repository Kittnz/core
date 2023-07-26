-- kara10 crafting recipe nerfs
update spell_template SET reagentCount5 = 2, reagent5 = 10548, reagentCount1 = 8, reagentCount3 = 8, reagentCount2 = 10 WHERE entry = 45481; -- Schematic: Intricate Gyroscope Goggles
update spell_template SET reagentCount1 = 16, reagentCount4 = 6, reagent5 = 13926 WHERE entry = 45487; -- Plans: Dawnstone Hammer
update spell_template SET reagentCount1 = 14, reagentCount3 = 1, reagentCount4 = 1, reagent5 = 8846 WHERE entry = 45485; -- Pattern: Gloves of Unwinding Mystery
update spell_template SET reagentCount1 = 12, reagentCount2 = 4 WHERE entry = 45483; -- Pattern: Inscribed Runic Bracers
-- make blue weapons worth again
update spell_template SET reagentCount1 = 10 WHERE entry = 16990; -- Arcanite Champion
update spell_template SET reagentCount1 = 14 WHERE entry = 16994; -- Arcanite Reaper
-- fix description for shawl of the castellan
update spell_template SET description = 'When struck has an 1% chance to increase your Dodge chance by $45856s1% for $45856d1.' WHERE entry = 45857; -- Agile Maneuver
-- diamond flask
update spell_template SET EffectBasePoints1 = 49, effectBonusCoefficient2 = 0.1 WHERE entry = 24427; -- Diamond Flask



