replace into migrations values (20190929120308);

-- Mirage Raceway quest fixes:
update quest_template set type = 82 where entry in (50310, 50311, 50312, 50313, 50315);
update quest_template set nextquestinchain = 50311 where entry = 50310;
update quest_template set nextquestinchain = 50313 where entry = 50312;
update quest_template set questflags = 1 where entry = 50310;
update quest_template set specialflags = 2 where entry = 50310;
update quest_template set questflags = 1 where entry = 50312;
update quest_template set specialflags = 2 where entry = 50312;
update quest_template set questflags = 1 where entry = 50311;
update quest_template set specialflags = 3 where entry = 50311;
update quest_template set questflags = 1 where entry = 50313;
update quest_template set specialflags = 3 where entry = 50313;


