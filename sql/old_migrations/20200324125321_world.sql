	DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200324125321');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200324125321');
-- Add your query below.

update item_template set class = 4, subclass = 1 where entry in (51051, 51037, 51036, 51035, 51034, 51033, 51032, 51031, 51031, 51019, 51018, 51017, 51016, 51015, 51014, 51013, 51008);
update item_template set class = 4, subclass = 1 where entry between 50514 and 50519;
update item_template set class = 4, subclass = 1 where entry between 50500 and 50514;
update item_template set class = 4, subclass = 1 where entry between 50343 and 50373;
update item_template set class = 4, subclass = 1 where entry between 50308 and 50341;
update item_template set class = 4, subclass = 1 where entry between 50300 and 50306;
update item_template set class = 4, subclass = 1 where entry between 50095 and 50100;
update item_template set class = 4, subclass = 1 where entry between 50026 and 50029;
update item_template set class = 4, subclass = 1 where entry between 50032 and 50042;

update item_template set class = 4, subclass = 1 where entry = 50045;
update item_template set class = 4, subclass = 1 where entry = 50046;
update item_template set class = 4, subclass = 1 where entry = 50047;
update item_template set class = 4, subclass = 1 where entry = 50059;
update item_template set class = 4, subclass = 1 where entry = 50060;
update item_template set class = 4, subclass = 1 where entry = 50061;
update item_template set class = 4, subclass = 1 where entry = 50102;
update item_template set class = 4, subclass = 1 where entry = 50103;
update item_template set class = 4, subclass = 1 where entry = 50236;
update item_template set class = 4, subclass = 1 where entry = 50392;
update item_template set class = 4, subclass = 1 where entry = 50393;
update item_template set class = 4, subclass = 1 where entry = 50394;
update item_template set class = 4, subclass = 1 where entry = 50395;
update item_template set class = 4, subclass = 1 where entry = 50377;
update item_template set class = 4, subclass = 1 where entry = 50397;
update item_template set class = 4, subclass = 1 where entry = 50398;
update item_template set class = 4, subclass = 1 where entry = 50409;
update item_template set class = 4, subclass = 1 where entry = 50410;
update item_template set class = 4, subclass = 1 where entry = 50411;
update item_template set class = 4, subclass = 1 where entry = 50412;
update item_template set class = 4, subclass = 1 where entry = 50413;
update item_template set class = 4, subclass = 1 where entry = 50414;
update item_template set class = 4, subclass = 1 where entry = 50396;
update item_template set class = 4, subclass = 1 where entry = 51030;
update item_template set class = 4, subclass = 1 where entry = 50415;
update item_template set class = 4, subclass = 1 where entry = 51052;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
