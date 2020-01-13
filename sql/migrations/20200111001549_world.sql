replace into migrations values ('20200111001549');

update creature_template set scale = 0.3 where entry = 15706;
delete from creature_questrelation where id = 15706;
delete from creature_involvedrelation where id = 15706;
delete from creature where guid = 2555925;
update item_template set spellcharges_1 = 0 where entry = 51250;
delete from forbidden_items where entry = 17782;
update creature_loot_template set chanceorquestchance = 2 where item = 17782;
update creature_loot_template set chanceorquestchance = 4 where item in (17204, 18563, 18564);
update map_template set player_limit = 10 where entry in (230, 289, 329, 429, 44, 35);
update map_template set player_limit = 40 where entry in (169, 289, 329, 429);