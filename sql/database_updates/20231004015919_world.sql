-- Make Nordanaar Guardian act like guards.
UPDATE `creature_template` SET `faction`=1254, `flags_extra`=1024 WHERE `entry`=61527;
