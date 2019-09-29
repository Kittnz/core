replace into migrations values (20190929120308);

-- Mirage Raceway quest fixes:
update quest_template set type = 82 where entry in (50310, 50311, 50312, 50313, 50315);
update quest_template set specialflags = 1 where entry in (50311, 50313);
update quest_template set nextquestinchain = 50311 where entry = 50310;
update quest_template set nextquestinchain = 50313 where entry = 50312;


