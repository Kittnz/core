-- Error Wars Episode I

update gameobject_template set script_name = '' where script_name = '0';
update creature_template set script_name = '' where script_name = '0';
update item_template set script_name = '' where script_name = '0';
update gameobject_template set script_name = '' where script_name = 'go_portal_to_darnassus';
update gameobject_template set script_name = '' where script_name = 'go_portal_to_ironforge';
update gameobject_template set script_name = '' where script_name = 'go_portal_to_stormwind';
update item_template set script_name = '' where script_name = 'item_portable_mailbox';
update item_template set script_name = '' where script_name = 'item_thunder_ale_drink';
update creature_template set script_name = '' where script_name = 'npc_vereesa_windrunner';
update creature_template set script_name = '' where script_name = 'npc_vestia_moonspear';

delete from player_factionchange_mounts where itementry = 8586;
delete from player_factionchange_mounts where itementry = 13317;

delete from creature_movement_scripts where id in (6, 7, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 58, 59, 60, 61, 62, 63, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 142102, 2841205, 4983009, 7972001, 7972005, 7972009, 7972013, 7972017, 7972021, 7972025, 7972029, 7972033, 7972037, 7972041, 7972045, 7972049, 7972053, 7972057, 7972058, 7972061, 7972065, 7972069, 7972073, 7972077, 7972081, 7972082, 7975001, 7975003, 7975006, 7975009);

delete from creature_movement where id in (47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939);

delete from npc_vendor_template where entry in (301400, 455501, 1277701, 1278201, 1279201, 1458101);

delete from npc_vendor where item in (50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50416, 692);

delete from item_loot_template where entry in (50022, 50023, 50025, 50101, 50380, 50381, 50382, 50383, 50384, 50385, 50386, 50387, 50388, 50389, 50390, 50391, 50416, 50509, 50511, 50513, 51892);
 
delete from item_loot_template where item in (51810, 51811, 51216, 51216, 51809, 51029, 50027, 50026);

delete from creature_loot_template where entry in (2609, 8305, 12099, 14385, 30000, 50056, 50682, 50683, 61063, 61064, 61065, 80120, 80778, 80784, 91305, 91306, 91307, 91308, 91762, 91816, 91822, 91824, 91856, 91866, 91867, 91869, 91870, 91871, 91911, 91913, 91923, 91924, 91925, 91926, 91974, 92157, 92935);
 
update creature_template set loot_id = 0 where loot_id in (2914, 10578, 50105, 60495, 60499, 60503, 60505, 60510, 60511, 60514, 60518, 60519, 60520, 60521, 60522, 60523, 60524, 60526, 60527, 60528, 60529, 60530, 60531, 60532, 60533, 60534, 60535, 60536, 60536, 60538, 60539, 60540, 60541, 60542, 60543, 60544, 60546, 60547, 60548, 60549, 60550, 60551, 60552, 60553, 60554, 60555, 60557, 60558, 60559, 60560, 60561, 60562, 60563, 60564, 60565, 60566, 60567, 60568, 60569, 60570, 60571, 60572, 60573, 60574, 60575, 60576, 60577, 60578, 60579, 60580, 60581, 60586, 60587, 60588, 60589, 60590, 60591, 60592, 60593, 60595, 60597, 60598, 60599, 60600, 60601, 60602, 60603, 60604, 60606, 60607, 60612, 60614, 60615, 60616, 60617, 60617, 60619, 60620, 60621, 60622, 60623, 60624, 60625, 60626, 60627, 60631, 60632, 60633, 60673, 60674, 60675, 60675, 60697, 60698, 60715, 60716, 60742, 60743, 60744, 60745, 60746, 60747, 60748, 60757, 60758, 60829, 60830, 60831, 60835, 60836, 60837, 60838, 60839, 60840, 60841, 60842, 60843, 60844, 60845, 60847, 60848, 60849, 60852, 60853, 65104, 65115, 65126, 65128, 91001, 91001, 91193, 91194, 91250, 92122, 60604);

delete from creature_involvedrelation where quest in (41015, 50229, 50228, 40060, 5805, 5841, 5842, 5843, 5844, 5847, 50300, 60003, 60118, 50011, 50012, 50010, 50010, 50010, 50010, 50010, 50301, 50302, 50303, 60118, 60118, 60118, 60118, 60118, 60118, 60118, 60118, 65004, 65006, 40050, 40059, 65005, 65007, 80801, 40049, 40058, 40069, 40070, 40134, 40135, 40215, 40154, 100007, 100008, 100009);

delete from creature_questrelation where quest in (50229, 50300, 50228, 40069, 50301, 50011, 50012, 50010, 50010, 50010, 50010, 50010, 50302, 50303, 60118, 60118, 60118, 60118, 60118, 60118, 60118, 60118, 65004, 65007, 40058, 40060, 40049, 80801, 65006, 40050, 40059, 40070, 40134, 40135, 40215, 40154, 100007, 100008, 100009);

delete from creature_questrelation where id = 0;
delete from creature_questrelation where id = 60429;

delete from gameobject where id in (1000024, 1000024, 1000024, 1000024, 1000024, 1000024, 1000024, 1000024, 3000512);

delete from creature_addon where guid in (8465, 14806, 14807, 24048, 38347, 39540, 47304, 47774, 47775, 53867, 90861, 2570384);

update creature_addon set auras = '' where auras = '0';

update creature set wander_distance = 0 where guid in (2563983, 2563984, 2563990, 2563989, 2563987, 2563988, 2563986, 2563991, 2563992, 2563993, 2563994, 2563995, 2563996, 2563998, 2563999, 2564000, 2564001, 2564004, 2564005, 2564006, 2564007, 2564008, 2563985, 2565187, 2565186, 2565185, 2565183, 2565184, 2565182, 2565151, 2565153, 2565157, 2565159, 2565160, 2565161, 2565162, 2565163, 2565164);

update creature set movement_type = 0 where guid in (2562939, 2562941, 2562942, 2562943, 2562944, 2562945, 2562946, 2562947, 2562948, 2562949, 2562950, 2562951, 2562952, 2562953, 2562954, 2562955, 2562956, 2562957, 2562958, 2562959, 2562960, 2562961, 2562962, 2562963, 2562964, 2562965, 2562966, 2562967, 2562968, 2562969, 2562970, 2562971, 2562972, 2562973, 2562974, 2562975, 2562976, 2562977, 2562978, 2562979, 2562980, 2562981, 2562982, 2562983, 2562984, 2562985, 2562986, 2562987, 2562988, 2562989, 2562990, 2562991, 2562992, 2562993, 2562994, 2562995, 2562996, 2562997, 2562998, 2562999, 2563000, 2563001, 2563002, 2563003, 2563004, 2563005, 2563006, 2563007, 2563008, 2563009, 2563010, 2563011, 2563012, 2563013, 2563014, 2563015, 2563016, 2563017, 2563018, 2563019, 2563020, 2563021, 2563022, 2563023, 2563024, 2563025, 2563026, 2563027, 2563028, 2563029, 2563030, 2563031, 2563032, 2563033, 2563034, 2563035, 2563036, 2563037, 2563038, 2563039, 2563040, 2563041, 2563042, 2563043, 2563044, 2563045, 2563046, 2563047, 2563048, 2563049, 2563050, 2563051, 2563052, 2563053, 2563054, 2563055, 2563056, 2563057, 2563058, 2563059, 2563060, 2563061, 2563062, 2563063, 2563064, 2563065, 2563066, 2563067, 2563068, 2563069, 2563070, 2563071, 2563072, 2563073, 2563074, 2563075, 2563076, 2563077, 2562746, 2562747, 2562750, 2562751, 2562752, 2562753, 2562755, 2562756, 2562757, 2562758, 2562762, 2562765, 2562767, 2562768, 2562771, 2562772, 2562773, 2562774, 2562777, 2562778, 2562780, 2562787, 2562788, 2562789, 2562790, 2562791, 2562792, 2562793, 2562794, 2562795, 2562796, 2562798, 2562800, 2562802, 2562804, 2562805, 2562807);

update creature set wander_distance = 0 where movement_type = 0 and wander_distance >= 0;

delete from creature_movement where id in (1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1820, 1820, 1820, 1820, 1820, 1820, 1820, 1820, 28600, 28600, 28600, 28600, 28600, 28600, 28601, 28601, 28602, 28602, 28606, 28606, 28606, 28606, 28609, 28609, 28609, 28609, 28611, 28611, 28611, 28611, 28611, 28611, 28616, 28616, 28616, 28616, 28616, 28616, 28617, 28617, 28617, 28617, 28617, 28617, 28617, 28617, 28617, 28617, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60018, 60018, 60018, 60018, 60018, 60018, 60018, 60018, 60018, 60018, 60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  2561872);

delete from npc_trainer_template where entry in (2, 3, 4, 5, 6, 7, 8, 9);

delete from npc_trainer where entry = 1403;

update creature_ai_scripts set delay = 0 where id in (50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760, 50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760, 50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760);

update creature_ai_events set event_param1 = 25000, event_param2 = 120000, event_param3 = 300000, event_param4 = 700000 where action1_script in (50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760, 50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760, 50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760);

delete from creature_groups where leader_guid in (27113, 27113, 27113, 28611, 28611, 28616, 28616, 28617, 28617, 90975, 90861, 47771, 47771, 47771, 53363, 53365, 53369, 53370, 53434, 53436, 53437, 53440, 53524, 53525, 53529, 53530, 53939, 53939, 53944, 53944, 75010, 75010, 79720, 1246441, 1246441, 1246441, 1246441);

update creature_template set faction = 35 where entry in (7, 10, 31, 55, 62, 65, 67, 929, 6029, 6036, 20120, 40049, 50665, 50666, 50667, 50668, 50670, 60301, 60312, 60313, 60314, 60315, 60316, 60317, 60318, 60319, 60320, 60321, 60322, 60323, 60324, 60325, 60326, 60327, 60328, 60329, 60330, 60331, 60332, 60333, 60334, 60335, 60336, 60337, 60338, 60339, 60340, 60341, 60342, 60343, 60344, 60345, 60347, 60354, 60355, 60356, 60370, 60373, 60374, 60402, 60413, 60418, 60810, 60811, 60851, 65142, 70030, 80007, 81021, 92943);

update creature set health_percent = 100 where health_percent > 100;
update creature set mana_percent = 100 where mana_percent > 100;

delete from creature where id in (50001, 1000001, 50000, 100013, 50000, 80829, 80828, 80828, 80828);

update creature set mana_percent = 100 where guid in (2746, 52122, 53855, 54748, 64959, 69690, 69702, 91921, 91922, 91929, 92140, 92178, 92187, 92190, 92192, 92193, 92241, 92242, 92321, 92322, 92334, 92408, 92682, 92684, 92710, 2557770, 2558347, 2561216, 2561215);

update creature set spawntimesecsmin = spawntimesecsmax where spawntimesecsmin > spawntimesecsmax;

delete from creature_groups where member_guid in (90975, 90861, 53363, 53365, 53369, 53370, 53434, 53436, 53437, 53440, 53524, 53525, 53529, 53530);

delete from creature_template_addon where entry in (50056, 60428);

update creature_template set inhabit_type = 3 where inhabit_type = 0;

update quest_template set method = 2 where entry in (40324, 40321, 40325, 40322, 40323);

update gameobject_loot_template set maxcount = mincountorref where mincountorref > maxcount;

delete from gameobject_loot_template where entry in (5730, 2010819, 3000246);

replace into creature_display_info_addon values (18788, 0, 0, 0, 0);
replace into creature_display_info_addon values (18771, 0, 0, 0, 0);
replace into creature_display_info_addon values (18772, 0, 0, 0, 0);
replace into creature_display_info_addon values (18560, 0, 0, 0, 0);
replace into creature_display_info_addon values (18603, 0, 0, 0, 0);
replace into creature_display_info_addon values (18624, 0, 0, 0, 0);

delete from npc_trainer where spell in ( 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978,  24978, 46620, 46621, 46622, 46623, 46624, 46625, 47015, 47016, 47017, 47018, 47019, 47020, 46620, 46621, 46622, 46623, 46624, 46625, 47015, 47016, 47017, 47018, 47019, 47020, 46633, 46634, 46635, 46636, 46637, 46638, 46639, 46640, 46641, 46642, 46643, 46644, 46645, 46646, 46647, 46648, 46649, 46650, 46633, 46634, 46635, 46636, 46637, 46638, 46639, 46640, 46641, 46642, 46643, 46644, 46645, 46646, 46647, 46648, 46649, 46650, 46626, 46627, 46628, 46629, 46630, 46631, 46626, 46627, 46628, 46629, 46630, 46631, 46663, 46664, 46665, 46663, 46664, 46665,  46663,  46664,  46665,  46663,  46664,  46665,  46663,  46664,  46665,  46663,  46664,  46665,  46663,  46664,  46665, 46663, 46664, 46665, 46663, 46664, 46665, 46663, 46664, 46665, 45511, 45521, 45525, 45526, 45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529, 45553,  45553,  45553,  45553,  45553	,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553);

update item_template set stackable = 200 where entry = 50203;
update item_template set bag_family = 0 where entry in (60522, 60523, 60524);

delete from creature_display_info_addon where display_id = 19694;

delete from creature_equip_template where entry in (14731, 20036, 20049, 20051, 20072, 20073, 20137);

update creature_spells set probability_2 = 100 where entry = 201078;
update creature_spells set probability_1 = 100 where entry = 180021;

update creature_template set display_id1 = 4626 where entry in (15, 91295, 91295);

update creature_template set display_id1 = 341 where entry = 60558;
update creature_template set display_id1 = 16218 where entry = 60530;

update creature_template set vendor_id = 0 where entry in (6739, 60747, 60748);
update creature_template set equipment_id = 0 where entry in (60432, 60663, 93000, 93005);

update creature_template_addon set auras = '' where auras = '0';

update creature set health_percent = 100 where id = 60408;

delete from pool_gameobject where guid in (39989, 5242, 45093);

update quest_template set rewrepfaction1 = 893 where rewrepfaction1 = 1494;
update quest_template set rewrepfaction1 = 909 where rewrepfaction1 = 1555;

delete from creature_loot_template where item = 83100;

update creature_loot_template set mincountorref = 1 where item = 4278;

update creature_loot_template set chanceorquestchance = 33.3 where entry = 2447 and groupid = 6;
update creature_loot_template set chanceorquestchance = 16.6 where entry = 60525 and groupid = 1;

update item_loot_template set chanceorquestchance = 20 where entry =  83236 and groupid = 1;
update item_loot_template set chanceorquestchance = 20 where entry =  83236 and groupid = 3;
update item_loot_template set chanceorquestchance = 33.3 where entry = 83270 and groupid = 1;

update creature set movement_type = 2 where guid = 32347;
delete from creature_movement_template where entry = 3888;
insert into creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, wander_distance, script_id) values
(3888, 1, 2768.44, -411.098, 111.463, 1.62316, 480000, 0, 388803),
(3888, 2, 2768.44, -411.098, 111.463, 100, 2000, 0, 388801),
(3888, 3, 2766.91, -407.248, 111.471, 100, 6000, 0, 388802),
(3888, 4, 2763.06, -402.483, 111.482, 100, 0, 0, 0),
(3888, 5, 2763.35, -399.281, 111.479, 100, 0, 0, 0),
(3888, 6, 2762.86, -396.496, 111.235, 100, 10000, 0, 0),
(3888, 7, 2756.46, -418.976, 111.475, 100, 0, 0, 0),
(3888, 8, 2754.08, -425.621, 111.475, 100, 0, 0, 0),
(3888, 9, 2748.49, -435.343, 111.474, 100, 0, 0, 0),
(3888, 10, 2736.83, -432.064, 111.874, 100, 189000, 0, 388803),
(3888, 11, 2736.83, -432.064, 111.874, 100, 2000, 0, 388801),
(3888, 12, 2743.72, -433.638, 111.458, 100, 0, 0, 0),
(3888, 13, 2751.9, -428.987, 111.474, 100, 0, 0, 0),
(3888, 14, 2759.19, -415.571, 111.48, 100, 0, 0, 0),
(3888, 15, 2768.07, -415.291, 111.459, 100, 0, 0, 0);
delete from creature_movement_scripts where id in (388801, 388802, 388803);
insert into creature_movement_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (388801, 0, 28, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korra - Set Stand State');
insert into creature_movement_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (388802, 2, 0, 2, 0, 0, 0, 0, 0, 0, 4, 1296, 0, 0, 0, 0, 0, 0, 0, 0, 'Korra - Talk');
insert into creature_movement_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (388803, 2, 28, 3, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korra - Set Stand State');

update creature set movement_type = 2 where guid in (17040, 21660, 21661, 27974, 2562709, 2562710, 2562711, 2562712, 2562713, 2567587, 2569242);

update gameobject_template set data3 = 1 where entry in (2010817, 2010835, 2010837, 2010838, 2010839, 2010840, 2010843, 2010844);

delete from npc_text where id = 90000;

update item_template set disenchant_id = 0 where entry = 2540;
update item_template set disenchant_id = 0 where entry = 2541;

update item_template set extra_flags = 1 where entry = 9311;
update item_template set extra_flags = 1 where entry = 18154;
update item_template set extra_flags = 1 where entry = 21140;
update item_template set extra_flags = 1 where entry = 22058;

delete from item_template where entry = 22233;

update creature_template set equipment_id = 0 where entry in (60520, 60587, 60653, 60656, 60847);
update creature set equipment_id = 0 where id in (60520, 60587, 60653, 60656, 60847, 80851);

delete from battleground_events where map in (25, 37);

replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values (1422, 20, 1421, 80, 0, 0, 0);

update creature_template set script_name = 'boss_magni_bronzebeard' where entry = 2784;

update creature_template set name = '[Test] Custom spell cast', subname = '', script_name = 'boss_custom_spell' where entry = 80865;

replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, level_min, level_max, health_min, health_max, armor, faction, speed_walk, detection_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, ai_name, inhabit_type, regeneration, flags_extra) values (5738, 4116, 4117, 4118, 4119, 'Caged Dwarf Male', 5, 5, 102, 102, 20, 68, 1, 18, 1, 6, 8, 52, 1, 2000, 1, 768, 8.624, 11.858, 100, 7, 'EventAI', 3, 3, 2);

replace into creature (guid, id, id2, id3, id4, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod) VALUES (31875, 5738, 0, 0, 0, 0, 1403.85, 376.678, -84.868, 5.79449, 300, 300, 0, 100, 0, 0, 0, 0);

update creature_loot_template set maxcount = 1 where entry = 2574 and item = 4278;

delete from gameobject_loot_template where entry = 3000512;

update creature_template set skinning_loot_id = 0 where skinning_loot_id = 100001;

delete from creature_involvedrelation where id = 50677 and quest = 80729;

update creature_template set npc_flags = 4 where entry = 15;

update creature_template set npc_flags = 7 where entry = 92202;

delete from npc_vendor where item = 83422; 

delete from creature_template where entry = 81021;

update creature_template set npc_flags = 4 where entry = 1650;
update creature_template set npc_flags = 135 where entry = 6739;

delete from npc_vendor where entry = 81021;

update creature_template set npc_flags = 19 where entry = 5885;
update creature_template set npc_flags = 6 where entry = 3689;

delete from quest_end_scripts where id = 50530;

