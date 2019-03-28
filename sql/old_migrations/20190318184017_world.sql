DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190318184017');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190318184017');
-- Add your query below.

update item_template set description = 'Seems untamed, it may not be comfortable to ride.' where entry = 8590;
update item_template set description = 'Found behind a tree in Felwood.' where entry = 11903;
update item_template set Quality = 2, description = 'Imported directly from Vashj\'ir' where entry = 22780;
update item_template set Quality = 2, description = 'Imported directly from Northrend' where entry = 22781;
update item_template set Quality = 2, description = 'Imported directly from Pandaria' where entry = 19054;
update item_template set Quality = 2, description = 'Imported directly from Pandaria' where entry = 19055;
update item_template set Quality = 3, display_id = 29448, Required_Skill = 762, Required_Skill_Rank = 75 where entry = 14062;
update item_template set name = 'Horn of the \"Skeletal\" Horse', description = 'Okay, not exactly skeletal, but you dont\'t want to mess with him.' where entry = 8583;
update item_template set quality = 3, required_level = 0, bonding = 1, max_count = 1, stackable = 1 where entry = 23720;

update item_template set allowable_race = -1 where entry in (12354, 12353, 12302, 13328, 13329, 13327, 13326, 12351, 12330, 15292, 15293, 13317, 8586);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
