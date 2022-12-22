-- Snowball respawn timer:
UPDATE `creature` SET `spawntimesecsmin` = 50400, `spawntimesecsmax` = 72000 WHERE `id` = 50112;
-- Change respawn timer of Oilmaster Higgle Wirefuse to 5 mins:
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 61036;
-- NPC Warleader Temukar make unkillable and unaggroable:
UPDATE `creature_template` SET `unit_flags` = 2, `flags_extra` = 2 WHERE `entry` = 61045;
-- NPC Vengeful Spirit needs ghost effects:
UPDATE `turtle_world`.`creature_template` SET `auras` = '9617' WHERE `entry` = 61118;
