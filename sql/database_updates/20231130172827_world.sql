-- Fix immunities of Guardian of Icecrown.
UPDATE `creature_template` SET `mechanic_immune_mask`=1015221874 WHERE `entry`=16441;
