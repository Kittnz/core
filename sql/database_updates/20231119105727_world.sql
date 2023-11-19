REPLACE INTO creature_template VALUES
(60960, 7051, 0, 0, 0, 0, 'Technician Reyvo', NULL, 0, 20, 20, 629, 629, 0, 0, 852, 1682, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 26, 22, 0, 90, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 30.096, 41.382, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60961, 7109, 0, 0, 0, 0, 'Mining Foreman Bizzlo', NULL, 0, 15, 15, 328, 328, 0, 0, 660, 1682, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 21, 27, 0, 74, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60962, 9132, 0, 0, 0, 0, 'Schera Framesnap', NULL, 0, 10, 10, 198, 198, 0, 0, 455, 1682, 2, 1, 1.14286, 1, 20, 5, 0, 0, 1, 13, 17, 0, 62, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 15.048, 20.691, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20467; set @weapon_1 = 2901; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60961;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41574; set @magic_number = 60961;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Those blasted Mudpaw drove us out of the mine. Our schedules are all kinds of messed up!');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41573; set @magic_number = 60960;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Everything around here is practically in a state of disrepair. Gazzik does a good job helping when he has free time.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- NPC Bruiser Rakklan (Entry 61752) add quest flags.
update creature_template set npc_flags = 2 where entry = 61752;
-- 
-- 61720 NPC Tantaz Coppermud, make sure they teach journeyman mining and have flags for training spells.
update creature_template set trainer_type = 2 where entry = 61720;
-- 61722 NPC Sazzlix, should be a stablemaster, make sure they have appropriate flags.
update creature_template set unit_flags = 4608, flags_extra = 524298 where entry = 61722;
-- 61726 NPC Kana Togglebend should teach the first rank of first aid, make sure they have flags for training spells.
update creature_template set trainer_type = 2 where entry = 61726;
-- 61728 NPC Shazzlan should teach the first rank of cooking and basic cooking spells, make sure they have flags for training spells.
update creature_template set trainer_type = 2 where entry = 61728;
-- 61731 NPC Sindor Packfuse should teach the first rank of fishing, make sure they have flags for training spells.
update creature_template set trainer_type = 2 where entry = 61731;
-- 61738 NPC Tinkerer Ozzlo should teach rank 1 engineering and all journeymen recipes, make sure they have flags for training spells.
update creature_template set trainer_type = 2 where entry = 61738;
-- 61739 NPC Sasha Linelight, should teach rank 1 of herbalism, make sure they have flags for training spells.
update creature_template set trainer_type = 2 where entry = 61739;
-- 61740 NPC Yox Rackgadge <Journeyman Alchemy> should teach rank 1 of alchemy, and beginning alchemy spells, make sure they have flags for training spells.
update creature_template set trainer_type = 2 where entry = 61740;
-- 80104 NPC Grizzie the Enforcer (Entry 80104) should teach ALL warrior spells (He currently only teaches beginning warrior spells).
update creature_template set trainer_type = 1 where entry = 80104;
-- 80105 NPC Mayten Boomrifle (Entry 80105) should teach ALL hunter spells (He currently only teaches beginning hunter spells).
update creature_template set trainer_type = 1 where entry = 80105;
-- 80106 NPC Leyti Quicktongue (Entry 80106) should teach ALL rogue spells (She currently only teaches beginning rogue spells).
update creature_template set trainer_type = 1 where entry = 80106;
-- 80107 NPC Amri Demondeal (Entry 80107) should teach ALL warlock spells (She currently only teaches beginning warlock spells).
update creature_template set trainer_type = 1 where entry = 80107;
-- 80108 NPC Wizette Icewhistle (Entry 80108) should teach ALL mage spells (She currently only teaches beginning mage spells).
update creature_template set trainer_type = 1 where entry = 80108;