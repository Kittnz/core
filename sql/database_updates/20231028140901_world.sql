-- Fix Potent Venom equip effect being removed on death.
UPDATE `spell_template` SET `attributes`=192 WHERE `entry`=45417;
