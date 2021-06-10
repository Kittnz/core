
-- Add targets for several spells.
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES 
(24933, 1, 15328),
(25029, 1, 15328),
(25032, 1, 15328),
(25145, 1, 15414),
(25145, 1, 15421),
(25145, 1, 15422),
(25145, 1, 15424),
(25149, 1, 15414),
(25149, 1, 15421),
(25149, 1, 15422),
(25149, 1, 15424),
(25150, 1, 15414),
(25150, 1, 15421),
(25150, 1, 15422),
(25150, 1, 15424);

-- Make the Steam Tonk spells positive so that they can target other players' tonks.
UPDATE `spell_template` SET `customFlags`= `customFlags` | 4 WHERE `entry` IN (24933, 25029, 25032);
