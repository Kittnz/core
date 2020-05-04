-- Cenarion Emissary Blackhoof correct location
UPDATE `creature` SET `position_x` = 1658.711, `position_y` = -4348.799, `position_z` = 29.25742, `orientation` = 4.39823 WHERE `guid` = 6504;

-- Grinkle correct location
UPDATE `creature` SET `position_x` = 1592.611, `position_y` = -4416.818, `position_z` = 9.398685, `orientation` = 2.949606 WHERE `guid` = 54742;

-- Correct levels for ZG creatures.
UPDATE `creature_template` SET `level_min`=56, `level_max`=56 WHERE `entry`=14921;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=14758;
UPDATE `creature_template` SET `health_min`=4120, `health_max`=4120 WHERE `entry`=14758;
UPDATE `creature_template` SET `health_min`=8097, `health_max`=8097 WHERE `entry`=14921;

-- Correct melee attack speeds for ZG creatures.
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=871;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=877;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=879;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14517;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14902;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14903;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14904;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14905;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14921;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=15070;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11338;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11339;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11340;
UPDATE `creature_template` SET `base_attack_time`=1600 WHERE `entry`=11350;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11351;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11352;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11353;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11356;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11359;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11371;
UPDATE `creature_template` SET `base_attack_time`=1400 WHERE `entry`=11372;
UPDATE `creature_template` SET `base_attack_time`=1200 WHERE `entry`=11374;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11389;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11390;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11830;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11831;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14750;

-- Correct ranged attack speeds for ZG creatures.
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=855;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=871;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=877;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=879;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3197;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=3204;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=4260;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=5822;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14902;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14903;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14904;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14905;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14921;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=15070;

-- Correct walking speed for ZG creatures.
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=11352;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=11368;
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=14750;
UPDATE `creature_template` SET `speed_walk`=0.666668 WHERE `entry`=14902;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14903;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14904;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14905;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14921;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=14990;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15070;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15116;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=15188;

-- Correct run speed for ZG creatures.
UPDATE `creature_template` SET `speed_run`=0.857143 WHERE `entry`=3197;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=11352;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=11357;
UPDATE `creature_template` SET `speed_run`=1.14286 WHERE `entry`=11359;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=14507;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=14510;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=14517;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=14750;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=14834;

-- Add missing quest greetings from classic sniffs.
INSERT INTO `quest_greeting` (`entry`, `type`, `content_default`, `Emote`, `EmoteDelay`) VALUES (1952, 0, 'Hello, $C.  If you\'re here, then you must know that Silverpine is saturated with our enemies.  To survive, the Forsaken must drive them back!', 0, 0);
INSERT INTO `quest_greeting` (`entry`, `type`, `content_default`, `Emote`, `EmoteDelay`) VALUES (10321, 0, '<Emberstrife acknowledges your presence.>', 0, 0);
INSERT INTO `quest_greeting` (`entry`, `type`, `content_default`, `Emote`, `EmoteDelay`) VALUES (11596, 0, 'My business plan never accounted for housing giant kodos... maybe I should have gone into the underwater basket weaving business instead.', 1, 0);
-- Add missing quest greetings from cmangos db.
INSERT INTO `quest_greeting` (`entry`, `type`, `content_default`, `Emote`, `EmoteDelay`) VALUES (7777, 0, 'The Gordunni Ogres encroach upon our lands.  We send as many as are willing to face them in the desecrated ruins of Feralas.', 1, 0);
INSERT INTO `quest_greeting` (`entry`, `type`, `content_default`, `Emote`, `EmoteDelay`) VALUES (16361, 0, 'The Lich King has brought war against us from the frozen north, and only we of the Argent Dawn stand in his way.', 1, 0);
INSERT INTO `quest_greeting` (`entry`, `type`, `content_default`, `Emote`, `EmoteDelay`) VALUES (16478, 0, 'Good day to you, citizen. Have you come to aid us against the Scourge?', 1, 0);
INSERT INTO `quest_greeting` (`entry`, `type`, `content_default`, `Emote`, `EmoteDelay`) VALUES (16786, 0, 'Greetings, $n. If you bring me necrotic stones from the undead invaders, I can give you access to the stores of the Argent Dawn.', 66, 0);
INSERT INTO `quest_greeting` (`entry`, `type`, `content_default`, `Emote`, `EmoteDelay`) VALUES (16788, 0, 'Greetings, $c. I am the Flamekeeper. During the Midsummer Fire Festival, it is my duty to keep this fire beside me burning brightly. It is an honor to be selected for such a task; I fill it gladly.$b$b How can I help you?', 1, 0);
-- Change naming style emote fields.
ALTER TABLE `quest_greeting`
    CHANGE COLUMN `Emote` `emote_id` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `content_loc8`,
    CHANGE COLUMN `EmoteDelay` `emote_delay` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `emote_id`;

-- Correct bounding radius for some creatures.
UPDATE `creature_model_info` SET `bounding_radius`=0.5 WHERE `modelid`=4449;
UPDATE `creature_model_info` SET `bounding_radius`=0.599 WHERE `modelid`=470;
UPDATE `creature_model_info` SET `bounding_radius`=0.51765 WHERE `modelid`=525;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=911;
UPDATE `creature_model_info` SET `bounding_radius`=0.8334 WHERE `modelid`=1075;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=1092;
UPDATE `creature_model_info` SET `bounding_radius`=0.759322 WHERE `modelid`=1307;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=1657;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=1825;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=2382;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=2383;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=2399;
UPDATE `creature_model_info` SET `bounding_radius`=0.50915 WHERE `modelid`=2568;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=3452;
UPDATE `creature_model_info` SET `bounding_radius`=1.668 WHERE `modelid`=4088;
UPDATE `creature_model_info` SET `bounding_radius`=0.4279 WHERE `modelid`=4212;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4244;
UPDATE `creature_model_info` SET `bounding_radius`=0.50915 WHERE `modelid`=4267;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=4305;
UPDATE `creature_model_info` SET `bounding_radius`=0.5 WHERE `modelid`=4317;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4494;
UPDATE `creature_model_info` SET `bounding_radius`=0.21 WHERE `modelid`=4566;
UPDATE `creature_model_info` SET `bounding_radius`=0.459 WHERE `modelid`=4582;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=4731;
UPDATE `creature_model_info` SET `bounding_radius`=1.06575 WHERE `modelid`=5489;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=5498;
UPDATE `creature_model_info` SET `bounding_radius`=1.218 WHERE `modelid`=5564;
UPDATE `creature_model_info` SET `bounding_radius`=0.436441 WHERE `modelid`=5985;
UPDATE `creature_model_info` SET `bounding_radius`=0.8675 WHERE `modelid`=6350;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=6630;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=6631;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=6791;
UPDATE `creature_model_info` SET `bounding_radius`=2.25 WHERE `modelid`=8390;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=8661;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=8662;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=8669;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=8699;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=8700;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=8701;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=8717;
UPDATE `creature_model_info` SET `bounding_radius`=0.65 WHERE `modelid`=8782;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9023;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9024;
UPDATE `creature_model_info` SET `bounding_radius`=0.3366 WHERE `modelid`=9291;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9293;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=9579;
UPDATE `creature_model_info` SET `bounding_radius`=0.875 WHERE `modelid`=9760;
UPDATE `creature_model_info` SET `bounding_radius`=0.3975 WHERE `modelid`=9993;
UPDATE `creature_model_info` SET `bounding_radius`=0.675 WHERE `modelid`=10032;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10354;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=10374;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10394;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10424;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10546;
UPDATE `creature_model_info` SET `bounding_radius`=0.5205 WHERE `modelid`=10621;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=10634;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=10638;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=10698;
UPDATE `creature_model_info` SET `bounding_radius`=0.525 WHERE `modelid`=10729;
UPDATE `creature_model_info` SET `bounding_radius`=0.875 WHERE `modelid`=11171;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=11172;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11306;
UPDATE `creature_model_info` SET `bounding_radius`=2.6825 WHERE `modelid`=11318;
UPDATE `creature_model_info` SET `bounding_radius`=0.7875 WHERE `modelid`=11340;
UPDATE `creature_model_info` SET `bounding_radius`=1.75 WHERE `modelid`=11460;
UPDATE `creature_model_info` SET `bounding_radius`=2.5 WHERE `modelid`=11564;
UPDATE `creature_model_info` SET `bounding_radius`=0.25415 WHERE `modelid`=11651;
UPDATE `creature_model_info` SET `bounding_radius`=0.18785 WHERE `modelid`=11652;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=11667;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=12080;
UPDATE `creature_model_info` SET `bounding_radius`=3 WHERE `modelid`=12369;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=12818;
UPDATE `creature_model_info` SET `bounding_radius`=0.875 WHERE `modelid`=12819;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=12962;
UPDATE `creature_model_info` SET `bounding_radius`=0.75 WHERE `modelid`=12963;
UPDATE `creature_model_info` SET `bounding_radius`=0.65 WHERE `modelid`=12966;
UPDATE `creature_model_info` SET `bounding_radius`=2.09855 WHERE `modelid`=13093;
UPDATE `creature_model_info` SET `bounding_radius`=0.3 WHERE `modelid`=13096;
UPDATE `creature_model_info` SET `bounding_radius`=0.5 WHERE `modelid`=13097;
UPDATE `creature_model_info` SET `bounding_radius`=1.122 WHERE `modelid`=13111;
UPDATE `creature_model_info` SET `bounding_radius`=2.09855 WHERE `modelid`=13130;
UPDATE `creature_model_info` SET `bounding_radius`=2.35 WHERE `modelid`=13132;
UPDATE `creature_model_info` SET `bounding_radius`=1.05 WHERE `modelid`=13170;
UPDATE `creature_model_info` SET `bounding_radius`=0.78075 WHERE `modelid`=13173;
UPDATE `creature_model_info` SET `bounding_radius`=3.4725 WHERE `modelid`=13174;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13258;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13259;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13282;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13283;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13284;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=13285;
UPDATE `creature_model_info` SET `bounding_radius`=0.4092 WHERE `modelid`=13300;
UPDATE `creature_model_info` SET `bounding_radius`=0.2596 WHERE `modelid`=13305;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13311;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13317;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13318;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13331;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13334;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13335;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13342;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13344;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13345;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13346;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13347;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13348;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13349;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13350;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13355;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=13356;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13369;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13370;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13430;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13431;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13432;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13433;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13434;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13435;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13436;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13437;
UPDATE `creature_model_info` SET `bounding_radius`=2.436 WHERE `modelid`=13444;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13554;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13555;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=13556;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13571;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13572;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=13573;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=13574;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13594;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13595;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13596;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13597;
UPDATE `creature_model_info` SET `bounding_radius`=1.3 WHERE `modelid`=13715;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=13773;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=13774;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13781;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13782;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13783;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13784;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13795;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13796;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13797;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=13798;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=14092;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=14323;
UPDATE `creature_model_info` SET `bounding_radius`=0.2568 WHERE `modelid`=14378;
UPDATE `creature_model_info` SET `bounding_radius`=1.3 WHERE `modelid`=14380;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=14381;
UPDATE `creature_model_info` SET `bounding_radius`=1.2502 WHERE `modelid`=14406;
UPDATE `creature_model_info` SET `bounding_radius`=1.125 WHERE `modelid`=14416;
UPDATE `creature_model_info` SET `bounding_radius`=2.2 WHERE `modelid`=14423;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=14879;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=14890;
UPDATE `creature_model_info` SET `bounding_radius`=0.4668 WHERE `modelid`=15603;
UPDATE `creature_model_info` SET `bounding_radius`=0.4164 WHERE `modelid`=15612;
UPDATE `creature_model_info` SET `bounding_radius`=0.4164 WHERE `modelid`=15643;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15698;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15734;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15744;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15745;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15746;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15747;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15748;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15749;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15750;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15751;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15752;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15753;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15754;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15755;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15756;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15757;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15758;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15759;
UPDATE `creature_model_info` SET `bounding_radius`=0.4836 WHERE `modelid`=15760;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15762;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15763;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15764;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15765;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15766;
UPDATE `creature_model_info` SET `bounding_radius`=0.8725 WHERE `modelid`=15772;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15879;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15884;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15887;
UPDATE `creature_model_info` SET `bounding_radius`=0.236 WHERE `modelid`=15892;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15894;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15896;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15898;
UPDATE `creature_model_info` SET `bounding_radius`=0.389 WHERE `modelid`=15949;
UPDATE `creature_model_info` SET `bounding_radius`=0.208 WHERE `modelid`=15950;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15951;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=15952;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=15953;
UPDATE `creature_model_info` SET `bounding_radius`=0.372 WHERE `modelid`=15954;
UPDATE `creature_model_info` SET `bounding_radius`=0.9747 WHERE `modelid`=15955;
UPDATE `creature_model_info` SET `bounding_radius`=0.347 WHERE `modelid`=15956;
UPDATE `creature_model_info` SET `bounding_radius`=0.29 WHERE `modelid`=15990;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=16005;
UPDATE `creature_model_info` SET `bounding_radius`=0.306 WHERE `modelid`=16006;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=16008;
UPDATE `creature_model_info` SET `bounding_radius`=0.383 WHERE `modelid`=16009;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=16358;

-- Correct combat reach for some creatures.
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=4449;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=470;
UPDATE `creature_model_info` SET `combat_reach`=1.275 WHERE `modelid`=525;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=911;
UPDATE `creature_model_info` SET `combat_reach`=1.2 WHERE `modelid`=1075;
UPDATE `creature_model_info` SET `combat_reach`=5 WHERE `modelid`=1092;
UPDATE `creature_model_info` SET `combat_reach`=0.949153 WHERE `modelid`=1307;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=1657;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=1825;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2382;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2383;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=2399;
UPDATE `creature_model_info` SET `combat_reach`=1.0625 WHERE `modelid`=2568;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=3452;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=4088;
UPDATE `creature_model_info` SET `combat_reach`=1.65 WHERE `modelid`=4212;
UPDATE `creature_model_info` SET `combat_reach`=1.0625 WHERE `modelid`=4267;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=4305;
UPDATE `creature_model_info` SET `combat_reach`=0.625 WHERE `modelid`=4317;
UPDATE `creature_model_info` SET `combat_reach`=0.9 WHERE `modelid`=4566;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=4582;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=5489;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=5498;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=5564;
UPDATE `creature_model_info` SET `combat_reach`=0.872881 WHERE `modelid`=5985;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=6295;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=6297;
UPDATE `creature_model_info` SET `combat_reach`=5 WHERE `modelid`=6350;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=8390;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8661;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=8669;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8699;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=8717;
UPDATE `creature_model_info` SET `combat_reach`=1.625 WHERE `modelid`=8782;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=9023;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=9024;
UPDATE `creature_model_info` SET `combat_reach`=1.65 WHERE `modelid`=9291;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=9293;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=9760;
UPDATE `creature_model_info` SET `combat_reach`=0.75 WHERE `modelid`=9993;
UPDATE `creature_model_info` SET `combat_reach`=1.875 WHERE `modelid`=10032;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10354;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10374;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=10546;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=10621;
UPDATE `creature_model_info` SET `combat_reach`=1.875 WHERE `modelid`=10698;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=10729;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=11171;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=11172;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=11318;
UPDATE `creature_model_info` SET `combat_reach`=2.1875 WHERE `modelid`=11340;
UPDATE `creature_model_info` SET `combat_reach`=17.5 WHERE `modelid`=11460;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=11564;
UPDATE `creature_model_info` SET `combat_reach`=1.725 WHERE `modelid`=11651;
UPDATE `creature_model_info` SET `combat_reach`=1.275 WHERE `modelid`=11652;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=11667;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=12080;
UPDATE `creature_model_info` SET `combat_reach`=4.5 WHERE `modelid`=12369;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=12818;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=12819;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=12962;
UPDATE `creature_model_info` SET `combat_reach`=1.125 WHERE `modelid`=12963;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=12966;
UPDATE `creature_model_info` SET `combat_reach`=3.525 WHERE `modelid`=13093;
UPDATE `creature_model_info` SET `combat_reach`=0.9 WHERE `modelid`=13096;
UPDATE `creature_model_info` SET `combat_reach`=1 WHERE `modelid`=13097;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=13109;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=13110;
UPDATE `creature_model_info` SET `combat_reach`=0.9 WHERE `modelid`=13111;
UPDATE `creature_model_info` SET `combat_reach`=3.525 WHERE `modelid`=13130;
UPDATE `creature_model_info` SET `combat_reach`=3.525 WHERE `modelid`=13132;
UPDATE `creature_model_info` SET `combat_reach`=7.5 WHERE `modelid`=13170;
UPDATE `creature_model_info` SET `combat_reach`=3 WHERE `modelid`=13172;
UPDATE `creature_model_info` SET `combat_reach`=4.5 WHERE `modelid`=13173;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=13174;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13258;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13282;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=13285;
UPDATE `creature_model_info` SET `combat_reach`=1.65 WHERE `modelid`=13300;
UPDATE `creature_model_info` SET `combat_reach`=1.65 WHERE `modelid`=13305;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13334;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13335;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13342;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13344;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13345;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13346;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13347;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13348;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13349;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13350;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13355;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13356;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13369;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13370;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13430;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13434;
UPDATE `creature_model_info` SET `combat_reach`=6 WHERE `modelid`=13444;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13554;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13571;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=13573;
UPDATE `creature_model_info` SET `combat_reach`=3.75 WHERE `modelid`=13574;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13594;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=13715;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13773;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13781;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=13795;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=14092;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=14378;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=14380;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=14381;
UPDATE `creature_model_info` SET `combat_reach`=2.1 WHERE `modelid`=14406;
UPDATE `creature_model_info` SET `combat_reach`=3.125 WHERE `modelid`=14416;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=14879;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=14936;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=14938;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=15603;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=15612;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=15643;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=15760;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15766;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15887;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15950;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15951;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15953;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15954;
UPDATE `creature_model_info` SET `combat_reach`=4.05 WHERE `modelid`=15955;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=15956;
UPDATE `creature_model_info` SET `combat_reach`=2.5 WHERE `modelid`=15990;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=16005;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=16356;
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=16358;

-- Correct bounding radius for ZG creatures.
UPDATE `creature_model_info` SET `bounding_radius`=0.6 WHERE `modelid`=11081;
UPDATE `creature_model_info` SET `bounding_radius`=1 WHERE `modelid`=15191;
UPDATE `creature_model_info` SET `bounding_radius`=2.38 WHERE `modelid`=15295;

-- Correct combat reach for ZG creatures.
UPDATE `creature_model_info` SET `combat_reach`=0 WHERE `modelid`=11081;
UPDATE `creature_model_info` SET `combat_reach`=2 WHERE `modelid`=15191;
UPDATE `creature_model_info` SET `combat_reach`=10.5 WHERE `modelid`=15295;

-- Update drop chance of Righteous Orb based on Wowhead.
-- https://classic.wowhead.com/item=12811/righteous-orb#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=18 WHERE `entry`=10811 && `item`=12811; -- Archivist Galford
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=7 WHERE `entry`=10425 && `item`=12811; -- Crimson Battle Mage
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=7 WHERE `entry`=10419 && `item`=12811; -- Crimson Conjuror
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=8 WHERE `entry`=10421 && `item`=12811; -- Crimson Defender
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1.6 WHERE `entry`=12128 && `item`=12811; -- Crimson Elite
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=8 WHERE `entry`=10424 && `item`=12811; -- Crimson Gallant
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=9 WHERE `entry`=10418 && `item`=12811; -- Crimson Guardsman
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=8 WHERE `entry`=10420 && `item`=12811; -- Crimson Initiate
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=7 WHERE `entry`=10426 && `item`=12811; -- Crimson Inquisitor
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=8 WHERE `entry`=11043 && `item`=12811; -- Crimson Monk
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=7 WHERE `entry`=10423 && `item`=12811; -- Crimson Priest
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=7 WHERE `entry`=10422 && `item`=12811; -- Crimson Sorcerer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1.8 WHERE `entry`=12339 && `item`=12811; -- Demetria

-- Update loot from Crimson Hammersmith based on Wowhead.
-- https://classic.wowhead.com/npc=11120/crimson-hammersmith
DELETE FROM `creature_loot_template` WHERE `entry`=11120;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 13351, -100, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 14047, 26, 0, 2, 4, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 18781, 40, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 12811, 4, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 8932, 4, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 8766, 1.8, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 13446, 1.4, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 5759, 0.8, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 7910, 0.5, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 7909, 0.4, 0, 1, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 2073, 2, 0, -2073, 1, 0, 0, 10);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `patch_min`, `patch_max`) VALUES (11120, 24024, 3, 0, -24024, 1, 0, 0, 10);

-- High Priestess Jeklik
UPDATE `creature_template` SET `dmg_min`=1533, `dmg_max`=2030, `armor`=3795 WHERE `entry`=14517;
UPDATE `creature_template` SET `health_min`=333125, `health_max`=333125 WHERE `entry`=14517;

-- High Priest Venoxis
UPDATE `creature_template` SET `dmg_min`=1431, `dmg_max`=1895, `armor`=3795 WHERE `entry`=14507;
UPDATE `creature_template` SET `health_min`=213200, `health_max`=213200 WHERE `entry`=14507;

-- High Priestess Mar'li
UPDATE `creature_template` SET `dmg_min`=1431, `dmg_max`=1895, `armor`=3795 WHERE `entry`=14510;

-- High Priest Thekal
UPDATE `creature_template` SET `dmg_min`=1794, `dmg_max`=2375, `armor`=3795 WHERE `entry`=14509;

-- High Priestess Arlokk
UPDATE `creature_template` SET `dmg_min`=1533, `dmg_max`=2030, `armor`=3795 WHERE `entry`=14515;
UPDATE `creature_template` SET `mana_min`=13100, `mana_max`=13100 WHERE `entry`=14515;

-- Hakkar
UPDATE `creature_template` SET `dmg_min`=2044.5, `dmg_max`=2706.5, `armor`=3795 WHERE `entry`=14834;

UPDATE `creature_template` SET `health_min`=719550, `health_max`=719550 WHERE `entry`=14834;

-- Bloodlord Mandokir
UPDATE `creature_template` SET `dmg_min`=2334, `dmg_max`=3094, `armor`=4691 WHERE `entry`=11382;

-- Ohgan
UPDATE `creature_template` SET `dmg_min`=1413, `dmg_max`=1875, `armor`=3791 WHERE `entry`=14988;
UPDATE `creature_template` SET `health_min`=99930, `health_max`=99930 WHERE `entry`=14988;

-- Jin'do the Hexxer
UPDATE `creature_template` SET `dmg_min`=1738, `dmg_max`=2301, `armor`=3795 WHERE `entry`=11380;

-- Gahz'ranka
UPDATE `creature_template` SET `dmg_min`=2197, `dmg_max`=2912, `armor`=4691 WHERE `entry`=15114;
UPDATE `creature_template` SET `health_min`=333100, `health_max`=333100 WHERE `entry`=15114;

-- Gri'lek
UPDATE `creature_template` SET `dmg_min`=2471, `dmg_max`=3276, `armor`=4691 WHERE `entry`=15082;
UPDATE `creature_template` SET `health_min`=333100, `health_max`=333100, `mana_min`=0, `mana_max`=0 WHERE `entry`=15082;

-- Hazza'rah
UPDATE `creature_template` SET `dmg_min`=2300, `dmg_max`=3045, `armor`=3795 WHERE `entry`=15083;
UPDATE `creature_template` SET `health_min`=266500, `health_max`=266500 WHERE `entry`=15083;

-- Renataki
UPDATE `creature_template` SET `dmg_min`=1648, `dmg_max`=2184, `armor`=4691 WHERE `entry`=15084;
UPDATE `creature_template` SET `health_min`=333100, `health_max`=333100, `mana_min`=0, `mana_max`=0 WHERE `entry`=15084;

-- Wushoolay
UPDATE `creature_template` SET `dmg_min`=2300, `dmg_max`=3045, `armor`=3795 WHERE `entry`=15085;

-- Onyxia
UPDATE `creature_template` SET `dmg_min`=1648, `dmg_max`=2184, `armor`=4691 WHERE `entry`=10184;
-- Lucifron
UPDATE `creature_template` SET `dmg_min`=1636, `dmg_max`=2165, `armor`=3795 WHERE `entry`=12118;
-- Magmadar
UPDATE `creature_template` SET `dmg_min`=1867, `dmg_max`=2475, `armor`=4691 WHERE `entry`=11982;
-- Gehennas
UPDATE `creature_template` SET `dmg_min`=1636, `dmg_max`=2165, `armor`=3795 WHERE `entry`=12259;
-- Garr
UPDATE `creature_template` SET `dmg_min`=1977, `dmg_max`=2621, `armor`=4691 WHERE `entry`=12057;
-- Shazzrah
UPDATE `creature_template` SET `dmg_min`=1636, `dmg_max`=2165, `armor`=3795 WHERE `entry`=12264;
-- Baron Geddon
UPDATE `creature_template` SET `dmg_min`=1538, `dmg_max`=2039, `armor`=4691 WHERE `entry`=12056;
-- Golemagg the Incinerator
UPDATE `creature_template` SET `dmg_min`=2197, `dmg_max`=2912, `armor`=4691 WHERE `entry`=11988;
-- Sulfuron Harbinger
UPDATE `creature_template` SET `dmg_min`=1757, `dmg_max`=2330, `armor`=5840 WHERE `entry`=12098;
-- Majordomo Executus
UPDATE `creature_template` SET `dmg_min`=1538, `dmg_max`=2039, `armor`=4691 WHERE `entry`=12018;
-- Ragnaros
UPDATE `creature_template` SET `dmg_min`=1999, `dmg_max`=2650, `armor`=4691 WHERE `entry`=11502;

-- Correct faction for BWL creatures.
UPDATE `creature_template` SET `faction`=62 WHERE `entry`=11981;
UPDATE `creature_template` SET `faction`=62 WHERE `entry`=11983;
UPDATE `creature_template` SET `faction`=1114 WHERE `entry`=12435;
UPDATE `creature_template` SET `faction`=103 WHERE `entry`=12461;
UPDATE `creature_template` SET `faction`=7 WHERE `entry`=13976;
UPDATE `creature_template` SET `faction`=62 WHERE `entry`=14020;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14449;
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=14459;
UPDATE `creature_template` SET `faction`=62 WHERE `entry`=14601;

-- Correct levels for BWL creatures.
UPDATE `creature_template` SET `level_min`=62, `level_max`=62 WHERE `entry`=12557;
UPDATE `creature_template` SET `level_min`=60, `level_max`=60 WHERE `entry`=12999;
UPDATE `creature_template` SET `level_min`=40, `level_max`=40 WHERE `entry`=13976;

-- Correct health for BWL creatures.
UPDATE `creature_template` SET `health_min`=64750, `health_max`=64750, `mana_min`=25680, `mana_max`=25680 WHERE `entry`=12557;
UPDATE `creature_template` SET `health_min`=4120, `health_max`=4120 WHERE `entry`=12999;
UPDATE `creature_template` SET `health_min`=7620, `health_max`=7620 WHERE `entry`=13976;

-- Correct melee attack speed for BWL creatures.
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=8279;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11981;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=11983;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12017;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12435;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12457;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12458;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12459;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12460;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12461;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12463;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12464;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12465;
UPDATE `creature_template` SET `base_attack_time`=2400 WHERE `entry`=12467;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12468;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=12557;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13976;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=13996;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14020;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14022;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14023;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14024;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14025;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14377;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14401;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14456;
UPDATE `creature_template` SET `base_attack_time`=2000 WHERE `entry`=14601;

-- Correct ranged attack speed for BWL creatures.
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=8279;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11981;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=11983;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12017;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12435;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12457;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12458;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12459;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12460;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12461;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12463;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12464;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12465;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12467;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12468;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12557;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=12999;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13020;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13976;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=13996;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14020;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14022;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14023;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14024;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14025;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14401;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14449;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14456;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14459;
UPDATE `creature_template` SET `ranged_attack_time`=2000 WHERE `entry`=14601;

-- Correct walk speed for BWL creatures.
UPDATE `creature_template` SET `speed_walk`=2 WHERE `entry`=11981;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12017;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12435;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=12458;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12463;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12464;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12465;
UPDATE `creature_template` SET `speed_walk`=0.888888 WHERE `entry`=12468;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13020;
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=13976;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=14022;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=14023;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=14024;
UPDATE `creature_template` SET `speed_walk`=1.11111 WHERE `entry`=14025;

-- Correct run speed for BWL creatures.
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=11981;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=11983;
UPDATE `creature_template` SET `speed_run`=1.42857 WHERE `entry`=12435;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=12460;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=13020;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=14020;
UPDATE `creature_template` SET `speed_run`=2.14286 WHERE `entry`=14601;

-- Razorgore the Untamed
UPDATE `creature_template` SET `dmg_min`=2416, `dmg_max`=3203, `armor`=4691 WHERE `entry`=12435;
UPDATE `creature_template` SET `health_min`=449685, `health_max`=449685, `mana_min`=0, `mana_max`=0 WHERE `entry`=12435;
-- Vaelastrasz the Corrupt
UPDATE `creature_template` SET `dmg_min`=3844, `dmg_max`=5096, `armor`=4691 WHERE `entry`=13020;
UPDATE `creature_template` SET `health_min`=3331000, `health_max`=3331000, `mana_min`=0, `mana_max`=0 WHERE `entry`=13020;
-- Broodlord Lashlayer
UPDATE `creature_template` SET `dmg_min`=2746, `dmg_max`=3640, `armor`=4691 WHERE `entry`=12017;
UPDATE `creature_template` SET `mana_min`=0, `mana_max`=0 WHERE `entry`=12017;
-- Firemaw
UPDATE `creature_template` SET `dmg_min`=2746, `dmg_max`=3640, `armor`=4691 WHERE `entry`=11983;
UPDATE `creature_template` SET `health_min`=999300, `health_max`=999300, `mana_min`=0, `mana_max`=0 WHERE `entry`=11983;
-- Ebonroc
UPDATE `creature_template` SET `dmg_min`=2746, `dmg_max`=3640, `armor`=4691 WHERE `entry`=14601;
UPDATE `creature_template` SET `health_min`=999300, `health_max`=999300 WHERE `entry`=14601;
-- Flamegor
UPDATE `creature_template` SET `dmg_min`=2746, `dmg_max`=3640, `armor`=4691 WHERE `entry`=11981;
UPDATE `creature_template` SET `health_min`=999300, `health_max`=999300, `mana_min`=0, `mana_max`=0 WHERE `entry`=11981;
-- Chromaggus
UPDATE `creature_template` SET `dmg_min`=3295, `dmg_max`=4368, `armor`=4691 WHERE `entry`=14020;
UPDATE `creature_template` SET `health_min`=1832050, `health_max`=1832050 WHERE `entry`=14020;
-- Nefarian
UPDATE `creature_template` SET `dmg_min`=3844, `dmg_max`=5096, `armor`=4691 WHERE `entry`=11583;
UPDATE `creature_template` SET `health_min`=2165150, `health_max`=2165150, `mana_min`=0, `mana_max`=0 WHERE `entry`=11583;

-- Correct bounding radius for BWL creatures.
UPDATE `creature_model_info` SET `bounding_radius`=0.278 WHERE `modelid`=694;
UPDATE `creature_model_info` SET `bounding_radius`=0.7 WHERE `modelid`=4449;
UPDATE `creature_model_info` SET `bounding_radius`=0.214 WHERE `modelid`=7923;
UPDATE `creature_model_info` SET `bounding_radius`=0.278 WHERE `modelid`=9994;
UPDATE `creature_model_info` SET `bounding_radius`=0.4836 WHERE `modelid`=11967;
UPDATE `creature_model_info` SET `bounding_radius`=0.4836 WHERE `modelid`=11969;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=12021;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=12022;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=12024;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=12025;
UPDATE `creature_model_info` SET `bounding_radius`=2.625 WHERE `modelid`=12892;
UPDATE `creature_model_info` SET `bounding_radius`=3.44225 WHERE `modelid`=12893;
UPDATE `creature_model_info` SET `bounding_radius`=0.459 WHERE `modelid`=13991;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=13992;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=14292;
UPDATE `creature_model_info` SET `bounding_radius`=0.4464 WHERE `modelid`=14293;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=14294;
UPDATE `creature_model_info` SET `bounding_radius`=0.2832 WHERE `modelid`=14295;
UPDATE `creature_model_info` SET `bounding_radius`=0.4836 WHERE `modelid`=14296;
UPDATE `creature_model_info` SET `bounding_radius`=0.3068 WHERE `modelid`=14300;
UPDATE `creature_model_info` SET `bounding_radius`=0.3068 WHERE `modelid`=14301;
UPDATE `creature_model_info` SET `bounding_radius`=0.459 WHERE `modelid`=14302;
UPDATE `creature_model_info` SET `bounding_radius`=0.459 WHERE `modelid`=14303;
UPDATE `creature_model_info` SET `bounding_radius`=0.459 WHERE `modelid`=14304;
UPDATE `creature_model_info` SET `bounding_radius`=1.5 WHERE `modelid`=14308;
UPDATE `creature_model_info` SET `bounding_radius`=1.05 WHERE `modelid`=14367;
UPDATE `creature_model_info` SET `bounding_radius`=0.5202 WHERE `modelid`=14498;
UPDATE `creature_model_info` SET `bounding_radius`=0.875 WHERE `modelid`=14544;
UPDATE `creature_model_info` SET `bounding_radius`=0.278 WHERE `modelid`=14720;

-- Correct combat reach for BWL creatures.
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=694;
UPDATE `creature_model_info` SET `combat_reach`=1.05 WHERE `modelid`=4449;
UPDATE `creature_model_info` SET `combat_reach`=1.5 WHERE `modelid`=7923;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=9994;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=11967;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=11969;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=12021;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=12022;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=12024;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=12025;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=12892;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=12893;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=13991;
UPDATE `creature_model_info` SET `combat_reach`=15 WHERE `modelid`=13992;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=14292;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=14293;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=14294;
UPDATE `creature_model_info` SET `combat_reach`=1.8 WHERE `modelid`=14295;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=14296;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=14300;
UPDATE `creature_model_info` SET `combat_reach`=1.95 WHERE `modelid`=14301;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=14302;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=14303;
UPDATE `creature_model_info` SET `combat_reach`=2.25 WHERE `modelid`=14304;
UPDATE `creature_model_info` SET `combat_reach`=5 WHERE `modelid`=14308;
UPDATE `creature_model_info` SET `combat_reach`=12 WHERE `modelid`=14367;
UPDATE `creature_model_info` SET `combat_reach`=2.55 WHERE `modelid`=14498;
UPDATE `creature_model_info` SET `combat_reach`=2.625 WHERE `modelid`=14544;
UPDATE `creature_model_info` SET `combat_reach`=1.25 WHERE `modelid`=14720;

-- 'Saltscale Warrior'
UPDATE `creature_template` SET `armor`=1480 WHERE `entry`=871;
-- 'Saltscale Forager'
UPDATE `creature_template` SET `armor`=1480 WHERE `entry`=877;
-- 'Saltscale Hunter'
UPDATE `creature_template` SET `armor`=1480 WHERE `entry`=879;
-- 'Hakkari Shadowcaster'
UPDATE `creature_template` SET `dmg_min`=788, `dmg_max`=1043 WHERE `entry`=11338;
-- 'Hakkari Shadow Hunter'
UPDATE `creature_template` SET `dmg_min`=591, `dmg_max`=782 WHERE `entry`=11339;
-- 'Hakkari Blood Priest'
UPDATE `creature_template` SET `dmg_min`=591, `dmg_max`=782 WHERE `entry`=11340;
-- 'Gurubashi Axe Thrower'
UPDATE `creature_template` SET `dmg_min`=416, `dmg_max`=552 WHERE `entry`=11350;
-- 'Gurubashi Headhunter'
UPDATE `creature_template` SET `dmg_min`=520, `dmg_max`=689 WHERE `entry`=11351;
-- 'Gurubashi Berserker'
UPDATE `creature_template` SET `dmg_min`=1510, `dmg_max`=2004 WHERE `entry`=11352;
-- 'Gurubashi Blood Drinker'
UPDATE `creature_template` SET `dmg_min`=935, `dmg_max`=1241 WHERE `entry`=11353;
-- 'Gurubashi Champion'
UPDATE `creature_template` SET `dmg_min`=741, `dmg_max`=982 WHERE `entry`=11356;
-- 'Soulflayer'
UPDATE `creature_template` SET `dmg_min`=1270, `dmg_max`=1684 WHERE `entry`=11359;
-- 'Bloodseeker Bat'
UPDATE `creature_template` SET `level_min`=60, `dmg_min`=130, `dmg_max`=172, `health_min`=5341 WHERE `entry`=11368;
-- 'Razzashi Serpent'
UPDATE `creature_template` SET `dmg_min`=416, `dmg_max`=551 WHERE `entry`=11371;
-- 'Razzashi Adder'
UPDATE `creature_template` SET `dmg_min`=436, `dmg_max`=579 WHERE `entry`=11372;
-- 'Hooktooth Frenzy'
UPDATE `creature_template` SET `dmg_min`=249, `dmg_max`=331 WHERE `entry`=11374;
-- 'Bloodscalp Speaker'
UPDATE `creature_template` SET `dmg_min`=529, `dmg_max`=702 WHERE `entry`=11389 && `patch`=9;
-- 'Skullsplitter Speaker'
UPDATE `creature_template` SET `dmg_min`=529, `dmg_max`=702 WHERE `entry`=11390 && `patch`=9;
-- 'Hakkari Priest'
UPDATE `creature_template` SET `dmg_min`=484, `dmg_max`=641 WHERE `entry`=11830 && `patch`=5;
-- 'Hakkari Witch Doctor'
UPDATE `creature_template` SET `level_min`=60, `dmg_min`=581, `dmg_max`=769, `health_min`=24420, `mana_min`=12170 WHERE `entry`=11831;
-- 'Gurubashi Bat Rider'
UPDATE `creature_template` SET `dmg_min`=1058, `dmg_max`=1403 WHERE `entry`=14750;
-- 'Razzashi Raptor'
UPDATE `creature_template` SET `dmg_min`=831, `dmg_max`=1103 WHERE `entry`=14821;
-- 'Zulian Crocolisk'
UPDATE `creature_template` SET `dmg_min`=416, `dmg_max`=552 WHERE `entry`=15043;

-- Correct stats for non-boss BWL creatures.

-- Faulty War Golem
UPDATE `creature_template` SET `dmg_min`=77, `dmg_max`=102 WHERE `entry`=8279;
-- Blackwing Spellbinder
UPDATE `creature_template` SET `dmg_min`=1506, `dmg_max`=1996 WHERE `entry`=12457;
-- Blackwing Taskmaster
UPDATE `creature_template` SET `dmg_min`=1506, `dmg_max`=1996 WHERE `entry`=12458;
-- Blackwing Warlock
UPDATE `creature_template` SET `dmg_min`=1478, `dmg_max`=1956 WHERE `entry`=12459;
-- Death Talon Wyrmguard
UPDATE `creature_template` SET `dmg_min`=2746, `dmg_max`=3640 WHERE `entry`=12460;
-- Death Talon Overseer
UPDATE `creature_template` SET `dmg_min`=2374, `dmg_max`=3149 WHERE `entry`=12461;
-- Death Talon Flamescale
UPDATE `creature_template` SET `dmg_min`=1942, `dmg_max`=2576 WHERE `entry`=12463;
-- Death Talon Seether
UPDATE `creature_template` SET `dmg_min`=2158, `dmg_max`=2862 WHERE `entry`=12464;
-- Death Talon Wyrmkin
UPDATE `creature_template` SET `dmg_min`=1774, `dmg_max`=2347 WHERE `entry`=12465;
-- Death Talon Captain
UPDATE `creature_template` SET `dmg_min`=3107, `dmg_max`=4122 WHERE `entry`=12467;
-- Death Talon Hatcher
UPDATE `creature_template` SET `dmg_min`=1971, `dmg_max`=2607 WHERE `entry`=12468;
-- Grethok the Controller
UPDATE `creature_template` SET `dmg_min`=1807, `dmg_max`=2395, `health_min`=64750, `health_max`=64750, `mana_min`=25680, `mana_max`=25680 WHERE `entry`=12557;
-- Blackwing Technician
UPDATE `creature_template` SET `dmg_min`=520, `dmg_max`=689 WHERE `entry`=13996;
-- Corrupted Red Whelp
UPDATE `creature_template` SET `dmg_min`=312, `dmg_max`=414 WHERE `entry`=14022;
-- Corrupted Green Whelp
UPDATE `creature_template` SET `dmg_min`=312, `dmg_max`=414 WHERE `entry`=14023;
-- Corrupted Blue Whelp
UPDATE `creature_template` SET `dmg_min`=312, `dmg_max`=414 WHERE `entry`=14024;
-- Corrupted Bronze Whelp
UPDATE `creature_template` SET `dmg_min`=312, `dmg_max`=414 WHERE `entry`=14025;
-- Master Elemental Shaper Krixix
UPDATE `creature_template` SET `dmg_min`=311, `dmg_max`=413 WHERE `entry`=14401;
-- Blackwing Guardsman
UPDATE `creature_template` SET `dmg_min`=1481, `dmg_max`=1964 WHERE `entry`=14456;

-- Correct stats for non-boss MC creatures.

-- Molten Giant
UPDATE `creature_template` SET `dmg_min`=1618, `dmg_max`=2147, `fire_res`=93 WHERE `entry`=11658;
-- Molten Destroyer
UPDATE `creature_template` SET `dmg_min`=1757, `dmg_max`=2330, `fire_res`=93 WHERE `entry`=11659;
-- Flamewaker
UPDATE `creature_template` SET `dmg_min`=1305, `dmg_max`=1729, `fire_res`=93 WHERE `entry`=11661;
-- Flamewaker Priest
UPDATE `creature_template` SET `dmg_min`=1023, `dmg_max`=1352, `fire_res`=93 WHERE `entry`=11662;
-- Flamewaker Healer
UPDATE `creature_template` SET `dmg_min`=1161, `dmg_max`=1538, `armor`=3075, `fire_res`=15 WHERE `entry`=11663;
-- Flamewaker Elite
UPDATE `creature_template` SET `dmg_min`=1687, `dmg_max`=2235, `armor`=4421, `fire_res`=93, `nature_res`=-93, `frost_res`=-93, `shadow_res`=-93, `arcane_res`=-93 WHERE `entry`=11664;
-- Lava Annihilator
UPDATE `creature_template` SET `dmg_min`=1524, `dmg_max`=2061, `armor`=4391, `fire_res`=93, `nature_res`=93 WHERE `entry`=11665;
-- Firewalker
UPDATE `creature_template` SET `dmg_min`=1058, `dmg_max`=1431, `armor`=4391, `fire_res`=15 WHERE `entry`=11666;
-- Flameguard
UPDATE `creature_template` SET `dmg_min`=1058, `dmg_max`=1431, `armor`=4391, `fire_res`=15 WHERE `entry`=11667;
-- Firelord
UPDATE `creature_template` SET `dmg_min`=952, `dmg_max`=1288, `armor`=4391, `fire_res`=15 WHERE `entry`=11668;
-- Flame Imp
UPDATE `creature_template` SET `dmg_min`=317, `dmg_max`=429, `fire_res`=186 WHERE `entry`=11669;
-- Core Hound
UPDATE `creature_template` SET `dmg_min`=1058, `dmg_max`=1403, `fire_res`=93 WHERE `entry`=11671;
-- Core Rager
UPDATE `creature_template` SET `dmg_min`=1510, `dmg_max`=2004, `fire_res`=95 WHERE `entry`=11672;
-- Ancient Core Hound
UPDATE `creature_template` SET `dmg_min`=1726, `dmg_max`=2290, `fire_res`=93 WHERE `entry`=11673;
-- Lava Elemental
UPDATE `creature_template` SET `dmg_min`=1587, `dmg_max`=2147, `armor`=4391, `fire_res`=95, `nature_res`=95 WHERE `entry`=12076;
-- Firesworn
UPDATE `creature_template` SET `dmg_min`=1455, `dmg_max`=1930, `fire_res`=95, `nature_res`=95 WHERE `entry`=12099;
-- Lava Reaver
UPDATE `creature_template` SET `dmg_min`=1381, `dmg_max`=1864, `armor`=4691, `fire_res`=95, `nature_res`=95 WHERE `entry`=12100;
-- Lava Surger
UPDATE `creature_template` SET `dmg_min`=1376, `dmg_max`=1861, `armor`=4391, `fire_res`=93, `nature_res`=93 WHERE `entry`=12101;
-- Flamewaker Protector
UPDATE `creature_template` SET `dmg_min`=1305, `dmg_max`=1729 WHERE `entry`=12119;

-- Correct stats for non-boss Ony creatures.

-- Onyxian Warder
UPDATE `creature_template` SET `dmg_min`=1039, `dmg_max`=1456, `fire_res`=250, `nature_res`=0 WHERE `entry`=12129;
-- Onyxian Whelp
UPDATE `creature_template` SET `dmg_min`=355, `dmg_max`=480, `fire_res`=171, `nature_res`=0 WHERE `entry`=11262;