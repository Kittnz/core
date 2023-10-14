-- Remove cannot be destroyed flag from Recipe: Alchemists' Stone.
UPDATE `item_template` SET `flags`=64 WHERE `entry`=13517;
