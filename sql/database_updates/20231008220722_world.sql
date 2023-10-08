-- Prevent Libram of the Faithful from stacking between casters.
UPDATE `spell_template` SET `customFlags`=4096 WHERE `entry`=45862;
