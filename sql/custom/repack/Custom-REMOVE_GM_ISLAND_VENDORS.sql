DELETE FROM `creature_template` WHERE `entry` BETWEEN 90000 AND 90031;
DELETE FROM `creature_template` WHERE `entry`=20008;
DELETE FROM `npc_trainer` WHERE `entry` BETWEEN 90000 AND 90022;
DELETE FROM `npc_vendor` WHERE `entry` BETWEEN 90000 AND 90031;
DELETE FROM `creature` WHERE (`id` BETWEEN 90000 AND 90031) || (`id`=20008);
DELETE FROM `npc_text` WHERE `ID` IN (90000, 90001, 90002, 90003, 90004);
DELETE FROM `npc_gossip` WHERE `textid` IN (90000, 90001, 90002, 90003, 90004);
DELETE FROM `broadcast_text` WHERE `ID` IN (99990, 99991, 99992, 99993, 99994);