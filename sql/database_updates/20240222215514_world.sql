-- NPC Brandon Fencer, change display ID to 3360
UPDATE `creature_template` SET `display_id1` = 3360 WHERE `entry` = 61906;
-- NPC Otto Fencer, change display ID to 4336
UPDATE `creature_template` SET `display_id1` = 4336 WHERE `entry` = 61905;
-- NPC Ranellius Pureheart, add subname <Journeyman Jewelcrafter>
UPDATE `creature_template` SET `subname` = 'Journeyman Jewelcrafter' WHERE `entry` = 61916;
-- NPC Ethennar Somberfall, add subname <>
UPDATE `creature_template` SET `subname` = 'Expert Jewelcrafter' WHERE `entry` = 61917;
-- NPC Ethennar Somberfall, change display ID to 16182
UPDATE `creature_template` SET `display_id1` = 16182 WHERE `entry` = 61917;