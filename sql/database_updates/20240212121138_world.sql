-- Fix Valentine spell causing combat.
UPDATE `spell_template` SET `attributes`=(`attributes` & ~67108864) WHERE `entry` IN (26663, 27541, 27547, 27548, 27549, 27550, 26923);
