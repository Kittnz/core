-- Marked quest Breaking the Felstar as Elite.

UPDATE `quest_template` SET `type` = 1 WHERE `entry` = 40377;

-- 60HC something.

replace into item_template values
 ('81278', '4', '0', 'Pendant of Mortality', 'A deal with the devil, signed in blood...', '9854', '4', '0', '1', '0', '0', '12', '-1', '-1', '65',
 '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '40', '6', '-5',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL)9