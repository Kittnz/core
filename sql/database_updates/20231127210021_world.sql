-- Fix immunities for Deathknight Understudy, Naxxramas Follower, Naxxramas Worshipper.
UPDATE `creature_template` SET `mechanic_immune_mask`=1023391482 WHERE `entry`=16505;
UPDATE `creature_template` SET `mechanic_immune_mask`=1023391482 WHERE `entry`=16506;
UPDATE `creature_template` SET `mechanic_immune_mask`=1022049874 WHERE `entry`=16803;
