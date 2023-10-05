-- Fix Tranquility and Starshards channeling visual disappearing.
UPDATE `spell_template` SET `customFlags`=(`customFlags` | 0x800) WHERE `entry` IN (10797, 19296, 19299, 19302, 19303, 19304, 19305, 22822, 22823, 27636, 740, 8918, 9862, 9863, 21791, 25817, 21793);
