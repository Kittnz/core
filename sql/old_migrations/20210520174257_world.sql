DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20210520174257');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20210520174257');
-- Add your query below.


-- Remove useless addon entries.
DELETE FROM `creature_addon` WHERE `display_id` = 0 && `mount_display_id` = 0 && `equipment_id` = -1 && `stand_state` = 0 && `sheath_state` = 1 && `emote_state` = 0 && `auras` = '';
DELETE FROM `creature_addon` WHERE `display_id` = 0 && `mount_display_id` = 0 && `equipment_id` = -1 && `stand_state` = 0 && `sheath_state` = 1 && `emote_state` = 0 && (`auras` IS NULL);
DELETE FROM `creature_addon` WHERE `guid` IN (108, 219, 1012, 1887, 2016, 2459, 3111, 3557, 3595, 3596, 4144, 4360, 4361, 4364, 4377, 21133, 26197, 26228, 26229, 26298, 27368, 29936, 29938, 29939, 29940, 29942, 29943, 29947, 29948, 29949, 31980, 38116, 38117, 38347, 39540, 40070, 40109, 42678, 42681, 42787, 48669, 54652, 55098, 55342, 55458, 55462, 56624, 56625, 79223, 79720, 79721, 79769, 79796, 79881, 80283, 80320, 80737, 85375, 85378, 85379, 85380, 85529, 85530, 85545, 85546, 85547, 85548, 85549, 85550, 85551, 85552, 85553, 85554, 85555, 85556, 85557, 85562, 85963, 87205, 87206, 87226, 87227, 87321, 87429, 87435, 87486, 89002, 94491, 94492, 300496, 300497, 300498, 300499, 300500, 300501, 300502, 300503, 300504, 300505, 300506, 300507, 300508, 300509, 300510, 300511, 300512, 300513, 300514, 300515, 300577, 300578, 300579, 300580, 300581, 300582, 300583, 300584, 300585, 300586, 300587, 300588, 300589, 300590, 300591, 300592, 300593, 300594, 300595, 300596, 300599, 300600, 300601, 300603, 300606, 300609, 300610, 300613, 300614, 300617, 300618, 300621, 300622, 300624, 300626);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
