-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1414
-- https://database.turtle-wow.org/?npc=4232 Glorandiir
-- https://database.turtle-wow.org/?npc=4171 Merelyssa
-- https://database.turtle-wow.org/?npc=4233 Mythidan
-- https://database.turtle-wow.org/?npc=4175 Vinasia
-- https://database.turtle-wow.org/?npc=4180 Ealyshia Dewwhisper
-- https://database.turtle-wow.org/?npc=4177 Melea
-- https://database.turtle-wow.org/?npc=4234 Andrus
-- https://database.turtle-wow.org/?npc=4172 Anadyia
-- https://database.turtle-wow.org/?npc=4236 Cyridan

update creature_template set npc_flags = 16390 where entry in (4232, 4171, 4233, 4175, 4180, 4177, 4234, 4172, 4236);