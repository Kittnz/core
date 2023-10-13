-- Trash creature_questrelation  has been deleted.
delete from creature_questrelation where id = 8081 and quest = 80313;
-- NPC Vaelan can give quest already.
UPDATE creature_template SET npc_flags = 3 WHERE entry = 10296;