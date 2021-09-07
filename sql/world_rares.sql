UPDATE `creature_template` SET `script_name` = 'boss_tarangos' WHERE `entry` = '49001';
UPDATE `creature_template` SET `script_name` = 'boss_blademaster_kargron' WHERE `entry` = '49002'; 
UPDATE `creature_template` SET `script_name` = 'boss_xalvic_blackclaw' WHERE `entry` = '49003'; 
UPDATE `creature_template` SET `script_name` = 'boss_mallon_the_moontouched' WHERE `entry` = '49004'; 
UPDATE `creature_template` SET `script_name` = 'boss_grugthok_the_seer' WHERE `entry` = '49005'; 

-- Assign loot:

delete from creature_loot_template where entry between 49001 and 49005;

update creature_template set gold_min = 1688, gold_max = 1903 where entry between 49001 and 49005;

update creature_template set loot_id = 49001 where entry = 49001; -- Tarangos
update creature_template set loot_id = 49002 where entry = 49002; -- Blademaster Kargron
update creature_template set loot_id = 49003 where entry = 49003; -- Xelcic Blackclaw
update creature_template set loot_id = 49004 where entry = 49004; -- Mallon the Moontouched
update creature_template set loot_id = 49005 where entry = 49005; -- Grugthok The Seer

replace into creature_loot_template values 
-- Tarangos
(49001, 81360, 0, 1, 1, 1, 0, 0, 10),
(49001, 81361, 0, 1, 1, 1, 0, 0, 10),
(49001, 81362, 0, 1, 1, 1, 0, 0, 10),
(49001, 81363, 0.5, 2, 1, 1, 0, 0, 10),
(49001, 81364, 0, 1, 1, 1, 0, 0, 10),
-- Blademaster Kargron
(49002, 81365, 0, 1, 1, 1, 0, 0, 10),
(49002, 81366, 0, 1, 1, 1, 0, 0, 10),
(49002, 81367, 0, 1, 1, 1, 0, 0, 10),
(49002, 81368, 0, 1, 1, 1, 0, 0, 10),
(49002, 81369, 0.5, 2, 1, 1, 0, 0, 10),
-- Xelcic Blackclaw
(49003, 81370, 0, 1, 1, 1, 0, 0, 10),
(49003, 81371, 0, 1, 1, 1, 0, 0, 10),
(49003, 81372, 0, 1, 1, 1, 0, 0, 10),
(49003, 81373, 0, 1, 1, 1, 0, 0, 10),
(49003, 81374, 0.5, 2, 1, 1, 0, 0, 10),
-- Mallon the Moontouched
(49004, 81375, 0, 1, 1, 1, 0, 0, 10),
(49004, 81376, 0, 1, 1, 1, 0, 0, 10),
(49004, 81377, 0, 1, 1, 1, 0, 0, 10),
(49004, 81378, 0, 1, 1, 1, 0, 0, 10),
(49004, 81379, 0.5, 2, 1, 1, 0, 0, 10),
-- Grugthok The Seer
(49005, 81380, 0, 1, 1, 1, 0, 0, 10),
(49005, 81381, 0, 1, 1, 1, 0, 0, 10),
(49005, 81382, 0, 1, 1, 1, 0, 0, 10),
(49005, 81383, 0, 1, 1, 1, 0, 0, 10),
(49005, 81384, 0.5, 2, 1, 1, 0, 0, 10);