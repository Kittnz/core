-- Fix Cloak of the Dark Veil not dropping. Group chance cant exceed 100%.
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `entry`=61422 && `item`=61334;
