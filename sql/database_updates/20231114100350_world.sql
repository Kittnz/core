-- Make Khara Deepwater sell only 1 Strong Fishing Pole.
UPDATE `npc_vendor` SET `maxcount`=1, `incrtime`=3600 WHERE `entry`=1684 AND `item`=6365;
