-- Made Zanzas non-unique:

UPDATE `item_template` SET `max_count` = 0 WHERE `entry` IN (20079, 20080, 20081, 8424, 8423, 8411, 8412, 8410);