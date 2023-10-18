
-- This edit is required by /who to display the correct name!

-- Change all Zones and Areas on Map 35 from 717 to 5087
-- Change all Zones and Areas on Map 34 from 5087 to 717
-- Change all Zones and Areas on Map 800 from 10 to whatever Karazhan Crypt's Zone and Area IDs should be.

UPDATE `map_template` SET `linked_zone` = 5087 WHERE `entry` = 35;
UPDATE `map_template` SET `linked_zone` = 717 WHERE `entry` = 34;
UPDATE `map_template` SET `linked_zone` = 5086 WHERE `entry` = 800;