-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1209
-- Quest <The Islander> missing from some horde NPC:
delete from creature_questrelation where quest = 1718;
replace into creature_questrelation (id, quest) values (3041, 1718),(3354, 1718),(4595, 1718),(5113, 1718),(5479, 1718);
