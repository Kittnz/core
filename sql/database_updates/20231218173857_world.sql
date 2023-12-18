-- Taming Rods in Thalassian Highlands allow taming any creature, they should allow only sepcified creatures.
-- item 41066 - Lavender Mana Wyrm 61776
-- item 41065 - Ivory Hawkstrider 61695
-- item 41064 - Elder Crimson Lynx 61700

DELETE FROM `item_required_target` WHERE `entry` IN (41064, 41065, 41066);

UPDATE `item_required_target` SET `target_entry` = 61776 WHERE `entry` = 41066;
UPDATE `item_required_target` SET `target_entry` = 61695 WHERE `entry` = 41065;
UPDATE `item_required_target` SET `target_entry` = 61700 WHERE `entry` = 41064;