-- Respawn timers:
-- Gravelsnout Digger should respawn in 5 minutes:
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 4113;

-- Sputtervalve Conductor should respawn faster:
UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `guid` = 5011101;

-- Smuggled Gunpowder:
UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 5 WHERE `id` = 2010978;

-- Item Fix Vol 2
update item_template set stat_value4 = 0 where entry = 20628; -- Deviate Growth Cap
update item_template set spellid_1 = 13679, spelltrigger_1 = 1, stat_value1 = 12, stat_type4 = 3, stat_type5 = 3, stat_value4 = 12, item_level = 76, armor = 332 where entry = 20629; -- Malignant Footguards
update item_template set stat_value2 = 38 where entry = 20623; -- Circlet of Restless Dreams;