DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190410153829');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190410153829');
-- Add your query below.

replace into gameobject_template (entry, type, displayid, name, faction, size, script_name) values
(7000029, 1, 4891, 'Orb of the Bronze Dragonflight', 35, 1, 'go_orb_of_the_bronze_dragonflight');

REPLACE INTO `creature_template` VALUES (50058,0,10008,0,0,0,'Chromie',NULL,2911,63,63,4876,4876,2781,2781,4641,35,3,1.1,1.14286,1.15,20,5,0,0,1,178,229,0,290,1,2000,2000,1,33536,0,0,0,0,0,0,220.81,105.197,100,2,0,0,0,100001,0,15,15,15,15,15,0,0,0,0,0,0,0,0,'',0,3,0,0,3,10667,0,0,0,0,2,'');

replace into creature_template (entry, name, subname, display_id1, level_min, level_max, health_min, health_max, faction, npc_flags, rank, type, scale) values
(50059, 'Alurmi', 'Keepers of Time', 6292, 61, 61 , 12781, 12781, 35, 2, 1, 2, 1.4);

update creature_template set faction = 35 where faction = 0;
update creature_template set health_min = 100, health_max = 100 where entry in (351, 17258);

UPDATE gameobject SET spawntimesecsmin=600, spawntimesecsmax=900 WHERE id=2656;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
