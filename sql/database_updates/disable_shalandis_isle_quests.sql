delete from creature_questrelation where quest = 40385;
delete from creature_questrelation where quest = 40386;
update quest_template set title = '[CANCELLED] Shalandis Isle', prevquestid = 0 where entry = 40385;
update quest_template set title = '[CANCELLED] Scourge!' where entry = 40386;