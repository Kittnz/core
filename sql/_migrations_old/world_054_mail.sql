
-- Add flag to mail stationary items.
UPDATE `item_template` SET `extra_flags`=`extra_flags`+8 WHERE `entry` IN (8164, 9311, 18154, 21140, 22058);
