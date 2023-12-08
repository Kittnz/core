-- Delete wrong spawn of pet creature.
DELETE FROM `creature` WHERE `id`=2676;

-- Assign script to pet.
UPDATE `creature_template` SET `script_name`='npc_compact_harvest_reaper' WHERE `entry`=2676;
