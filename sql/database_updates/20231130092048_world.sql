-- Fix immunities of Battleguard Sartura.
UPDATE `creature_template` SET `mechanic_immune_mask`=2764781407 WHERE `entry`=15516;
