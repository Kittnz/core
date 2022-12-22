-- Snowball respawn timer:
UPDATE `creature` SET `spawntimesecsmin` = 50400, `spawntimesecsmax` = 72000 WHERE `id` = 50112;
-- Change respawn timer of Oilmaster Higgle Wirefuse to 5 mins:
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 61036;
