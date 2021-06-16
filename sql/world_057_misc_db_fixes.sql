
-- Fix Lulu spell:

update item_template set spellid_1 = 46477 where entry = 51221;
delete from custom_pet_entry_relation where item_entry = 51221;

-- Delete GM Glyph

delete from item_template where entry = 81130;

-- Fix broken stats on Kazgrim's items.

update item_template set stat_value1 = 0 where stat_value1 < 0 and stat_type1 = 0;
update item_template set stat_value2 = 0 where stat_value2 < 0 and stat_type2 = 0;
update item_template set stat_value3 = 0 where stat_value3 < 0 and stat_type3 = 0;
update item_template set stat_value4 = 0 where stat_value4 < 0 and stat_type4 = 0;
update item_template set stat_value5 = 0 where stat_value5 < 0 and stat_type5 = 0;
update item_template set stat_value6 = 0 where stat_value6 < 0 and stat_type6 = 0;
update item_template set stat_value7 = 0 where stat_value7 < 0 and stat_type7 = 0;
update item_template set stat_value8 = 0 where stat_value8 < 0 and stat_type8 = 0;
update item_template set stat_value9 = 0 where stat_value9 < 0 and stat_type9 = 0;
update item_template set stat_value10 = 0 where stat_value10 < 0 and stat_type10 = 0;


-- Superior Armaments of Battle - Revered Amongst the Dawn, missing start / end NPC.

replace into creature_questrelation (id, quest) values (11536, 9226);
replace into creature_involvedrelation (id, quest) values (11536, 9226);


-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/35
-- Some non-combat pets do not move after summoning them.

update creature_template set type = 12 where entry = 50611;
update creature_template set type = 12 where entry = 14421;

-- Bug: Tonal Stone: Kamio 
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/17

update item_template set spellid_1 = 46035 where entry = 70043;

-- Dark Ranger Lanissa (Hunter Trainer) non-responsive.
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/28

delete from creature_template where entry = 81047;
delete from creature where id = 81047;
delete from npc_trainer where entry = 81047;

update creature_template set npc_flags = 16, trainer_class = 3 where entry = 81050;

replace into npc_trainer values (81050, 796, 2200, 0, 0, 20, 0, 5875);
replace into npc_trainer values (81050, 1117, 600, 0, 0, 12, 0, 5875);
replace into npc_trainer values (81050, 1424, 2200, 0, 0, 20, 0, 5875);
replace into npc_trainer values (81050, 1547, 10, 0, 0, 1, 0, 5875);
replace into npc_trainer values (81050, 1549, 1800, 0, 0, 16, 0, 5875);
replace into npc_trainer values (81050, 1552, 2200, 0, 0, 20, 0, 5875);
replace into npc_trainer values (81050, 1563, 1800, 0, 0, 50, 0, 5875);
replace into npc_trainer values (81050, 1564, 18000, 0, 0, 40, 0, 5875);
replace into npc_trainer values (81050, 1567, 1200, 0, 0, 14, 0, 5875);
replace into npc_trainer values (81050, 1603, 10000, 0, 0, 32, 0, 5875);
replace into npc_trainer values (81050, 2003, 100, 0, 0, 4, 0, 5875);
replace into npc_trainer values (81050, 2898, 14000, 0, 0, 36, 0, 5875);
replace into npc_trainer values (81050, 2899, 1200, 0, 0, 14, 0, 5875);
replace into npc_trainer values (81050, 2979, 600, 0, 0, 12, 0, 5875);
replace into npc_trainer values (81050, 3047, 6000, 0, 0, 22, 0, 5875);
replace into npc_trainer values (81050, 3048, 100, 0, 0, 6, 0, 5875);
replace into npc_trainer values (81050, 3049, 7000, 0, 0, 26, 0, 5875);
replace into npc_trainer values (81050, 3128, 200, 0, 0, 8, 0, 5875);
replace into npc_trainer values (81050, 3663, 8000, 0, 0, 28, 0, 5875);
replace into npc_trainer values (81050, 3664, 14000, 0, 0, 36, 0, 5875);
replace into npc_trainer values (81050, 5117, 200, 0, 0, 8, 0, 5875);
replace into npc_trainer values (81050, 5131, 2200, 0, 0, 20, 0, 5875);
replace into npc_trainer values (81050, 5298, 100, 0, 0, 6, 0, 5875);
replace into npc_trainer values (81050, 5338, 2000, 0, 0, 18, 0, 5875);
replace into npc_trainer values (81050, 5385, 8000, 0, 0, 30, 0, 5875);
replace into npc_trainer values (81050, 6198, 1200, 0, 0, 14, 0, 5875);
replace into npc_trainer values (81050, 6385, 400, 0, 0, 10, 0, 5875);
replace into npc_trainer values (81050, 6791, 2200, 0, 0, 20, 0, 5875);
replace into npc_trainer values (81050, 6792, 7000, 0, 0, 24, 0, 5875);
replace into npc_trainer values (81050, 6999, 8000, 0, 0, 30, 0, 5875);
replace into npc_trainer values (81050, 8738, 18000, 0, 0, 40, 0, 5875);
replace into npc_trainer values (81050, 13160, 18000, 0, 0, 40, 0, 5875);
replace into npc_trainer values (81050, 13162, 8000, 0, 0, 30, 0, 5875);
replace into npc_trainer values (81050, 13164, 100, 0, 0, 4, 0, 5875);
replace into npc_trainer values (81050, 13545, 26000, 0, 0, 44, 0, 5875);
replace into npc_trainer values (81050, 13546, 40000, 0, 0, 52, 0, 5875);
replace into npc_trainer values (81050, 13547, 50000, 0, 0, 60, 0, 5875);
replace into npc_trainer values (81050, 13556, 400, 0, 0, 10, 0, 5875);
replace into npc_trainer values (81050, 13557, 2000, 0, 0, 18, 0, 5875);
replace into npc_trainer values (81050, 13558, 7000, 0, 0, 26, 0, 5875);
replace into npc_trainer values (81050, 13559, 12000, 0, 0, 34, 0, 5875);
replace into npc_trainer values (81050, 13560, 24000, 0, 0, 42, 0, 5875);
replace into npc_trainer values (81050, 13561, 36000, 0, 0, 50, 0, 5875);
replace into npc_trainer values (81050, 13562, 48000, 0, 0, 58, 0, 5875);
replace into npc_trainer values (81050, 13799, 1800, 0, 0, 16, 0, 5875);
replace into npc_trainer values (81050, 13811, 8000, 0, 0, 28, 0, 5875);
replace into npc_trainer values (81050, 13814, 12000, 0, 0, 34, 0, 5875);
replace into npc_trainer values (81050, 14332, 200, 0, 0, 8, 0, 5875);
replace into npc_trainer values (81050, 14333, 1800, 0, 0, 16, 0, 5875);
replace into npc_trainer values (81050, 14334, 7000, 0, 0, 24, 0, 5875);
replace into npc_trainer values (81050, 14335, 10000, 0, 0, 32, 0, 5875);
replace into npc_trainer values (81050, 14336, 18000, 0, 0, 40, 0, 5875);
replace into npc_trainer values (81050, 14337, 32000, 0, 0, 48, 0, 5875);
replace into npc_trainer values (81050, 14338, 46000, 0, 0, 56, 0, 5875);
replace into npc_trainer values (81050, 14339, 16000, 0, 0, 38, 0, 5875);
replace into npc_trainer values (81050, 14340, 5000, 0, 0, 60, 0, 5875);
replace into npc_trainer values (81050, 14341, 8000, 0, 0, 30, 0, 5875);
replace into npc_trainer values (81050, 14342, 26000, 0, 0, 44, 0, 5875);
replace into npc_trainer values (81050, 14343, 48000, 0, 0, 58, 0, 5875);
replace into npc_trainer values (81050, 14344, 12000, 0, 0, 34, 0, 5875);
replace into npc_trainer values (81050, 14345, 32000, 0, 0, 48, 0, 5875);
replace into npc_trainer values (81050, 14346, 2200, 0, 0, 20, 0, 5875);
replace into npc_trainer values (81050, 14347, 10000, 0, 0, 32, 0, 5875);
replace into npc_trainer values (81050, 14348, 24000, 0, 0, 42, 0, 5875);
replace into npc_trainer values (81050, 14349, 40000, 0, 0, 52, 0, 5875);
replace into npc_trainer values (81050, 14350, 28000, 0, 0, 46, 0, 5875);
replace into npc_trainer values (81050, 14351, 46000, 0, 0, 56, 0, 5875);
replace into npc_trainer values (81050, 14352, 600, 0, 0, 12, 0, 5875);
replace into npc_trainer values (81050, 14353, 2200, 0, 0, 20, 0, 5875);
replace into npc_trainer values (81050, 14354, 8000, 0, 0, 28, 0, 5875);
replace into npc_trainer values (81050, 14355, 14000, 0, 0, 36, 0, 5875);
replace into npc_trainer values (81050, 14356, 26000, 0, 0, 44, 0, 5875);
replace into npc_trainer values (81050, 14357, 40000, 0, 0, 52, 0, 5875);
replace into npc_trainer values (81050, 14358, 50000, 0, 0, 60, 0, 5875);
replace into npc_trainer values (81050, 14359, 24000, 0, 0, 42, 0, 5875);
replace into npc_trainer values (81050, 14360, 42000, 0, 0, 54, 0, 5875);
replace into npc_trainer values (81050, 14361, 36000, 0, 0, 50, 0, 5875);
replace into npc_trainer values (81050, 14362, 48000, 0, 0, 58, 0, 5875);
replace into npc_trainer values (81050, 14364, 7000, 0, 0, 26, 0, 5875);
replace into npc_trainer values (81050, 14365, 14000, 0, 0, 36, 0, 5875);
replace into npc_trainer values (81050, 14366, 28000, 0, 0, 46, 0, 5875);
replace into npc_trainer values (81050, 14367, 46000, 0, 0, 56, 0, 5875);
replace into npc_trainer values (81050, 14368, 18000, 0, 0, 40, 0, 5875);
replace into npc_trainer values (81050, 14370, 50000, 0, 0, 60, 0, 5875);
replace into npc_trainer values (81050, 14372, 26000, 0, 0, 44, 0, 5875);
replace into npc_trainer values (81050, 14373, 42000, 0, 0, 54, 0, 5875);
replace into npc_trainer values (81050, 14374, 2000, 0, 0, 18, 0, 5875);
replace into npc_trainer values (81050, 14375, 8000, 0, 0, 28, 0, 5875);
replace into npc_trainer values (81050, 14376, 16000, 0, 0, 38, 0, 5875);
replace into npc_trainer values (81050, 14377, 32000, 0, 0, 48, 0, 5875);
replace into npc_trainer values (81050, 14378, 48000, 0, 0, 58, 0, 5875);
replace into npc_trainer values (81050, 14431, 6000, 0, 0, 22, 0, 5875);
replace into npc_trainer values (81050, 14432, 18000, 0, 0, 40, 0, 5875);
replace into npc_trainer values (81050, 14434, 48000, 0, 0, 58, 0, 5875);
replace into npc_trainer values (81050, 14445, 8000, 0, 0, 30, 0, 5875);
replace into npc_trainer values (81050, 14446, 28000, 0, 0, 46, 0, 5875);
replace into npc_trainer values (81050, 15637, 8000, 0, 0, 30, 0, 5875);
replace into npc_trainer values (81050, 15638, 18000, 0, 0, 40, 0, 5875);
replace into npc_trainer values (81050, 15639, 36000, 0, 0, 50, 0, 5875);
replace into npc_trainer values (81050, 15640, 50000, 0, 0, 60, 0, 5875);
replace into npc_trainer values (81050, 20044, 28000, 0, 0, 46, 0, 5875);
replace into npc_trainer values (81050, 20155, 10000, 0, 0, 32, 0, 5875);
replace into npc_trainer values (81050, 20156, 36000, 0, 0, 50, 0, 5875);
replace into npc_trainer values (81050, 20157, 7000, 0, 0, 26, 0, 5875);
replace into npc_trainer values (81050, 20158, 18000, 0, 0, 40, 0, 5875);
replace into npc_trainer values (81050, 20159, 7000, 0, 0, 24, 0, 5875);
replace into npc_trainer values (81050, 20160, 400, 0, 0, 10, 0, 5875);
replace into npc_trainer values (81050, 20161, 2000, 0, 0, 18, 0, 5875);
replace into npc_trainer values (81050, 20191, 46000, 0, 0, 56, 0, 5875);
replace into npc_trainer values (81050, 20738, 600, 0, 0, 12, 0, 5875);
replace into npc_trainer values (81050, 20931, 400, 0, 0, 28, 0, 5875);
replace into npc_trainer values (81050, 20932, 700, 0, 0, 36, 0, 5875);
replace into npc_trainer values (81050, 20933, 1300, 0, 0, 44, 0, 5875);
replace into npc_trainer values (81050, 20934, 2000, 0, 0, 52, 0, 5875);
replace into npc_trainer values (81050, 20935, 2500, 0, 0, 60, 0, 5875);
replace into npc_trainer values (81050, 20938, 2500, 0, 0, 60, 0, 5875);
replace into npc_trainer values (81050, 20940, 1800, 0, 0, 50, 0, 5875);
replace into npc_trainer values (81050, 20941, 2500, 0, 0, 60, 0, 5875);
replace into npc_trainer values (81050, 20942, 1200, 0, 0, 42, 0, 5875);
replace into npc_trainer values (81050, 20943, 2100, 0, 0, 54, 0, 5875);

-- Quest: Attack on Camp Narache is not enable to all horde races
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/33

update quest_template set requiredraces = 434 where entry = 781;