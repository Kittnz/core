DELETE FROM faction WHERE id IN (999, 1000, 1002, 1003, 1010, 1014, 1015, 1016, 1017);
DELETE FROM faction_template WHERE faction_id IN (999, 1000, 1002, 1003, 1010, 1014, 1015, 1016, 1017);

UPDATE `faction` SET `reputation_flags1` = 16 WHERE `id` = 1007;
UPDATE `faction` SET `reputation_flags1` = 16 WHERE `id` = 1008;

UPDATE `faction` SET `reputation_flags1` = 4, `reputation_flags2` = 4 WHERE `id` = 1012;

DELETE FROM `faction_template` WHERE `id` IN (1701, 1702, 1703, 1704, 1705, 1706, 1707, 1708, 1709);

UPDATE `faction` SET `reputation_list_id` = -1, `base_rep_race_mask1` = 0, `base_rep_race_mask2` = 0, `base_rep_value1` = 0, `base_rep_value2` = 0 WHERE `id` = 189;
UPDATE `faction` SET `reputation_list_id` = -1, `base_rep_race_mask1` = 0, `base_rep_race_mask2` = 0, `base_rep_value1` = 0, `base_rep_value2` = 0 WHERE `id` = 66;


UPDATE `spell_template` SET `description` = 'The caster is surrounded by $n globes of water. When a spell, melee or ranged attack hits the caster, 130 mana is restored to the caster. This expends one water globe. Only one globe will activate every few seconds. Lasts $d. Only one elemental shield can be active on the Shaman at any one time.' WHERE `entry` = 45527;

-- Assigned correct factions to some schmucks:

UPDATE `creature_template` SET `subname` = '' WHERE `entry` in ( 65000, 65001, 65002, 65003, 65005, 65006, 65007, 65008, 65009, 65010, 65011, 65012, 65013, 65014, 65015, 65016, 65017, 65018, 60622, 65128);

-- npc 80458 change lvl to 55, remove boss and leader tag

UPDATE creature_template set level_min = 55, level_max = 55, rank = 1, racial_leader = 0 where entry = 80458;

UPDATE `item_template` SET `name` = 'Naturalist I [Night Elf]' WHERE `entry` = 83092;
UPDATE `item_template` SET `name` = 'Necromancer II [Night Elf, male only]' WHERE `entry` = 61106;

UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81255;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81206;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81210;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81209;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50105;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50106;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50204;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50205;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50206;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50207;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50208;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50209;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50210;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50211;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50212;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 51010;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 51011;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81230;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81229;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81228;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81208;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83090;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83091;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83092;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50220;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50221;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50250;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50251;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50252;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83099;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83100;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50225;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50290;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50291;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50292;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50223;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50224;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 61104;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 61105;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 61106;
