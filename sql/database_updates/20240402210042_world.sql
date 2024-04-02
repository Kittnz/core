-- Make Solnius immune to Horror and Disorient effects.
UPDATE `creature_template` SET `mechanic_immune_mask`=8457811 WHERE `entry`=60748;
