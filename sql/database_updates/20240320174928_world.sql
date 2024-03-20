-- https://turtle-wow.org/bug-report?id=6678
UPDATE `item_template` SET `sheath` = 3 WHERE `entry` = 21392;

-- https://turtle-wow.org/bug-report?id=6588
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 454;