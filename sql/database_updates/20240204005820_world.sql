UPDATE `mangos_string` SET `content_default` = 'This shop item is not eligible for refund.', `content_loc4` = '这件道具物品不符合退还条件。' WHERE `entry` = 1604;
UPDATE `mangos_string` SET `content_default` = 'Shop item %u not found.', `content_loc4` = '找不到道具物品 %u。' WHERE `entry` = 1605;
UPDATE `mangos_string` SET `content_default` = 'Shop item %u has been refunded.', `content_loc4` = '道具物品 %u 已退还。' WHERE `entry` = 1606;
UPDATE `mangos_string` SET `content_default` = 'Failed to remove item from inventory. Refund cancelled.', `content_loc4` = '背包已满，无法从背包中移除道具物品。退还取消！' WHERE `entry` = 1607;

REPLACE INTO `locales_broadcast_text` (`entry`, `male_text_loc0`, `male_text_loc1`, `male_text_loc2`, `male_text_loc3`, `male_text_loc4`, `male_text_loc5`, `male_text_loc6`, `male_text_loc7`, `male_text_loc8`, `female_text_loc0`, `female_text_loc1`, `female_text_loc2`, `female_text_loc3`, `female_text_loc4`, `female_text_loc5`, `female_text_loc6`, `female_text_loc7`, `female_text_loc8`) VALUES (61905, 'Choose which item you would like to refund.', NULL, NULL, NULL, '选择您想要退还的物品。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `locales_broadcast_text` (`entry`, `male_text_loc0`, `male_text_loc1`, `male_text_loc2`, `male_text_loc3`, `male_text_loc4`, `male_text_loc5`, `male_text_loc6`, `male_text_loc7`, `male_text_loc8`, `female_text_loc0`, `female_text_loc1`, `female_text_loc2`, `female_text_loc3`, `female_text_loc4`, `female_text_loc5`, `female_text_loc6`, `female_text_loc7`, `female_text_loc8`) VALUES (61906, 'Are you sure you want to refund this item?', NULL, NULL, NULL, '您确定要退还此物品吗？', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


