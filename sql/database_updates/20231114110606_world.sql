-- Prevent Hargul the Hardy from evading prematurely.
UPDATE `creature_template` SET `leash_range`=100, `flags_extra`=0x04000000 WHERE `entry`=92937;
