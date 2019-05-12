DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190512121534');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190512121534');
-- Add your query below.

-- Correct Survival skill update on Bright Campfire cast.
replace into skill_line_ability (id, build, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) 
values (16001, 5875, 142, 25085, 0, 0, 0, 0, 0, 150, 1, 0);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
