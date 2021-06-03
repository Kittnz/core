
UPDATE `creature_template` SET `xp_multiplier`=0 WHERE `type`=8 && `entry` NOT IN (10441, 10461, 10536);
UPDATE `creature_template` SET `script_name`='' WHERE `script_name`='npc_critter';
UPDATE `creature_template` SET `ai_name`='ReactorAI' WHERE `entry`=2848;
