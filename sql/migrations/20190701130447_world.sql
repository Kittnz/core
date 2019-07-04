DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190701130447');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190701130447');
-- Add your query below.

-- Custom Rested GO for Custom Inn:
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) VALUES 
(1000024, 0, 5, 381, 'Custom Rested Bonus', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_custom_rested');

update creature_template set health_min = 52437, health_max = 52437, mana_min = 20312, mana_max = 20312, unit_class = 2 where entry = 50080;

replace into creature_equip_template (entry, equipentry1) values (50088, 50243);
replace into creature_template_addon (entry, auras, b2_0_sheath) values (50088, 22650, 1);
replace into creature_template (entry, display_id1, name, subname, level_min, level_max, health_min, health_max, mana_min, mana_max, armor, faction, speed_walk, speed_run, scale, detection_range, rank, dmg_min, dmg_max, attack_power, dmg_multiplier, base_attack_time, ranged_attack_time, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, type_flags, loot_id, gold_min, gold_max, movement_type, inhabit_type, regeneration, equipment_id, mechanic_immune_mask, flags_extra, script_name) values
(50088, 14357, 'Echo of Gerastrasz', '', 63, 63, 10632, 10632, 20312, 20312, 4490, 103, 1, 1.14286, 3, 20, 3, 580, 920, 285, 1, 2200, 1500, 600, 825, 100, 2, 76, 0, 27809, 43403, 0, 1, 3, 50080, 2764783455, 33025, '');


update creature_template set faction = 83 where entry = 50081;
update creature_template set faction = 71 where entry = 50083;
update creature_template set faction = 57, display_id1 = 12917, display_id2 = 0 where entry = 50084;
update creature_template set faction = 79 where entry = 50086;
update creature_template set faction = 875, display_id1 = 12942, display_id2 = 0 where entry = 50087;

REPLACE INTO `creature_template` VALUES (50089,0,3478,0,0,0,'Guntrus Barleybeard','Wandering Bartender',9395,50,50,3517,3517,0,0,2999,57,6,1.2,1.14286,0,20,5,0,0,1,85,109,0,226,1,2000,2000,1,4608,0,0,0,0,0,0,66.44,91.355,100,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,0,3,0,0,0,0,0,10,'');
update creature_template set npc_flags = 4, gossip_menu_id = 0 where entry = 50089;
replace into npc_vendor (entry, item) values
(50089, 2593),
(50089, 2594),
(50089, 2595),
(50089, 2596),
(50089, 2723),
(50089, 4600);

update map_template set level_max = 0, script_name = 'instance_caverns_of_time', ghost_entrance_map = 1, ghost_entrance_x = -8332.56, ghost_entrance_y = -4056.01 where entry = 269;

create table if not exists custom_mount_entry_relation (
     item_entry mediumint(8) unsigned not null default 0 primary key,
     creature_entry mediumint(8) unsigned not null default 0
);

replace into creature_template (entry, name, display_id1, level_min, level_max, health_min, health_max, faction) values
(50090, 'Quel\'dorei Steed', 2186, 5, 5, 100, 100, 35),
(50091, 'Swift Zhevra', 2190, 5, 5, 100, 100, 35),
(50092, 'Ivory War Raptor', 14345, 5, 5, 100, 100, 35),
(50093, 'Violet War Raptor', 14343, 5, 5, 100, 100, 35),
(50094, 'Obsidian War Raptor', 14340, 5, 5, 100, 100, 35),
(50095, 'Red War Raptor', 14341, 5, 5, 100, 100, 35),
(50096, 'Spectral Gryphon', 17328, 5, 5, 100, 100, 35),
(50097, 'Shadowhorn Stag', 1992, 5, 5, 100, 100, 35),
(50098, 'Nightmare Dreamrunner', 2185, 5, 5, 100, 100, 35);

replace into custom_mount_entry_relation values
(50399, 50090),
(50400, 50091),
(50401, 50092),
(50402, 50093),
(50404, 50094),
(50403, 50095),
(50405, 50096),
(50406, 50097),
(50407, 50098);
-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
