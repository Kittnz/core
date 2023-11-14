-- Make Khara Deepwater sell only 1 Strong Fishing Pole.
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600 WHERE `entry`=1684 AND `item`=6365;

-- Fix RaceMask on Crawling for Meat
UPDATE quest_template SET RequiredRaces = 0 WHERE entry = 80391;
