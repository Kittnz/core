update item_template set inventory_type = 23 where entry = 80966;

UPDATE `item_template` SET `spellcategorycooldown_1`='120000' WHERE (`entry`='51861') AND (`patch`='0');
UPDATE `item_template` SET `spellcooldown_1`='120000' WHERE (`entry`='51861') AND (`patch`='0');
UPDATE `item_template` SET `spellcategory_1`='4' WHERE (`entry`='51861') AND (`patch`='0');

SET @gossip_menu_id = 59140;
SET @magic_number = 80460; 
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (ID, MaleText) values (@magic_number, 'I wish I knew an older, wiser tree. Trees are supposed to have beautiful foliage, but mine is wilted and dying.\n\nAm I going to survive?	');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

UPDATE `quest_template` SET `ObjectiveText3`='Throw snowball at Skrimmshaw' WHERE `entry`=50321;

-- Mudsprocket NPCs:

REPLACE INTO `creature_template` VALUES (80930, 0, 7202, 0, 0, 0, 'Axle', 'Innkeeper', 2890, 30, 39, 1605, 1605, 0, 0, 1200, 474, 135, 1, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 4096, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7733, 0, 0, 0, 0, 524298, '');

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4536, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4537, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4538, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4539, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 4602, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 8953, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80930, 23002, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80931, 6, 7909, 0, 0, 0, 'Krixil Slogswitch', 'Food & Drink', 0, 30, 30, 3800, 3800, 0, 0, 1200, 35, 3, 1, 1.14286, 0, 20, 5, 0, 0, 1, 198, 240, 0, 122, 1, 2000, 2000, 1, 4608, 0, 0, 0, 0, 0, 0, 140.87, 196.385, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524290, '');

update creature_template set movement_type = 0, npc_flags = 4 where entry = 80931;

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 117, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 414, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 422, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1707, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 2070, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 2287, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 3770, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 3771, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 3927, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4540, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4541, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4542, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4544, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4599, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 4601, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 8932, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 8950, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80931, 8952, 0, 0, 0, 0);

REPLACE INTO `creature_template` VALUES (80932, 0, 7337, 0, 0, 0, 'Drazzit Dripvalve', NULL, 0, 40, 40, 2471, 2471, 0, 0, 1890, 474, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7564, 0, 0, 0, 0, 10, '');

REPLACE INTO `creature_template` VALUES (80933, 0, 7179, 0, 0, 0, 'Gizzix Grimegurgle', NULL, 0, 40, 40, 2471, 2471, 0, 0, 1890, 474, 7, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 7564, 0, 0, 0, 0, 10, '');

REPLACE INTO `creature_template` VALUES (80934, 0, 7211, 0, 0, 0, 'Razbo Rustgear', 'Blacksmithing Supplies', 0, 40, 40, 3900, 3900, 0, 0, 560, 474, 16391, 1, 1.14286, 0, 20, 5, 0, 0, 1, 61, 78, 0, 156, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 56.672, 77.924, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 5411, 0, 0, 0, 0, 10, '');

update creature_template set faction =  474 where entry = 80934;

REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (80934, 18567, 0, 0, 0, 0);

-- Guild Tabard new spell:
-- update item_template set spellid_1 = 46010 where entry = 5976;

update item_template set sheath = 3 where entry = 80775;
update item_template set display_id = 29916 where entry = 80627;

update gameobject_template set size = 1.2 where entry = 3000222;

-- Missing area_template data:

REPLACE INTO area_template (entry, map_id, zone_id, explore_flag, flags, area_level, name, team, liquid_type) VALUES 
(3805, 0, 33, 0, 64, 40, 'Zul\'Aman', 0, 0),
(5000, 150, 676, 297, 64, 60, 'Thrallmar', 0, 0),
(5001, 150, 676, 297, 64, 60, 'Honor Hold', 0, 0),
(5002, 150, 676, 297, 64, 60, 'Sha\'naar', 0, 0),
(5003, 150, 676, 297, 64, 60, 'Illidari Point', 0, 0),
(5004, 150, 676, 297, 64, 60, 'Forge Camp: Rage', 0, 0),
(5005, 150, 676, 297, 64, 60, 'Watcher\'s Rise', 0, 0),
(5006, 150, 676, 297, 64, 60, 'Dark Portal', 0, 0),
(5007, 150, 676, 297, 64, 60, 'Pools of Aggonar', 0, 0),
(5008, 150, 676, 297, 64, 60, 'Devouring Flats', 0, 0),
(5009, 150, 676, 297, 64, 60, 'Shattered Wastes', 0, 0),
(5010, 150, 676, 297, 64, 60, 'Tanaan Crag', 0, 0),
(3487, 42, 0, 1111, 312, 10, 'Silvermoon City', 0, 0),
(3488, 42, 3433, 1112, 64, 10, 'Tranquillien', 0, 0),
(3489, 42, 3433, 1113, 64, 10, 'Suncrown Village', 0, 0),
(3490, 42, 3433, 1114, 64, 11, 'Goldenmist Village', 0, 0),
(3491, 42, 3433, 1115, 64, 14, 'Windrunner Village', 0, 0),
(3492, 42, 3433, 1116, 64, 16, 'Windrunner Spire', 0, 0),
(3493, 42, 3433, 1117, 64, 12, 'Sanctum of the Sun', 0, 0),
(3494, 42, 3433, 1118, 64, 13, 'Sanctum of the Moon', 0, 0),
(3495, 42, 3433, 1119, 64, 14, 'Dawnstar Spire', 0, 0),
(3496, 42, 3433, 1120, 64, 14, 'Farstrider Enclave', 0, 0),
(3497, 42, 3433, 1121, 64, 10, 'An\'daroth', 0, 0),
(3498, 42, 3433, 1122, 64, 13, 'An\'telas', 0, 0),
(3499, 42, 3433, 1123, 64, 16, 'An\'owyn', 0, 0),
(3500, 42, 3433, 1124, 64, 19, 'Deatholme', 0, 0),
(3501, 42, 3433, 1125, 64, 18, 'Bleeding Ziggurat', 0, 0),
(3502, 42, 3433, 1126, 64, 18, 'Howling Ziggurat', 0, 0),
(3503, 42, 3433, 1127, 64, 14, 'Shalandis Isle', 0, 0),
(3504, 42, 3433, 1128, 64, 10, 'Toryl Estate', 0, 0),
(3505, 42, 3433, 1129, 64, 13, 'Underlight Mines', 0, 0),
(3506, 42, 3433, 1130, 64, 15, 'Andilien Estate', 0, 0),
(3507, 42, 3433, 1131, 64, 11, 'Hatchet Hills', 0, 0),
(3508, 42, 3433, 1132, 64, 18, 'Amani Pass', 0, 0),
(3509, 42, 3433, 1133, 64, 10, 'Sungraze Peak', 0, 0),
(3510, 42, 3433, 1134, 64, 15, 'Amani Catacombs', 0, 0),
(3511, 42, 3433, 1135, 64, 20, 'Tower of the Damned', 0, 0),
(3512, 42, 3433, 1136, 64, 11, 'Zeb\'Sora', 0, 0),
(3513, 42, 3433, 1137, 64, 13, 'Lake Elrendar', 0, 0),
(3514, 42, 3433, 1138, 64, 10, 'The Dead Scar', 0, 0),
(3515, 42, 3433, 1139, 64, -1, 'Elrendar River', 0, 0),
(3516, 42, 3433, 1140, 64, 17, 'Zeb\'Tela', 0, 0),
(3517, 42, 3433, 1141, 64, 18, 'Zeb\'Nowa', 0, 0),
(3518, 530, 0, 1142, 1088, 0, 'Nagrand', 0, 0),
(3519, 530, 0, 1143, 1088, 0, 'Terokkar Forest', 0, 0),
(3520, 530, 0, 1144, 1088, 0, 'Shadowmoon Valley', 0, 0),
(3521, 530, 0, 1145, 1088, 0, 'Zangarmarsh', 0, 0),
(3522, 530, 0, 1146, 1088, 0, 'Blade\'s Edge Mountains', 0, 0),
(3523, 530, 0, 1147, 1088, 0, 'Netherstorm', 0, 0),
(3524, 530, 0, 1148, 80, 0, 'Azuremyst Isle', 2, 0),
(3525, 530, 0, 1149, 80, 0, 'Bloodmyst Isle', 2, 0),
(3526, 530, 3524, 1150, 80, 0, 'Ammen Vale', 0, 0),
(3527, 530, 3524, 1151, 80, 0, 'Crash Site', 0, 0),
(3528, 530, 3524, 1152, 64, 0, 'Silverline Lake', 0, 0),
(3529, 530, 3524, 1153, 64, 0, 'Nestlewood Thicket', 0, 0),
(3530, 530, 3524, 1154, 64, 0, 'Shadow Ridge', 0, 0),
(3531, 42, 3430, 1155, 64, 5, 'Murder Row', 0, 0),
(3532, 42, 3430, 1156, 64, 5, 'Dawning Lane', 0, 0),
(3533, 42, 3430, 1157, 64, 5, 'Ruins of Silvermoon', 0, 0),
(3534, 530, 3430, 1158, 64, 5, 'Feth\'s Way', 0, 0),
(3535, 540, 0, 1159, 0, 0, 'Hellfire Citadel', 0, 0),
(3536, 530, 3483, 1160, 64, 0, 'Thrallmar', 0, 0),
(3537, 530, 0, 1161, 64, 0, 'REUSE', 0, 0),
(3538, 530, 3483, 1162, 64, 0, 'Honor Hold', 0, 0),
(3539, 530, 3483, 1163, 64, 54, 'The Stair of Destiny', 0, 0),
(3540, 530, 0, 1164, 1024, 0, 'Twisting Nether', 0, 0),
(3541, 530, 3483, 1165, 64, 55, 'The Black Altar', 0, 0),
(3542, 530, 3483, 1166, 64, 0, 'The Path of Glory', 0, 0),
(3543, 530, 3483, 1167, 64, 58, 'The Great Fissure', 0, 0),
(3544, 530, 3483, 1168, 64, 56, 'Plain of Shards', 0, 0),
(3545, 530, 3483, 1169, 64, 56, 'Hellfire Citadel', 0, 0),
(3546, 530, 3483, 1170, 64, 55, 'Expedition Armory', 0, 0),
(3547, 530, 3483, 1171, 64, 70, 'Throne of Kil\'jaeden', 0, 0),
(3548, 530, 3483, 1172, 64, 0, 'Forge Camp Rage', 0, 0),
(3549, 530, 3483, 1173, 64, 0, 'Forge Camp Spite', 0, 0),
(3550, 530, 3483, 1174, 64, 0, 'Borune Ruins', 0, 0),
(3551, 530, 3483, 1175, 64, 0, 'Telhamat Ruins', 0, 0),
(3552, 530, 3483, 1176, 64, 0, 'Temple of Sha\'naar', 0, 0),
(3553, 530, 3483, 1177, 64, 56, 'Pools of Aggonar', 0, 0),
(3554, 530, 3483, 1178, 64, 0, 'Falcon Watch', 0, 0),
(3555, 530, 3483, 1179, 64, 0, 'Mag\'har Post', 0, 0),
(3556, 530, 3483, 1180, 64, 0, 'Den of Haal\'esh', 0, 0),
(3557, 530, 0, 1181, 312, 10, 'The Exodar', 2, 0),
(3558, 530, 3430, 1182, 64, 7, 'Elrendar Falls', 0, 0),
(3559, 530, 3524, 1183, 64, 0, 'Nestlewood Hills', 0, 0),
(3560, 530, 3524, 1184, 80, 0, 'Ammen Fields', 0, 0),
(3561, 530, 3524, 1185, 64, 0, 'The Sacred Grove', 0, 0),
(3562, 543, 0, 1186, 0, 0, 'Hellfire Ramparts', 0, 0),
(3563, 543, 3562, 1187, 0, 0, 'Hellfire Citadel', 0, 0),
(3564, 530, 3524, 1188, 64, 0, 'Emberglade', 0, 0),
(3565, 530, 3521, 1189, 64, 0, 'Canarion Refuge', 0, 0),
(3566, 530, 3524, 1190, 64, 10, 'Moonwing Den', 0, 0),
(3567, 530, 3524, 1191, 64, 6, 'Pod Cluster', 0, 0),
(3568, 530, 3524, 1192, 64, 6, 'Pod Wreckage', 0, 0),
(3569, 530, 3524, 1193, 64, 7, 'Tides\' Hollow', 0, 0),
(3570, 530, 3524, 1194, 64, 6, 'Wrathscale Point', 0, 0),
(3571, 530, 3524, 1195, 64, 8, 'Bristlelimb Village', 0, 0),
(3572, 530, 3524, 1196, 64, 7, 'Stillpine Hold', 0, 0),
(3573, 530, 3524, 1197, 64, 6, 'Odesyus\' Landing', 0, 0),
(3574, 530, 3524, 1198, 64, 0, 'Valaar\'s Berth', 0, 0),
(3575, 530, 3524, 1199, 64, 10, 'Silting Shore', 0, 0),
(3576, 530, 3524, 1200, 64, 5, 'Azure Watch', 0, 0),
(3577, 530, 3524, 1201, 64, 6, 'Geezle\'s Camp', 0, 0),
(3578, 530, 3524, 1202, 64, 8, 'Menagerie Wreckage', 0, 0),
(3579, 530, 3524, 1203, 64, 9, 'Traitor\'s Cove', 0, 0),
(3580, 530, 3524, 1204, 64, 0, 'Wildwind Peak', 0, 0),
(3581, 530, 3524, 1205, 64, 0, 'Wildwind Path', 0, 0),
(3582, 530, 3483, 1206, 64, 56, 'Zeth\'kur', 0, 0),
(3583, 530, 3525, 1207, 64, 0, 'Beryl Coast', 0, 0),
(3584, 530, 3525, 1208, 64, 10, 'Blood Watch', 0, 0),
(3585, 530, 3525, 1209, 64, 14, 'Bladewood', 0, 0),
(3586, 530, 3525, 1210, 64, 19, 'The Vector Coil', 0, 0),
(3587, 530, 3525, 1211, 64, 15, 'The Warp Piston', 0, 0),
(3588, 530, 3525, 1212, 64, 16, 'The Cryo-Core', 0, 0),
(3589, 530, 3525, 1213, 64, 13, 'The Crimson Reach', 0, 0),
(3590, 530, 3525, 1214, 64, 12, 'Wrathscale Lair', 0, 0),
(3591, 530, 3525, 1215, 64, 13, 'Ruins of Loreth\'Aran', 0, 0),
(3592, 530, 3525, 1216, 64, 13, 'Nazzivian', 0, 0),
(3593, 530, 3525, 1217, 64, 16, 'Axxarien', 0, 0),
(3594, 530, 3525, 1218, 64, 12, 'Blacksilt Shore', 0, 0),
(3595, 530, 3525, 1219, 64, 17, 'The Foul Pool', 0, 0),
(3596, 530, 3525, 1220, 64, 16, 'The Hidden Reef', 0, 0),
(3597, 530, 3525, 1221, 64, 17, 'Amberweb Pass', 0, 0),
(3598, 530, 3525, 1222, 64, 17, 'Wyrmscar Island', 0, 0),
(3599, 530, 3525, 1223, 64, 0, 'Talon Stand', 0, 0),
(3600, 530, 3525, 1224, 64, 10, 'Bristlelimb Enclave', 0, 0),
(3601, 530, 3525, 1225, 64, 14, 'Ragefeather Ridge', 0, 0),
(3602, 530, 3525, 1226, 64, 0, 'Kessel\'s Crossing', 0, 0),
(3603, 530, 3525, 1227, 64, 0, 'Tel\'athion\'s Camp', 0, 0),
(3604, 530, 3525, 1228, 64, 9, 'The Bloodcursed Reef', 0, 0),
(3605, 560, 0, 1229, 64, 0, 'Hyjal Past', 0, 0),
(3606, 534, 0, 1230, 64, 0, 'Mount Hyjal', 0, 0),
(3607, 530, 0, 1231, 64, 0, 'Coilfang Reservoir', 0, 0),
(3608, 530, 3525, 1232, 64, 0, 'Vindicator\'s Rest', 0, 0),
(3609, 530, 3518, 1233, 64, 0, 'Unused3', 0, 0),
(3610, 530, 3518, 1234, 64, 0, 'Burning Blade Clan Ruins', 0, 0),
(3611, 530, 3518, 1235, 64, 0, 'Clan Watch', 0, 0),
(3612, 530, 3525, 1236, 64, 16, 'Bloodcurse Isle', 0, 0),
(3613, 530, 3518, 1237, 64, 0, 'Garadar', 0, 0),
(3614, 530, 3518, 1238, 64, 0, 'Skysong Lake', 0, 0),
(3615, 530, 3518, 1239, 64, 0, 'Throne of the Elements', 0, 0),
(3616, 530, 3518, 1240, 64, 0, 'Laughing Skull Clan Ruins', 0, 0),
(3617, 530, 3518, 1241, 64, 0, 'Warmaul Hill', 0, 0),
(3618, 530, 3518, 1242, 64, 0, 'Gruul\'s Lair', 0, 0),
(3619, 530, 3518, 1243, 64, 0, 'Auren Ridge', 0, 0),
(3620, 530, 3518, 1244, 64, 0, 'Auren Falls', 0, 0),
(3621, 530, 3518, 1245, 64, 0, 'Lake Sunspring', 0, 0),
(3622, 530, 3518, 1246, 64, 0, 'Sunspring Post', 0, 0),
(3623, 530, 3518, 1247, 64, 0, 'Aeris', 0, 0),
(3624, 530, 3518, 1248, 64, 0, 'Forge Camp: Fear', 0, 0),
(3625, 530, 3518, 1249, 64, 0, 'Forge Camp: Hate', 0, 0),
(3626, 530, 3518, 1250, 64, 0, 'Telaar', 0, 0),
(3627, 530, 3518, 1251, 64, 0, 'Northwind Cleft', 0, 0),
(3628, 530, 3518, 1252, 64, 0, 'Halaa', 0, 0),
(3629, 530, 3518, 1253, 64, 0, 'Southwind Cleft', 0, 0),
(3630, 530, 3518, 1254, 64, 0, 'Oshu\'gun', 0, 0),
(3631, 530, 3518, 1255, 64, 0, 'Spirit Fields', 0, 0),
(3632, 530, 3518, 1256, 64, 0, 'Shamanar', 0, 0),
(3633, 530, 3518, 1257, 64, 0, 'Ancestral Grounds', 0, 0),
(3634, 530, 3518, 1258, 64, 0, 'Windyreed Village', 0, 0),
(3635, 530, 3518, 1259, 64, 0, 'Unused2', 0, 0),
(3636, 530, 3518, 1260, 64, 0, 'Unused', 0, 0),
(3637, 530, 3518, 1261, 64, 0, 'Kil\'sorrow Fortress', 0, 0),
(3638, 530, 3518, 1262, 64, 0, 'The Ring of Trials', 0, 0),
(3639, 530, 3524, 1263, 64, 0, 'Silvermyst Isle', 0, 0),
(3640, 530, 3521, 1264, 64, 0, 'Daggerfen Vilage', 0, 0),
(3641, 530, 3521, 1265, 64, 0, 'Umbrafen Village', 0, 0),
(3642, 530, 3521, 1266, 64, 0, 'Feralfen Village', 0, 0),
(3643, 530, 3521, 1267, 64, 0, 'Steam Pump', 0, 0),
(3644, 530, 3521, 1268, 64, 0, 'Telredor', 0, 0),
(3645, 530, 3521, 1269, 64, 0, 'Zabra\'jin', 0, 0),
(3646, 530, 3521, 1270, 64, 0, 'Quagg Ridge', 0, 0),
(3647, 530, 3521, 1271, 64, 0, 'The Spawning Glen', 0, 0),
(3648, 530, 3521, 1272, 64, 0, 'The Dead Mire', 0, 0),
(3649, 530, 3521, 1273, 64, 0, 'Sporeggar', 0, 0),
(3650, 530, 3521, 1274, 64, 0, 'Ango\'rosh Camp', 0, 0),
(3651, 530, 3521, 1275, 64, 0, 'Ango\'rosh Stronghold', 0, 0),
(3652, 530, 3521, 1276, 64, 0, 'Funggor Cavern', 0, 0),
(3653, 530, 3521, 1277, 64, 0, 'Serpent Lake', 0, 0),
(3654, 530, 3521, 1278, 64, 0, 'The Drain', 0, 0),
(3655, 530, 3521, 1279, 64, 0, 'Umbrafen Lake', 0, 0),
(3656, 530, 3521, 1280, 64, 0, 'Marshlight Lake', 0, 0),
(3657, 530, 3521, 1281, 64, 0, 'Twilight Portal', 0, 0),
(3658, 530, 3521, 1282, 64, 0, 'Sporewind Lake', 0, 0),
(3659, 530, 3521, 1283, 64, 0, 'The Lagoon', 0, 0),
(3660, 530, 3521, 1284, 64, 0, 'Blades\' Run', 0, 0),
(3661, 530, 3521, 1285, 64, 0, 'Blade Tooth Canyon', 0, 0),
(3662, 530, 3430, 1286, 64, 0, 'Commons Hall', 0, 0),
(3663, 530, 3430, 1287, 64, 0, 'Derelict Manor', 0, 0),
(3664, 530, 3430, 1288, 64, 0, 'Huntress of the Sun', 0, 0),
(3665, 530, 3430, 1289, 64, 6, 'Falconwing Square', 0, 0),
(3666, 530, 3518, 1290, 64, 0, 'Halaani Basin', 0, 0),
(3667, 530, 3521, 1291, 64, 0, 'Hewn Bog', 0, 0),
(3668, 530, 3521, 1292, 64, 0, 'Boha\'mu Ruins', 0, 0),
(3669, 530, 3483, 1293, 64, 0, 'The Stadium', 0, 0),
(3670, 530, 3483, 1294, 64, 0, 'The Overlook', 0, 0),
(3671, 530, 3483, 1295, 64, 0, 'Broken Hill', 0, 0),
(3672, 530, 3518, 1296, 64, 0, 'Mag\'hari Procession', 0, 0),
(3673, 530, 3518, 1297, 64, 0, 'Nesingwary Safari', 0, 0),
(3674, 530, 3519, 1298, 64, 0, 'Cenarion Thicket', 0, 0),
(3675, 530, 3519, 1299, 64, 0, 'Tuurem', 0, 0),
(3676, 530, 3519, 1300, 64, 0, 'Veil Shienor', 0, 0),
(3677, 530, 3519, 1301, 64, 0, 'Veil Skith', 0, 0),
(3678, 530, 3519, 1302, 64, 0, 'Veil Shalas', 0, 0),
(3679, 530, 3519, 1303, 64, 0, 'Skettis', 0, 0),
(3680, 530, 3519, 1304, 64, 0, 'Blackwind Valley', 0, 0),
(3681, 530, 3519, 1305, 64, 0, 'Firewing Point', 0, 0),
(3682, 530, 3519, 1306, 64, 0, 'Grangol\'var Village', 0, 0),
(3683, 530, 3519, 1307, 64, 0, 'Stonebreaker Hold', 0, 0),
(3684, 530, 3519, 1308, 64, 0, 'Allerian Stronghold', 0, 0),
(3685, 530, 3519, 1309, 64, 0, 'Bonechewer Hollow Clan Ruins', 0, 0),
(3686, 530, 3519, 1310, 64, 0, 'Veil Lithic', 0, 0),
(3687, 530, 3519, 1311, 64, 0, 'Olembas', 0, 0),
(3688, 530, 3519, 1312, 64, 0, 'Auchindoun', 0, 0),
(3689, 530, 3519, 1313, 64, 0, 'Veil Reskk', 0, 0),
(3690, 530, 3519, 1314, 64, 0, 'Blackwind Lake', 0, 0),
(3691, 530, 3519, 1315, 64, 0, 'Lake Ere\'Noru', 0, 0),
(3692, 530, 3519, 1316, 64, 0, 'Lake Jorune', 0, 0),
(3693, 530, 3519, 1317, 64, 0, 'Skethyl Mountains', 0, 0),
(3694, 530, 3519, 1318, 64, 0, 'Misty Ridge', 0, 0),
(3695, 530, 3519, 1319, 64, 0, 'The Broken Hills', 0, 0),
(3696, 530, 3519, 1320, 64, 0, 'The Barrier Hills', 0, 0),
(3697, 530, 3519, 1321, 64, 0, 'The Bone Wastes', 0, 0),
(3698, 559, 0, 1322, 128, 0, 'Nagrand Arena', 0, 0),
(3699, 530, 3518, 1323, 64, 0, 'Laughing Skull Courtyard', 0, 0),
(3700, 530, 3518, 1324, 64, 0, 'The Ring of Blood', 0, 0),
(3701, 530, 3518, 1325, 128, 0, 'Arena Floor', 0, 0),
(3702, 562, 0, 1326, 128, 0, 'Blade\'s Edge Arena', 0, 0),
(3703, 530, 0, 1327, 1032, 0, 'Shattrath City', 0, 0),
(4010, 1, 15, 1645, 64, 38, 'Mudsprocket', 0, 0),
(4011, 1, 406, 1646, 64, 0, 'Venture Camp', 0, 0),
(4012, 0, 139, 0, 0, 0, 'Scarlet Enclave', 0, 0),
(4013, 25, 0, 0, 128, 0, 'Lordaeron Arena', 0, 0),
(4014, 25, 0, 0, 128, 0, 'Blood Ring', 0, 0);

-- Export query:

-- select id, continentid, parentareaid, areabit, flags, explorationlevel, areaname_enus, factiongroupmask, liquidtypeid from db_areatable_5875 where id > 3486;

update creature_template set faction = 1682 where entry in (80934, 80933, 80932, 80931, 80930);
UPDATE `quest_template` SET `ZoneOrSort`='796' WHERE (`entry`='60116') AND (`patch`='1');

update item_template set sheath = 0 where entry = 80772;
UPDATE `quest_template` SET `OfferRewardText`='<The Deathguard looks you over approvingly.>\n\nYes, yes you\'ll do. Come here $C.' WHERE (`entry`='60115') AND (`patch`='1')

update creature_template set display_id1 = 18039 where entry = 50105;
update creature_template set name = 'Durotar Labor Union Bruiser', faction = 1682 where entry = 16096;
update creature_template set subname = 'Cenarion Circle Quartermaster' where entry = 15293;
update item_template set disenchant_id = 21where entry = 51819;
update item_template set disenchant_id = 21 where entry = 51819;

REPLACE INTO `creature_template` VALUES (80936, 0, 18357, 0, 0, 0, 'Dark Reaver', NULL, 0, 62, 62, 47064, 47866, 12840, 12840, 4091, 21, 0, 1, 1.14286, 0, 1, 5, 0, 1, 1, 605, 783, 0, 284, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 6, 0, 10440, 0, 0, 0, 5, 5, 5, 5, 5, 0, 0, 0, 0, 104400, 0, 2057, 2692, 'EventAI', 1, 3, 0, 0, 3, 10440, 0, 0, 1053507419, 0, 0, '');

replace into item_template values
 ('81050', '0', '4', '4', 'Crown of the Dark Reaver', '', '40191', '3', '0', '1', '12055', '12055', '1', '-1', '-1', '62',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '19', '0', '0',
 '3', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '525', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '15464', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81051', '0', '4', '4', 'Epaulets of the Dark Reaver', '', '50171', '3', '0', '1', '17055', '17055', '3', '-1', '-1', '62',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '19', '3', '12',
 '0', '10', '7', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '515', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81052', '0', '4', '4', 'Breastplate of the Dark Reaver', '', '50135', '3', '0', '1', '27055', '27055', '5', '-1', '-1', '62',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '26', '0', '0',
 '0', '', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '650', '0', '0', '0',
 '0', '0', '0', '16611', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81053', '0', '4', '4', 'Grasps of the Dark Reaver', '', '50139', '3', '0', '1', '11047', '11047', '10', '-1', '-1', '62',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '17', '0', '0',
 '7', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '412', '0', '0', '0',
 '0', '0', '0', '7219', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81054', '0', '4', '4', 'Girdle of the Dark Reaver', '', '50138', '3', '0', '1', '12733', '12733', '6', '-1', '-1', '62',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '23', '3', '16',
 '7', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '396', '0', '0', '0',
 '0', '0', '0', '0', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81055', '0', '4', '4', 'Sabatons of the Dark Reaver', '', '50136', '3', '0', '1', '17819', '17819', '8', '-1', '-1', '62',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '19', '3', '10',
 '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '485', '0', '0', '0',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81056', '0', '4', '4', 'Greaves of the Dark Reaver', '', '50137', '3', '0', '1', '27819', '27819', '7', '-1', '-1', '62',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '27', '3', '15',
 '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '613', '0', '0', '0',
 '0', '0', '0', '0', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('81057', '0', '2', '8', 'Dark Reaver', '', '25652', '3', '0', '1', '77819', '77819', '17', '-1', '-1', '62',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '27', '0', '15',
 '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3700', '0',
 '0', '167', '250', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '17509', '2', '0', '2', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '6', '1', '0', '0', '80', '0', '0', '0', '0', '49', '0', '0', '0',
 '0', '1', NULL);
 
-- Quartermasters:

REPLACE INTO `creature_template` values 
(80940, 0, 351, 0, 0, 0, 'Axis Spinpistol', 'Gnomeregan Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 54, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80941, 0, 9429, 0, 0, 0, 'Earthcaller Jalyssa', 'Gelkis Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 92, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80942, 0, 11637, 0, 0, 0, 'Deathcaller Aisha', 'Magram Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 93, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80943, 0, 18120, 0, 0, 0, 'Drogon', 'Brood of Nozdormu Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 910, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80944, 0, 18212, 0, 0, 0, 'Lorath Silverwing', 'Theramore Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 371, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80945, 0, 7532, 0, 0, 0, 'Elisandra Spellbinder', 'Shen\'dralar Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 809, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80946, 0, 16833, 0, 0, 0, 'Anna Lacroix', 'Syndicate Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 70, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80947, 0, 3643, 0, 0, 0, 'Alyssa Stormbolt', 'Wildhammer Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 471, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80948, 0, 3813, 0, 0, 0, 'Spin', 'Thunderbluff Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 81, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80949, 0, 299, 0, 0, 0, 'Trollo Torntusk', 'Darkspear Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 530, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80950, 0, 1023, 0, 0, 0, 'Avum Brightplace', 'Scarlet Crusade Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 371, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80951, 0, 1021, 0, 0, 0, 'Loren Goodcorn', 'Undercity Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 68, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80952, 0,  18151, 0, 0, 0, 'Hemming Silverbeard', 'Ironforge Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 47, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80953, 0, 18140, 0, 0, 0, 'Lonum Magicus', 'Dalaran Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 371, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80954, 0, 18137, 0, 0, 0, 'Valiant', 'Stormwind Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 72, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80955, 0, 18118, 0, 0, 0, 'Gorrok', 'Orgrimmar Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 76, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80956, 0, 1659, 0, 0, 0, 'John Smith', 'Ravenholdt Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 349, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80957, 0, 796, 0, 0, 0, 'Larry Bladeknuckle', 'Bloodsail Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 87, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, ''),
(80958, 0, 16941, 0, 0, 0, 'Landro Longshot', 'Steamwheedle Quartermaster', 0, 11, 11, 456, 456, 0, 0, 20, 169, 16388, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 12, 14, 0, 64, 1, 2000, 2090, 1, 4864, 0, 0, 0, 0, 0, 0, 18.392, 25.289, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 524298, '');

-- Misc. DB stuff:

update quest_template set zoneorsort = 357 where entry = 60020;
