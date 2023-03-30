-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3130
UPDATE `item_template` SET `spellcharges_1` = -10 WHERE `entry` = 53003;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3122
UPDATE `item_template` SET `buy_price` = 40000, `sell_price` = 1000 WHERE `entry` = 4981;