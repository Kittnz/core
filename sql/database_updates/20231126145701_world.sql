DELETE FROM `spell_effect_mod` WHERE `Id`=19983; -- "Cleave 19983 : bonus degats fix a 300"
DELETE FROM `spell_effect_mod` WHERE `Id`=22540; -- "Cleave Vael (chaintarget 50 radius fix a 10yd)" NOT vael's spell
DELETE FROM `spell_mod` WHERE `Id`=22540; -- "Cleave Vael (modification dmgclass : magic)" NOT vael's spell, makes it unable to dodge/parry/block
