-- Fixed some items not playing sound in the player's inventory:

UPDATE `item_template` SET `material` = 1 WHERE `entry` = 61166;
UPDATE `item_template` SET `material` = 0 WHERE `entry` = 61157;
UPDATE `item_template` SET `display_id` = 7740, `material` = 8 WHERE `entry` = 60110;

UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Bleakheart Horn' WHERE `entry` = 61150;
UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Xavian Horn' WHERE `entry` = 61151;
UPDATE `item_template` SET `material` = 2, `display_id` = 28858, name = 'Felmusk Horn'  WHERE `entry` = 61152;

-- 1	Metal
-- 2	Wood
-- 3	Liquid
-- 4	Jewelry
-- 5	Chain
-- 6	Salary
-- 7	Cloth
-- 8	Leather
