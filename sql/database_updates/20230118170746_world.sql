-- Support for Human Hunters:

DELETE FROM `playercreateinfo` WHERE `race` = 1 AND `class` = 3;
DELETE FROM `playercreateinfo_item` WHERE `race` = 1 AND `class` = 3;
DELETE FROM `playercreateinfo_spell` WHERE `race` = 1 AND `class` = 3;
DELETE FROM `playercreateinfo_action` WHERE `race` = 1 AND `class` = 3;
DELETE FROM `player_levelstats` WHERE `race` = 1 AND `class` = 3;

REPLACE INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (1, 3, 0, 12, -8949.95, -132.493, 83.5312, 0);

REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 75, 'Auto Shot');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 81, 'Dodge');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 203, 'Unarmed');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 204, 'Defense');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 264, 'Bows');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 522, 'SPELLDEFENSE (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 668, 'Language Common');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 1180, 'Daggers');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 2382, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 2479, 'Honorless Target');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 2973, 'Raptor Strike');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 3050, 'Detect');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 3365, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 6233, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 6246, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 6247, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 6477, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 6478, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 6603, 'Attack');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 7266, 'Duel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 7267, 'Grovel');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 7355, 'Stuck');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 8386, 'Attacking');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 9077, 'Leather');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 9078, 'Cloth');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 9125, 'Generic');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 13358, 'Defensive State (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 20592, 'Arcane Resistance');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 21651, 'Opening');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 21652, 'Closing');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 22027, 'Remove Insignia');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 22810, 'Opening - No Text');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 24949, 'Defensive State 2 (DND)');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 20598, 'The Human Spirit');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 20599, 'Diplomacy');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 20864, 'Mace Specialization');
REPLACE INTO `playercreateinfo_spell` (`race`, `class`, `spell`, `note`) VALUES (1, 3, 20600, 'Perception');

REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 0, 6603, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 1, 2973, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 2, 75, 0);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 11, 117, 128);
REPLACE INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1, 3, 10, 159, 128);

REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 117, 4);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 129, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 147, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 148, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 159, 2);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 2092, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 2101, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 2504, 1);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 2512, 200);
REPLACE INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES (1, 3, 6948, 1);

REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 1, 17, 28, 20, 20, 21);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 2, 17, 29, 21, 21, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 3, 18, 30, 22, 21, 22);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 4, 18, 32, 22, 22, 23);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 5, 19, 33, 23, 22, 23);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 6, 19, 34, 24, 23, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 7, 19, 35, 25, 23, 24);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 8, 20, 36, 26, 24, 25);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 9, 20, 38, 27, 24, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 10, 21, 39, 27, 25, 26);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 11, 21, 40, 28, 25, 27);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 12, 22, 42, 29, 26, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 13, 22, 43, 30, 27, 28);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 14, 23, 44, 31, 27, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 15, 23, 46, 32, 28, 29);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 16, 24, 47, 33, 28, 30);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 17, 24, 48, 34, 29, 31);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 18, 25, 50, 35, 30, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 19, 25, 51, 36, 30, 32);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 20, 26, 53, 37, 31, 33);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 21, 26, 54, 38, 32, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 22, 27, 56, 39, 32, 34);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 23, 27, 57, 40, 33, 35);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 24, 28, 59, 41, 34, 36);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 25, 28, 60, 42, 34, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 26, 29, 62, 43, 35, 37);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 27, 29, 64, 44, 36, 38);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 28, 30, 65, 45, 36, 39);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 29, 30, 67, 46, 37, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 30, 31, 69, 47, 38, 40);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 31, 31, 70, 49, 39, 41);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 32, 32, 72, 50, 39, 42);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 33, 33, 74, 51, 40, 43);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 34, 33, 75, 52, 41, 44);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 35, 34, 77, 53, 42, 45);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 36, 35, 79, 55, 43, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 37, 35, 81, 56, 43, 46);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 38, 36, 83, 57, 44, 47);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 39, 36, 85, 58, 45, 48);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 40, 37, 86, 60, 46, 49);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 41, 38, 88, 61, 47, 50);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 42, 38, 90, 62, 47, 51);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 43, 39, 92, 63, 48, 52);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 44, 40, 94, 65, 49, 53);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 45, 40, 96, 66, 50, 54);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 46, 41, 98, 68, 51, 55);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 47, 42, 100, 69, 52, 56);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 48, 43, 103, 70, 53, 57);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 49, 43, 105, 72, 54, 58);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 50, 44, 107, 73, 55, 59);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 51, 45, 109, 75, 56, 60);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 52, 46, 111, 76, 57, 61);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 53, 46, 113, 78, 58, 62);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 54, 47, 116, 79, 59, 63);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 55, 48, 118, 81, 60, 64);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 56, 49, 120, 82, 61, 65);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 57, 50, 123, 84, 62, 67);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 58, 50, 125, 86, 63, 68);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 59, 51, 128, 87, 64, 69);
REPLACE INTO `player_levelstats` (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES (1, 3, 60, 52, 130, 89, 65, 70);
