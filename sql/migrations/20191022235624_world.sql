replace into migrations values (20191022235624);

-- Turn off anniversary quests:
delete from creature_questrelation where quest in (60000, 60001, 60002, 60003);

