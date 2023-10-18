-- Deep Wounds should only proc from physical damage.
UPDATE `spell_proc_event` SET `SchoolMask`=1 WHERE `entry`=12834;
