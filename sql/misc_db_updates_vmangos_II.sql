
-- The Dark Portal spawns
-- Spawn Felguard Elite
INSERT INTO `creature` VALUES (203275, 8717, 0, 0, 0, 0, 0, 0, -11835.7, -3253.5, -25.9082, 5.2709, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203278, 8717, 0, 0, 0, 0, 0, 0, -11817.6, -3237.61, -29.7055, 5.8294, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203291, 8717, 0, 0, 0, 0, 0, 0, -11843.4, -3229.34, -26.4251, 0, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203279, 8717, 0, 0, 0, 0, 0, 0, -11803.8, -3217.06, -30.651, 6.03884, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203282, 8717, 0, 0, 0, 0, 0, 0, -11802.3, -3192.65, -29.7192, 0.0698132, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203298, 8717, 0, 0, 0, 0, 0, 0, -11805.5, -3170.9, -30.4301, 0.436332, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203303, 8717, 0, 0, 0, 0, 0, 0, -11815.9, -3148.64, -27.1289, 0.541052, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203307, 8717, 0, 0, 0, 0, 0, 0, -11832.4, -3133.45, -26.8395, 5.23599, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203306, 8717, 0, 0, 0, 0, 0, 0, -11853.6, -3158.95, -27.7374, 0.0523599, 900, 900, 0, 100, 0, 0, 0, 0, 0, 10);

-- Spawn Doomguard Commander
INSERT INTO `creature` VALUES (203289, 12396, 0, 0, 0, 0, 0, 0, -11850.3, -3250.76, -27.4681, 0.523599, 900, 900, 0, 100, 100, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203290, 12396, 0, 0, 0, 0, 0, 0, -11858.5, -3236.31, -24.6962, 0.279253, 900, 900, 0, 100, 100, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203308, 12396, 0, 0, 0, 0, 0, 0, -11873.2, -3165.44, -27.055, 5.91667, 900, 900, 0, 100, 100, 0, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203309, 12396, 0, 0, 0, 0, 0, 0, -11863.4, -3146.96, -25.6828, 5.55015, 900, 900, 0, 100, 100, 0, 0, 0, 0, 10);

-- Spawn Manahound
INSERT INTO `creature` VALUES (203281, 8718, 0, 0, 0, 0, 0, 0, -11824.3, -3215.66, -30.9589, 5.23638, 900, 900, 40, 100, 0, 1, 0, 0, 0, 10);
INSERT INTO `creature` VALUES (203304, 8718, 0, 0, 0, 0, 0, 0, -11827.2, -3154.9, -29.7552, 4.30938, 900, 900, 40, 100, 0, 1, 0, 0, 0, 10);

-- Dark Iron Taskmaster Death should only target Slave Worker.
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `conditionId`, `inverseEffectMask`, `build_min`, `build_max`) VALUES (12613, 1, 5843, 0, 0, 0, 5875);

-- Add threat for paladin blessings equal to their level.
-- Blessing of Wisdom never generates any threat.
-- https://classic.wowhead.com/guides/lights-bulwark-protection-paladin-tanking
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19740, 4, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19834, 12, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19835, 22, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19836, 32, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19837, 42, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19838, 52, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25291, 60, 1, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19850, 0, 0, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19852, 0, 0, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19853, 0, 0, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19854, 0, 0, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25290, 0, 0, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (20911, 30, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (20912, 40, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (20913, 50, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (20914, 60, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19977, 40, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19978, 50, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (19979, 60, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (1022, 10, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (5599, 24, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (10278, 38, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (6940, 46, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (20729, 54, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (1038, 26, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (1044, 18, 1, 0, 0, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25782, 52, 1, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25916, 60, 1, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25899, 60, 1, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25894, 0, 0, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25918, 0, 0, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25890, 60, 1, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25895, 60, 1, 0, 5086, 5875);
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`, `build_min`, `build_max`) VALUES (25898, 60, 1, 0, 5086, 5875);
