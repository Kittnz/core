DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190513234136');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190513234136');
-- Add your query below.

update item_template set spellcooldown_1 = 180000, description = 'Light it in a Bright Campfire.', stackable = 20 where entry = 6183;
replace into npc_vendor (entry, item) values
(227, 6183),
(989, 6183),
(1148, 6183),
(1285, 6183),
(1285, 6183),
(2084, 6183),
(2225, 6183),
(2381, 6183),
(2401, 6183),
(2803, 6183),
(2806, 6183),
(2820, 6183),
(2808, 6183),
(2821, 6183),
(2908, 6183),
(3072, 6183),
(3076, 6183),
(3081, 6183),
(3158, 6183),
(3164, 6183),
(3186, 6183),
(3313, 6183),
(3350, 6183),
(3367, 6183),
(3541, 6183),
(3556, 6183),
(3625, 6183),
(3779, 6183),
(3954, 6183),
(3955, 6183),
(3962, 6183),
(4082, 6183),
(4170, 6183),
(4182, 6183),
(4241, 6183),
(4555, 6183),
(4775, 6183),
(4876, 6183),
(4896, 6183),
(5101, 6183),
(5134, 6183),
(5135, 6183),
(5817, 6183),
(8139, 6183),
(8362, 6183),
(8934, 6183),
(8363, 6183),
(9636, 6183),
(11189, 6183),
(12021, 6183),
(12027, 6183),
(12959, 6183),
(12960, 6183),
(15179, 6183),

(66, 6183),
(843, 6183),
(1250, 6183),
(2118, 6183),
(3168, 6183),
(3187, 6183),
(3187, 6183),
(3482, 6183),
(3499, 6183),
(3614, 6183),
(4194, 6183),
(4877, 6183),
(4897, 6183),
(7947, 6183),
(8145, 6183),
(12022, 6183),
(12028, 6183),
(12043, 6183),
(12941, 6183),
(12958, 6183),

(4229, 6183),
(4561, 6183),
(6301, 6183),

(151, 6183),
(152, 6183),
(791, 6183),
(829, 6183),
(1149, 6183),
(1452, 6183),
(1682, 6183),
(1685, 6183),
(1691, 6183),
(2115, 6183),
(2134, 6183),
(2140, 6183),
(3481, 6183),
(3498, 6183),
(3587, 6183),
(3608, 6183),
(4084, 6183),
(7942, 6183);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
