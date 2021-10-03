UPDATE `creature_template` SET `mechanic_immune_mask` = 146384 WHERE `entry` IN (65105, 65113, 65114, 65116, 65117, 65118, 65119, 65121, 65122, 65124, 65125);
UPDATE `creature_template` SET `type` = 10 WHERE `entry` IN (65107, 65108, 65109);
UPDATE `creature_template` SET `dmg_min` = 1742, `dmg_max` = 2108 WHERE `entry` = 65125;
UPDATE `creature_template` SET `speed_walk` = 1, `speed_run` = 1.14 WHERE `entry` IN (65115, 65123);