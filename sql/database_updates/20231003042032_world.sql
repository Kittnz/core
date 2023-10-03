-- Made Zanzas non-unique:

UPDATE `item_template` SET `max_count` = 0 WHERE `entry` IN (20079, 20080, 20081);