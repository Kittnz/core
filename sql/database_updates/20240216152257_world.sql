
-- Pyroclasm Rank 1 and 2 marked as "SPELL_ATTR_EX3_CAN_PROC_FROM_PROCS"
-- Because Hellfire Effect is a proc. Pyroclasm is also a proc, so we have a situation "Proc on proc"
UPDATE `spell_template` SET `attributesEx3` = '67108864' WHERE (`entry` = '18073');
UPDATE `spell_template` SET `attributesEx3` = '67108864' WHERE (`entry` = '18096');
