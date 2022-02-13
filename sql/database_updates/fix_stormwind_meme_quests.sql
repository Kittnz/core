
-- Add Retribution Aura and Double Attack auras to Highlord Bolvar Fordragon.
UPDATE `creature_template_addon` SET `auras`='8990 18943' WHERE `entry`=1748;

-- Correct wrong spell id of Shield Wall used by Highlord Bolvar Fordragon.
DELETE FROM `creature_ai_scripts` WHERE `id`=174801;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (174801, 0, 15, 15062, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Shield Wall');

