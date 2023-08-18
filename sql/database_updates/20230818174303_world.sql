-- Assign attribute to supress procs by Fire Strike and Lightning Strike procs.
UPDATE `spell_template` SET `attributesEx3`=0x00010000 WHERE `entry` IN (7712, 7714, 7715, 7716, 7717, 7718, 7719, 16614);
