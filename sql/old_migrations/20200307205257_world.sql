DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200307205257');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200307205257');
-- Add your query below.

REPLACE INTO `creature_template` VALUES (50561,4,956,0,0,0,'Corrupted Red Whelp',NULL,0,60,60,4578,4578,0,0,3791,103,0,1.26,1.14286,0,20,5,0,0,1,483,555,0,272,1,1410,1551,1,0,0,0,0,0,0,0,74.448,102.366,100,2,0,0,0,0,0,300,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,''),(50562,4,694,0,0,0,'Corrupted Green Whelp',NULL,0,60,60,4578,4578,0,0,3791,103,0,1.26,1.14286,0,20,5,0,0,1,483,555,0,272,1,1410,1551,1,0,0,0,0,0,0,0,74.448,102.366,100,2,0,0,0,0,0,0,300,0,180,0,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,''),(50563,4,9994,0,0,0,'Corrupted Blue Whelp',NULL,0,60,60,4578,4578,0,0,3791,103,0,1.26,1.14286,0,20,5,0,0,1,483,555,0,272,1,1410,1551,1,0,0,0,0,0,0,0,74.448,102.366,100,2,0,0,0,0,0,0,0,300,0,150,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,''),(50564,4,14720,0,0,0,'Corrupted Bronze Whelp',NULL,0,60,60,4578,4578,0,0,3791,103,0,1.26,1.14286,0,20,5,0,0,1,483,555,0,272,1,1410,1551,1,0,0,0,0,0,0,0,74.448,102.366,100,2,0,0,0,0,0,0,0,0,0,300,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,0,'');
REPLACE INTO `creature_template` VALUES (50565,5,14358,0,0,0,'Warden of Time',NULL,0,61,61,31482,31482,0,0,4091,35,0,1,1.14286,1.6,20,5,0,1,1,1569,1736,0,278,1,1141,2000,1,32832,0,0,0,0,0,0,172.1,240.07,100,2,8,11356,11356,0,0,15,15,15,15,15,24438,22886,15655,22591,0,0,1418,1857,'',1,3,0,0,3,11356,0,0,608908883,0,0,'');
REPLACE INTO `creature_template` VALUES (50566,5,14358,0,0,0,'Corrupted Warden of Time',NULL,0,61,61,31482,31482,0,0,4091,103,0,1,1.14286,1.6,20,5,0,1,1,1569,1736,0,278,1,1141,2000,1,32832,0,0,0,0,0,0,172.1,240.07,100,2,8,11356,11356,0,0,15,15,15,15,15,24438,22886,15655,22591,0,0,1418,1857,'',1,3,0,0,3,11356,0,0,608908883,0,0,'');

replace into creature_equip_template (entry, equipentry1) values
(50565, 2291);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref, maxcount) values
(50565, 50203, 100, 1, 4, 12);

update creature_spells set probability_1 = 100, delayrepeatmin_1 = 20, delayrepeatmax_1 = 20, spellid_2 = 7098, probability_2 = 80 where entry = 50111;

update creature_template set equipment_id = 50565, spell_list_id = 50565, loot_id = 50565 where entry in (50565, 50566);
update creature_template set loot_id = 0 where entry = 50565;

replace into creature_template_addon (entry, auras) values
(50561, 28126),
(50562, 28126),
(50563, 28126),
(50564, 28126);

replace into creature_template_addon (entry, b2_0_sheath, auras) values
(50566, 1, 28126);

replace into gameobject_template (entry, type, displayid, name, faction, size, script_name) values
(7000031, 5, 477, 'Corrupted Dragon Egg', 35, 1, '');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
