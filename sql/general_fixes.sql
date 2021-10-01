REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (112909, 0, 5, 24364, 'WARNING!!! DO NOT ENTER!!!', 0, 0, 0.7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES (112910, 0, 5, 24364, 'Jade Mine. No entry allowed.', 0, 0, 0.7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `npc_flags` = 19 WHERE `entry` = 3136;
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 91966;
update creature_template set scale = 1.5, faction = 90, dmg_school = 2, rank = 1 where entry = 92112;
replace into gameobject_template values 
(112911, 0, 5, 23442, 'Crescent Grove (Entrance)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'crescent_grove_portal'),
(112912, 0, 5, 23442, 'Crescent Grove (Exit)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'crescent_grove_portal'),
(112913, 0, 5, 23443, 'Crescent Grove (Collision)', 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
replace into map_template values (802, 0, 0, 1, 802, 5, 0, -1, 0, 0, 'Crescent Grove', 'instance_crescent_grove');

set @creature_loot_id = 92100; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92101; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92102; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92103; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92104; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92105; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92106; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92107; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92108; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92109; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92110; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92111; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92112; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92113; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92114; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92115; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92116; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92117; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92118; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92119; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92120; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92121; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92122; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92123; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92124; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92125; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92126; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92127; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92128; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;
set @creature_loot_id = 92129; update creature_template set loot_id = @creature_loot_id where entry = @creature_loot_id;

update creature set spawntimesecsmin = 36000 spawntimesecsmax = 36000 where id between 92100 and 92129;