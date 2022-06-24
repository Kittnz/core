delete from quest_template where entry in (80002, 80004);

delete from creature_questrelation where quest in (80002, 80004);
delete from creature_involvedrelation where quest in (80002, 80004);